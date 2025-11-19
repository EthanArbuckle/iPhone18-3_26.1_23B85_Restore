@interface DDAddToContactsViewController
+ (id)alternateNameForContact:(id)a3;
- (CGSize)preferredContentSize;
- (void)cancelPressed:(id)a3;
- (void)contactViewControllerForUnknownContactDidEndAddingToContacts:(id)a3;
- (void)prepareForAction:(id)a3;
- (void)setCancelButtonVisible:(BOOL)a3;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation DDAddToContactsViewController

- (CGSize)preferredContentSize
{
  v2 = 360.0;
  v3 = 480.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)prepareForAction:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CNMutableContact);
  [(DDAddToContactsViewController *)self setAction:v4];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10000BA00(v4);
  }

  v6 = [v4 contact];

  if (v6)
  {
    v7 = [v4 contact];
    v8 = [v7 mutableCopy];

    v9 = [v4 result];
    if (v9)
    {
      [v4 result];
      v9 = sub_1000094C8();
    }

    v5 = v8;
  }

  else if ([v4 result])
  {
    DDAugmentContactWithResultsFromAction();
    [v4 result];
    v9 = sub_1000094C8();
  }

  else
  {
    v10 = [v4 url];
    v11 = [v10 scheme];
    v12 = [v11 lowercaseString];
    v13 = [v12 isEqualToString:@"mailto"];

    if (v13)
    {
      v14 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v14)
      {
        sub_10000BABC(v14, v15, v16, v17, v18, v19, v20, v21);
      }

      v22 = [v4 url];
      v23 = dd_userFriendlyEmailFromMailtoScheme();

      if (v23)
      {
        v24 = [CNLabeledValue labeledValueWithLabel:0 value:v23];
        v25 = v24;
        if (v24)
        {
          v50 = v24;
          v26 = [NSArray arrayWithObjects:&v50 count:1];
          [v5 setEmailAddresses:v26];

          v27 = CNContactEmailAddressesKey;
        }

        else
        {
          v27 = 0;
        }
      }

      else
      {
        v27 = 0;
      }

      v9 = v27;
    }

    else
    {
      v28 = [v4 url];
      isAnySimpleTelephonyScheme = dd_isAnySimpleTelephonyScheme();

      if (isAnySimpleTelephonyScheme)
      {
        v30 = [v4 url];
        v31 = dd_phoneNumberFromTelScheme();
        v32 = DDPhoneLabeledValue();

        if (v32)
        {
          v49 = v32;
          v33 = [NSArray arrayWithObjects:&v49 count:1];
          [v5 setPhoneNumbers:v33];

          v34 = CNContactPhoneNumbersKey;
        }

        else
        {
          v34 = 0;
        }

        v9 = v34;
      }

      else
      {
        v35 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (v35)
        {
          sub_10000BA80(v35, v36, v37, v38, v39, v40, v41, v42);
        }

        v9 = 0;
      }
    }
  }

  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1000096C8;
  v45[3] = &unk_100018760;
  v46 = v5;
  v47 = self;
  v48 = v9;
  v43 = v9;
  v44 = v5;
  dispatch_async(&_dispatch_main_q, v45);
}

+ (id)alternateNameForContact:(id)a3
{
  v3 = a3;
  v4 = [v3 emailAddresses];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [v3 emailAddresses];
    v7 = [v6 objectAtIndex:0];

    v8 = [v7 value];

    goto LABEL_10;
  }

  v9 = [v3 familyName];
  if ([v9 length])
  {
    goto LABEL_8;
  }

  v10 = [v3 givenName];
  if ([v10 length])
  {
LABEL_7:

LABEL_8:
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v11 = [v3 nickname];
  if ([v11 length])
  {

    goto LABEL_7;
  }

  v13 = [v3 organizationName];
  v14 = [v13 length];

  if (v14)
  {
    goto LABEL_9;
  }

  v8 = DDLocalizedString();
LABEL_10:

  return v8;
}

- (void)setCancelButtonVisible:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactViewController *)self->_personViewController navigationItem];
  v8 = v5;
  if (v3)
  {
    v6 = [v5 rightBarButtonItem];

    if (v6)
    {
      return;
    }

    v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancelPressed:"];
    v7 = [(CNContactViewController *)self->_personViewController navigationItem];
    [v7 setRightBarButtonItem:v8];
  }

  else
  {
    [v5 setRightBarButtonItem:0];
  }
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = DDAddToContactsViewController;
  [(DDAddToContactsViewController *)&v14 willTransitionToTraitCollection:v6 withTransitionCoordinator:v7];
  v8 = [v6 verticalSizeClass];
  v9 = [(DDAddToContactsViewController *)self traitCollection];
  v10 = [v9 verticalSizeClass];

  if (v8 != v10)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100009DD8;
    v11[3] = &unk_100018990;
    v12 = v6;
    v13 = v7;
    [v13 animateAlongsideTransition:v11 completion:0];
  }
}

- (void)cancelPressed:(id)a3
{
  if (!self->_contactBeingAdded)
  {
    [(DDAddToContactsViewController *)self doneWithAddingContactShouldDismiss:1];
  }
}

- (void)contactViewControllerForUnknownContactDidEndAddingToContacts:(id)a3
{
  self->_contactBeingAdded = 0;
  [(DDAddToContactsViewController *)self setCancellable:1];
  if (self->_ignoredIsDismissed)
  {

    [(DDAddToContactsViewController *)self doneWithAddingContactShouldDismiss:1];
  }
}

@end