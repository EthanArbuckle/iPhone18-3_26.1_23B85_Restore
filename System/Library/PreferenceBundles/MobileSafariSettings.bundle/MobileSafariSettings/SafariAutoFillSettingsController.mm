@interface SafariAutoFillSettingsController
- (SafariAutoFillSettingsController)init;
- (id)_formDataController;
- (id)meCardName;
- (id)myInfo:(id)info;
- (id)shouldAutoFillCreditCards:(id)cards;
- (id)specifiers;
- (id)useContactInfo:(id)info;
- (void)_dismissMeCardPicker;
- (void)_enablingAutoFillWithoutPasscodePromptEndedWithResult:(int64_t)result;
- (void)_promptForEnablingAutoFillWithoutPasscodeWithTitle:(id)title message:(id)message allowAnyway:(BOOL)anyway completionHandler:(id)handler;
- (void)_setupMeCardPicker;
- (void)_showCreditCardListInWallet:(id)wallet;
- (void)_showPasscodeSetupSheetWithCompletionHandler:(id)handler;
- (void)_updateSpecifierWithIdentifier:(id)identifier;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPickerDidCancel:(id)cancel;
- (void)dealloc;
- (void)didAcceptEnteredPIN;
- (void)didAcceptSetPIN;
- (void)didCancelEnteringPIN;
- (void)didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)popoverControllerDidDismissPopover:(id)popover;
- (void)presentPopoverContactListInTable:(id)table index:(id)index specifier:(id)specifier;
- (void)setShouldAutoFillCreditCards:(id)cards specifier:(id)specifier;
- (void)setUseContactInfo:(id)info forSpecifier:(id)specifier;
- (void)showMeCardPicker;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateUseContactInfoSpecifiers;
- (void)willResignActive;
- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
@end

@implementation SafariAutoFillSettingsController

- (SafariAutoFillSettingsController)init
{
  v10.receiver = self;
  v10.super_class = SafariAutoFillSettingsController;
  v2 = [(SafariAutoFillSettingsController *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(CNContactStore);
    contactStore = v2->_contactStore;
    v2->_contactStore = v3;

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"_contactStoreChanged:" name:CNContactStoreDidChangeNotification object:v2->_contactStore];

    v6 = +[NSDistributedNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"_updateUseContactInfo" name:WBSAutoFillUseContactInfoChangedNotification object:0];

    v7 = +[NSDistributedNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_updateUseCreditCards" name:WBSAutoFillUseCreditCardsChangedNotification object:0];

    v8 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:CNContactStoreDidChangeNotification object:self->_contactStore];

  v4 = +[NSDistributedNotificationCenter defaultCenter];
  [v4 removeObserver:self name:WBSAutoFillUseContactInfoChangedNotification object:0];

  v5 = +[NSDistributedNotificationCenter defaultCenter];
  [v5 removeObserver:self name:WBSAutoFillUseCreditCardsChangedNotification object:0];

  v6.receiver = self;
  v6.super_class = SafariAutoFillSettingsController;
  [(SafariAutoFillSettingsController *)&v6 dealloc];
}

- (void)willResignActive
{
  if (self->_passcodeSetupCompletionHandler)
  {
    [(SafariAutoFillSettingsController *)self didCancelEnteringPIN];
  }

  passcodeEntryCompletionHandler = self->_passcodeEntryCompletionHandler;
  self->_passcodeEntryCompletionHandler = 0;
}

- (void)_setupMeCardPicker
{
  v3 = objc_alloc_init(SafariCNContactPickerViewController);
  meCardPicker = self->_meCardPicker;
  self->_meCardPicker = &v3->super;

  v5 = self->_meCardPicker;

  [(CNContactPickerViewController *)v5 setDelegate:self];
}

- (void)_updateSpecifierWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(SafariAutoFillSettingsController *)self specifierForID:?];
  if (v4)
  {
    v5 = [PSRootController readPreferenceValue:v4];
    v6 = [NSNumber numberWithInt:v5 == 0];
    [PSRootController setPreferenceValue:v6 specifier:v4];
    [(SafariAutoFillSettingsController *)self reloadSpecifierID:identifierCopy];
  }
}

