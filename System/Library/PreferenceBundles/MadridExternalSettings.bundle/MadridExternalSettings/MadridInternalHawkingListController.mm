@interface MadridInternalHawkingListController
- (BOOL)_handleIsPersonal:(id)personal;
- (BOOL)_handleIsSetAsChina:(id)china;
- (id)_getExternalChinaHandles;
- (id)getChinaToChinaEnabled:(id)enabled;
- (id)getHandleIsChina:(id)china;
- (id)hawkingEnabled:(id)enabled;
- (id)specifiers;
- (void)_removeHandleAsChina:(id)china;
- (void)_setHandleAsChina:(id)china;
- (void)addNewHandle:(id)handle;
- (void)removedSpecifier:(id)specifier;
- (void)setChinaToChinaEnabled:(id)enabled specifier:(id)specifier;
- (void)setHandleAsChina:(id)china specifier:(id)specifier;
- (void)setHawkingEnabled:(id)enabled specifier:(id)specifier;
@end

@implementation MadridInternalHawkingListController

- (id)specifiers
{
  v3 = *&self->PSEditableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v39 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    v5 = [PSSpecifier groupSpecifierWithID:@"1"];
    [v4 addObject:v5];
    v6 = [PSSpecifier preferenceSpecifierNamed:@"Hawking Filtering" target:self set:"setHawkingEnabled:specifier:" get:"hawkingEnabled:" detail:0 cell:6 edit:0];
    v7 = [PSSpecifier preferenceSpecifierNamed:@"China to China Filtering" target:self set:"setChinaToChinaEnabled:specifier:" get:"getChinaToChinaEnabled:" detail:0 cell:6 edit:0];
    v8 = PSFooterTextGroupKey;
    v38 = v5;
    [v5 setProperty:@"Enable/Disable Hawking Filtering. Be sure to enable Filter Unknown Senders in Messages Settings." forKey:PSFooterTextGroupKey];
    v37 = v6;
    [v4 addObject:v6];
    v36 = v7;
    [v4 addObject:v7];
    v9 = [PSSpecifier groupSpecifierWithID:@"2"];
    v33 = v8;
    [v9 setProperty:@"Select personal handles to treat as China phone numbers" forKey:v8];
    v35 = v9;
    [v4 addObject:v9];
    v10 = +[IMAccountController sharedInstance];
    v11 = +[IMServiceImpl iMessageService];
    v12 = [v10 activeAccountsForService:v11];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v12;
    v13 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v46;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v46 != v15)
          {
            objc_enumerationMutation(obj);
          }

          loginIMHandle = [*(*(&v45 + 1) + 8 * i) loginIMHandle];
          v18 = [loginIMHandle ID];

          v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:"setHandleAsChina:specifier:" get:"getHandleIsChina:" detail:0 cell:6 edit:0];
          [v19 setIdentifier:v18];
          [v4 addObject:v19];
        }

        v14 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v14);
    }

    v20 = [PSSpecifier groupSpecifierWithID:@"3"];
    [v20 setProperty:@"Add/Delete external handles to treat as China phone numbers" forKey:v33];
    v34 = v20;
    [v4 addObject:v20];
    [(MadridInternalHawkingListController *)self _getExternalChinaHandles];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v21 = v44 = 0u;
    v22 = [v21 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v42;
      v25 = PSDeletionActionKey;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v42 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v41 + 1) + 8 * j);
          v28 = [PSSpecifier preferenceSpecifierNamed:v27 target:self set:0 get:0 detail:0 cell:4 edit:0];
          [v28 setIdentifier:v27];
          v29 = NSStringFromSelector("removedSpecifier:");
          [v28 setProperty:v29 forKey:v25];

          [v4 addObject:v28];
        }

        v23 = [v21 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v23);
    }

    v30 = [PSSpecifier preferenceSpecifierNamed:@"Add New..." target:self set:0 get:0 detail:0 cell:13 edit:0];
    [v30 setButtonAction:"addNewHandle:"];
    [v4 addObject:v30];
    v31 = *&self->PSEditableListController_opaque[v39];
    *&self->PSEditableListController_opaque[v39] = v4;

    v3 = *&self->PSEditableListController_opaque[v39];
  }

  return v3;
}

- (void)setHawkingEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = +[IMDefaults sharedInstance];
  bOOLValue = [enabledCopy BOOLValue];

  [v6 setBool:bOOLValue forDomain:@"com.apple.messages" forKey:@"applyInternationalSpamFilter"];
}

- (id)hawkingEnabled:(id)enabled
{
  v3 = +[IMDefaults sharedInstance];
  v4 = [v3 getBoolFromDomain:@"com.apple.messages" forKey:@"applyInternationalSpamFilter"];

  return [NSNumber numberWithBool:v4];
}

- (void)setChinaToChinaEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = +[IMDefaults sharedInstance];
  bOOLValue = [enabledCopy BOOLValue];

  [v6 setBool:bOOLValue forDomain:@"com.apple.messages" forKey:@"applyChineseSpamFilter"];
}

- (id)getChinaToChinaEnabled:(id)enabled
{
  v3 = +[IMDefaults sharedInstance];
  v4 = [v3 getBoolFromDomain:@"com.apple.messages" forKey:@"applyChineseSpamFilter"];

  return [NSNumber numberWithBool:v4];
}

