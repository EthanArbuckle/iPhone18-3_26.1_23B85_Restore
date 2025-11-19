@interface ContactsSettingsPlugin
- (BOOL)_importAlreadyInProgress;
- (ContactsSettingsPlugin)init;
- (__CTServerConnection)_ctServerConnection;
- (id)_simPhonebookEntryAtIndex:(int)a3;
- (id)contactProviderCount:(id)a3;
- (id)contactStoreTitlesForSpecifier:(id)a3;
- (id)contactsSortOrder:(id)a3;
- (id)defaultContactsName:(id)a3;
- (id)meCardName:(id)a3;
- (id)personNameOrder:(id)a3;
- (id)sharedNameAndPhotoAudience:(id)a3;
- (id)sharedNameAndPhotoSharingFooterText;
- (id)specifiers;
- (void)_SIMStatusChanged;
- (void)_beginImportToStoreID:(int)a3;
- (void)_clearSpecifiers;
- (void)_erroredDuringSIMPhonebookFetch;
- (void)_fetchSIMPhonebook;
- (void)_noteImportEnded;
- (void)_noteImportStarted;
- (void)_phonebookAvailable;
- (void)_phonebookSelected;
- (void)_reloadMeCardCellIfVisible;
- (void)_rootControllerDidSuspend;
- (void)_setDefaultContacts:(id)a3 specifier:(id)a4;
- (void)_showMeCardPopover;
- (void)_stopListeningForSIMPhonebookNotifications;
- (void)_synchronizeNanoUserDefault:(id)a3;
- (void)_updateABStoresAndNames;
- (void)_updateSIMImportSpecifier:(BOOL)a3;
- (void)_updateSIMImportVisibility;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)dealloc;
- (void)importFromSIM:(id)a3;
- (void)provideSettingsNavigationDonation;
- (void)setContactsSortOrder:(id)a3 specifier:(id)a4;
- (void)setDefaultContacts:(id)a3 specifier:(id)a4;
- (void)setPersonNameOrder:(id)a3 specifier:(id)a4;
- (void)showMeCardPicker:(id)a3;
- (void)showSharedNameAndPhotoSettings:(id)a3;
- (void)windowDidRotate:(id)a3;
- (void)windowWillRotate:(id)a3;
@end

@implementation ContactsSettingsPlugin

- (ContactsSettingsPlugin)init
{
  v18.receiver = self;
  v18.super_class = ContactsSettingsPlugin;
  v2 = [(ContactsSettingsPlugin *)&v18 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_rootControllerDidSuspend" name:PSRootControllerDidSuspendNotification object:0];

    v4 = +[UIDevice currentDevice];
    if (objc_opt_respondsToSelector())
    {
      v5 = +[UIDevice currentDevice];
      v6 = [v5 userInterfaceIdiom];

      if (v6 != &dword_0 + 1)
      {
        goto LABEL_6;
      }

      v7 = +[NSNotificationCenter defaultCenter];
      [v7 addObserver:v2 selector:"windowWillRotate:" name:UIWindowWillRotateNotification object:0];

      v4 = +[NSNotificationCenter defaultCenter];
      [v4 addObserver:v2 selector:"windowDidRotate:" name:UIWindowDidRotateNotification object:0];
    }

LABEL_6:
    v8 = ABAddressBookCreateWithOptions(0, 0);
    v2->_addressBook = v8;
    ABAddressBookRegisterExternalChangeCallback(v8, sub_34BC, v2);
    v9 = dispatch_queue_create("com.apple.addressBookUI.contactsSettingsPlugin", 0);
    addressBookQueue = v2->_addressBookQueue;
    v2->_addressBookQueue = v9;

    v11 = +[UIDevice currentDevice];
    if (objc_opt_respondsToSelector())
    {
      v12 = +[UIDevice currentDevice];
      v13 = [v12 userInterfaceIdiom];

      if (v13 == &dword_0 + 1)
      {
        v14 = @"helpkit://open?topic=ipad99df07d1";
LABEL_11:
        helpKitLink = v2->_helpKitLink;
        v2->_helpKitLink = &v14->isa;

        v16 = v2;
        goto LABEL_12;
      }
    }

    else
    {
    }

    v14 = @"helpkit://open?topic=iph7edacccf9";
    goto LABEL_11;
  }

LABEL_12:

  return v2;
}