- (void)updateUseContactInfoSpecifiers
{
  self->_isMeCardSet = [WBUFormDataController contactStoreHasMeCard:self->_contactStore];
  v4 = [(SafariAutoFillSettingsController *)self specifierForID:@"ContactInfoEnableSwitch"];
  v3 = [NSNumber numberWithBool:self->_isMeCardSet];
  [PSRootController setPreferenceValue:v3 specifier:v4];

  [(SafariAutoFillSettingsController *)self reloadSpecifierID:@"ContactInfoEnableSwitch"];
  [(SafariAutoFillSettingsController *)self reloadSpecifierID:@"My Info"];
}

- (id)_formDataController
{
  v2 = _formDataController_controller;
  if (!_formDataController_controller)
  {
    v3 = objc_alloc_init(WBUFormDataController);
    v4 = _formDataController_controller;
    _formDataController_controller = v3;

    v2 = _formDataController_controller;
  }

  return v2;
}

- (id)meCardName
{
  if ([CNContactStore authorizationStatusForEntityType:0]!= &dword_0 + 3)
  {
    goto LABEL_6;
  }

  contactStore = self->_contactStore;
  v4 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
  v12 = v4;
  v5 = [NSArray arrayWithObjects:&v12 count:1];
  v6 = [(CNContactStore *)contactStore _ios_meContactWithKeysToFetch:v5 error:0];

  if (v6)
  {
    v7 = [CNContactFormatter stringFromContact:v6 style:0];
    v8 = v7;
    v9 = &stru_8BB60;
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;
  }

  else
  {
LABEL_6:
    v10 = SafariSettingsLocalizedString(@"None", @"AutoFill");
  }

  return v10;
}

- (id)useContactInfo:(id)info
{
  _formDataController = [(SafariAutoFillSettingsController *)self _formDataController];
  if ([_formDataController shouldAutoFillFromAddressBook])
  {
    if (self->_isMeCardSet)
    {
      v5 = 1;
      goto LABEL_6;
    }

    [_formDataController setShouldAutoFillFromAddressBook:0];
  }

  v5 = 0;
LABEL_6:
  v6 = [NSNumber numberWithBool:v5];

  return v6;
}

- (id)myInfo:(id)info
{
  infoCopy = info;
  v5 = [(SafariAutoFillSettingsController *)self specifierForID:@"ContactInfoEnableSwitch"];
  v6 = [PSRootController readPreferenceValue:v5];

  [infoCopy setProperty:v6 forKey:PSEnabledKey];
  meCardName = [(SafariAutoFillSettingsController *)self meCardName];

  return meCardName;
}

- (void)_promptForEnablingAutoFillWithoutPasscodeWithTitle:(id)title message:(id)message allowAnyway:(BOOL)anyway completionHandler:(id)handler
{
  anywayCopy = anyway;
  titleCopy = title;
  messageCopy = message;
  v12 = [handler copy];
  promptCompletionHandler = self->_promptCompletionHandler;
  self->_promptCompletionHandler = v12;

  if (_SFDeviceIsPad())
  {
    v14 = titleCopy;
  }

  else
  {
    v14 = messageCopy;
  }

  v15 = v14;
  if (_SFDeviceIsPad())
  {
    v16 = messageCopy;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  v18 = [UIAlertController alertControllerWithTitle:v15 message:v17 preferredStyle:_SFDeviceAlertStyle()];

  v19 = SafariSettingsLocalizedString(@"Turn On Passcode Lock", @"AutoFill");
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = __125__SafariAutoFillSettingsController__promptForEnablingAutoFillWithoutPasscodeWithTitle_message_allowAnyway_completionHandler___block_invoke;
  v27[3] = &unk_896F0;
  v27[4] = self;
  v20 = [UIAlertAction actionWithTitle:v19 style:0 handler:v27];
  [v18 addAction:v20];

  if (anywayCopy)
  {
    v21 = SafariSettingsLocalizedString(@"Use Without Passcode", @"AutoFill");
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = __125__SafariAutoFillSettingsController__promptForEnablingAutoFillWithoutPasscodeWithTitle_message_allowAnyway_completionHandler___block_invoke_2;
    v26[3] = &unk_896F0;
    v26[4] = self;
    v22 = [UIAlertAction actionWithTitle:v21 style:0 handler:v26];
    [v18 addAction:v22];
  }

  v23 = SafariSettingsLocalizedString(@"Cancel", @"AutoFill");
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = __125__SafariAutoFillSettingsController__promptForEnablingAutoFillWithoutPasscodeWithTitle_message_allowAnyway_completionHandler___block_invoke_3;
  v25[3] = &unk_896F0;
  v25[4] = self;
  v24 = [UIAlertAction actionWithTitle:v23 style:1 handler:v25];
  [v18 addAction:v24];

  [(SafariAutoFillSettingsController *)self presentViewController:v18 animated:1 completion:0];
}

- (void)_enablingAutoFillWithoutPasscodePromptEndedWithResult:(int64_t)result
{
  promptCompletionHandler = self->_promptCompletionHandler;
  if (promptCompletionHandler)
  {
    v7 = objc_retainBlock(promptCompletionHandler);
    v6 = self->_promptCompletionHandler;
    self->_promptCompletionHandler = 0;

    v7[2](v7, result);
  }
}

- (void)_showPasscodeSetupSheetWithCompletionHandler:(id)handler
{
  v4 = [handler copy];
  passcodeSetupCompletionHandler = self->_passcodeSetupCompletionHandler;
  self->_passcodeSetupCompletionHandler = v4;

  v6 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:objc_opt_class()];
  v8[0] = PSSetupCustomClassKey;
  v8[1] = @"mode";
  v9[0] = @"DevicePINController";
  v9[1] = &off_90AF0;
  v7 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v6 setProperties:v7];

  [(SafariAutoFillSettingsController *)self showPINSheet:v6];
}

