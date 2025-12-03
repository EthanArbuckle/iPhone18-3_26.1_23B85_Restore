@interface SafariSavedCreditCardsController
- (SafariSavedCreditCardsController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_cancelBarButtonItem;
- (id)_deleteBarButtonItem;
- (id)_editBarButtonItem;
- (id)_specifiersForAddItem;
- (id)_specifiersForVirtualCardSection;
- (id)_specifiersToAddOrRemoveWhenTogglingEditButton;
- (id)deleteConfirmationMessage;
- (id)deleteConfirmationTitle;
- (id)specifiers;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (unint64_t)_autoFillItemCount;
- (void)_addItem:(id)item;
- (void)_applicationDidEnterBackground:(id)background;
- (void)_cancelEditing;
- (void)_createVirtualCardSectionSpecifiers;
- (void)_deleteButtonTapped;
- (void)_deleteSelectedItems;
- (void)_toggleEditing;
- (void)_updateDeleteButton;
- (void)_updateEditButton;
- (void)_viewVirtualCardInWallet:(id)wallet;
- (void)dealloc;
- (void)deleteItemsForSpecifiers:(id)specifiers;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didEndEditingRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willBeginEditingRowAtIndexPath:(id)path;
@end

@implementation SafariSavedCreditCardsController

- (SafariSavedCreditCardsController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = SafariSavedCreditCardsController;
  v4 = [(SafariSavedCreditCardsController *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"_applicationDidEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];

    v6 = v4;
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SafariSavedCreditCardsController;
  [(SafariSavedCreditCardsController *)&v4 dealloc];
}

- (void)_applicationDidEnterBackground:(id)background
{
  [(SafariSavedCreditCardsController *)self safari_dismissPresentedAlert];
  navigationController = [(SafariSavedCreditCardsController *)self navigationController];
  navigationController2 = [(SafariSavedCreditCardsController *)self navigationController];
  previousViewController = [navigationController2 previousViewController];
  v6 = [navigationController popToViewController:previousViewController animated:0];
}

- (id)_specifiersForVirtualCardSection
{
  specifiersForVirtualCardSection = self->_specifiersForVirtualCardSection;
  if (specifiersForVirtualCardSection)
  {
    v3 = specifiersForVirtualCardSection;
  }

  else if ([(NSArray *)self->_virtualCards count])
  {
    v5 = +[NSMutableArray array];
    v6 = [PSSpecifier groupSpecifierWithID:@"VirtualCardGroupSpecifier"];
    v7 = SafariSettingsLocalizedString(@"Wallet Cards Header", @"AutoFill");
    [v6 setName:v7];

    v30 = v5;
    [(NSArray *)v5 addObject:v6];
    v8 = SafariSettingsLocalizedString(@"Safari Cards Header", @"AutoFill");
    [(PSSpecifier *)self->_keychainCardsGroupSpecifier setName:v8];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = self->_virtualCards;
    v9 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v35;
      v12 = PSCellClassKey;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v34 + 1) + 8 * i);
          cardName = [v14 cardName];
          v16 = [PSSpecifier preferenceSpecifierNamed:cardName target:self set:0 get:0 detail:0 cell:3 edit:0];

          [v16 setProperty:objc_opt_class() forKey:v12];
          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = __68__SafariSavedCreditCardsController__specifiersForVirtualCardSection__block_invoke;
          v31[3] = &unk_89790;
          v32 = v16;
          selfCopy = self;
          v17 = v16;
          [v14 virtualCardArtworkWithSize:v31 completionHandler:{40.0, 26.0}];
          [v17 setUserInfo:v14];
          [(NSArray *)v30 addObject:v17];
        }

        v10 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v10);
    }

    if (MGGetBoolAnswer())
    {
      v18 = SafariSettingsLocalizedString(@"Wallet & Apple Pay Settings…", @"AutoFill");
      v19 = SafariSettingsLocalizedString(@"Manage cards in %@", @"AutoFill");
      v20 = [NSString stringWithFormat:v19, v18];

      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = v6;
      [v6 setProperty:v22 forKey:PSFooterCellClassGroupKey];

      [v6 setProperty:v20 forKey:PSFooterHyperlinkViewTitleKey];
      v40.location = [v20 rangeOfString:v18];
      v24 = NSStringFromRange(v40);
      [v6 setProperty:v24 forKey:PSFooterHyperlinkViewLinkRangeKey];

      v25 = [NSValue valueWithNonretainedObject:self];
      [v6 setProperty:v25 forKey:PSFooterHyperlinkViewTargetKey];

      [v6 setProperty:@"_viewVirtualCardInWallet:" forKey:PSFooterHyperlinkViewActionKey];
    }

    else
    {
      v18 = SafariSettingsLocalizedString(@"Details for your Apple Card are available in Wallet on devices that support Apple Pay.", @"AutoFill");
      v23 = v6;
      [v6 setProperty:v18 forKey:PSFooterTextGroupKey];
    }

    v26 = self->_specifiersForVirtualCardSection;
    self->_specifiersForVirtualCardSection = v30;
    v27 = v30;

    v3 = self->_specifiersForVirtualCardSection;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __68__SafariSavedCreditCardsController__specifiersForVirtualCardSection__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setProperty:a2 forKey:PSIconImageKey];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 reloadSpecifier:v4];
}