- (void)_rootControllerDidSuspend
{
  [(UIAlertController *)self->_loadingContacts dismissViewControllerAnimated:0 completion:0];

  [(ContactsSettingsPlugin *)self _dismissMeCardPickerAnimated:0];
}

- (BOOL)_importAlreadyInProgress
{
  v2 = [UIApp rootController];
  v3 = [v2 taskIsRunning:@"importContactsFromSIM"];

  return v3;
}

- (void)_noteImportStarted
{
  if (![(ContactsSettingsPlugin *)self _importAlreadyInProgress])
  {
    v2 = [UIApp rootController];
    [v2 addTask:@"importContactsFromSIM"];
  }
}

- (void)_updateSIMImportSpecifier:(BOOL)a3
{
  if (self->_shouldShowSIMImport)
  {
    v3 = a3;
    v5 = [(ContactsSettingsPlugin *)self _importAlreadyInProgress];
    SIMImportSpecifier = self->_SIMImportSpecifier;
    if (v5)
    {
      v7 = @"Importing contacts";
    }

    else
    {
      v7 = @"Import SIM Contacts";
    }

    v8 = &kCFBooleanFalse;
    if (!v5)
    {
      v8 = &kCFBooleanTrue;
    }

    [(PSSpecifier *)self->_SIMImportSpecifier setProperty:*v8 forKey:PSEnabledKey];
    v9 = self->_SIMImportSpecifier;
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:v7 value:&stru_14F18 table:@"Contacts"];
    [(PSSpecifier *)v9 setName:v11];

    if (v3)
    {
      v12 = self->_SIMImportSpecifier;

      [(ContactsSettingsPlugin *)self reloadSpecifier:v12];
    }
  }
}

- (void)_noteImportEnded
{
  if ([(ContactsSettingsPlugin *)self _importAlreadyInProgress])
  {
    v3 = [UIApp rootController];
    v12 = [v3 viewControllers];

    v4 = [v12 count];
    if (v4 >= 1)
    {
      v5 = v4 + 1;
      while (1)
      {
        v6 = [v12 objectAtIndex:v5 - 2];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = [(PSSpecifier *)self->_SIMImportSpecifier identifier];
          v8 = [v6 specifierForID:v7];

          if (v8)
          {
            break;
          }
        }

        if (--v5 <= 1)
        {
          goto LABEL_10;
        }
      }

      [v8 setProperty:kCFBooleanTrue forKey:PSEnabledKey];
      v9 = [NSBundle bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:@"Import SIM Contacts" value:&stru_14F18 table:@"Contacts"];
      [v8 setName:v10];

      [v6 reloadSpecifier:v8];
    }

LABEL_10:
    v11 = [UIApp rootController];
    [v11 taskFinished:@"importContactsFromSIM"];
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  ABAddressBookUnregisterExternalChangeCallback(self->_addressBook, sub_34BC, self);
  CFRelease(self->_addressBook);
  self->_addressBook = 0;
  ctServerConnection = self->_ctServerConnection;
  if (ctServerConnection)
  {
    CFRelease(ctServerConnection);
  }

  CTTelephonyCenterGetDefault();
  CTTelephonyCenterRemoveEveryObserver();
  loadingContacts = self->_loadingContacts;
  if (loadingContacts)
  {
    [(UIAlertController *)loadingContacts dismissViewControllerAnimated:0 completion:0];
    v6 = self->_loadingContacts;
    self->_loadingContacts = 0;
  }

  [(ContactsSettingsPlugin *)self _dismissMeCardPickerAnimated:0];
  v7.receiver = self;
  v7.super_class = ContactsSettingsPlugin;
  [(ContactsSettingsPlugin *)&v7 dealloc];
}

- (void)_updateABStoresAndNames
{
  addressBookQueue = self->_addressBookQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3AD4;
  block[3] = &unk_14AE0;
  block[4] = self;
  dispatch_sync(addressBookQueue, block);
}

