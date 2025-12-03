@interface SafariSavedCreditCardDetailController
- (BOOL)_isSpecifierACreditCardInfoField:(id)field;
- (BOOL)_isThereDefaultCreditCardInfoAtIndexPath:(id)path;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)shouldSelectResponderOnAppearance;
- (BOOL)tableView:(id)view shouldShowMenuForRowAtIndexPath:(id)path;
- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration;
- (SEL)_copyActionForIndexPath:(id)path;
- (SafariSavedCreditCardDetailController)init;
- (id)_deleteButtonSpecifiers;
- (id)_specifierWithName:(id)name;
- (id)_useCameraSpecifiers;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_applicationDidEnterBackground:(id)background;
- (void)_cancelEditing:(id)editing;
- (void)_deleteCreditCard:(id)card;
- (void)_dismissCreditCardDetailView;
- (void)_endEditing:(id)editing;
- (void)_promptToReplaceExistingCreditCard:(id)card withNewCard:(id)newCard oldCard:(id)oldCard;
- (void)_removeCreditCardDataAndPopViewController;
- (void)_setEditing:(BOOL)editing;
- (void)_setValue:(id)value forSpecifier:(id)specifier;
- (void)_updateDoneButtonForCardNumberString:(id)string;
- (void)_updateRightBarButtonItem;
- (void)_updateSpecifiersFromCreditCardData:(id)data;
- (void)_useCamera:(id)camera;
- (void)_willHideUIMenuController:(id)controller;
- (void)creditCardCaptureViewController:(id)controller didCaptureCreditCard:(id)card;
- (void)dealloc;
- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)safari_copyCreditCardExpirationDate:(id)date;
- (void)safari_copyCreditCardName:(id)name;
- (void)safari_copyCreditCardNumber:(id)number;
- (void)safari_copyCreditCardSecurityCode:(id)code;
- (void)safari_copyCreditCardholderName:(id)name;
- (void)setSpecifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation SafariSavedCreditCardDetailController

