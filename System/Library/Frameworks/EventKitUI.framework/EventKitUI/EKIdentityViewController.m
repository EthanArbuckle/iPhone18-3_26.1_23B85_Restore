@interface EKIdentityViewController
+ (id)_createContactForIdentity:(id)a3;
+ (id)_createContactStore;
+ (id)_fetchContactForIdentity:(id)a3 store:(id)a4 keysToFetch:(id)a5;
+ (id)contactForIdentity:(id)a3 keysToFetch:(id)a4;
- (EKIdentityViewController)initWithIdentity:(id)a3;
- (void)_setIdentity:(id)a3;
- (void)_updateControllerWithContact:(id)a3 isNew:(BOOL)a4;
- (void)loadView;
@end

@implementation EKIdentityViewController

- (EKIdentityViewController)initWithIdentity:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EKIdentityViewController;
  v5 = [(EKIdentityViewController *)&v9 init];
  if (v5)
  {
    v6 = [objc_opt_class() _createContactStore];
    store = v5->_store;
    v5->_store = v6;

    [(EKIdentityViewController *)v5 _setIdentity:v4];
  }

  return v5;
}

+ (id)_createContactStore
{
  v3 = objc_alloc_init([a1 _CNContactStoreConfigurationClass]);
  [v3 setIncludeIncludeManagedAppleIDs:1];
  v4 = [objc_alloc(objc_msgSend(a1 "_CNContactStoreClass"))];

  return v4;
}

+ (id)contactForIdentity:(id)a3 keysToFetch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _createContactStore];
  v9 = [a1 _fetchContactForIdentity:v6 store:v8 keysToFetch:v7];

  if (!v9)
  {
    v9 = [a1 _createContactForIdentity:v6];
  }

  return v9;
}

+ (id)_fetchContactForIdentity:(id)a3 store:(id)a4 keysToFetch:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 emailAddress];

  v12 = [a1 _CNContactClass];
  if (v11)
  {
    v13 = [v10 emailAddress];

    v14 = [v12 predicateForContactsMatchingEmailAddress:v13];
  }

  else
  {
    v15 = MEMORY[0x1E695CF50];
    v13 = [v10 phoneNumber];

    v16 = [v15 phoneNumberWithStringValue:v13];
    v14 = [v12 predicateForContactsMatchingPhoneNumber:v16];
  }

  v17 = [v9 unifiedContactsMatchingPredicate:v14 keysToFetch:v8 error:0];

  v18 = [v17 firstObject];

  return v18;
}

+ (id)_createContactForIdentity:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [a1 _CNMutableContactClass];
  v5 = objc_opt_new();
  v6 = [v4 emailAddress];
  v7 = [v4 phoneNumber];
  v8 = [v4 name];
  v9 = [v4 firstName];
  v10 = [v4 lastName];

  if ([v8 length] && (objc_msgSend(v8, "cal_isPhoneNumber") & 1) == 0 && (!objc_msgSend(v9, "length") || !objc_msgSend(v10, "length")))
  {
    CUIKDecomposedAttendeeName();
    v11 = v9;

    v12 = v10;
    v10 = v12;
    v9 = v11;
  }

  if (v6)
  {
    v13 = objc_alloc([a1 _CNLabeledValueClass]);
    v14 = [a1 _CNLabelWork];
    v15 = [v13 initWithLabel:v14 value:v6];

    v22[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    [v5 setEmailAddresses:v16];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    v17 = objc_alloc([a1 _CNLabeledValueClass]);
    v18 = [a1 _CNLabelWork];
    v19 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v7];
    v15 = [v17 initWithLabel:v18 value:v19];

    v21 = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    [v5 setPhoneNumbers:v16];
  }

LABEL_11:
  if (!v9)
  {
    if (!v10)
    {
      [v5 setGivenName:v8];
      goto LABEL_16;
    }

LABEL_15:
    [v5 setFamilyName:v10];
    goto LABEL_16;
  }

  [v5 setGivenName:v9];
  if (v10)
  {
    goto LABEL_15;
  }

LABEL_16:

  return v5;
}

- (void)_updateControllerWithContact:(id)a3 isNew:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  v6 = [(EKIdentityViewController *)self _CNContactViewControllerClass];
  if (v12)
  {
    if (v4)
    {
      [(objc_class *)v6 viewControllerForUnknownContact:v12];
    }

    else
    {
      [(objc_class *)v6 viewControllerForContact:v12];
    }
    v7 = ;
  }

  else
  {
    v7 = [(objc_class *)v6 viewControllerForNewContact:0];
  }

  v8 = v7;
  [(CNContactViewController *)v7 setContactStore:self->_store];
  [(CNContactViewController *)v8 setShouldShowLinkedContacts:1];
  [(CNContactViewController *)v8 setDisplayMode:1];
  [(CNContactViewController *)v8 setAllowsEditing:0];
  personViewController = self->_personViewController;
  self->_personViewController = v8;
  v10 = v8;
  v11 = personViewController;

  [(EKIdentityViewController *)self addChildViewController:self->_personViewController];
  [(EKIdentityViewController *)self removeChildViewController:v11];
  [(CNContactViewController *)self->_personViewController didMoveToParentViewController:self];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(EKIdentityViewController *)self setView:v4];

  firstValue = [(CNContactViewController *)self->_personViewController view];
  [firstValue setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(EKIdentityViewController *)self view];
  [v5 addSubview:firstValue];

  v6 = [(EKIdentityViewController *)self view];
  v7 = MEMORY[0x1E696ACD8];
  v8 = _NSDictionaryOfVariableBindings(&cfstr_Personview.isa, firstValue, 0);
  v9 = [v7 constraintsWithVisualFormat:@"H:|[personView]|" options:0 metrics:0 views:v8];
  [v6 addConstraints:v9];

  v10 = [(EKIdentityViewController *)self view];
  v11 = MEMORY[0x1E696ACD8];
  v12 = _NSDictionaryOfVariableBindings(&cfstr_Personview.isa, firstValue, 0);
  v13 = [v11 constraintsWithVisualFormat:@"V:|[personView]|" options:0 metrics:0 views:v12];
  [v10 addConstraints:v13];
}

- (void)_setIdentity:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_identity != v5)
  {
    objc_storeStrong(&self->_identity, a3);
    if (self->_identity)
    {
      v6 = objc_opt_class();
      store = self->_store;
      v8 = [(objc_class *)[(EKIdentityViewController *)self _CNContactViewControllerClass] descriptorForRequiredKeys];
      v16[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      v10 = [v6 _fetchContactForIdentity:v5 store:store keysToFetch:v9];

      if (v10)
      {
        [(EKIdentityViewController *)self _updateControllerWithContact:v10 isNew:0];
        v11 = [(EKIdentityProtocol *)v5 URL];
        v12 = [v11 cal_hasSchemeTel];

        personViewController = self->_personViewController;
        if (v12)
        {
          [(EKIdentityViewController *)self CNContactPhoneNumbersKey];
        }

        else
        {
          [(EKIdentityViewController *)self CNContactEmailAddressesKey];
        }
        v14 = ;
        v15 = [v10 identifier];
        [(CNContactViewController *)personViewController highlightPropertyWithKey:v14 identifier:v15];
      }

      else
      {
        v10 = [objc_opt_class() _createContactForIdentity:self->_identity];
        [(EKIdentityViewController *)self _updateControllerWithContact:v10 isNew:1];
      }
    }

    else
    {
      [(EKIdentityViewController *)self _updateControllerWithContact:0 isNew:1];
    }
  }
}

@end