- (id)specifiers
{
  [(ContactsSettingsPlugin *)self setTitle:0];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [NSDictionary alloc];
  v5 = [v3 pathForResource:@"Contacts" ofType:@"plist"];
  v6 = [v4 initWithContentsOfFile:v5];

  v51 = v6;
  v7 = SpecifiersFromPlist();
  v8 = [v7 specifierForID:{@"ContactsHeader", 0}];
  v9 = [v7 specifierForID:@"ContactsPlacard"];
  v10 = [(ContactsSettingsPlugin *)self traitCollection];
  v11 = [v10 pe_isSettingsFeatureDescriptionCellSupported];

  v52 = v3;
  if (v11)
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"SETTINGS_SUBTITLE" value:&stru_14F18 table:@"Contacts"];

    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"LEARN_MORE" value:&stru_14F18 table:@"Contacts"];

    v16 = [(ContactsSettingsPlugin *)self helpKitLink];
    v17 = [NSString stringWithFormat:@"%@ [%@](%@)", v13, v15, v16];

    [v9 setObject:v17 forKeyedSubscript:PSTableCellSubtitleTextKey];
  }

  else
  {
    [v7 removeObject:v9];
    v13 = v9;
    v9 = 0;
  }

  v18 = [(ContactsSettingsPlugin *)self appPolicy];

  if (!v18)
  {
    v19 = [[PSSystemPolicyForApp alloc] initWithBundleIdentifier:@"com.apple.MobileAddressBook"];
    [(ContactsSettingsPlugin *)self setAppPolicy:v19];

    v20 = [(ContactsSettingsPlugin *)self appPolicy];
    [v20 setDelegate:self];
  }

  v21 = [(ContactsSettingsPlugin *)self appPolicy];
  v22 = [v21 specifiersForPolicyOptions:0x800000 force:0];

  v23 = [(ContactsSettingsPlugin *)self appPolicy];
  v24 = [v23 specifiersForPolicyOptions:0x8000000 force:0];

  v25 = [v7 mutableCopy];
  currentSpecifiers = self->_currentSpecifiers;
  self->_currentSpecifiers = v25;

  v27 = [v24 specifierForID:@"ACCOUNTS"];
  v49 = v8;
  v50 = v7;
  v48 = v9;
  v46 = v24;
  if (v27)
  {
    v28 = v27;
    v29 = [NSBundle bundleForClass:objc_opt_class()];
    v30 = [v29 localizedStringForKey:@"CONTACTS_ACCOUNTS" value:&stru_14F18 table:@"Contacts"];
    [v28 setName:v30];
  }

  else
  {
    v28 = [v24 specifierForID:@"ADD_ACCOUNT"];
    if (!v28)
    {
      goto LABEL_13;
    }
  }

  if (v9)
  {
    v31 = v9;
  }

  else
  {
    v31 = v8;
  }

  [(NSMutableArray *)self->_currentSpecifiers ps_insertObject:v28 afterObject:v31];
LABEL_13:
  v47 = v22;
  [(NSMutableArray *)self->_currentSpecifiers ps_insertObjectsFromArray:v22 afterObject:v28];
  [(ContactsSettingsPlugin *)self _updateSIMImportVisibility];
  [(ContactsSettingsPlugin *)self _updateABStoresAndNames];
  v53 = [(NSMutableArray *)self->_contactStores count];
  v32 = +[CNEnvironment currentEnvironment];
  v33 = [v32 featureFlags];
  v45 = [v33 isFeatureEnabled:12];

  v34 = [(NSMutableArray *)self->_currentSpecifiers count];
  if (v34 >= 1)
  {
    v35 = v34 + 1;
    v44 = PSFooterTextGroupKey;
    v36 = PSValuesDataSourceKey;
    v37 = PSTitlesDataSourceKey;
    while (1)
    {
      v38 = [(NSMutableArray *)self->_currentSpecifiers objectAtIndex:v35 - 2];
      v39 = [v38 identifier];
      if ([v39 isEqualToString:@"DefaultContacts"])
      {
        break;
      }

      if ([v39 isEqualToString:@"SIMImport"])
      {
        objc_storeStrong(&self->_SIMImportSpecifier, v38);
        objc_storeWeak(&v38[OBJC_IVAR___PSSpecifier_target], self);
      }

      else
      {
        if (![v39 isEqualToString:@"SIMImportSpacer"])
        {
          if ([v39 isEqualToString:@"MeCard"])
          {
            objc_storeStrong(&self->_MeCardSpecifier, v38);
LABEL_29:
            objc_storeWeak(&v38[OBJC_IVAR___PSSpecifier_target], self);
            goto LABEL_30;
          }

          if ([v39 isEqualToString:@"ContactsSortOrder"] || objc_msgSend(v39, "isEqualToString:", @"PersonNameOrder") || objc_msgSend(v39, "isEqualToString:", @"ContactsInMail"))
          {
            goto LABEL_29;
          }

          if ([v39 isEqualToString:@"ContactProvider"])
          {
            objc_storeWeak(&v38[OBJC_IVAR___PSSpecifier_target], self);
LABEL_35:
            if (v45)
            {
              goto LABEL_30;
            }
          }

          else
          {
            if ([v39 isEqualToString:@"ContactProviderSpacer"])
            {
              goto LABEL_35;
            }

            if ([v39 isEqualToString:@"SharedNamePhotoSpacer"])
            {
              objc_storeWeak(&v38[OBJC_IVAR___PSSpecifier_target], self);
              v40 = [(ContactsSettingsPlugin *)self sharedNameAndPhotoSharingFooterText];
              [v38 setProperty:v40 forKey:v44];

              goto LABEL_30;
            }

            if ([v39 isEqualToString:@"SharedNameAndPhoto"])
            {
              goto LABEL_29;
            }

            if (![v39 isEqualToString:@"ContactsHeader"])
            {
              goto LABEL_30;
            }
          }

LABEL_23:
          [(NSMutableArray *)self->_currentSpecifiers removeObjectAtIndex:v35 - 2];
          goto LABEL_30;
        }

        objc_storeStrong(&self->_SIMImportSpacerSpecifier, v38);
      }

      if (!self->_shouldShowSIMImport)
      {
        goto LABEL_23;
      }

LABEL_30:

      if (--v35 <= 1)
      {
        goto LABEL_42;
      }
    }

    objc_storeWeak(&v38[OBJC_IVAR___PSSpecifier_target], self);
    [v38 setProperty:@"contactStoreTitlesForSpecifier:" forKey:v36];
    [v38 setProperty:@"contactStoreTitlesForSpecifier:" forKey:v37];
    if (v53 >= 2)
    {
      goto LABEL_30;
    }

    goto LABEL_23;
  }