- (SafariSavedCreditCardDetailController)init
{
  v44.receiver = self;
  v44.super_class = SafariSavedCreditCardDetailController;
  v2 = [(SafariSavedCreditCardDetailController *)&v44 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = objc_alloc_init(WBSCreditCardFormatter);
    creditCardFormatter = v2->_creditCardFormatter;
    v2->_creditCardFormatter = v3;

    [(WBSCreditCardFormatter *)v2->_creditCardFormatter setShowCreditCardNumber:1];
    [(WBSCreditCardFormatter *)v2->_creditCardFormatter setAllowsUnknownCardTypes:1];
    v5 = objc_alloc_init(NSDateFormatter);
    expirationDateFormatter = v2->_expirationDateFormatter;
    v2->_expirationDateFormatter = v5;

    [(NSDateFormatter *)v2->_expirationDateFormatter setDateFormat:@"MM/yy"];
    v7 = v2->_expirationDateFormatter;
    v8 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    [(NSDateFormatter *)v7 setCalendar:v8];

    v9 = SafariSettingsLocalizedString(@"Name", @"AutoFill");
    v10 = [(SafariSavedCreditCardDetailController *)v2 _specifierWithName:v9];
    cardholderSpecifier = v2->_cardholderSpecifier;
    v2->_cardholderSpecifier = v10;

    v12 = v2->_cardholderSpecifier;
    v13 = SafariSettingsLocalizedString(@"Name on Card", @"AutoFill");
    [(PSTextFieldSpecifier *)v12 setPlaceholder:v13];

    v14 = SafariSettingsLocalizedString(@"Card Number", @"AutoFill");
    v15 = [(SafariSavedCreditCardDetailController *)v2 _specifierWithName:v14];
    numberSpecifier = v2->_numberSpecifier;
    v2->_numberSpecifier = v15;

    v17 = v2->_numberSpecifier;
    v18 = SafariSettingsLocalizedString(@"Required", @"AutoFill");
    [(PSTextFieldSpecifier *)v17 setPlaceholder:v18];

    [(PSTextFieldSpecifier *)v2->_numberSpecifier setKeyboardType:4 autoCaps:0 autoCorrection:1];
    [(PSTextFieldSpecifier *)v2->_numberSpecifier setIdentifier:@"CardNumber"];
    v19 = v2->_numberSpecifier;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = __45__SafariSavedCreditCardDetailController_init__block_invoke;
    v41[3] = &unk_89650;
    objc_copyWeak(&v42, &location);
    v20 = [v41 copy];
    [(PSTextFieldSpecifier *)v19 setProperty:v20 forKey:@"SafariTextChangeHandler"];

    v21 = v2->_numberSpecifier;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = __45__SafariSavedCreditCardDetailController_init__block_invoke_2;
    v39[3] = &unk_89678;
    objc_copyWeak(&v40, &location);
    v22 = [v39 copy];
    [(PSTextFieldSpecifier *)v21 setProperty:v22 forKey:@"SafariShouldChangeCharacters"];

    v23 = SafariSettingsLocalizedString(@"Expiration", @"AutoFill");
    v24 = [(SafariSavedCreditCardDetailController *)v2 _specifierWithName:v23];
    expirationDateSpecifier = v2->_expirationDateSpecifier;
    v2->_expirationDateSpecifier = v24;

    v26 = v2->_expirationDateSpecifier;
    v27 = SafariSettingsLocalizedString(@"MM/YY", @"AutoFill");
    [(PSTextFieldSpecifier *)v26 setPlaceholder:v27];

    [(PSTextFieldSpecifier *)v2->_expirationDateSpecifier setProperty:objc_opt_class() forKey:PSCellClassKey];
    [(PSTextFieldSpecifier *)v2->_expirationDateSpecifier setProperty:v2->_expirationDateFormatter forKey:@"SafariDateFormatter"];
    v28 = SafariSettingsLocalizedString(@"Security Code Title", @"AutoFill");
    v29 = [(SafariSavedCreditCardDetailController *)v2 _specifierWithName:v28];
    cardSecurityCodeSpecifier = v2->_cardSecurityCodeSpecifier;
    v2->_cardSecurityCodeSpecifier = v29;

    v31 = v2->_cardSecurityCodeSpecifier;
    v32 = SafariSettingsLocalizedString(@"Security Code Placeholder", @"AutoFill");
    [(PSTextFieldSpecifier *)v31 setPlaceholder:v32];

    [(PSTextFieldSpecifier *)v2->_cardSecurityCodeSpecifier setKeyboardType:4 autoCaps:0 autoCorrection:1];
    [(PSTextFieldSpecifier *)v2->_cardSecurityCodeSpecifier setIdentifier:@"CardSecurityCode"];
    v33 = SafariSettingsLocalizedString(@"Description", @"AutoFill");
    v34 = [(SafariSavedCreditCardDetailController *)v2 _specifierWithName:v33];
    descriptionSpecifier = v2->_descriptionSpecifier;
    v2->_descriptionSpecifier = v34;

    v36 = +[NSNotificationCenter defaultCenter];
    [v36 addObserver:v2 selector:"_applicationDidEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];

    v37 = v2;
    objc_destroyWeak(&v40);
    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __45__SafariSavedCreditCardDetailController_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 text];

  [WeakRetained _updateDoneButtonForCardNumberString:v4];
}

id __45__SafariSavedCreditCardDetailController_init__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v12 = [v9 text];
    v13 = [v12 stringByReplacingCharactersInRange:a3 withString:{a4, v10}];
    v20 = [v10 length] + a3;
    v21 = 0;
    v14 = WeakRetained[18];
    v19 = v13;
    v15 = [v14 isPartialStringValid:&v19 proposedSelectedRange:&v20 originalString:v12 originalSelectedRange:a3 errorDescription:{a4, 0}];
    v16 = v19;

    if ((v15 & 1) == 0)
    {
      [v9 setText:v16];
      [v9 setSelectionRange:{v20, v21}];
      [WeakRetained _updateDoneButtonForCardNumberString:v16];
      v17 = +[NSNotificationCenter defaultCenter];
      [v17 postNotificationName:UITextFieldTextDidChangeNotification object:v9];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SafariSavedCreditCardDetailController;
  [(SafariSavedCreditCardDetailController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = SafariSavedCreditCardDetailController;
  [(SafariSavedCreditCardDetailController *)&v6 viewDidLoad];
  v3 = [[UIEditMenuInteraction alloc] initWithDelegate:self];
  editMenuInteraction = self->_editMenuInteraction;
  self->_editMenuInteraction = v3;

  table = [(SafariSavedCreditCardDetailController *)self table];
  [table addInteraction:self->_editMenuInteraction];
}

- (BOOL)shouldSelectResponderOnAppearance
{
  if (!self->_creditCardData)
  {
    return 1;
  }

  v3.receiver = self;
  v3.super_class = SafariSavedCreditCardDetailController;
  return [(SafariSavedCreditCardDetailController *)&v3 shouldSelectResponderOnAppearance];
}

- (void)_applicationDidEnterBackground:(id)background
{
  [(SafariSavedCreditCardDetailController *)self safari_dismissPresentedAlert];
  [(SafariSavedCreditCardDetailController *)self _dismissCreditCardDetailView];
  navigationController = [(SafariSavedCreditCardDetailController *)self navigationController];
  navigationController2 = [(SafariSavedCreditCardDetailController *)self navigationController];
  previousViewController = [navigationController2 previousViewController];
  v6 = [navigationController popToViewController:previousViewController animated:0];
}

- (void)_updateDoneButtonForCardNumberString:(id)string
{
  stringCopy = string;
  navigationItem = [(SafariSavedCreditCardDetailController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  if ([stringCopy length])
  {
    v6 = [(WBSCreditCardFormatter *)self->_creditCardFormatter getObjectValue:0 forString:stringCopy errorDescription:0];
  }

  else
  {
    v6 = 0;
  }

  [rightBarButtonItem setEnabled:v6];
}

- (void)_setValue:(id)value forSpecifier:(id)specifier
{
  valueCopy = value;
  specifierCopy = specifier;
  v7 = [(PSTextFieldSpecifier *)specifierCopy propertyForKey:@"SafariEditing"];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    v9 = PSValueKey;
    [(PSTextFieldSpecifier *)specifierCopy setProperty:valueCopy forKey:PSValueKey];
    if (self->_descriptionSpecifier == specifierCopy)
    {
      self->_hasDefaultDescription = 0;
    }

    else if (self->_hasDefaultDescription)
    {
      v10 = [(PSTextFieldSpecifier *)self->_numberSpecifier propertyForKey:v9];
      v11 = WBSCreditCardTypeFromNumberAllowingPartialMatch();

      if (v11)
      {
        descriptionSpecifier = self->_descriptionSpecifier;
        v13 = +[WBUCreditCardDataController sharedCreditCardDataController];
        v14 = [(PSTextFieldSpecifier *)self->_cardholderSpecifier propertyForKey:v9];
        v15 = [v13 defaultNameForCardOfType:v11 cardholderName:v14];
        [(PSTextFieldSpecifier *)descriptionSpecifier setProperty:v15 forKey:v9];

        [(SafariSavedCreditCardDetailController *)self reloadSpecifier:self->_descriptionSpecifier];
      }
    }
  }
}

- (id)_specifierWithName:(id)name
{
  v3 = [PSTextFieldSpecifier preferenceSpecifierNamed:name target:self set:"_setValue:forSpecifier:" get:"_valueOfSpecifier:" detail:0 cell:8 edit:0];
  [v3 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v3 setKeyboardType:0 autoCaps:1 autoCorrection:1];

  return v3;
}

- (void)_updateSpecifiersFromCreditCardData:(id)data
{
  dataCopy = data;
  cardholderSpecifier = self->_cardholderSpecifier;
  cardholderName = [dataCopy cardholderName];
  v6 = PSValueKey;
  [(PSTextFieldSpecifier *)cardholderSpecifier setProperty:cardholderName forKey:PSValueKey];

  numberSpecifier = self->_numberSpecifier;
  creditCardFormatter = self->_creditCardFormatter;
  cardNumber = [dataCopy cardNumber];
  v10 = [(WBSCreditCardFormatter *)creditCardFormatter stringForObjectValue:cardNumber];
  [(PSTextFieldSpecifier *)numberSpecifier setProperty:v10 forKey:v6];

  expirationDate = [dataCopy expirationDate];
  expirationDateSpecifier = self->_expirationDateSpecifier;
  if (expirationDate)
  {
    [(PSTextFieldSpecifier *)expirationDateSpecifier setProperty:expirationDate forKey:v6];
  }

  else
  {
    [(PSTextFieldSpecifier *)expirationDateSpecifier removePropertyForKey:v6];
  }

  cardSecurityCodeSpecifier = self->_cardSecurityCodeSpecifier;
  cardSecurityCode = [dataCopy cardSecurityCode];
  [(PSTextFieldSpecifier *)cardSecurityCodeSpecifier setProperty:cardSecurityCode forKey:v6];

  cardName = [dataCopy cardName];
  if (self->_hasDefaultDescription)
  {
    cardNumber2 = [dataCopy cardNumber];
    v17 = WBSCreditCardTypeFromNumberAllowingPartialMatch();

    if (v17)
    {
      v18 = +[WBUCreditCardDataController sharedCreditCardDataController];
      cardholderName2 = [dataCopy cardholderName];
      v20 = [v18 defaultNameForCardOfType:v17 cardholderName:cardholderName2];

      cardName = v20;
    }
  }

  [(PSTextFieldSpecifier *)self->_descriptionSpecifier setProperty:cardName forKey:v6];
  [(SafariSavedCreditCardDetailController *)self reloadSpecifier:self->_cardholderSpecifier];
  [(SafariSavedCreditCardDetailController *)self reloadSpecifier:self->_numberSpecifier];
  [(SafariSavedCreditCardDetailController *)self reloadSpecifier:self->_expirationDateSpecifier];
  [(SafariSavedCreditCardDetailController *)self reloadSpecifier:self->_cardSecurityCodeSpecifier];
  [(SafariSavedCreditCardDetailController *)self reloadSpecifier:self->_descriptionSpecifier];
}

- (void)setSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = SafariSavedCreditCardDetailController;
  specifierCopy = specifier;
  [(SafariSavedCreditCardDetailController *)&v7 setSpecifier:specifierCopy];
  userInfo = [specifierCopy userInfo];

  creditCardData = self->_creditCardData;
  self->_creditCardData = userInfo;

  if (!self->_creditCardData)
  {
    [(SafariSavedCreditCardDetailController *)self _setEditing:1];
    self->_hasDefaultDescription = 1;
  }
}

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    [(SafariSavedCreditCardDetailController *)self _updateSpecifiers];
    numberSpecifier = self->_numberSpecifier;
    v14[0] = self->_cardholderSpecifier;
    v14[1] = numberSpecifier;
    cardSecurityCodeSpecifier = self->_cardSecurityCodeSpecifier;
    v14[2] = self->_expirationDateSpecifier;
    v14[3] = cardSecurityCodeSpecifier;
    v14[4] = self->_descriptionSpecifier;
    v7 = [NSArray arrayWithObjects:v14 count:5];
    v8 = *&self->PSListController_opaque[v2];
    *&self->PSListController_opaque[v2] = v7;

    if (!self->_creditCardData && +[_SFCreditCardCaptureViewController canCapture])
    {
      _useCameraSpecifiers = [(SafariSavedCreditCardDetailController *)self _useCameraSpecifiers];
      v10 = [_useCameraSpecifiers arrayByAddingObjectsFromArray:*&self->PSListController_opaque[v2]];
      v11 = *&self->PSListController_opaque[v2];
      *&self->PSListController_opaque[v2] = v10;
    }

    v3 = *&self->PSListController_opaque[v2];
  }

  v12 = v3;

  return v12;
}

- (id)_deleteButtonSpecifiers
{
  deleteButtonSpecifiers = self->_deleteButtonSpecifiers;
  if (!deleteButtonSpecifiers)
  {
    v4 = [PSSpecifier groupSpecifierWithName:0];
    v10[0] = v4;
    v5 = SafariSettingsLocalizedString(@"Delete Credit Card", @"AutoFill");
    v6 = [PSSpecifier deleteButtonSpecifierWithName:v5 target:self action:"_deleteCreditCard:"];
    v10[1] = v6;
    v7 = [NSArray arrayWithObjects:v10 count:2];
    v8 = self->_deleteButtonSpecifiers;
    self->_deleteButtonSpecifiers = v7;

    deleteButtonSpecifiers = self->_deleteButtonSpecifiers;
  }

  return deleteButtonSpecifiers;
}

- (id)_useCameraSpecifiers
{
  useCameraSpecifiers = self->_useCameraSpecifiers;
  if (!useCameraSpecifiers)
  {
    v4 = SafariSettingsLocalizedString(@"Use Camera", @"AutoFill");
    v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v5 setButtonAction:"_useCamera:"];
    v10[0] = v5;
    v6 = [PSSpecifier groupSpecifierWithName:0];
    v10[1] = v6;
    v7 = [NSArray arrayWithObjects:v10 count:2];
    v8 = self->_useCameraSpecifiers;
    self->_useCameraSpecifiers = v7;

    useCameraSpecifiers = self->_useCameraSpecifiers;
  }

  return useCameraSpecifiers;
}

