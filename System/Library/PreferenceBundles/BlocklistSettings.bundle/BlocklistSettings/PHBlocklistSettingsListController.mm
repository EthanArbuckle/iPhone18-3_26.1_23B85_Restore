@interface PHBlocklistSettingsListController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (BSUIBrandManager)brandManager;
- (PHBlocklistSettingsListController)init;
- (id)_specifierForRowIndex:(int64_t)index;
- (id)createNewAutocompleteSearchController;
- (id)searchController:(id)controller composeRecipientForAddress:(id)address;
- (id)specifiers;
- (void)_ruleTapped:(id)tapped;
- (void)_rulesChanged:(id)changed;
- (void)_showContactPickerViewController:(id)controller;
- (void)_updateEditDoneButton;
- (void)_updateForEditingState;
- (void)blockContact:(id)contact;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)createBlocklistSettingsViewWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)didTapTextViewAccessoryButtonForSearchController:(id)controller anchoredToView:(id)view;
- (void)emitBlocklistNavigationEvent;
- (void)handleContactPickerBlockButtonTapped;
- (void)handleContactPickerCancelled;
- (void)loadView;
- (void)presentContactPicker;
- (void)refreshBlocklistEntries;
- (void)setBlocklistEditing:(BOOL)editing;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
@end

@implementation PHBlocklistSettingsListController

- (PHBlocklistSettingsListController)init
{
  v9.receiver = self;
  v9.super_class = PHBlocklistSettingsListController;
  v2 = [(PHBlocklistSettingsListController *)&v9 init];
  if (v2)
  {
    TUAddLocalNSObserver();
    v3 = objc_alloc_init(CNContactStore);
    contactStore = v2->_contactStore;
    v2->_contactStore = v3;

    v5 = [[TUContactsDataProvider alloc] initWithContactsDataSource:v2->_contactStore];
    contactsDataProvider = v2->_contactsDataProvider;
    v2->_contactsDataProvider = v5;

    v7 = objc_alloc_init(TUFeatureFlags);
    v2->_betterBlockingEnabled = [v7 betterBlockingEnabled];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHBlocklistSettingsListController;
  [(PHBlocklistSettingsListController *)&v4 dealloc];
}

- (void)_rulesChanged:(id)changed
{
  if ([(PHBlocklistSettingsListController *)self betterBlockingEnabled])
  {
    [(PHBlocklistSettingsListController *)self refreshBlocklistEntries];
  }

  else
  {
    [(PHBlocklistSettingsListController *)self reloadSpecifiers];
  }

  v4 = +[TUPrivacyManager sharedPrivacyManager];
  privacyRules = [v4 privacyRules];
  v6 = [privacyRules count];

  if (!v6)
  {
    self->_editing = 0;
  }

  [(PHBlocklistSettingsListController *)self _updateForEditingState];
}

- (void)loadView
{
  if ([(PHBlocklistSettingsListController *)self betterBlockingEnabled])
  {
    v6.receiver = self;
    v6.super_class = PHBlocklistSettingsListController;
    [(PHBlocklistSettingsListController *)&v6 loadView];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_2BE8;
    v5[3] = &unk_149D0;
    v5[4] = self;
    [(PHBlocklistSettingsListController *)self createBlocklistSettingsViewWithCompletionHandler:v5];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = PHBlocklistSettingsListController;
    if ([(PHBlocklistSettingsListController *)&v4 respondsToSelector:"loadView"])
    {
      v3.receiver = self;
      v3.super_class = PHBlocklistSettingsListController;
      [(PHBlocklistSettingsListController *)&v3 loadView];
    }
  }

  [(PHBlocklistSettingsListController *)self _updateEditDoneButton];
}

- (id)specifiers
{
  betterBlockingEnabled = [(PHBlocklistSettingsListController *)self betterBlockingEnabled];
  v4 = OBJC_IVAR___PSListController__specifiers;
  if (betterBlockingEnabled && !*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = &__NSArray0__struct;
  }

  v5 = *&self->PSListController_opaque[v4];
  if (!v5)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:0 edit:0];
    if (PHShouldHideVoicemailUI())
    {
      v8 = @"BLOCKLIST_HELP_NO_VOICEMAIL";
    }

    else
    {
      v8 = @"BLOCKLIST_HELP";
    }

    v9 = [PHBlocklistSettingsStrings localizedStringForKey:v8];
    [v7 setProperty:v9 forKey:PSFooterTextGroupKey];
    [v6 addObject:v7];
    self->_specifierStartIndex = 1;
    v10 = +[TUPrivacyManager sharedPrivacyManager];
    privacyRules = [v10 privacyRules];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_31E0;
    v20[3] = &unk_14A48;
    v20[4] = self;
    v12 = v6;
    v21 = v12;
    [privacyRules enumerateObjectsUsingBlock:v20];

    addNewSpecifier = self->_addNewSpecifier;
    if (!addNewSpecifier)
    {
      v14 = [PHBlocklistSettingsStrings localizedStringForKey:@"BLOCKLIST_ADD_NEW"];
      v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:13 edit:0];
      v16 = self->_addNewSpecifier;
      self->_addNewSpecifier = v15;

      [(PSSpecifier *)self->_addNewSpecifier setButtonAction:"_showContactPickerViewController:"];
      addNewSpecifier = self->_addNewSpecifier;
    }

    [v12 addObject:addNewSpecifier];
    v17 = [[NSArray alloc] initWithArray:v12];
    v18 = *&self->PSListController_opaque[v4];
    *&self->PSListController_opaque[v4] = v17;

    v5 = *&self->PSListController_opaque[v4];
  }

  return v5;
}

