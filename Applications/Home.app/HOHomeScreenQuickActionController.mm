@interface HOHomeScreenQuickActionController
- (HOHomeScreenQuickActionController)initWithApplication:(id)application;
- (id)_executeActionSetForShortcutItem:(id)item navigator:(id)navigator;
- (id)_generateShortcutItemForActionSetItem:(id)item;
- (id)performActionForShortcutItem:(id)item navigator:(id)navigator;
- (void)_updateShortcutItems;
- (void)itemManager:(id)manager performUpdateRequest:(id)request;
@end

@implementation HOHomeScreenQuickActionController

- (HOHomeScreenQuickActionController)initWithApplication:(id)application
{
  applicationCopy = application;
  v17.receiver = self;
  v17.super_class = HOHomeScreenQuickActionController;
  v7 = [(HOHomeScreenQuickActionController *)&v17 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_application, application);
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

- (id)performActionForShortcutItem:(id)item navigator:(id)navigator
{
  navigatorCopy = navigator;
  itemCopy = item;
  type = [itemCopy type];
  v9 = [type isEqualToString:@"HOHomeScreenQuickActionExecuteSceneType"];

  if (v9)
  {
    v10 = [(HOHomeScreenQuickActionController *)self _executeActionSetForShortcutItem:itemCopy navigator:navigatorCopy];
  }

  else
  {
    type2 = [itemCopy type];

    v12 = [type2 isEqualToString:@"HOHomeScreenQuickActionCreateSceneType"];
    if (v12)
    {
      v13 = +[HFHomeKitDispatcher sharedDispatcher];
      homeFuture = [v13 homeFuture];
      v15 = [navigatorCopy createOrEditActionSetWithName:0 home:homeFuture switchToHomeTab:0];

      v10 = +[NAFuture futureWithNoResult];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)itemManager:(id)manager performUpdateRequest:(id)request
{
  [request performWithOptions:0];

  [(HOHomeScreenQuickActionController *)self _updateShortcutItems];
}

- (void)_updateShortcutItems
{
  itemManager = [(HOHomeScreenQuickActionController *)self itemManager];
  v4 = [itemManager displayedItemsInSection:0];
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

- (id)_generateShortcutItemForActionSetItem:(id)item
{
  itemCopy = item;
  latestResults = [itemCopy latestResults];
  v6 = [latestResults objectForKeyedSubscript:HFResultDisplayTitleKey];

  if (v6)
  {
    itemManager = [(HOHomeScreenQuickActionController *)self itemManager];
    home = [itemManager home];
    uniqueIdentifier = [home uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];

    actionSet = [itemCopy actionSet];
    uniqueIdentifier2 = [actionSet uniqueIdentifier];
    uUIDString2 = [uniqueIdentifier2 UUIDString];

    if (uUIDString2 && uUIDString)
    {
      v14 = [itemCopy copy];

      v15 = objc_alloc_init(NAFuture);
      v16 = +[NAScheduler globalAsyncScheduler];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10000AB1C;
      v24[3] = &unk_1000C2098;
      v25 = uUIDString2;
      v26 = uUIDString;
      itemCopy = v14;
      v27 = itemCopy;
      v28 = v6;
      v29 = v15;
      v17 = v15;
      [v16 performBlock:v24];

      v18 = +[NAScheduler mainThreadScheduler];
      v19 = [v17 reschedule:v18];
    }

    else
    {
      itemManager2 = [(HOHomeScreenQuickActionController *)self itemManager];
      home2 = [itemManager2 home];
      NSLog(@"No action set or home identifier for action set item: %@. Home: %@", itemCopy, home2);

      v17 = [NSError hf_errorWithCode:33];
      v19 = [NAFuture futureWithError:v17];
    }
  }

  else
  {
    NSLog(@"No title for action set item: %@", itemCopy);
    v20 = [NSError hf_errorWithCode:33];
    v19 = [NAFuture futureWithError:v20];
  }

  return v19;
}

- (id)_executeActionSetForShortcutItem:(id)item navigator:(id)navigator
{
  itemCopy = item;
  navigatorCopy = navigator;
  objc_opt_class();
  userInfo = [itemCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"HOHomeScreenQuickActionActionSetIdentifierKey"];
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
  userInfo2 = [itemCopy userInfo];
  v12 = [userInfo2 objectForKeyedSubscript:@"HOHomeScreenQuickActionHomeIdentifierKey"];
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
      allHomesFuture = [v15 allHomesFuture];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10000AF58;
      v20[3] = &unk_1000C2110;
      v21 = v14;
      v22 = itemCopy;
      v23 = v10;
      v24 = navigatorCopy;
      v17 = [allHomesFuture flatMap:v20];

      goto LABEL_13;
    }

    goto LABEL_11;
  }

  NSLog(@"No action set identifier in shortcut item: %@", itemCopy);
  if (!v14)
  {
LABEL_11:
    NSLog(@"No home identifier in shortcut item: %@", itemCopy);
  }

  v18 = [NSError hf_errorWithCode:33];
  v17 = [NAFuture futureWithError:v18];

LABEL_13:

  return v17;
}

@end