- (void)_updateRightBarButtonItem
{
  editing = self->_editing;
  v4 = [UIBarButtonItem alloc];
  if (editing)
  {
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  v6 = &selRef__endEditing_;
  if (!editing)
  {
    v6 = &selRef__edit_;
  }

  v9 = [v4 initWithBarButtonSystemItem:v5 target:self action:*v6];
  navigationItem = [(SafariSavedCreditCardDetailController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v9 animated:1];

  if (self->_editing)
  {
    v8 = [(PSTextFieldSpecifier *)self->_numberSpecifier propertyForKey:PSValueKey];
    [(SafariSavedCreditCardDetailController *)self _updateDoneButtonForCardNumberString:v8];
  }
}

- (void)_setEditing:(BOOL)editing
{
  if (self->_editing != editing)
  {
    self->_editing = editing;
    navigationItem = [(SafariSavedCreditCardDetailController *)self navigationItem];
    [navigationItem setHidesBackButton:self->_editing animated:1];
    [(SafariSavedCreditCardDetailController *)self _updateRightBarButtonItem];
    if (self->_editing)
    {
      v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelEditing:"];
    }

    else
    {
      v4 = 0;
    }

    [navigationItem setLeftBarButtonItem:v4 animated:1];
    if (self->_editing && self->_creditCardData)
    {
      _deleteButtonSpecifiers = [(SafariSavedCreditCardDetailController *)self _deleteButtonSpecifiers];
      [(SafariSavedCreditCardDetailController *)self addSpecifiersFromArray:_deleteButtonSpecifiers animated:1];
    }

    else
    {
      _deleteButtonSpecifiers = [(SafariSavedCreditCardDetailController *)self _deleteButtonSpecifiers];
      [(SafariSavedCreditCardDetailController *)self removeContiguousSpecifiers:_deleteButtonSpecifiers animated:1];
    }

    cardholderSpecifier = self->_cardholderSpecifier;
    v7 = [NSNumber numberWithBool:self->_editing];
    [(PSTextFieldSpecifier *)cardholderSpecifier setProperty:v7 forKey:@"SafariEditing"];

    numberSpecifier = self->_numberSpecifier;
    v9 = [NSNumber numberWithBool:self->_editing];
    [(PSTextFieldSpecifier *)numberSpecifier setProperty:v9 forKey:@"SafariEditing"];

    expirationDateSpecifier = self->_expirationDateSpecifier;
    v11 = [NSNumber numberWithBool:self->_editing];
    [(PSTextFieldSpecifier *)expirationDateSpecifier setProperty:v11 forKey:@"SafariEditing"];

    cardSecurityCodeSpecifier = self->_cardSecurityCodeSpecifier;
    v13 = [NSNumber numberWithBool:self->_editing];
    [(PSTextFieldSpecifier *)cardSecurityCodeSpecifier setProperty:v13 forKey:@"SafariEditing"];

    descriptionSpecifier = self->_descriptionSpecifier;
    v15 = [NSNumber numberWithBool:self->_editing];
    [(PSTextFieldSpecifier *)descriptionSpecifier setProperty:v15 forKey:@"SafariEditing"];

    [(SafariSavedCreditCardDetailController *)self _updateSpecifiers];
  }
}

- (void)_dismissCreditCardDetailView
{
  navigationController = [(SafariSavedCreditCardDetailController *)self navigationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    navigationController2 = [(SafariSavedCreditCardDetailController *)self navigationController];
    parentController = [navigationController2 parentController];
    [parentController reloadSpecifiers];

    navigationController3 = [(SafariSavedCreditCardDetailController *)self navigationController];
    [navigationController3 dismiss];
  }
}

- (void)_endEditing:(id)editing
{
  table = [(SafariSavedCreditCardDetailController *)self table];
  indexPathForSelectedRow = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__table] indexPathForSelectedRow];
  [table deselectRowAtIndexPath:indexPathForSelectedRow animated:0];

  view = [(SafariSavedCreditCardDetailController *)self view];
  firstResponder = [view firstResponder];
  [firstResponder resignFirstResponder];

  v8 = +[WBUCreditCardDataController sharedCreditCardDataController];
  v9 = self->_creditCardData;
  v10 = PSValueKey;
  v11 = [(PSTextFieldSpecifier *)self->_numberSpecifier propertyForKey:PSValueKey];
  v12 = WBSNormalizedCreditCardNumber();

  v28 = v8;
  v13 = [v8 existingCardWithNumber:v12];
  v14 = [(PSTextFieldSpecifier *)self->_descriptionSpecifier propertyForKey:v10];
  v15 = [(PSTextFieldSpecifier *)self->_cardSecurityCodeSpecifier propertyForKey:v10];
  v16 = [WBSCreditCardData alloc];
  v17 = [(PSTextFieldSpecifier *)self->_cardholderSpecifier propertyForKey:v10];
  v18 = [(PSTextFieldSpecifier *)self->_expirationDateSpecifier propertyForKey:v10];
  v19 = [v16 initWithCardName:v14 number:v12 cardholderName:v17 expirationDate:v18 securityCode:v15];
  creditCardData = self->_creditCardData;
  self->_creditCardData = v19;

  cardNumber = [(WBSCreditCardData *)v9 cardNumber];
  cardNumber2 = [(WBSCreditCardData *)self->_creditCardData cardNumber];
  v23 = [cardNumber isEqualToString:cardNumber2];

  if (!v13 || (v23 & 1) != 0)
  {
    v25 = self->_creditCardData;
    if (v9)
    {
      v24 = v28;
      [v28 replaceCreditCardData:v9 withCard:v25];
    }

    else
    {
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = __53__SafariSavedCreditCardDetailController__endEditing___block_invoke;
      v29[3] = &unk_896A0;
      v24 = v28;
      v30 = v28;
      selfCopy = self;
      [v30 saveCreditCardData:v25 completionHandler:v29];
      [(SafariSavedCreditCardDetailController *)self _dismissCreditCardDetailView];
    }
  }

  else
  {
    [(SafariSavedCreditCardDetailController *)self _promptToReplaceExistingCreditCard:v13 withNewCard:self->_creditCardData oldCard:v9];
    v24 = v28;
  }

  navigationItem = [(SafariSavedCreditCardDetailController *)self navigationItem];
  if ([v14 length])
  {
    [navigationItem setTitle:v14];
  }

  else
  {
    v27 = SafariSettingsLocalizedString(@"Credit Card", @"AutoFill");
    [navigationItem setTitle:v27];
  }

  [(SafariSavedCreditCardDetailController *)self _setEditing:0];
}

