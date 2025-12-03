@interface EKIdentityViewController
+ (id)_createContactForIdentity:(id)identity;
+ (id)_createContactStore;
+ (id)_fetchContactForIdentity:(id)identity store:(id)store keysToFetch:(id)fetch;
+ (id)contactForIdentity:(id)identity keysToFetch:(id)fetch;
- (EKIdentityViewController)initWithIdentity:(id)identity;
- (void)_setIdentity:(id)identity;
- (void)_updateControllerWithContact:(id)contact isNew:(BOOL)new;
- (void)loadView;
@end

@implementation EKIdentityViewController

- (EKIdentityViewController)initWithIdentity:(id)identity
{
  identityCopy = identity;
  v9.receiver = self;
  v9.super_class = EKIdentityViewController;
  v5 = [(EKIdentityViewController *)&v9 init];
  if (v5)
  {
    _createContactStore = [objc_opt_class() _createContactStore];
    store = v5->_store;
    v5->_store = _createContactStore;

    [(EKIdentityViewController *)v5 _setIdentity:identityCopy];
  }

  return v5;
}

+ (id)_createContactStore
{
  v3 = objc_alloc_init([self _CNContactStoreConfigurationClass]);
  [v3 setIncludeIncludeManagedAppleIDs:1];
  v4 = [objc_alloc(objc_msgSend(self "_CNContactStoreClass"))];

  return v4;
}

+ (id)contactForIdentity:(id)identity keysToFetch:(id)fetch
{
  identityCopy = identity;
  fetchCopy = fetch;
  _createContactStore = [self _createContactStore];
  v9 = [self _fetchContactForIdentity:identityCopy store:_createContactStore keysToFetch:fetchCopy];

  if (!v9)
  {
    v9 = [self _createContactForIdentity:identityCopy];
  }

  return v9;
}

+ (id)_fetchContactForIdentity:(id)identity store:(id)store keysToFetch:(id)fetch
{
  fetchCopy = fetch;
  storeCopy = store;
  identityCopy = identity;
  emailAddress = [identityCopy emailAddress];

  _CNContactClass = [self _CNContactClass];
  if (emailAddress)
  {
    emailAddress2 = [identityCopy emailAddress];

    v14 = [_CNContactClass predicateForContactsMatchingEmailAddress:emailAddress2];
  }

  else
  {
    v15 = MEMORY[0x1E695CF50];
    emailAddress2 = [identityCopy phoneNumber];

    v16 = [v15 phoneNumberWithStringValue:emailAddress2];
    v14 = [_CNContactClass predicateForContactsMatchingPhoneNumber:v16];
  }

  v17 = [storeCopy unifiedContactsMatchingPredicate:v14 keysToFetch:fetchCopy error:0];

  firstObject = [v17 firstObject];

  return firstObject;
}

+ (id)_createContactForIdentity:(id)identity
{
  v22[1] = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  [self _CNMutableContactClass];
  v5 = objc_opt_new();
  emailAddress = [identityCopy emailAddress];
  phoneNumber = [identityCopy phoneNumber];
  name = [identityCopy name];
  firstName = [identityCopy firstName];
  lastName = [identityCopy lastName];

  if ([name length] && (objc_msgSend(name, "cal_isPhoneNumber") & 1) == 0 && (!objc_msgSend(firstName, "length") || !objc_msgSend(lastName, "length")))
  {
    CUIKDecomposedAttendeeName();
    v11 = firstName;

    v12 = lastName;
    lastName = v12;
    firstName = v11;
  }

  if (emailAddress)
  {
    v13 = objc_alloc([self _CNLabeledValueClass]);
    _CNLabelWork = [self _CNLabelWork];
    v15 = [v13 initWithLabel:_CNLabelWork value:emailAddress];

    v22[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    [v5 setEmailAddresses:v16];
  }

  else
  {
    if (!phoneNumber)
    {
      goto LABEL_11;
    }

    v17 = objc_alloc([self _CNLabeledValueClass]);
    _CNLabelWork2 = [self _CNLabelWork];
    v19 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:phoneNumber];
    v15 = [v17 initWithLabel:_CNLabelWork2 value:v19];

    v21 = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    [v5 setPhoneNumbers:v16];
  }

LABEL_11:
  if (!firstName)
  {
    if (!lastName)
    {
      [v5 setGivenName:name];
      goto LABEL_16;
    }

LABEL_15:
    [v5 setFamilyName:lastName];
    goto LABEL_16;
  }

  [v5 setGivenName:firstName];
  if (lastName)
  {
    goto LABEL_15;
  }

LABEL_16:

  return v5;
}

- (void)_updateControllerWithContact:(id)contact isNew:(BOOL)new
{
  newCopy = new;
  contactCopy = contact;
  _CNContactViewControllerClass = [(EKIdentityViewController *)self _CNContactViewControllerClass];
  if (contactCopy)
  {
    if (newCopy)
    {
      [(objc_class *)_CNContactViewControllerClass viewControllerForUnknownContact:contactCopy];
    }

    else
    {
      [(objc_class *)_CNContactViewControllerClass viewControllerForContact:contactCopy];
    }
    v7 = ;
  }

  else
  {
    v7 = [(objc_class *)_CNContactViewControllerClass viewControllerForNewContact:0];
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
  view = [(EKIdentityViewController *)self view];
  [view addSubview:firstValue];

  view2 = [(EKIdentityViewController *)self view];
  v7 = MEMORY[0x1E696ACD8];
  v8 = _NSDictionaryOfVariableBindings(&cfstr_Personview.isa, firstValue, 0);
  v9 = [v7 constraintsWithVisualFormat:@"H:|[personView]|" options:0 metrics:0 views:v8];
  [view2 addConstraints:v9];

  view3 = [(EKIdentityViewController *)self view];
  v11 = MEMORY[0x1E696ACD8];
  v12 = _NSDictionaryOfVariableBindings(&cfstr_Personview.isa, firstValue, 0);
  v13 = [v11 constraintsWithVisualFormat:@"V:|[personView]|" options:0 metrics:0 views:v12];
  [view3 addConstraints:v13];
}

- (void)_setIdentity:(id)identity
{
  v16[1] = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  if (self->_identity != identityCopy)
  {
    objc_storeStrong(&self->_identity, identity);
    if (self->_identity)
    {
      v6 = objc_opt_class();
      store = self->_store;
      descriptorForRequiredKeys = [(objc_class *)[(EKIdentityViewController *)self _CNContactViewControllerClass] descriptorForRequiredKeys];
      v16[0] = descriptorForRequiredKeys;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      v10 = [v6 _fetchContactForIdentity:identityCopy store:store keysToFetch:v9];

      if (v10)
      {
        [(EKIdentityViewController *)self _updateControllerWithContact:v10 isNew:0];
        v11 = [(EKIdentityProtocol *)identityCopy URL];
        cal_hasSchemeTel = [v11 cal_hasSchemeTel];

        personViewController = self->_personViewController;
        if (cal_hasSchemeTel)
        {
          [(EKIdentityViewController *)self CNContactPhoneNumbersKey];
        }

        else
        {
          [(EKIdentityViewController *)self CNContactEmailAddressesKey];
        }
        v14 = ;
        identifier = [v10 identifier];
        [(CNContactViewController *)personViewController highlightPropertyWithKey:v14 identifier:identifier];
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