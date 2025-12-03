@interface SignatureEditingPane
+ (BOOL)hasMultipleMailAccounts;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (PSListController)parentListController;
- (id)_accountSignatureWithSpecifier:(id)specifier;
- (id)_signatureWithSpecifier:(id)specifier;
- (id)accountSignaturesSpecifiers;
- (id)defaultSignatureSpecifiers;
- (id)specifiers;
- (void)_setAccountSignature:(id)signature withSpecifier:(id)specifier;
- (void)_setSignature:(id)signature withSpecifier:(id)specifier;
- (void)commitChangesAndDismissKeyboard:(BOOL)keyboard;
- (void)suspend;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation SignatureEditingPane

+ (BOOL)hasMultipleMailAccounts
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = +[MailAccount mailAccounts];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = *v10;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v9 + 1) + 8 * i) isActive])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v7 = 1;
            if (v4)
            {
              goto LABEL_13;
            }

            v4 = 1;
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  v7 = 0;
LABEL_13:

  return v7;
}

- (id)defaultSignatureSpecifiers
{
  defaultSignatureSpecifiers = self->_defaultSignatureSpecifiers;
  if (!defaultSignatureSpecifiers)
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:2];
    v5 = +[PSSpecifier emptyGroupSpecifier];
    [(NSArray *)v4 addObject:v5];

    v6 = [PSSpecifier preferenceSpecifierNamed:&stru_3D2B0 target:self set:"_setSignature:withSpecifier:" get:"_signatureWithSpecifier:" detail:0 cell:14 edit:0];
    LODWORD(v7) = 22.0;
    v8 = [NSNumber numberWithFloat:v7];
    [v6 setProperty:v8 forKey:PSTextViewBottomMarginKey];

    [v6 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [(NSArray *)v4 addObject:v6];
    v9 = self->_defaultSignatureSpecifiers;
    self->_defaultSignatureSpecifiers = v4;

    defaultSignatureSpecifiers = self->_defaultSignatureSpecifiers;
  }

  return defaultSignatureSpecifiers;
}

- (id)accountSignaturesSpecifiers
{
  accountSignaturesSpecifiers = self->_accountSignaturesSpecifiers;
  if (!accountSignaturesSpecifiers)
  {
    v18 = objc_alloc_init(NSMutableArray);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = +[MailAccount mailAccounts];
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = *v20;
      v16 = PSCellClassKey;
      v17 = PSTextViewBottomMarginKey;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v19 + 1) + 8 * i);
          if ([v8 isActive])
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!self->_singleAccountActive)
              {
                displayName = [v8 displayName];
                v10 = [PSSpecifier groupSpecifierWithName:displayName];
                [(NSArray *)v18 addObject:v10];
              }

              v11 = [PSSpecifier preferenceSpecifierNamed:&stru_3D2B0 target:self set:"_setAccountSignature:withSpecifier:" get:"_accountSignatureWithSpecifier:" detail:0 cell:14 edit:0];
              LODWORD(v12) = 22.0;
              v13 = [NSNumber numberWithFloat:v12];
              [v11 setProperty:v13 forKey:v17];

              [v11 setProperty:objc_opt_class() forKey:v16];
              [v11 setProperty:v8 forKey:AccountPropertyKey];
              [(NSArray *)v18 addObject:v11];
            }
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v5);
    }

    v14 = self->_accountSignaturesSpecifiers;
    self->_accountSignaturesSpecifiers = v18;

    accountSignaturesSpecifiers = self->_accountSignaturesSpecifiers;
  }

  return accountSignaturesSpecifiers;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v21 = objc_alloc_init(NSMutableArray);
    v5 = +[MFSignatures sharedInstance];
    self->_useAccountSignatures = [v5 useAccountSignatures];

    v20 = +[PSSpecifier emptyGroupSpecifier];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"SINGLE_SIGNATURE_SELECTOR" value:&stru_3D2B0 table:@"Preferences"];
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:3 edit:0];

    v9 = [NSNumber numberWithBool:0];
    v10 = PSValueKey;
    [v8 setProperty:v9 forKey:PSValueKey];

    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"MULTIPLE_SIGNATURES_SELECTOR" value:&stru_3D2B0 table:@"Preferences"];
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:3 edit:0];

    v14 = [NSNumber numberWithBool:1];
    [v13 setProperty:v14 forKey:v10];

    v15 = [NSNumber numberWithBool:1];
    [v20 setProperty:v15 forKey:PSIsRadioGroupKey];

    [v20 setProperty:SignatureRadioGroupID forKey:PSIDKey];
    if (self->_useAccountSignatures)
    {
      v16 = v13;
    }

    else
    {
      v16 = v8;
    }

    [v20 setProperty:v16 forKey:PSRadioGroupCheckedSpecifierKey];
    if ([objc_opt_class() hasMultipleMailAccounts])
    {
      [v21 addObject:v20];
      [v21 addObject:v8];
      [v21 addObject:v13];
    }

    else
    {
      self->_singleAccountActive = 1;
    }

    if (self->_useAccountSignatures)
    {
      [(SignatureEditingPane *)self accountSignaturesSpecifiers];
    }

    else
    {
      [(SignatureEditingPane *)self defaultSignatureSpecifiers];
    }
    v17 = ;
    [v21 addObjectsFromArray:v17];

    v18 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v21;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)commitChangesAndDismissKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  table = [(SignatureEditingPane *)self table];
  window = [table window];
  firstResponder = [window firstResponder];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (keyboardCopy)
    {
      [firstResponder resignFirstResponder];
    }

    else
    {
      v7 = firstResponder;
      delegate = [v7 delegate];
      [delegate textContentViewDidEndEditing:v7];
    }
  }

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 postNotificationName:@"SignatureEditingPaneSignatureDidChange" object:self];

  parentListController = [(SignatureEditingPane *)self parentListController];
  [parentListController reloadSpecifier:*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier]];
}