- (void)_ruleTapped:(id)tapped
{
  tappedCopy = tapped;
  userInfo = [tappedCopy userInfo];
  type = [userInfo type];
  if (!type)
  {
    phoneNumber = [userInfo phoneNumber];
    unformattedInternationalRepresentation = [phoneNumber unformattedInternationalRepresentation];
    v12 = unformattedInternationalRepresentation;
    if (unformattedInternationalRepresentation)
    {
      digits = unformattedInternationalRepresentation;
    }

    else
    {
      phoneNumber2 = [userInfo phoneNumber];
      digits = [phoneNumber2 digits];
    }

    v6 = &CNContactPhoneNumbersKey;
    v7 = 2;
    goto LABEL_11;
  }

  if (type != 2)
  {
    if (type != 1)
    {
      v13 = 0;
      v7 = 0;
      digits = 0;
      goto LABEL_12;
    }

    digits = [userInfo email];
    v6 = &CNContactEmailAddressesKey;
    v7 = 3;
LABEL_11:
    v13 = *v6;
LABEL_12:
    v15 = [TUContactsDataProviderFetchRequest alloc];
    v16 = [[TUHandle alloc] initWithType:v7 value:digits];
    v17 = [v15 initWithHandle:v16];

    v18 = +[CNContactViewController descriptorForRequiredKeys];
    v41 = v18;
    v19 = [NSArray arrayWithObjects:&v41 count:1];
    [v17 setAuxiliaryKeysToFetch:v19];

    contactsDataProvider = [(PHBlocklistSettingsListController *)self contactsDataProvider];
    v21 = [contactsDataProvider executeFetchRequest:v17];

    contacts = [v21 contacts];
    firstObject = [contacts firstObject];

    if (firstObject)
    {
      v24 = [CNContactViewController viewControllerForContact:firstObject];
      [v24 setAllowsEditing:0];
      if ([v13 isEqualToString:CNContactPhoneNumbersKey])
      {
        v25 = [CNPhoneNumber phoneNumberWithStringValue:digits];
        v26 = [firstObject labeledValueForPhoneNumber:v25];
        identifier = [v26 identifier];
      }

      else
      {
        if (![v13 isEqualToString:CNContactEmailAddressesKey])
        {
          identifier = 0;
          goto LABEL_25;
        }

        v25 = [firstObject labeledValueForEmailAddress:digits];
        identifier = [v25 identifier];
      }

LABEL_25:
      [v24 highlightPropertyWithKey:v13 identifier:identifier];
      goto LABEL_26;
    }

    identifier = objc_alloc_init(CNMutableContact);
    if ([v13 isEqualToString:CNContactPhoneNumbersKey])
    {
      v28 = [CNPhoneNumber phoneNumberWithStringValue:digits];
      v29 = [CNLabeledValue labeledValueWithLabel:CNLabelPhoneNumberMain value:v28];
      v40 = v29;
      v30 = [NSArray arrayWithObjects:&v40 count:1];

      [identifier setPhoneNumbers:v30];
    }

    else
    {
      if (![v13 isEqualToString:CNContactEmailAddressesKey])
      {
LABEL_23:
        v24 = [CNContactViewController viewControllerForUnknownContact:identifier];
LABEL_26:

        contactStore = [(PHBlocklistSettingsListController *)self contactStore];
        [v24 setContactStore:contactStore];

        navigationController = [(PHBlocklistSettingsListController *)self navigationController];
        [navigationController pushViewController:v24 animated:1];

        goto LABEL_27;
      }

      v31 = [CNLabeledValue labeledValueWithLabel:CNLabelHome value:digits];
      v39 = v31;
      v30 = [NSArray arrayWithObjects:&v39 count:1];

      [identifier setEmailAddresses:v30];
    }

    goto LABEL_23;
  }

  objc_initWeak(&location, self);
  brandManager = [(PHBlocklistSettingsListController *)self brandManager];
  businessID = [userInfo businessID];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_3C5C;
  v36[3] = &unk_14A98;
  objc_copyWeak(&v37, &location);
  [brandManager brandWithURI:businessID completion:v36];

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);
LABEL_27:
}