void __80__SafariAutoFillSettingsController__setShouldAutoFill_specifier_message_setter___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);

      [v5 reloadSpecifier:v6 animated:1];
    }

    else if (a2 == 1)
    {
      v3 = *(a1 + 48);
      v4 = *(*(a1 + 48) + 16);

      v4();
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __80__SafariAutoFillSettingsController__setShouldAutoFill_specifier_message_setter___block_invoke_2;
    v11[3] = &unk_89718;
    v8 = *(a1 + 48);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v13 = v8;
    v11[4] = v9;
    v12 = v10;
    [v7 _showPasscodeSetupSheetWithCompletionHandler:v11];
  }
}

id __80__SafariAutoFillSettingsController__setShouldAutoFill_specifier_message_setter___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    return [*(a1 + 32) reloadSpecifier:*(a1 + 40) animated:1];
  }
}

- (id)shouldAutoFillCreditCards:(id)cards
{
  _formDataController = [(SafariAutoFillSettingsController *)self _formDataController];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [_formDataController shouldAutoFillFromCreditCardData]);

  return v4;
}

- (void)setShouldAutoFillCreditCards:(id)cards specifier:(id)specifier
{
  specifierCopy = specifier;
  cardsCopy = cards;
  v8 = +[WBSDevice currentDevice];
  deviceClass = [v8 deviceClass];

  if (deviceClass == 3)
  {
    v10 = @"When you turn on AutoFill, anyone who has access to your iPad can view and use your saved credit cards. Using a passcode lock on your iPad can protect your saved credit cards.";
  }

  else
  {
    v10 = @"When you turn on AutoFill, anyone who has access to your iPhone can view and use your saved credit cards. Using a passcode lock on your iPhone can protect your saved credit cards.";
  }

  v11 = SafariSettingsLocalizedString(v10, @"AutoFill");
  _formDataController = [(SafariAutoFillSettingsController *)self _formDataController];
  bOOLValue = [cardsCopy BOOLValue];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __75__SafariAutoFillSettingsController_setShouldAutoFillCreditCards_specifier___block_invoke;
  v15[3] = &unk_89768;
  v16 = _formDataController;
  v14 = _formDataController;
  [(SafariAutoFillSettingsController *)self _setShouldAutoFill:bOOLValue specifier:specifierCopy message:v11 setter:v15];
}

- (void)showMeCardPicker
{
  [(SafariAutoFillSettingsController *)self _setupMeCardPicker];
  meCardPicker = self->_meCardPicker;

  [(SafariAutoFillSettingsController *)self presentViewController:meCardPicker animated:1 completion:0];
}