- (void)_createVirtualCardSectionSpecifiers
{
  v3 = +[WBUCreditCardDataController sharedCreditCardDataController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __71__SafariSavedCreditCardsController__createVirtualCardSectionSpecifiers__block_invoke;
  v4[3] = &unk_897B8;
  v4[4] = self;
  [v3 getVirtualCardsWithCompletionHandler:v4];
}

void __71__SafariSavedCreditCardsController__createVirtualCardSectionSpecifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __71__SafariSavedCreditCardsController__createVirtualCardSectionSpecifiers__block_invoke_2;
  v5[3] = &unk_896A0;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

id __71__SafariSavedCreditCardsController__createVirtualCardSectionSpecifiers__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = +[WBUCreditCardDataController creditCardComparatorForSortingInSettings];
  v4 = [v2 sortedArrayUsingComparator:v3];
  v5 = *(a1 + 32);
  v6 = *(v5 + 168);
  *(v5 + 168) = v4;

  result = [*(a1 + 32) isEditing];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) beginUpdates];
    v8 = *(a1 + 32);
    v9 = [v8 _specifiersForVirtualCardSection];
    [v8 insertContiguousSpecifiers:v9 atIndex:0 animated:1];

    v10 = *(a1 + 32);

    return [v10 endUpdates];
  }

  return result;
}

- (void)_viewVirtualCardInWallet:(id)wallet
{
  v3 = +[WBUCreditCardDataController sharedCreditCardDataController];
  urlToListOfCardsInWallet = [v3 urlToListOfCardsInWallet];

  v5 = +[LSApplicationWorkspace defaultWorkspace];
  v8 = 0;
  [v5 openSensitiveURL:urlToListOfCardsInWallet withOptions:0 error:&v8];
  v6 = v8;

  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SafariSavedCreditCardsController *)v7 _viewVirtualCardInWallet:v6];
    }
  }
}

- (id)_specifiersForAddItem
{
  specifiersForAddItem = self->_specifiersForAddItem;
  if (!specifiersForAddItem)
  {
    titleForAddItem = [(SafariSavedCreditCardsController *)self titleForAddItem];
    if (titleForAddItem)
    {
      v5 = titleForAddItem;
      controllerClassForAddItem = [(SafariSavedCreditCardsController *)self controllerClassForAddItem];

      if (controllerClassForAddItem)
      {
        titleForAddItem2 = [(SafariSavedCreditCardsController *)self titleForAddItem];
        v8 = [PSSpecifier preferenceSpecifierNamed:titleForAddItem2 target:self set:0 get:0 detail:0 cell:13 edit:0];

        [v8 setButtonAction:"_addItem:"];
        v9 = NSStringFromClass([(SafariSavedCreditCardsController *)self controllerClassForAddItem]);
        [v8 setProperty:v9 forKey:PSSetupCustomClassKey];

        v15 = v8;
        v10 = [NSArray arrayWithObjects:&v15 count:1];
        v11 = self->_specifiersForAddItem;
        self->_specifiersForAddItem = v10;

        v12 = self->_specifiersForAddItem;
        goto LABEL_7;
      }
    }

    v13 = self->_specifiersForAddItem;
    self->_specifiersForAddItem = &__NSArray0__struct;

    specifiersForAddItem = self->_specifiersForAddItem;
  }

  v12 = specifiersForAddItem;
LABEL_7:

  return v12;
}

