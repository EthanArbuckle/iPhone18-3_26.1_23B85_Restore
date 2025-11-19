@interface AXCallAudioRoutingController
- (AXCallAudioRoutingController)init;
- (id)autoAnswerDelaySummary:(id)a3;
- (id)specifiers;
- (int)_callAudioRoutingFromSpecifierKey:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation AXCallAudioRoutingController

- (AXCallAudioRoutingController)init
{
  v11.receiver = self;
  v11.super_class = AXCallAudioRoutingController;
  v2 = [(AXCallAudioRoutingController *)&v11 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = +[AXSettings sharedInstance];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __36__AXCallAudioRoutingController_init__block_invoke;
    v8[3] = &unk_255388;
    objc_copyWeak(&v9, &location);
    [v3 registerUpdateBlock:v8 forRetrieveSelector:"callAudioRoutingAutoAnswerDelay" withListener:v2];

    objc_destroyWeak(&v9);
    v4 = +[AXSettings sharedInstance];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __36__AXCallAudioRoutingController_init__block_invoke_2;
    v6[3] = &unk_255388;
    objc_copyWeak(&v7, &location);
    [v4 registerUpdateBlock:v6 forRetrieveSelector:"callAudioRoutingAutoAnswerEnabled" withListener:v2];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __36__AXCallAudioRoutingController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"callAudioRoutingAutoAnswer"];
}

void __36__AXCallAudioRoutingController_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifierID:@"callAudioRoutingAutoAnswer"];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(AXCallAudioRoutingController *)self loadSpecifiersFromPlistName:@"CallAudioRoutingSettings" target:self];
    v19 = v3;
    v20 = self;
    objc_storeStrong(&self->AXUISettingsBaseListController_opaque[v3], v5);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      v10 = PSKeyNameKey;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [v12 propertyForKey:{@"type", v19}];
          v14 = [v13 isEqualToString:@"DefaultRouteForCall"];

          if (v14)
          {
            v15 = [v12 objectForKeyedSubscript:v10];
            v16 = [(AXCallAudioRoutingController *)v20 _callAudioRoutingFromSpecifierKey:v15];

            if (v16 == _AXSDefaultRouteForCall())
            {
              v17 = [(AXCallAudioRoutingController *)v20 getGroupSpecifierForSpecifier:v12];
              [v17 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
              [v17 setProperty:v12 forKey:PSRadioGroupCheckedSpecifierKey];

              goto LABEL_13;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    v4 = *&v20->AXUISettingsBaseListController_opaque[v19];
  }

  return v4;
}

- (id)autoAnswerDelaySummary:(id)a3
{
  v4 = +[AXSettings sharedInstance];
  if ([v4 callAudioRoutingAutoAnswerEnabled])
  {
    [v4 callAudioRoutingAutoAnswerDelay];
    [(AXCallAudioRoutingController *)self _localizedSummaryForDelay:?];
  }

  else
  {
    AXParameterizedLocalizedString();
  }
  v5 = ;

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10.receiver = self;
  v10.super_class = AXCallAudioRoutingController;
  v6 = a4;
  [(AXCallAudioRoutingController *)&v10 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(AXCallAudioRoutingController *)self specifierAtIndexPath:v6, v10.receiver, v10.super_class];

  v8 = [v7 propertyForKey:@"type"];
  LODWORD(v6) = [v8 isEqualToString:@"DefaultRouteForCall"];

  if (v6)
  {
    v9 = [v7 propertyForKey:PSKeyNameKey];
    [(AXCallAudioRoutingController *)self _callAudioRoutingFromSpecifierKey:v9];

    _AXSSetDefaultRouteForCall();
  }
}

- (int)_callAudioRoutingFromSpecifierKey:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:@"callAudioRoutingAutomatic"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"callAudioRoutingHeadset"])
    {
      v4 = 1;
      goto LABEL_7;
    }

    if ([v3 isEqualToString:@"callAudioRoutingSpeaker"])
    {
      v4 = 2;
      goto LABEL_7;
    }

    _AXAssert();
  }

  v4 = 0;
LABEL_7:

  return v4;
}

@end