- (void)_promptToReplaceExistingCreditCard:(id)card withNewCard:(id)newCard oldCard:(id)oldCard
{
  cardCopy = card;
  newCardCopy = newCard;
  oldCardCopy = oldCard;
  v11 = +[WBUCreditCardDataController sharedCreditCardDataController];
  v12 = SafariSettingsLocalizedString(@"A credit card with the same number already exists. Would you like to replace it?", @"AutoFill");
  if (_SFDeviceIsPad())
  {
    v13 = SafariSettingsLocalizedString(@"Replace Credit Card", @"AutoFill");
  }

  else
  {
    v13 = v12;
  }

  v14 = v13;
  v26 = v13;
  if (_SFDeviceIsPad())
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v17 = [UIAlertController alertControllerWithTitle:v14 message:v16 preferredStyle:_SFDeviceAlertStyle()];

  v18 = SafariSettingsLocalizedString(@"Replace", @"AutoFill");
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __96__SafariSavedCreditCardDetailController__promptToReplaceExistingCreditCard_withNewCard_oldCard___block_invoke;
  v28[3] = &unk_896C8;
  v29 = v11;
  v30 = cardCopy;
  v31 = newCardCopy;
  v32 = oldCardCopy;
  selfCopy = self;
  v19 = oldCardCopy;
  v20 = newCardCopy;
  v21 = cardCopy;
  v22 = v11;
  v23 = [UIAlertAction actionWithTitle:v18 style:0 handler:v28];
  [v17 addAction:v23];

  v24 = SafariSettingsLocalizedString(@"Cancel", @"AutoFill");
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = __96__SafariSavedCreditCardDetailController__promptToReplaceExistingCreditCard_withNewCard_oldCard___block_invoke_2;
  v27[3] = &unk_896F0;
  v27[4] = self;
  v25 = [UIAlertAction actionWithTitle:v24 style:1 handler:v27];
  [v17 addAction:v25];

  [(SafariSavedCreditCardDetailController *)self presentViewController:v17 animated:1 completion:0];
}