- (void)_addItem:(id)item
{
  itemCopy = item;
  v5 = objc_alloc_init(PSSetupController);
  [v5 setSpecifier:itemCopy];

  [v5 setParentController:self];
  [(SafariSavedCreditCardsController *)self showController:v5 animate:1];
}

- (id)_specifiersToAddOrRemoveWhenTogglingEditButton
{
  v3 = +[NSMutableArray array];
  v4 = v3;
  if (self->_specifiersForAddItem)
  {
    [v3 addObjectsFromArray:?];
  }

  if (self->_specifiersForVirtualCardSection)
  {
    [v4 addObjectsFromArray:?];
  }

  return v4;
}

- (id)specifiers
{
  v2 = *&self->super.super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v34 = OBJC_IVAR___PSListController__specifiers;
    v5 = SafariSettingsLocalizedString(@"Credit Cards", @"AutoFill");
    [(SafariSavedCreditCardsController *)self setTitle:v5];

    v6 = objc_alloc_init(NSMutableArray);
    v7 = +[WBUCreditCardDataController sharedCreditCardDataController];
    selfCopy = self;
    navigationItem = [(SafariSavedCreditCardsController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    creditCardData = [v7 creditCardData];
    [rightBarButtonItem setEnabled:{objc_msgSend(creditCardData, "count") != 0}];

    v33 = v7;
    creditCardData2 = [v7 creditCardData];
    v12 = +[WBUCreditCardDataController creditCardComparatorForSortingInSettings];
    v13 = [creditCardData2 sortedArrayUsingComparator:v12];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v13;
    v14 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v14)
    {
      v15 = v14;
      v36 = *v39;
      v16 = PSCellClassKey;
      v17 = PSIconImageKey;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          v19 = v6;
          if (*v39 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v38 + 1) + 8 * i);
          cardName = [v20 cardName];
          if ([cardName length])
          {
            [v20 cardName];
          }

          else
          {
            SafariSettingsLocalizedString(@"Credit Card", @"AutoFill");
          }
          v22 = ;

          v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:selfCopy set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
          [v23 setProperty:objc_opt_class() forKey:v16];
          cardNumber = [v20 cardNumber];
          WBSCreditCardTypeFromNumber();
          v25 = SFCreditCardIconForType();

          [v23 setProperty:v25 forKey:v17];
          [v23 setUserInfo:v20];
          v6 = v19;
          [v19 addObject:v23];
        }

        v15 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v15);
    }

    keychainCardsGroupSpecifier = selfCopy->_keychainCardsGroupSpecifier;
    if (!keychainCardsGroupSpecifier)
    {
      v27 = [PSSpecifier groupSpecifierWithName:?];
      v28 = selfCopy->_keychainCardsGroupSpecifier;
      selfCopy->_keychainCardsGroupSpecifier = v27;

      keychainCardsGroupSpecifier = selfCopy->_keychainCardsGroupSpecifier;
    }

    [v6 insertObject:keychainCardsGroupSpecifier atIndex:0];
    if (([(SafariSavedCreditCardsController *)selfCopy isEditing]& 1) == 0)
    {
      _specifiersForAddItem = [(SafariSavedCreditCardsController *)selfCopy _specifiersForAddItem];
      [v6 addObjectsFromArray:_specifiersForAddItem];
    }

    [(SafariSavedCreditCardsController *)selfCopy _createVirtualCardSectionSpecifiers];
    v30 = *&selfCopy->super.super.PSListController_opaque[v34];
    *&selfCopy->super.super.PSListController_opaque[v34] = v6;
    v31 = v6;

    v3 = *&selfCopy->super.super.PSListController_opaque[v34];
  }

  return v3;
}