- (void)_dismissMeCardPicker
{
  if (self->_meCardPicker)
  {
    if (_SFDeviceIsPad())
    {
      [(UIPopoverController *)self->_autoFillContactController dismissPopoverAnimated:1];
      autoFillContactController = self->_autoFillContactController;
      self->_autoFillContactController = 0;

      autoFillContactIndex = self->_autoFillContactIndex;
      self->_autoFillContactIndex = 0;
    }

    else
    {
      [(SafariAutoFillSettingsController *)self dismissViewControllerAnimated:1 completion:0];
    }

    [(CNContactPickerViewController *)self->_meCardPicker setDelegate:0];
    meCardPicker = self->_meCardPicker;
    self->_meCardPicker = 0;
  }
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    self->_isMeCardSet = [WBUFormDataController contactStoreHasMeCard:self->_contactStore];
    v5 = [(SafariAutoFillSettingsController *)self loadSpecifiersFromPlistName:@"AutoFill" target:self];
    v6 = +[SafariSettingsFeatureManager sharedFeatureManager];
    isCreditCardStorageAvailable = [v6 isCreditCardStorageAvailable];

    if (isCreditCardStorageAvailable)
    {
      v8 = SafariSettingsLocalizedString(@"Automatically fill out web forms using your contact or credit card info.", @"AutoFill");
    }

    else
    {
      v8 = SafariSettingsLocalizedString(@"Automatically fill out web forms using your contact info.", @"AutoFill");
      v9 = [v5 specifierForID:@"CreditCardGroup"];
      [v5 removeObject:v9];

      v10 = [v5 specifierForID:@"CreditCardEnableSwitch"];
      [v5 removeObject:v10];

      v11 = [v5 specifierForID:@"CreditCardList"];
      [v5 removeObject:v11];
    }

    v12 = [v5 specifierForID:@"AutoFillSettingsHeaderGroupCell"];
    [v12 setProperty:v8 forKey:@"footerText"];
    if (+[WBSFeatureAvailability isKeychainCardsInWalletEnabled])
    {
      v13 = [v5 specifierForID:@"CreditCardList"];
      [v13 setDetailControllerClass:0];
      [v13 setButtonAction:"_showCreditCardListInWallet:"];
      v14 = [v5 specifierForID:@"CreditCardGroup"];
      v15 = SafariSettingsLocalizedString(@"Manage cards in Wallet & Apple Pay Settings.", @"AutoFill");
      [v14 setProperty:v15 forKey:PSFooterTextGroupKey];
    }

    v16 = *&self->super.PSListController_opaque[v3];
    *&self->super.PSListController_opaque[v3] = v5;

    v4 = *&self->super.PSListController_opaque[v3];
  }

  return v4;
}

- (void)_showCreditCardListInWallet:(id)wallet
{
  v3 = +[WBUCreditCardDataController sharedCreditCardDataController];
  urlToListOfCardsInWallet = [v3 urlToListOfCardsInWallet];

  v4 = +[LSApplicationWorkspace defaultWorkspace];
  [v4 openSensitiveURL:urlToListOfCardsInWallet withOptions:0];
}

- (void)presentPopoverContactListInTable:(id)table index:(id)index specifier:(id)specifier
{
  indexCopy = index;
  tableCopy = table;
  [tableCopy deselectRowAtIndexPath:indexCopy animated:1];
  [(SafariAutoFillSettingsController *)self _setupMeCardPicker];
  autoFillContactIndex = self->_autoFillContactIndex;
  self->_autoFillContactIndex = indexCopy;
  v9 = indexCopy;

  v10 = [[UIPopoverController alloc] initWithContentViewController:self->_meCardPicker];
  autoFillContactController = self->_autoFillContactController;
  self->_autoFillContactController = v10;

  [(UIPopoverController *)self->_autoFillContactController setDelegate:self];
  [tableCopy rectForRowAtIndexPath:v9];
  [(UIPopoverController *)self->_autoFillContactController presentPopoverFromRect:tableCopy inView:1 permittedArrowDirections:1 animated:?];
}