- (void)_updateEditDoneButton
{
  v3 = +[TUPrivacyManager sharedPrivacyManager];
  privacyRules = [v3 privacyRules];
  v5 = [privacyRules count];

  if (v5)
  {
    if (self->_editing)
    {
      v6 = @"BLOCKLIST_DONE";
    }

    else
    {
      v6 = @"BLOCKLIST_EDIT";
    }

    navigationItem2 = [PHBlocklistSettingsStrings localizedStringForKey:v6];
    if (self->_editing)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    v8 = [[UIBarButtonItem alloc] initWithTitle:navigationItem2 style:v7 target:self action:"_editDoneButtonTapped:"];
    navigationItem = [(PHBlocklistSettingsListController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v8];
  }

  else
  {
    navigationItem2 = [(PHBlocklistSettingsListController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:0];
  }
}

- (void)_updateForEditingState
{
  if ([(PHBlocklistSettingsListController *)self betterBlockingEnabled])
  {
    [(PHBlocklistSettingsListController *)self setBlocklistEditing:self->_editing];
  }

  [(PHBlocklistSettingsListController *)self _updateEditDoneButton];
  navigationItem = [(PHBlocklistSettingsListController *)self navigationItem];
  [navigationItem setHidesBackButton:self->_editing animated:1];

  table = [(PHBlocklistSettingsListController *)self table];
  [table setEditing:self->_editing animated:1];

  addNewSpecifier = self->_addNewSpecifier;
  v6 = [NSNumber numberWithBool:!self->_editing];
  [(PSSpecifier *)addNewSpecifier setProperty:v6 forKey:PSEnabledKey];

  v7 = self->_addNewSpecifier;

  [(PHBlocklistSettingsListController *)self reloadSpecifier:v7 animated:0];
}

- (void)_showContactPickerViewController:(id)controller
{
  contactPickerViewController = [(PHBlocklistSettingsListController *)self contactPickerViewController];

  if (!contactPickerViewController)
  {
    v5 = objc_alloc_init(CNContactPickerViewController);
    [(PHBlocklistSettingsListController *)self setContactPickerViewController:v5];

    contactPickerViewController2 = [(PHBlocklistSettingsListController *)self contactPickerViewController];
    [contactPickerViewController2 setDelegate:self];

    v7 = [NSPredicate predicateWithFormat:@"(emailAddresses.@count > 0) OR (phoneNumbers.@count > 0)"];
    contactPickerViewController3 = [(PHBlocklistSettingsListController *)self contactPickerViewController];
    [contactPickerViewController3 setPredicateForEnablingContact:v7];

    contactPickerViewController4 = [(PHBlocklistSettingsListController *)self contactPickerViewController];
    [contactPickerViewController4 setAllowsEditing:0];

    v16[0] = CNContactPhoneNumbersKey;
    v16[1] = CNContactEmailAddressesKey;
    v10 = [NSArray arrayWithObjects:v16 count:2];
    contactPickerViewController5 = [(PHBlocklistSettingsListController *)self contactPickerViewController];
    [contactPickerViewController5 setDisplayedPropertyKeys:v10];

    contactPickerViewController6 = [(PHBlocklistSettingsListController *)self contactPickerViewController];
    [contactPickerViewController6 setAllowsCancel:1];

    contactPickerViewController7 = [(PHBlocklistSettingsListController *)self contactPickerViewController];
    v14 = [PHBlocklistSettingsStrings localizedStringForKey:@"BLOCKLIST_ADD_PROMPT"];
    [contactPickerViewController7 setPrompt:v14];
  }

  contactPickerViewController8 = [(PHBlocklistSettingsListController *)self contactPickerViewController];
  [(PHBlocklistSettingsListController *)self presentViewController:contactPickerViewController8 animated:1 completion:0];
}

- (BSUIBrandManager)brandManager
{
  brandManager = self->_brandManager;
  if (!brandManager)
  {
    v4 = [[BSUIBrandManager alloc] initWithCachingEnabled:0];
    v5 = self->_brandManager;
    self->_brandManager = v4;

    brandManager = self->_brandManager;
  }

  return brandManager;
}

- (id)createNewAutocompleteSearchController
{
  v2 = [[CNAutocompleteSearchController alloc] initWithSearchType:2];
  v3 = NSSelectorFromString(@"setWantsSuggestions:");
  if (objc_opt_respondsToSelector())
  {
    v4 = [v2 methodSignatureForSelector:v3];
    v5 = [NSInvocation invocationWithMethodSignature:v4];

    [v5 setSelector:v3];
    [v5 setTarget:v2];
    v7 = 0;
    [v5 setArgument:&v7 atIndex:2];
    [v5 invoke];
  }

  return v2;
}

- (id)_specifierForRowIndex:(int64_t)index
{
  v4 = self->_specifierStartIndex + index;
  v5 = OBJC_IVAR___PSListController__specifiers;
  if (v4 >= [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] count])
  {
    v6 = 0;
  }

  else
  {
    v6 = [*&self->PSListController_opaque[v5] objectAtIndex:v4];
  }

  return v6;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  selfCopy = self;
  v5 = -[PHBlocklistSettingsListController _specifierForRowIndex:](self, "_specifierForRowIndex:", [path row]);
  LOBYTE(selfCopy) = v5 != selfCopy->_addNewSpecifier;

  return selfCopy;
}

- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  selfCopy = self;
  v5 = -[PHBlocklistSettingsListController _specifierForRowIndex:](self, "_specifierForRowIndex:", [path row]);
  LOBYTE(selfCopy) = v5 != selfCopy->_addNewSpecifier;

  return selfCopy;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    v7 = -[PHBlocklistSettingsListController _specifierForRowIndex:](self, "_specifierForRowIndex:", [path row]);
    if (v7 && v7 != self->_addNewSpecifier)
    {
      v10 = v7;
      v8 = +[TUPrivacyManager sharedPrivacyManager];
      userInfo = [(PSSpecifier *)v10 userInfo];
      [v8 removeRule:userInfo];

      [(PHBlocklistSettingsListController *)self removeSpecifier:v10 animated:1];
      [(PHBlocklistSettingsListController *)self reloadSpecifiers];
      v7 = v10;
    }
  }
}