- (id)deleteConfirmationTitle
{
  table = [(SafariSavedCreditCardsController *)self table];
  indexPathsForSelectedRows = [table indexPathsForSelectedRows];
  v4 = [indexPathsForSelectedRows count];

  if (v4)
  {
    if (v4 == &dword_0 + 1)
    {
      v5 = @"Delete Credit Card";
    }

    else
    {
      v5 = @"Delete Credit Cards";
    }

    v6 = SafariSettingsLocalizedString(v5, @"AutoFill");
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)deleteConfirmationMessage
{
  table = [(SafariSavedCreditCardsController *)self table];
  indexPathsForSelectedRows = [table indexPathsForSelectedRows];
  v5 = [indexPathsForSelectedRows count];

  if (v5)
  {
    isKeychainSyncEnabled = [(SafariAutoFillListController *)self isKeychainSyncEnabled];
    if (v5 == &dword_0 + 1)
    {
      v7 = @"Are you sure you want to delete the selected credit card?";
      v8 = @"Are you sure you want to delete the selected credit card? It will be deleted from iCloud Keychain on all your devices.";
    }

    else
    {
      v7 = @"Are you sure you want to delete the selected credit cards?";
      v8 = @"Are you sure you want to delete the selected credit cards? They will be deleted from iCloud Keychain on all your devices.";
    }

    if (isKeychainSyncEnabled)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    v9 = SafariSettingsLocalizedString(v10, @"AutoFill");
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)deleteItemsForSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v4 = +[WBUCreditCardDataController sharedCreditCardDataController];
  v5 = [specifiersCopy count];
  creditCardData = [v4 creditCardData];
  v7 = [creditCardData count];

  if (v5 == v7)
  {
    [v4 clearCreditCardData];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = specifiersCopy;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          userInfo = [*(*(&v14 + 1) + 8 * v12) userInfo];
          [v4 removeCreditCardData:userInfo];

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

- (void)_toggleEditing
{
  v3 = [(SafariSavedCreditCardsController *)self isEditing]^ 1;

  [(SafariSavedCreditCardsController *)self setEditing:v3 animated:1];
}

- (void)_cancelEditing
{
  if ([(SafariSavedCreditCardsController *)self isEditing])
  {
    [(SafariSavedCreditCardsController *)self setEditing:0 animated:1];
    table = [(SafariSavedCreditCardsController *)self table];
    [table selectRowAtIndexPath:0 animated:0 scrollPosition:0];
  }

  else
  {
    table = [(SafariSavedCreditCardsController *)self table];
    [table setEditing:0 animated:0];
  }
}

- (id)_deleteBarButtonItem
{
  deleteBarButtonItem = self->_deleteBarButtonItem;
  if (!deleteBarButtonItem)
  {
    v4 = [UIBarButtonItem alloc];
    v5 = SafariSettingsLocalizedString(@"Delete", @"AutoFill");
    v6 = [v4 initWithTitle:v5 style:7 target:self action:"_deleteButtonTapped"];
    v7 = self->_deleteBarButtonItem;
    self->_deleteBarButtonItem = v6;

    deleteBarButtonItem = self->_deleteBarButtonItem;
  }

  return deleteBarButtonItem;
}

- (id)_cancelBarButtonItem
{
  cancelBarButtonItem = self->_cancelBarButtonItem;
  if (!cancelBarButtonItem)
  {
    v4 = [UIBarButtonItem alloc];
    v5 = SafariSettingsLocalizedString(@"Cancel", @"AutoFill");
    v6 = [v4 initWithTitle:v5 style:2 target:self action:"_cancelEditing"];
    v7 = self->_cancelBarButtonItem;
    self->_cancelBarButtonItem = v6;

    cancelBarButtonItem = self->_cancelBarButtonItem;
  }

  return cancelBarButtonItem;
}

- (id)_editBarButtonItem
{
  editBarButtonItem = self->_editBarButtonItem;
  if (!editBarButtonItem)
  {
    v4 = [UIBarButtonItem alloc];
    v5 = SafariSettingsLocalizedString(@"Edit", @"AutoFill");
    v6 = [v4 initWithTitle:v5 style:0 target:self action:"_toggleEditing"];
    v7 = self->_editBarButtonItem;
    self->_editBarButtonItem = v6;

    editBarButtonItem = self->_editBarButtonItem;
  }

  return editBarButtonItem;
}

- (void)_updateDeleteButton
{
  _deleteBarButtonItem = [(SafariSavedCreditCardsController *)self _deleteBarButtonItem];
  table = [(SafariSavedCreditCardsController *)self table];
  indexPathsForSelectedRows = [table indexPathsForSelectedRows];
  [_deleteBarButtonItem setEnabled:{objc_msgSend(indexPathsForSelectedRows, "count") != 0}];
}

- (void)_updateEditButton
{
  _editBarButtonItem = [(SafariSavedCreditCardsController *)self _editBarButtonItem];
  [_editBarButtonItem setEnabled:{-[SafariSavedCreditCardsController _autoFillItemCount](self, "_autoFillItemCount") != 0}];
}

- (void)_deleteButtonTapped
{
  if (_SFDeviceIsPad())
  {
    [(SafariSavedCreditCardsController *)self deleteConfirmationTitle];
  }

  else
  {
    [(SafariSavedCreditCardsController *)self deleteConfirmationMessage];
  }
  v3 = ;
  if (_SFDeviceIsPad())
  {
    deleteConfirmationMessage = [(SafariSavedCreditCardsController *)self deleteConfirmationMessage];
  }

  else
  {
    deleteConfirmationMessage = 0;
  }

  v5 = [UIAlertController alertControllerWithTitle:v3 message:deleteConfirmationMessage preferredStyle:_SFDeviceAlertStyle()];
  v6 = SafariSettingsLocalizedString(@"Delete", @"AutoFill");
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __55__SafariSavedCreditCardsController__deleteButtonTapped__block_invoke;
  v10[3] = &unk_896F0;
  v10[4] = self;
  v7 = [UIAlertAction actionWithTitle:v6 style:2 handler:v10];
  [v5 addAction:v7];

  v8 = SafariSettingsLocalizedString(@"Cancel", @"AutoFill");
  v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:0];
  [v5 addAction:v9];

  [(SafariSavedCreditCardsController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)_deleteSelectedItems
{
  table = [(SafariSavedCreditCardsController *)self table];
  indexPathsForSelectedRows = [table indexPathsForSelectedRows];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __56__SafariSavedCreditCardsController__deleteSelectedItems__block_invoke;
  v14[3] = &unk_897E0;
  v14[4] = self;
  v5 = [indexPathsForSelectedRows safari_mapObjectsUsingBlock:v14];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(SafariSavedCreditCardsController *)self removeSpecifier:*(*(&v10 + 1) + 8 * v9) animated:1];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }

  [(SafariSavedCreditCardsController *)self deleteItemsForSpecifiers:v5];
  [(SafariSavedCreditCardsController *)self setEditing:0 animated:1];
}

id __56__SafariSavedCreditCardsController__deleteSelectedItems__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [v2 indexForIndexPath:a2];

  return [v2 specifierAtIndex:v3];
}

- (unint64_t)_autoFillItemCount
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *&self->super.super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [(SafariSavedCreditCardsController *)self isSpecifierForAutoFillItem:*(*(&v10 + 1) + 8 * i), v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  if ([view isEditing])
  {

    [(SafariSavedCreditCardsController *)self _updateDeleteButton];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([viewCopy isEditing])
  {
    [(SafariSavedCreditCardsController *)self _updateDeleteButton];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SafariSavedCreditCardsController;
    [(SafariSettingsListController *)&v8 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

- (void)tableView:(id)view willBeginEditingRowAtIndexPath:(id)path
{
  v5 = [(SafariSavedCreditCardsController *)self navigationItem:view];
  _cancelBarButtonItem = [(SafariSavedCreditCardsController *)self _cancelBarButtonItem];
  v8 = _cancelBarButtonItem;
  v7 = [NSArray arrayWithObjects:&v8 count:1];
  [v5 setRightBarButtonItems:v7 animated:1];
}

- (void)tableView:(id)view didEndEditingRowAtIndexPath:(id)path
{
  [(SafariSavedCreditCardsController *)self _showEditBarButtonItemAnimated:1, path];

  [(SafariSavedCreditCardsController *)self _updateEditButton];
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v5 = [(SafariSavedCreditCardsController *)self indexForIndexPath:path];
  v6 = [*&self->super.super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v5];
  v7 = [(SafariSavedCreditCardsController *)self isSpecifierForAutoFillItem:v6];

  return v7;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  style = [(SafariSavedCreditCardsController *)self indexForIndexPath:path, style];
  v7 = [*&self->super.super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:style];
  v9 = v7;
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  [(SafariSavedCreditCardsController *)self deleteItemsForSpecifiers:v8];

  [(SafariSavedCreditCardsController *)self removeSpecifier:v7 animated:1];
}

- (void)_viewVirtualCardInWallet:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "Failed to open to virtual card URL with error: %{public}@", &v5, 0xCu);
}

@end