- (void)setUseContactInfo:(id)info forSpecifier:(id)specifier
{
  intValue = [info intValue];
  _formDataController = [(SafariAutoFillSettingsController *)self _formDataController];
  [_formDataController setShouldAutoFillFromAddressBook:intValue != 0];

  if (intValue && !self->_isMeCardSet)
  {
    v7 = [(SafariAutoFillSettingsController *)self specifierForID:@"My Info"];
    if (_SFDeviceIsPad())
    {
      table = [(SafariAutoFillSettingsController *)self table];
      v9 = [(SafariAutoFillSettingsController *)self cachedCellForSpecifierID:@"My Info"];
      v10 = [table indexPathForCell:v9];

      [(SafariAutoFillSettingsController *)self presentPopoverContactListInTable:table index:v10 specifier:v7];
    }

    else
    {
      [(SafariAutoFillSettingsController *)self showMeCardPicker];
    }
  }

  [(SafariAutoFillSettingsController *)self reloadSpecifierID:@"My Info" animated:1];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(SafariAutoFillSettingsController *)self indexForIndexPath:pathCopy];
  v9 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  if (_SFDeviceIsPad() && ([v9 identifier], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", @"My Info"), v10, v11))
  {
    [(SafariAutoFillSettingsController *)self presentPopoverContactListInTable:viewCopy index:pathCopy specifier:v9];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SafariAutoFillSettingsController;
    [(SafariSettingsListController *)&v12 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

- (void)popoverControllerDidDismissPopover:(id)popover
{
  autoFillContactController = self->_autoFillContactController;
  self->_autoFillContactController = 0;

  autoFillContactIndex = self->_autoFillContactIndex;
  self->_autoFillContactIndex = 0;

  meCardPicker = self->_meCardPicker;
  self->_meCardPicker = 0;

  [(SafariAutoFillSettingsController *)self updateUseContactInfoSpecifiers];
}

- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  if ([(UIPopoverController *)self->_autoFillContactController isPopoverVisible:orientation])
  {
    autoFillContactController = self->_autoFillContactController;

    [(UIPopoverController *)autoFillContactController dismissPopoverAnimated:0];
  }
}

- (void)didRotateFromInterfaceOrientation:(int64_t)orientation
{
  if (self->_autoFillContactIndex)
  {
    v4 = OBJC_IVAR___PSListController__table;
    [*&self->super.PSListController_opaque[OBJC_IVAR___PSListController__table] rectForRowAtIndexPath:?];
    autoFillContactController = self->_autoFillContactController;
    v6 = *&self->super.PSListController_opaque[v4];

    [(UIPopoverController *)autoFillContactController presentPopoverFromRect:v6 inView:1 permittedArrowDirections:1 animated:?];
  }
}

- (void)contactPickerDidCancel:(id)cancel
{
  [(SafariAutoFillSettingsController *)self updateUseContactInfoSpecifiers];

  [(SafariAutoFillSettingsController *)self _dismissMeCardPicker];
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  [(CNContactStore *)self->_contactStore setMeContact:contact error:0];
  [(SafariAutoFillSettingsController *)self updateUseContactInfoSpecifiers];

  [(SafariAutoFillSettingsController *)self _dismissMeCardPicker];
}

- (void)didAcceptEnteredPIN
{
  passcodeEntryCompletionHandler = self->_passcodeEntryCompletionHandler;
  if (passcodeEntryCompletionHandler)
  {
    v5 = objc_retainBlock(passcodeEntryCompletionHandler);
    v4 = self->_passcodeEntryCompletionHandler;
    self->_passcodeEntryCompletionHandler = 0;

    v5[2](v5, 1);
  }
}

- (void)didAcceptSetPIN
{
  passcodeSetupCompletionHandler = self->_passcodeSetupCompletionHandler;
  if (passcodeSetupCompletionHandler)
  {
    v5 = objc_retainBlock(passcodeSetupCompletionHandler);
    v4 = self->_passcodeSetupCompletionHandler;
    self->_passcodeSetupCompletionHandler = 0;

    v5[2](v5, 1);
  }
}

- (void)didCancelEnteringPIN
{
  passcodeEntryCompletionHandler = self->_passcodeEntryCompletionHandler;
  self->_passcodeEntryCompletionHandler = 0;

  passcodeSetupCompletionHandler = self->_passcodeSetupCompletionHandler;
  if (passcodeSetupCompletionHandler)
  {
    v6 = objc_retainBlock(passcodeSetupCompletionHandler);
    v5 = self->_passcodeSetupCompletionHandler;
    self->_passcodeSetupCompletionHandler = 0;

    v6[2](v6, 0);
  }
}

@end