LABEL_42:
  [(ContactsSettingsPlugin *)self _updateSIMImportSpecifier:0];
  if (MGGetBoolAnswer())
  {
    CTTelephonyCenterGetDefault();
    CTTelephonyCenterAddObserver();
  }

  [(ContactsSettingsPlugin *)self setSpecifiers:self->_currentSpecifiers];
  v41 = self->_currentSpecifiers;
  v42 = v41;

  return v41;
}

- (void)setDefaultContacts:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  addressBookQueue = self->_addressBookQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4608;
  block[3] = &unk_14B08;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(addressBookQueue, block);
}

- (void)_setDefaultContacts:(id)a3 specifier:(id)a4
{
  v6 = [(NSMutableArray *)self->_contactStoreNames indexOfObject:a3, a4];
  if (a3)
  {
    v7 = v6;
    if (v6 < [(NSMutableArray *)self->_contactStores count])
    {
      addressBook = self->_addressBook;
      v9 = [(NSMutableArray *)self->_contactStores objectAtIndex:v7];

      _ABAddressBookSetDefaultSource(addressBook, v9, 0);
    }
  }
}

- (id)defaultContactsName:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_47F4;
  v13 = sub_4804;
  v14 = 0;
  if (![(NSMutableArray *)self->_contactStoreNames count])
  {
    [(ContactsSettingsPlugin *)self _updateABStoresAndNames];
  }

  addressBookQueue = self->_addressBookQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_480C;
  v8[3] = &unk_14B30;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(addressBookQueue, v8);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)contactStoreTitlesForSpecifier:(id)a3
{
  if (![(NSMutableArray *)self->_contactStoreNames count])
  {
    [(ContactsSettingsPlugin *)self _updateABStoresAndNames];
  }

  contactStoreNames = self->_contactStoreNames;

  return contactStoreNames;
}

- (__CTServerConnection)_ctServerConnection
{
  result = self->_ctServerConnection;
  if (!result)
  {
    result = _CTServerConnectionCreate();
    self->_ctServerConnection = result;
  }

  return result;
}

- (void)_stopListeningForSIMPhonebookNotifications
{
  CTTelephonyCenterGetDefault();
  CTTelephonyCenterRemoveObserver();
  CTTelephonyCenterRemoveObserver();
  CTTelephonyCenterRemoveObserver();

  CTTelephonyCenterRemoveObserver();
}