- (void)suspend
{
  v3.receiver = self;
  v3.super_class = SignatureEditingPane;
  [(SignatureEditingPane *)&v3 suspend];
  [(SignatureEditingPane *)self commitChangesAndDismissKeyboard:1];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = SignatureEditingPane;
  [(SignatureEditingPane *)&v18 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  section = [pathCopy section];
  v9 = [(SignatureEditingPane *)self specifierForID:SignatureRadioGroupID];
  v10 = [(SignatureEditingPane *)self indexPathForIndex:[(SignatureEditingPane *)self indexOfSpecifier:v9]];
  section2 = [v10 section];

  if (section == section2)
  {
    v12 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:{-[SignatureEditingPane indexForIndexPath:](self, "indexForIndexPath:", pathCopy)}];
    v13 = [v12 propertyForKey:PSValueKey];
    bOOLValue = [v13 BOOLValue];

    if (self->_useAccountSignatures != bOOLValue)
    {
      self->_useAccountSignatures = bOOLValue;
      v15 = +[MFSignatures sharedInstance];
      [v15 setUseAccountSignatures:bOOLValue];

      [(SignatureEditingPane *)self commitChangesAndDismissKeyboard:1];
      if (bOOLValue)
      {
        defaultSignatureSpecifiers = [(SignatureEditingPane *)self defaultSignatureSpecifiers];
        [(SignatureEditingPane *)self accountSignaturesSpecifiers];
      }

      else
      {
        defaultSignatureSpecifiers = [(SignatureEditingPane *)self accountSignaturesSpecifiers];
        [(SignatureEditingPane *)self defaultSignatureSpecifiers];
      }
      v17 = ;
      [(SignatureEditingPane *)self replaceContiguousSpecifiers:defaultSignatureSpecifiers withSpecifiers:v17 animated:1];
    }
  }
}

- (id)_signatureWithSpecifier:(id)specifier
{
  v3 = +[MFSignatures sharedInstance];
  signature = [v3 signature];

  return signature;
}

- (void)_setSignature:(id)signature withSpecifier:(id)specifier
{
  signatureCopy = signature;
  v4 = +[MFSignatures sharedInstance];
  [v4 setSignature:signatureCopy];
}

- (id)_accountSignatureWithSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:AccountPropertyKey];
  customSignature = [v3 customSignature];
  if (!customSignature)
  {
    v5 = +[MFSignatures sharedInstance];
    customSignature = [v5 signature];
  }

  return customSignature;
}

- (void)_setAccountSignature:(id)signature withSpecifier:(id)specifier
{
  signatureCopy = signature;
  v5 = [specifier propertyForKey:AccountPropertyKey];
  v6 = +[MFSignatures sharedInstance];
  [v6 setSignature:signatureCopy forAccount:v5];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ("paste:" == action)
  {
    v7 = +[UIPasteboard generalPasteboard];
    LODWORD(self) = [v7 hasImages] ^ 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SignatureEditingPane;
    LOBYTE(self) = [(SignatureEditingPane *)&v9 canPerformAction:action withSender:senderCopy];
  }

  return self;
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentListController);

  return WeakRetained;
}

@end