- (void)blockContact:(id)contact
{
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  contactCopy = contact;
  phoneNumbers = [contactCopy phoneNumbers];
  v4 = [phoneNumbers countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(phoneNumbers);
        }

        value = [*(*(&v27 + 1) + 8 * i) value];
        digits = [value digits];
        v10 = TUHomeCountryCode();
        v11 = [TUPhoneNumber phoneNumberWithDigits:digits countryCode:v10];

        if (v11)
        {
          v12 = +[TUPrivacyManager sharedPrivacyManager];
          [v12 setBlockIncomingCommunication:1 forPhoneNumber:v11];
        }
      }

      v5 = [phoneNumbers countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v5);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  emailAddresses = [contactCopy emailAddresses];
  v14 = [emailAddresses countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(emailAddresses);
        }

        v18 = *(*(&v23 + 1) + 8 * j);
        v19 = +[TUPrivacyManager sharedPrivacyManager];
        value2 = [v18 value];
        [v19 setBlockIncomingCommunication:1 forEmailAddress:value2];
      }

      v15 = [emailAddresses countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v15);
  }

  [(PHBlocklistSettingsListController *)self reloadSpecifiers];
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  contactCopy = contact;
  [picker invalidateSelectionAnimated:1];
  [(PHBlocklistSettingsListController *)self blockContact:contactCopy];

  [(PHBlocklistSettingsListController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)createBlocklistSettingsViewWithCompletionHandler:(id)handler
{
  v5 = (*(*(sub_D2B8(&qword_190D8, &qword_10E80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_EC10();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10F08;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10F18;
  v12[5] = v11;
  selfCopy = self;
  sub_BFAC(0, 0, v7, &unk_10F28, v12);
}

- (void)refreshBlocklistEntries
{
  selfCopy = self;
  sub_54F8();
}

- (void)setBlocklistEditing:(BOOL)editing
{
  selfCopy = self;
  sub_5C50();
}

- (void)presentContactPicker
{
  selfCopy = self;
  sub_5D74();
}

- (void)handleContactPickerCancelled
{
  selfCopy = self;
  sub_67B4();
}

- (void)handleContactPickerBlockButtonTapped
{
  selfCopy = self;
  sub_68FC();
}

- (void)emitBlocklistNavigationEvent
{
  selfCopy = self;
  sub_B100();
}

- (id)searchController:(id)controller composeRecipientForAddress:(id)address
{
  sub_EB40();
  selfCopy = self;
  v6 = sub_CF24();

  return v6;
}

- (void)didTapTextViewAccessoryButtonForSearchController:(id)controller anchoredToView:(id)view
{
  controllerCopy = controller;
  viewCopy = view;
  selfCopy = self;
  _sSo33PHBlocklistSettingsListControllerC09BlocklistB0E29didTapTextViewAccessoryButton3for10anchoredToySo020CNAutocompleteSearchD0C_So6UIViewCtF_0();
}

@end