- (void)_erroredDuringSIMPhonebookFetch
{
  [(ContactsSettingsPlugin *)self _stopListeningForSIMPhonebookNotifications];
  loadingContacts = self->_loadingContacts;
  if (loadingContacts)
  {
    [(UIAlertController *)loadingContacts dismissViewControllerAnimated:1 completion:0];
    v4 = self->_loadingContacts;
    self->_loadingContacts = 0;

    [(ContactsSettingsPlugin *)self _noteImportEnded];
  }
}

- (void)_fetchSIMPhonebook
{
  CTTelephonyCenterGetDefault();
  CTTelephonyCenterAddObserver();
  CTTelephonyCenterAddObserver();
  CTTelephonyCenterAddObserver();
  CTTelephonyCenterAddObserver();
  if ([(ContactsSettingsPlugin *)self _ctServerConnection])
  {
    if (!(_CTServerConnectionSelectPhonebook() >> 32))
    {
      return;
    }

    CFRelease(self->_ctServerConnection);
    self->_ctServerConnection = 0;
  }

  [(ContactsSettingsPlugin *)self _erroredDuringSIMPhonebookFetch];
}

- (id)_simPhonebookEntryAtIndex:(int)a3
{
  v4 = [(ContactsSettingsPlugin *)self _ctServerConnection];
  if (v4)
  {
    if (_CTServerConnectionCopyPhoneBookEntry() >> 32)
    {
      CFRelease(self->_ctServerConnection);
      self->_ctServerConnection = 0;
      [(ContactsSettingsPlugin *)self _erroredDuringSIMPhonebookFetch];
    }

    v4 = 0;
  }

  return v4;
}

- (void)_phonebookSelected
{
  if (self->_loadingContacts)
  {
    if ([(ContactsSettingsPlugin *)self _ctServerConnection])
    {
      if (!(_CTServerConnectionFetchPhonebook() >> 32))
      {
        return;
      }

      CFRelease(self->_ctServerConnection);
      self->_ctServerConnection = 0;
    }

    [(ContactsSettingsPlugin *)self _erroredDuringSIMPhonebookFetch];
  }
}

- (void)_phonebookAvailable
{
  if (self->_loadingContacts)
  {
    if ([(ContactsSettingsPlugin *)self _ctServerConnection])
    {
      if (_CTServerConnectionGetPhonebookEntryCount() >> 32)
      {
        CFRelease(self->_ctServerConnection);
        self->_ctServerConnection = 0;
        [(ContactsSettingsPlugin *)self _erroredDuringSIMPhonebookFetch];
      }

      else
      {
        [(UIAlertController *)self->_loadingContacts dismissViewControllerAnimated:1 completion:0];
        loadingContacts = self->_loadingContacts;
        self->_loadingContacts = 0;

        self->_importStoreID = -1;
        [(ContactsSettingsPlugin *)self _noteImportEnded];
      }
    }

    else
    {

      [(ContactsSettingsPlugin *)self _erroredDuringSIMPhonebookFetch];
    }
  }
}

- (void)_beginImportToStoreID:(int)a3
{
  if (self->_shouldShowSIMImport)
  {
    v11[9] = v3;
    v11[10] = v4;
    self->_importStoreID = a3;
    [(ContactsSettingsPlugin *)self _noteImportStarted];
    [(ContactsSettingsPlugin *)self _updateSIMImportSpecifier:1];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"Importing contacts" value:&stru_14F18 table:@"Contacts"];
    v8 = [UIAlertController alertControllerWithTitle:v7 message:0 preferredStyle:1];
    loadingContacts = self->_loadingContacts;
    self->_loadingContacts = v8;

    v10 = self->_loadingContacts;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_50A8;
    v11[3] = &unk_14AE0;
    v11[4] = self;
    [(ContactsSettingsPlugin *)self presentViewController:v10 animated:1 completion:v11];
  }
}