- (void)setHandleAsChina:(id)china specifier:(id)specifier
{
  specifierCopy = specifier;
  LODWORD(china) = [china BOOLValue];
  identifier = [specifierCopy identifier];

  if (china)
  {
    [(MadridInternalHawkingListController *)self _setHandleAsChina:identifier];
  }

  else
  {
    [(MadridInternalHawkingListController *)self _removeHandleAsChina:identifier];
  }
}

- (id)getHandleIsChina:(id)china
{
  identifier = [china identifier];
  v5 = [(MadridInternalHawkingListController *)self _handleIsSetAsChina:identifier];

  v6 = [NSNumber numberWithBool:v5];

  return v6;
}

- (void)removedSpecifier:(id)specifier
{
  identifier = [specifier identifier];
  [(MadridInternalHawkingListController *)self _removeHandleAsChina:identifier];
}

- (void)addNewHandle:(id)handle
{
  v4 = [UIAlertController alertControllerWithTitle:@"Enter Handle" message:@"Added handles will be treated as China phone numbers when sending and receiving messages" preferredStyle:1];
  v5 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:0];
  [v4 addAction:v5];
  [v4 addTextFieldWithConfigurationHandler:&stru_C4B8];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_51FC;
  v11 = &unk_C4E0;
  v12 = v4;
  selfCopy = self;
  v6 = v4;
  v7 = [UIAlertAction actionWithTitle:@"Done" style:0 handler:&v8];
  [v6 addAction:{v7, v8, v9, v10, v11}];
  [(MadridInternalHawkingListController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)_setHandleAsChina:(id)china
{
  chinaCopy = china;
  v4 = +[IMDefaults sharedInstance];
  v11 = [v4 getValueFromDomain:@"com.apple.messages" forKey:@"mapReceivingIDForSpamFilter"];

  v5 = +[IMDefaults sharedInstance];
  v6 = [v5 getValueFromDomain:@"com.apple.messages" forKey:@"mapSendingIDForSpamFilter"];

  v7 = [[NSMutableDictionary alloc] initWithDictionary:v11];
  v8 = [[NSMutableDictionary alloc] initWithDictionary:v6];
  [v8 setValue:@"+861234567890" forKey:chinaCopy];
  [v7 setValue:@"+861234567890" forKey:chinaCopy];

  v9 = +[IMDefaults sharedInstance];
  [v9 setValue:v8 forDomain:@"com.apple.messages" forKey:@"mapSendingIDForSpamFilter"];

  v10 = +[IMDefaults sharedInstance];
  [v10 setValue:v7 forDomain:@"com.apple.messages" forKey:@"mapReceivingIDForSpamFilter"];
}

- (void)_removeHandleAsChina:(id)china
{
  chinaCopy = china;
  v4 = +[IMDefaults sharedInstance];
  v11 = [v4 getValueFromDomain:@"com.apple.messages" forKey:@"mapReceivingIDForSpamFilter"];

  v5 = +[IMDefaults sharedInstance];
  v6 = [v5 getValueFromDomain:@"com.apple.messages" forKey:@"mapSendingIDForSpamFilter"];

  v7 = [[NSMutableDictionary alloc] initWithDictionary:v11];
  v8 = [[NSMutableDictionary alloc] initWithDictionary:v6];
  [v8 removeObjectForKey:chinaCopy];
  [v7 removeObjectForKey:chinaCopy];

  v9 = +[IMDefaults sharedInstance];
  [v9 setValue:v8 forDomain:@"com.apple.messages" forKey:@"mapSendingIDForSpamFilter"];

  v10 = +[IMDefaults sharedInstance];
  [v10 setValue:v7 forDomain:@"com.apple.messages" forKey:@"mapReceivingIDForSpamFilter"];
}

- (BOOL)_handleIsSetAsChina:(id)china
{
  chinaCopy = china;
  v4 = +[IMDefaults sharedInstance];
  v5 = [v4 getValueFromDomain:@"com.apple.messages" forKey:@"mapReceivingIDForSpamFilter"];

  v6 = +[IMDefaults sharedInstance];
  v7 = [v6 getValueFromDomain:@"com.apple.messages" forKey:@"mapSendingIDForSpamFilter"];

  allKeys = [v7 allKeys];
  if ([allKeys containsObject:chinaCopy])
  {
    allKeys2 = [v5 allKeys];
    v10 = [allKeys2 containsObject:chinaCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_getExternalChinaHandles
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = +[IMDefaults sharedInstance];
  v5 = [v4 getValueFromDomain:@"com.apple.messages" forKey:@"mapReceivingIDForSpamFilter"];

  v6 = +[IMDefaults sharedInstance];
  v7 = [v6 getValueFromDomain:@"com.apple.messages" forKey:@"mapSendingIDForSpamFilter"];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = v5;
  allKeys = [v5 allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        allKeys2 = [v7 allKeys];
        if ([allKeys2 containsObject:v13])
        {
          v15 = [(MadridInternalHawkingListController *)self _handleIsPersonal:v13];

          if ((v15 & 1) == 0)
          {
            [v3 addObject:v13];
          }
        }

        else
        {
        }
      }

      v10 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = [[NSArray alloc] initWithArray:v3];

  return v16;
}

- (BOOL)_handleIsPersonal:(id)personal
{
  personalCopy = personal;
  v4 = +[IMAccountController sharedInstance];
  v5 = +[IMServiceImpl iMessageService];
  v6 = [v4 activeAccountsForService:v5];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v7);
        }

        loginIMHandle = [*(*(&v16 + 1) + 8 * i) loginIMHandle];
        v14 = [loginIMHandle ID];
        v10 |= [v14 isEqualToString:personalCopy];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

@end