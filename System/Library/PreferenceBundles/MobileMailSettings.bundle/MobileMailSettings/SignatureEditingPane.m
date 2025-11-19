@interface SignatureEditingPane
+ (BOOL)hasMultipleMailAccounts;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (PSListController)parentListController;
- (id)_accountSignatureWithSpecifier:(id)a3;
- (id)_signatureWithSpecifier:(id)a3;
- (id)accountSignaturesSpecifiers;
- (id)defaultSignatureSpecifiers;
- (id)specifiers;
- (void)_setAccountSignature:(id)a3 withSpecifier:(id)a4;
- (void)_setSignature:(id)a3 withSpecifier:(id)a4;
- (void)commitChangesAndDismissKeyboard:(BOOL)a3;
- (void)suspend;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
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
                v9 = [v8 displayName];
                v10 = [PSSpecifier groupSpecifierWithName:v9];
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

- (void)commitChangesAndDismissKeyboard:(BOOL)a3
{
  v3 = a3;
  v5 = [(SignatureEditingPane *)self table];
  v6 = [v5 window];
  v11 = [v6 firstResponder];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v3)
    {
      [v11 resignFirstResponder];
    }

    else
    {
      v7 = v11;
      v8 = [v7 delegate];
      [v8 textContentViewDidEndEditing:v7];
    }
  }

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 postNotificationName:@"SignatureEditingPaneSignatureDidChange" object:self];

  v10 = [(SignatureEditingPane *)self parentListController];
  [v10 reloadSpecifier:*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier]];
}

- (void)suspend
{
  v3.receiver = self;
  v3.super_class = SignatureEditingPane;
  [(SignatureEditingPane *)&v3 suspend];
  [(SignatureEditingPane *)self commitChangesAndDismissKeyboard:1];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = SignatureEditingPane;
  [(SignatureEditingPane *)&v18 tableView:v6 didSelectRowAtIndexPath:v7];
  v8 = [v7 section];
  v9 = [(SignatureEditingPane *)self specifierForID:SignatureRadioGroupID];
  v10 = [(SignatureEditingPane *)self indexPathForIndex:[(SignatureEditingPane *)self indexOfSpecifier:v9]];
  v11 = [v10 section];

  if (v8 == v11)
  {
    v12 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:{-[SignatureEditingPane indexForIndexPath:](self, "indexForIndexPath:", v7)}];
    v13 = [v12 propertyForKey:PSValueKey];
    v14 = [v13 BOOLValue];

    if (self->_useAccountSignatures != v14)
    {
      self->_useAccountSignatures = v14;
      v15 = +[MFSignatures sharedInstance];
      [v15 setUseAccountSignatures:v14];

      [(SignatureEditingPane *)self commitChangesAndDismissKeyboard:1];
      if (v14)
      {
        v16 = [(SignatureEditingPane *)self defaultSignatureSpecifiers];
        [(SignatureEditingPane *)self accountSignaturesSpecifiers];
      }

      else
      {
        v16 = [(SignatureEditingPane *)self accountSignaturesSpecifiers];
        [(SignatureEditingPane *)self defaultSignatureSpecifiers];
      }
      v17 = ;
      [(SignatureEditingPane *)self replaceContiguousSpecifiers:v16 withSpecifiers:v17 animated:1];
    }
  }
}

- (id)_signatureWithSpecifier:(id)a3
{
  v3 = +[MFSignatures sharedInstance];
  v4 = [v3 signature];

  return v4;
}

- (void)_setSignature:(id)a3 withSpecifier:(id)a4
{
  v5 = a3;
  v4 = +[MFSignatures sharedInstance];
  [v4 setSignature:v5];
}

- (id)_accountSignatureWithSpecifier:(id)a3
{
  v3 = [a3 propertyForKey:AccountPropertyKey];
  v4 = [v3 customSignature];
  if (!v4)
  {
    v5 = +[MFSignatures sharedInstance];
    v4 = [v5 signature];
  }

  return v4;
}

- (void)_setAccountSignature:(id)a3 withSpecifier:(id)a4
{
  v7 = a3;
  v5 = [a4 propertyForKey:AccountPropertyKey];
  v6 = +[MFSignatures sharedInstance];
  [v6 setSignature:v7 forAccount:v5];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if ("paste:" == a3)
  {
    v7 = +[UIPasteboard generalPasteboard];
    LODWORD(self) = [v7 hasImages] ^ 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SignatureEditingPane;
    LOBYTE(self) = [(SignatureEditingPane *)&v9 canPerformAction:a3 withSender:v6];
  }

  return self;
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentListController);

  return WeakRetained;
}

@end