- (void)importFromSIM:(id)a3
{
  if (!self->_loadingContacts)
  {
    v29[1] = v6;
    v29[2] = v5;
    v29[13] = v3;
    v29[14] = v4;
    v8 = ABAddressBookCreateWithOptions(0, 0);
    if (v8)
    {
      v9 = v8;
      v28 = 0;
      v29[0] = 0;
      CNUICopyAccountInformation(v8, 0, v29, &v28, 0, 0);
      v10 = v29[0];
      v25 = v28;
      v11 = [v25 count];
      if (v11 < 2)
      {
        [(ContactsSettingsPlugin *)self _beginImportToStoreID:0xFFFFFFFFLL];
      }

      else
      {
        v12 = v11;
        cf = v9;
        v13 = [NSBundle bundleForClass:objc_opt_class()];
        v14 = [v13 localizedStringForKey:@"IMPORT_CONTACTS_PROMPT" value:&stru_14F18 table:@"Contacts"];
        v15 = [UIAlertController alertControllerWithTitle:v14 message:0 preferredStyle:0];

        for (i = 0; i != v12; ++i)
        {
          v17 = [v10 objectAtIndex:{i, cf}];
          if (v17)
          {
            RecordID = ABRecordGetRecordID(v17);
            v19 = [v25 objectAtIndex:i];
            v26[0] = _NSConcreteStackBlock;
            v26[1] = 3221225472;
            v26[2] = sub_536C;
            v26[3] = &unk_14B58;
            v26[4] = self;
            v27 = RecordID;
            v20 = [UIAlertAction actionWithTitle:v19 style:0 handler:v26];
            [v15 addAction:v20];
          }
        }

        v21 = [NSBundle bundleForClass:objc_opt_class()];
        v22 = [v21 localizedStringForKey:@"Cancel" value:&stru_14F18 table:@"Contacts"];
        v23 = [UIAlertAction actionWithTitle:v22 style:1 handler:0];
        [v15 addAction:v23];

        [(ContactsSettingsPlugin *)self presentViewController:v15 animated:1 completion:0];
        v9 = cf;
      }

      CFRelease(v9);
    }
  }
}

- (void)_updateSIMImportVisibility
{
  if (MGGetBoolAnswer() && MGGetBoolAnswer())
  {
    SIMStatus = CTSIMSupportGetSIMStatus();
    if (SIMStatus)
    {
      v4 = CFStringCompare(SIMStatus, kCTSIMSupportSIMStatusNotInserted, 0) != kCFCompareEqualTo;
    }

    else
    {
      v4 = 0;
    }

    self->_shouldShowSIMImport = v4;
  }

  else
  {
    self->_shouldShowSIMImport = 0;
  }
}

- (void)_clearSpecifiers
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  addressBookQueue = self->_addressBookQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_54EC;
  v4[3] = &unk_14B30;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(addressBookQueue, v4);
  if (*(v6 + 24) == 1)
  {
    [(ContactsSettingsPlugin *)self performSelectorOnMainThread:"reloadSpecifiers" withObject:0 waitUntilDone:0];
  }

  _Block_object_dispose(&v5, 8);
}

- (void)_SIMStatusChanged
{
  shouldShowSIMImport = self->_shouldShowSIMImport;
  [(ContactsSettingsPlugin *)self _updateSIMImportVisibility];
  if (shouldShowSIMImport != self->_shouldShowSIMImport)
  {
    if (shouldShowSIMImport)
    {
      if (self->_SIMImportSpacerSpecifier)
      {
        [(NSMutableArray *)self->_currentSpecifiers removeObject:?];
      }

      if (self->_SIMImportSpecifier)
      {
        [(NSMutableArray *)self->_currentSpecifiers removeObject:?];
      }
    }

    else
    {
      [(NSMutableArray *)self->_currentSpecifiers addObject:self->_SIMImportSpacerSpecifier];
      [(NSMutableArray *)self->_currentSpecifiers addObject:self->_SIMImportSpecifier];
      [(ContactsSettingsPlugin *)self _updateSIMImportSpecifier:0];
      [(ContactsSettingsPlugin *)self setSpecifiers:self->_currentSpecifiers];
    }
  }

  loadingContacts = self->_loadingContacts;
  if (loadingContacts && !self->_shouldShowSIMImport)
  {
    [(UIAlertController *)loadingContacts dismissViewControllerAnimated:1 completion:0];
    v5 = self->_loadingContacts;
    self->_loadingContacts = 0;
  }
}

- (id)meCardName:(id)a3
{
  v3 = objc_alloc_init(CNContactStore);
  v4 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
  v9 = v4;
  v5 = [NSArray arrayWithObjects:&v9 count:1];
  v6 = [v3 _ios_meContactWithKeysToFetch:v5 error:0];

  v7 = [CNContactFormatter stringFromContact:v6 style:0];

  return v7;
}