id __96__SafariSavedCreditCardDetailController__promptToReplaceExistingCreditCard_withNewCard_oldCard___block_invoke(uint64_t a1)
{
  [*(a1 + 32) replaceCreditCardData:*(a1 + 40) withCard:*(a1 + 48)];
  if (*(a1 + 56))
  {
    [*(a1 + 32) removeCreditCardData:?];
  }

  v2 = *(a1 + 64);

  return [v2 _dismissCreditCardDetailView];
}

- (void)_cancelEditing:(id)editing
{
  [(SafariSavedCreditCardDetailController *)self _setEditing:0];
  if (!self->_creditCardData)
  {
    navigationController = [(SafariSavedCreditCardDetailController *)self navigationController];
    [navigationController dismiss];
  }
}

- (void)_deleteCreditCard:(id)card
{
  v4 = SafariSettingsLocalizedString(@"Are you sure you want to delete this credit card?", @"AutoFill");
  if (_SFDeviceIsPad())
  {
    v5 = SafariSettingsLocalizedString(@"Delete Credit Card", @"AutoFill");
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;
  if (_SFDeviceIsPad())
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [UIAlertController alertControllerWithTitle:v6 message:v8 preferredStyle:_SFDeviceAlertStyle()];

  v10 = SafariSettingsLocalizedString(@"Delete", @"AutoFill");
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __59__SafariSavedCreditCardDetailController__deleteCreditCard___block_invoke;
  v14[3] = &unk_896F0;
  v14[4] = self;
  v11 = [UIAlertAction actionWithTitle:v10 style:2 handler:v14];
  [v9 addAction:v11];

  v12 = SafariSettingsLocalizedString(@"Cancel", @"AutoFill");
  v13 = [UIAlertAction actionWithTitle:v12 style:1 handler:0];
  [v9 addAction:v13];

  [(SafariSavedCreditCardDetailController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)_useCamera:(id)camera
{
  v4 = objc_alloc_init(_SFCreditCardCaptureViewController);
  [v4 setDelegate:self];
  [(SafariSavedCreditCardDetailController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_removeCreditCardDataAndPopViewController
{
  v7 = +[WBUCreditCardDataController sharedCreditCardDataController];
  [v7 removeCreditCardData:self->_creditCardData];
  creditCardData = [v7 creditCardData];
  v4 = [creditCardData count];

  if (!v4)
  {
    [v7 clearCreditCardData];
  }

  navigationController = [(SafariSavedCreditCardDetailController *)self navigationController];
  v6 = [navigationController popViewControllerAnimated:1];
}

- (void)creditCardCaptureViewController:(id)controller didCaptureCreditCard:(id)card
{
  cardCopy = card;
  [(SafariSavedCreditCardDetailController *)self _updateSpecifiersFromCreditCardData:cardCopy];
  creditCardFormatter = self->_creditCardFormatter;
  cardNumber = [cardCopy cardNumber];

  v8 = [(WBSCreditCardFormatter *)creditCardFormatter stringForObjectValue:cardNumber];
  [(SafariSavedCreditCardDetailController *)self _updateDoneButtonForCardNumberString:v8];

  [(SafariSavedCreditCardDetailController *)self dismissViewControllerAnimated:1 completion:0];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = SafariSavedCreditCardDetailController;
  v7 = [(SafariSavedCreditCardDetailController *)&v12 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(SafariSavedCreditCardDetailController *)self indexForIndexPath:pathCopy];
  v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  if ([(SafariSavedCreditCardDetailController *)self _isSpecifierACreditCardInfoField:v9]&& (self->_editing || [(SafariSavedCreditCardDetailController *)self _isThereDefaultCreditCardInfoAtIndexPath:pathCopy]))
  {
    v10 = 0;
  }

  else
  {
    v10 = 3;
  }

  [v7 setSelectionStyle:v10];

  return v7;
}

- (BOOL)tableView:(id)view shouldShowMenuForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([view isEditing])
  {
    v7 = 0;
  }

  else
  {
    v8 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:{-[SafariSavedCreditCardDetailController indexForIndexPath:](self, "indexForIndexPath:", pathCopy)}];
    v7 = [(SafariSavedCreditCardDetailController *)self _isSpecifierACreditCardInfoField:v8];
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  table = [(SafariSavedCreditCardDetailController *)self table];
  indexPathForSelectedRow = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__table] indexPathForSelectedRow];
  v10 = [table cellForRowAtIndexPath:indexPathForSelectedRow];

  if ([(SafariSavedCreditCardDetailController *)self _copyActionForIndexPath:pathCopy])
  {
    if (self->_editing || [(SafariSavedCreditCardDetailController *)self _isThereDefaultCreditCardInfoAtIndexPath:pathCopy])
    {
      [v10 becomeFirstResponder];
    }

    else
    {
      [(UIEditMenuInteraction *)self->_editMenuInteraction dismissMenu];
      [v10 bounds];
      [viewCopy convertRect:v10 fromView:?];
      UIRectGetCenter();
      v11 = [UIEditMenuConfiguration configurationWithIdentifier:pathCopy sourcePoint:?];
      [(UIEditMenuInteraction *)self->_editMenuInteraction presentEditMenuWithConfiguration:v11];
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SafariSavedCreditCardDetailController;
    [(SafariSavedCreditCardDetailController *)&v12 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (self->_editing)
  {
    return 0;
  }

  else
  {
    return [(SafariSavedCreditCardDetailController *)self _isActionACopyMethod:action, sender];
  }
}

- (void)_willHideUIMenuController:(id)controller
{
  table = [(SafariSavedCreditCardDetailController *)self table];
  table2 = [(SafariSavedCreditCardDetailController *)self table];
  indexPathForSelectedRow = [table2 indexPathForSelectedRow];
  [table deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
}

- (void)safari_copyCreditCardholderName:(id)name
{
  v5 = +[UIPasteboard generalPasteboard];
  cardholderName = [(WBSCreditCardData *)self->_creditCardData cardholderName];
  [v5 safari_setSensitiveString:cardholderName];
}

- (void)safari_copyCreditCardNumber:(id)number
{
  v5 = +[UIPasteboard generalPasteboard];
  cardNumber = [(WBSCreditCardData *)self->_creditCardData cardNumber];
  [v5 safari_setSensitiveString:cardNumber];
}

- (void)safari_copyCreditCardExpirationDate:(id)date
{
  v7 = objc_alloc_init(NSDateFormatter);
  [v7 setDateFormat:@"MM/yy"];
  expirationDate = [(WBSCreditCardData *)self->_creditCardData expirationDate];
  v5 = [v7 stringFromDate:expirationDate];

  v6 = +[UIPasteboard generalPasteboard];
  [v6 safari_setSensitiveString:v5];
}

- (void)safari_copyCreditCardSecurityCode:(id)code
{
  v5 = +[UIPasteboard generalPasteboard];
  cardSecurityCode = [(WBSCreditCardData *)self->_creditCardData cardSecurityCode];
  [v5 safari_setSensitiveString:cardSecurityCode];
}

- (void)safari_copyCreditCardName:(id)name
{
  v5 = +[UIPasteboard generalPasteboard];
  cardName = [(WBSCreditCardData *)self->_creditCardData cardName];
  [v5 safari_setSensitiveString:cardName];
}

- (BOOL)_isThereDefaultCreditCardInfoAtIndexPath:(id)path
{
  v4 = [(SafariSavedCreditCardDetailController *)self indexForIndexPath:path];
  v5 = 0;
  if (v4 <= 2)
  {
    if (v4 == (&dword_0 + 1))
    {
      cardholderName = [(WBSCreditCardData *)self->_creditCardData cardholderName];
      goto LABEL_12;
    }

    if (v4 == (&dword_0 + 2))
    {
      cardholderName = [(WBSCreditCardData *)self->_creditCardData cardNumber];
      goto LABEL_12;
    }
  }

  else
  {
    if (v4 == (&dword_0 + 3))
    {
      expirationDate = [(WBSCreditCardData *)self->_creditCardData expirationDate];
      v8 = expirationDate;
LABEL_13:
      v5 = expirationDate == 0;

      return v5;
    }

    if (v4 == &dword_4)
    {
      cardholderName = [(WBSCreditCardData *)self->_creditCardData cardSecurityCode];
      goto LABEL_12;
    }

    if (v4 == (&dword_4 + 1))
    {
      cardholderName = [(WBSCreditCardData *)self->_creditCardData cardName];
LABEL_12:
      v8 = cardholderName;
      expirationDate = [cardholderName length];
      goto LABEL_13;
    }
  }

  return v5;
}

- (BOOL)_isSpecifierACreditCardInfoField:(id)field
{
  fieldCopy = field;
  v5 = self->_cardholderSpecifier == fieldCopy || self->_numberSpecifier == fieldCopy || self->_expirationDateSpecifier == fieldCopy || self->_cardSecurityCodeSpecifier == fieldCopy || self->_descriptionSpecifier == fieldCopy;

  return v5;
}

- (SEL)_copyActionForIndexPath:(id)path
{
  v4 = [(SafariSavedCreditCardDetailController *)self indexForIndexPath:path];
  v5 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v4];
  if (v5 == self->_cardholderSpecifier)
  {
    v6 = "safari_copyCreditCardholderName:";
  }

  else if (v5 == self->_numberSpecifier)
  {
    v6 = "safari_copyCreditCardNumber:";
  }

  else if (v5 == self->_expirationDateSpecifier)
  {
    v6 = "safari_copyCreditCardExpirationDate:";
  }

  else if (v5 == self->_cardSecurityCodeSpecifier)
  {
    v6 = "safari_copyCreditCardSecurityCode:";
  }

  else if (v5 == self->_descriptionSpecifier)
  {
    v6 = "safari_copyCreditCardName:";
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  identifier = [configuration identifier];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v7 = [(SafariSavedCreditCardDetailController *)self _copyActionForIndexPath:identifier]) != 0)
  {
    v8 = v7;
    v9 = SafariSettingsLocalizedString(@"Copy", @"AutoFill");
    v10 = [UICommand commandWithTitle:v9 image:0 action:v8 propertyList:0];
    v14 = v10;
    v11 = [NSArray arrayWithObjects:&v14 count:1];
    v12 = [UIMenu menuWithChildren:v11];
  }

  else
  {
    v12 = [UIMenu menuWithChildren:&__NSArray0__struct];
  }

  return v12;
}

- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration
{
  identifier = [configuration identifier];
  table = [(SafariSavedCreditCardDetailController *)self table];
  v7 = [table cellForRowAtIndexPath:identifier];
  [v7 bounds];
  [table convertRect:v7 fromView:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator
{
  identifier = [configuration identifier];
  table = [(SafariSavedCreditCardDetailController *)self table];
  [table deselectRowAtIndexPath:identifier animated:1];
}

@end