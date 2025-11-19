@interface HOHomeScreenQuickActionController
- (HOHomeScreenQuickActionController)initWithApplication:(id)a3;
- (id)_executeActionSetForShortcutItem:(id)a3 navigator:(id)a4;
- (id)_generateShortcutItemForActionSetItem:(id)a3;
- (id)performActionForShortcutItem:(id)a3 navigator:(id)a4;
- (void)_updateShortcutItems;
- (void)itemManager:(id)a3 performUpdateRequest:(id)a4;
@end

@implementation HOHomeScreenQuickActionController

- (HOHomeScreenQuickActionController)initWithApplication:(id)a3
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = HOHomeScreenQuickActionController;
  v7 = [(HOHomeScreenQuickActionController *)&v17 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_application, a3);
    v9 = [[HOHomeScreenQuickActionItemManager alloc] initWithDelegate:v8];
    itemManager = v8->_itemManager;
    v8->_itemManager = v9;

    objc_initWeak(&location, v8);
    v11 = +[HMFScheduler defaultScheduler];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000A044;
    v14[3] = &unk_1000C1FE0;
    objc_copyWeak(v15, &location);
    v15[1] = a2;
    v12 = [v11 performBlock:v14];

    objc_destroyWeak(v15);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (id)performActionForShortcutItem:(id)a3 navigator:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 type];
  v9 = [v8 isEqualToString:@"HOHomeScreenQuickActionExecuteSceneType"];

  if (v9)
  {
    v10 = [(HOHomeScreenQuickActionController *)self _executeActionSetForShortcutItem:v7 navigator:v6];
  }

  else
  {
    v11 = [v7 type];

    v12 = [v11 isEqualToString:@"HOHomeScreenQuickActionCreateSceneType"];
    if (v12)
    {
      v13 = +[HFHomeKitDispatcher sharedDispatcher];
      v14 = [v13 homeFuture];
      v15 = [v6 createOrEditActionSetWithName:0 home:v14 switchToHomeTab:0];

      v10 = +[NAFuture futureWithNoResult];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)itemManager:(id)a3 performUpdateRequest:(id)a4
{
  [a4 performWithOptions:0];

  [(HOHomeScreenQuickActionController *)self _updateShortcutItems];
}

- (void)_updateShortcutItems
{
  v3 = [(HOHomeScreenQuickActionController *)self itemManager];
  v4 = [v3 displayedItemsInSection:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000A434;
  v10[3] = &unk_1000C2008;
  v10[4] = self;
  v5 = [v4 na_map:v10];

  v6 = +[NAScheduler mainThreadScheduler];
  v7 = [NAFuture combineAllFutures:v5 ignoringErrors:1 scheduler:v6];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000A4E8;
  v9[3] = &unk_1000C2070;
  v9[4] = self;
  v8 = [v7 addCompletionBlock:v9];
}

- (id)_generateShortcutItemForActionSetItem:(id)a3
{
  v4 = a3;
  v5 = [v4 latestResults];
  v6 = [v5 objectForKeyedSubscript:HFResultDisplayTitleKey];

  if (v6)
  {
    v7 = [(HOHomeScreenQuickActionController *)self itemManager];
    v8 = [v7 home];
    v9 = [v8 uniqueIdentifier];
    v10 = [v9 UUIDString];

    v11 = [v4 actionSet];
    v12 = [v11 uniqueIdentifier];
    v13 = [v12 UUIDString];

    if (v13 && v10)
    {
      v14 = [v4 copy];

      v15 = objc_alloc_init(NAFuture);
      v16 = +[NAScheduler globalAsyncScheduler];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10000AB1C;
      v24[3] = &unk_1000C2098;
      v25 = v13;
      v26 = v10;
      v4 = v14;
      v27 = v4;
      v28 = v6;
      v29 = v15;
      v17 = v15;
      [v16 performBlock:v24];

      v18 = +[NAScheduler mainThreadScheduler];
      v19 = [v17 reschedule:v18];
    }

    else
    {
      v21 = [(HOHomeScreenQuickActionController *)self itemManager];
      v22 = [v21 home];
      NSLog(@"No action set or home identifier for action set item: %@. Home: %@", v4, v22);

      v17 = [NSError hf_errorWithCode:33];
      v19 = [NAFuture futureWithError:v17];
    }
  }

  else
  {
    NSLog(@"No title for action set item: %@", v4);
    v20 = [NSError hf_errorWithCode:33];
    v19 = [NAFuture futureWithError:v20];
  }

  return v19;
}

- (id)_executeActionSetForShortcutItem:(id)a3 navigator:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  v7 = [v5 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"HOHomeScreenQuickActionActionSetIdentifierKey"];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  objc_opt_class();
  v11 = [v5 userInfo];
  v12 = [v11 objectForKeyedSubscript:@"HOHomeScreenQuickActionHomeIdentifierKey"];
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v10)
  {
    if (v14)
    {
      v15 = +[HFHomeKitDispatcher sharedDispatcher];
      v16 = [v15 allHomesFuture];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10000AF58;
      v20[3] = &unk_1000C2110;
      v21 = v14;
      v22 = v5;
      v23 = v10;
      v24 = v6;
      v17 = [v16 flatMap:v20];

      goto LABEL_13;
    }

    goto LABEL_11;
  }

  NSLog(@"No action set identifier in shortcut item: %@", v5);
  if (!v14)
  {
LABEL_11:
    NSLog(@"No home identifier in shortcut item: %@", v5);
  }

  v18 = [NSError hf_errorWithCode:33];
  v17 = [NAFuture futureWithError:v18];

LABEL_13:

  return v17;
}

@end