- (void)_showMeCardPopover
{
  v3 = [(ContactsSettingsPlugin *)self table];
  v4 = [(ContactsSettingsPlugin *)self indexPathForIndex:[(ContactsSettingsPlugin *)self indexOfSpecifier:self->_MeCardSpecifier]];
  v5 = [v3 cellForRowAtIndexPath:v4];
  if (!v5)
  {
    goto LABEL_9;
  }

  [v3 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v5 frame];
  v20.origin.x = v14;
  v20.origin.y = v15;
  v20.size.width = v16;
  v20.size.height = v17;
  v19.origin.x = v7;
  v19.origin.y = v9;
  v19.size.width = v11;
  v19.size.height = v13;
  if (!CGRectContainsRect(v19, v20))
  {
LABEL_9:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_AFA4();
    }

    [v3 scrollToRowAtIndexPath:v4 atScrollPosition:3 animated:0];
    v18 = [v3 cellForRowAtIndexPath:v4];

    v5 = v18;
  }

  [v3 deselectRowAtIndexPath:v4 animated:1];
  [v5 frame];
  [(UIPopoverController *)self->_meCardPopover presentPopoverFromRect:v3 inView:13 permittedArrowDirections:1 animated:?];
}

- (void)showMeCardPicker:(id)a3
{
  v4 = objc_alloc_init(CNContactPickerViewController);
  meCardPicker = self->_meCardPicker;
  self->_meCardPicker = v4;

  [(CNContactPickerViewController *)self->_meCardPicker setDelegate:self];
  [(CNContactPickerViewController *)self->_meCardPicker setHidesSearchableSources:1];
  [(CNContactPickerViewController *)self->_meCardPicker setOnlyRealContacts:1];
  [(CNContactPickerViewController *)self->_meCardPicker setShouldDisplayAddNewContactRow:1];
  [(CNContactPickerViewController *)self->_meCardPicker setMode:2];
  v6 = +[UIDevice currentDevice];
  if (objc_opt_respondsToSelector())
  {
    v7 = +[UIDevice currentDevice];
    v8 = [v7 userInterfaceIdiom];

    if (v8 == &dword_0 + 1)
    {
      v9 = [[UIPopoverController alloc] initWithContentViewController:self->_meCardPicker];
      meCardPopover = self->_meCardPopover;
      self->_meCardPopover = v9;

      [(UIPopoverController *)self->_meCardPopover setDelegate:self];

      [(ContactsSettingsPlugin *)self _showMeCardPopover];
      return;
    }
  }

  else
  {
  }

  v11 = self->_meCardPicker;

  [(ContactsSettingsPlugin *)self presentViewController:v11 animated:1 completion:0];
}

- (void)windowWillRotate:(id)a3
{
  if ([(UIPopoverController *)self->_meCardPopover isPopoverVisible])
  {
    meCardPopover = self->_meCardPopover;

    [(UIPopoverController *)meCardPopover dismissPopoverAnimated:0];
  }
}

- (void)windowDidRotate:(id)a3
{
  if (self->_meCardPopover)
  {
    [(ContactsSettingsPlugin *)self _showMeCardPopover];
  }
}

- (void)_reloadMeCardCellIfVisible
{
  v3 = [(ContactsSettingsPlugin *)self table];
  v4 = [(ContactsSettingsPlugin *)self indexPathForIndex:[(ContactsSettingsPlugin *)self indexOfSpecifier:self->_MeCardSpecifier]];
  v5 = [v3 cellForRowAtIndexPath:v4];

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "me card cell is visible", v7, 2u);
    }

    v6 = [NSArray arrayWithObject:v4];
    [v3 reloadRowsAtIndexPaths:v6 withRowAnimation:5];
  }
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(CNContactStore);
  v12 = 0;
  v7 = [v6 setMeContact:v5 error:&v12];
  v8 = v12;

  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = v5;
    v11 = v8;
    _CNUILog();
  }

  [(ContactsSettingsPlugin *)self _reloadMeCardCellIfVisible:v10];
  [(ContactsSettingsPlugin *)self _dismissMeCardPickerAnimated:1];
}

- (id)contactsSortOrder:(id)a3
{
  SortOrdering = ABPersonGetSortOrdering();

  return [NSNumber numberWithInt:SortOrdering];
}

- (void)setContactsSortOrder:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = ABPeoplePickerPrefs();
  CFPreferencesSetAppValue(@"contactsSortOrder", v5, v6);

  v7 = ABPeoplePickerPrefs();
  CFPreferencesAppSynchronize(v7);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.AddressBook.PreferenceChanged", 0, 0, 1u);

  [(ContactsSettingsPlugin *)self _synchronizeNanoUserDefault:@"contactsSortOrder"];
}

