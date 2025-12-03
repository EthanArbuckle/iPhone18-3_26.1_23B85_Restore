@interface DDAddToContactsViewController
+ (id)alternateNameForContact:(id)contact;
- (CGSize)preferredContentSize;
- (void)cancelPressed:(id)pressed;
- (void)contactViewControllerForUnknownContactDidEndAddingToContacts:(id)contacts;
- (void)prepareForAction:(id)action;
- (void)setCancelButtonVisible:(BOOL)visible;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
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

- (void)prepareForAction:(id)action
{
  actionCopy = action;
  v5 = objc_alloc_init(CNMutableContact);
  [(DDAddToContactsViewController *)self setAction:actionCopy];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10000BA00(actionCopy);
  }

  contact = [actionCopy contact];

  if (contact)
  {
    contact2 = [actionCopy contact];
    v8 = [contact2 mutableCopy];

    result = [actionCopy result];
    if (result)
    {
      [actionCopy result];
      result = sub_1000094C8();
    }

    v5 = v8;
  }

  else if ([actionCopy result])
  {
    DDAugmentContactWithResultsFromAction();
    [actionCopy result];
    result = sub_1000094C8();
  }

  else
  {
    v10 = [actionCopy url];
    scheme = [v10 scheme];
    lowercaseString = [scheme lowercaseString];
    v13 = [lowercaseString isEqualToString:@"mailto"];

    if (v13)
    {
      v14 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v14)
      {
        sub_10000BABC(v14, v15, v16, v17, v18, v19, v20, v21);
      }

      v22 = [actionCopy url];
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

      result = v27;
    }

    else
    {
      v28 = [actionCopy url];
      isAnySimpleTelephonyScheme = dd_isAnySimpleTelephonyScheme();

      if (isAnySimpleTelephonyScheme)
      {
        v30 = [actionCopy url];
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

        result = v34;
      }

      else
      {
        v35 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
        if (v35)
        {
          sub_10000BA80(v35, v36, v37, v38, v39, v40, v41, v42);
        }

        result = 0;
      }
    }
  }

  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1000096C8;
  v45[3] = &unk_100018760;
  v46 = v5;
  selfCopy = self;
  v48 = result;
  v43 = result;
  v44 = v5;
  dispatch_async(&_dispatch_main_q, v45);
}

+ (id)alternateNameForContact:(id)contact
{
  contactCopy = contact;
  emailAddresses = [contactCopy emailAddresses];
  v5 = [emailAddresses count];

  if (v5)
  {
    emailAddresses2 = [contactCopy emailAddresses];
    v7 = [emailAddresses2 objectAtIndex:0];

    value = [v7 value];

    goto LABEL_10;
  }

  familyName = [contactCopy familyName];
  if ([familyName length])
  {
    goto LABEL_8;
  }

  givenName = [contactCopy givenName];
  if ([givenName length])
  {
LABEL_7:

LABEL_8:
LABEL_9:
    value = 0;
    goto LABEL_10;
  }

  nickname = [contactCopy nickname];
  if ([nickname length])
  {

    goto LABEL_7;
  }

  organizationName = [contactCopy organizationName];
  v14 = [organizationName length];

  if (v14)
  {
    goto LABEL_9;
  }

  value = DDLocalizedString();
LABEL_10:

  return value;
}

- (void)setCancelButtonVisible:(BOOL)visible
{
  visibleCopy = visible;
  navigationItem = [(CNContactViewController *)self->_personViewController navigationItem];
  v8 = navigationItem;
  if (visibleCopy)
  {
    rightBarButtonItem = [navigationItem rightBarButtonItem];

    if (rightBarButtonItem)
    {
      return;
    }

    v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancelPressed:"];
    navigationItem2 = [(CNContactViewController *)self->_personViewController navigationItem];
    [navigationItem2 setRightBarButtonItem:v8];
  }

  else
  {
    [navigationItem setRightBarButtonItem:0];
  }
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  coordinatorCopy = coordinator;
  v14.receiver = self;
  v14.super_class = DDAddToContactsViewController;
  [(DDAddToContactsViewController *)&v14 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
  verticalSizeClass = [collectionCopy verticalSizeClass];
  traitCollection = [(DDAddToContactsViewController *)self traitCollection];
  verticalSizeClass2 = [traitCollection verticalSizeClass];

  if (verticalSizeClass != verticalSizeClass2)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100009DD8;
    v11[3] = &unk_100018990;
    v12 = collectionCopy;
    v13 = coordinatorCopy;
    [v13 animateAlongsideTransition:v11 completion:0];
  }
}

- (void)cancelPressed:(id)pressed
{
  if (!self->_contactBeingAdded)
  {
    [(DDAddToContactsViewController *)self doneWithAddingContactShouldDismiss:1];
  }
}

- (void)contactViewControllerForUnknownContactDidEndAddingToContacts:(id)contacts
{
  self->_contactBeingAdded = 0;
  [(DDAddToContactsViewController *)self setCancellable:1];
  if (self->_ignoredIsDismissed)
  {

    [(DDAddToContactsViewController *)self doneWithAddingContactShouldDismiss:1];
  }
}

@end