- (id)personNameOrder:(id)a3
{
  CompositeNameFormatForRecord = ABPersonGetCompositeNameFormatForRecord(0);

  return [NSNumber numberWithInt:CompositeNameFormatForRecord];
}

- (void)setPersonNameOrder:(id)a3 specifier:(id)a4
{
  v4 = [a3 intValue];

  _ABPersonSetCompositeNameFormat(v4);
}

- (id)contactProviderCount:(id)a3
{
  v4 = a3;
  addressBookQueue = self->_addressBookQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_60BC;
  block[3] = &unk_14B80;
  block[4] = self;
  v6 = v4;
  v11 = v6;
  dispatch_async(addressBookQueue, block);
  v7 = [(ContactsSettingsPlugin *)self providerCount];
  if (v7 < 1)
  {
    v8 = &stru_14F18;
  }

  else
  {
    v8 = [NSString stringWithFormat:@"%ld", v7];
  }

  return v8;
}

- (void)_synchronizeNanoUserDefault:(id)a3
{
  v5 = a3;
  if (PSIsNanoMirroringDomain())
  {
    v3 = objc_opt_new();
    v4 = [NSSet setWithObject:v5];
    [v3 synchronizeUserDefaultsDomain:@"com.apple.PeoplePicker" keys:v4];
  }
}

- (void)showSharedNameAndPhotoSettings:(id)a3
{
  v5 = objc_alloc_init(CNContactStore);
  v4 = [[CNSharedProfileOnboardingController alloc] initWithContactStore:v5];
  [v4 setDelegate:self];
  [v4 startOnboardingOrEditForMode:1 fromViewController:self];
  [(ContactsSettingsPlugin *)self setOnboardingController:v4];
}

- (id)sharedNameAndPhotoSharingFooterText
{
  v2 = +[CNEnvironment currentEnvironment];
  v3 = [v2 nicknameProvider];
  v4 = [v3 isNicknameSharingEnabled];

  if (!v4)
  {
    v8 = @"NAME_AND_PHOTO_SHARING_NOT_SHARING_FOOTER";
    goto LABEL_7;
  }

  v5 = +[CNEnvironment currentEnvironment];
  v6 = [v5 nicknameProvider];
  v7 = [v6 sharingAudience];

  if (v7 == &dword_0 + 2)
  {
    v8 = @"NAME_AND_PHOTO_SHARING_ALWAYS_ASK_FOOTER";
    goto LABEL_7;
  }

  if (v7 == &dword_0 + 1)
  {
    v8 = @"NAME_AND_PHOTO_SHARING_CONTACTS_ONLY_FOOTER";
LABEL_7:
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:v8 value:&stru_14F18 table:@"Contacts"];

    goto LABEL_8;
  }

  v10 = &stru_14F18;
LABEL_8:

  return v10;
}

- (id)sharedNameAndPhotoAudience:(id)a3
{
  v3 = +[CNEnvironment currentEnvironment];
  v4 = [v3 nicknameProvider];
  v5 = [v4 isNicknameSharingEnabled];

  if (v5)
  {
    objc_opt_class();
    v6 = +[CNEnvironment currentEnvironment];
    v7 = [v6 nicknameProvider];
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = [v9 sharingAudienceDisplayString];
  }

  else
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"NAME_AND_PHOTO_SHARING_OFF" value:&stru_14F18 table:@"Contacts"];
  }

  v11 = v10;

  return v11;
}

- (void)provideSettingsNavigationDonation
{
  v3 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.MobileAddressBook"];
  v4 = [_NSLocalizedStringResource alloc];
  v5 = +[NSLocale currentLocale];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 bundleURL];
  v8 = [v4 initWithKey:@"CONTACTS" table:@"Contacts" locale:v5 bundleURL:v7];

  v9 = [_NSLocalizedStringResource alloc];
  v10 = +[NSLocale currentLocale];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 bundleURL];
  v13 = [v9 initWithKey:@"CONTACTS_SETTINGS_SUBTITLE" table:@"Contacts" locale:v10 bundleURL:v12];

  v15 = v13;
  v14 = [NSArray arrayWithObjects:&v15 count:1];
  [(ContactsSettingsPlugin *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.MobileAddressBook" title:v8 localizedNavigationComponents:v14 deepLink:v3];
}

@end