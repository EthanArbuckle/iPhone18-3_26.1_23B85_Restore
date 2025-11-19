@interface HSPCSuggestedAutomationsItemManager
- (HSPCSuggestedAutomationsItemManager)initWithDelegate:(id)a3 serviceLikeItems:(id)a4;
- (id)_buildItemModulesForHome:(id)a3;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_itemsToHideInSet:(id)a3;
@end

@implementation HSPCSuggestedAutomationsItemManager

- (HSPCSuggestedAutomationsItemManager)initWithDelegate:(id)a3 serviceLikeItems:(id)a4
{
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HSPCSuggestedAutomationsItemManager;
  v8 = [(HSPCSuggestedAutomationsItemManager *)&v14 initWithDelegate:a3];
  if (v8)
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Using following service items:", v13, 2u);
    }

    [v7 na_each:&stru_1000C6100];
    objc_storeStrong(&v8->_serviceLikeItems, a4);
    v10 = objc_alloc_init(HUAvailableRelatedTriggerItemModuleContext);
    context = v8->_context;
    v8->_context = v10;

    [(HUAvailableRelatedTriggerItemModuleContext *)v8->_context setEngineOptions:[(HUAvailableRelatedTriggerItemModuleContext *)v8->_context engineOptions]& 0xFFFFFFFFFFFFFFEFLL];
    [(HUAvailableRelatedTriggerItemModuleContext *)v8->_context setShowsIcons:1];
    [(HUAvailableRelatedTriggerItemModuleContext *)v8->_context setHidesAddAutomationItem:1];
    [(HUAvailableRelatedTriggerItemModuleContext *)v8->_context setCommitsAutomatically:0];
    [(HUAvailableRelatedTriggerItemModuleContext *)v8->_context setItemsAreEditable:0];
    [(HUAvailableRelatedTriggerItemModuleContext *)v8->_context setHidesCustomTriggers:1];
    [(HUAvailableRelatedTriggerItemModuleContext *)v8->_context setErrorHandlingStrategy:0];
    [(HUAvailableRelatedTriggerItemModuleContext *)v8->_context setAnalyticsPresentationContext:@"setup"];
    [(HUAvailableRelatedTriggerItemModuleContext *)v8->_context setShowNaturalLightingItem:1];
  }

  return v8;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v3 = [(HSPCSuggestedAutomationsItemManager *)self serviceLikeItems];
  v4 = [NSSet setWithArray:v3];

  v5 = [[HFStaticItemProvider alloc] initWithItems:v4];
  v8 = v5;
  v6 = [NSArray arrayWithObjects:&v8 count:1];

  return v6;
}

- (id)_itemsToHideInSet:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HSPCSuggestedAutomationsItemManager;
  v5 = [(HSPCSuggestedAutomationsItemManager *)&v16 _itemsToHideInSet:v4];
  v6 = [v5 mutableCopy];

  v7 = [(HSPCSuggestedAutomationsItemManager *)self serviceLikeItems];
  [v6 addObjectsFromArray:v7];

  v8 = [(HSPCSuggestedAutomationsItemManager *)self recommendationModule];

  if (v8)
  {
    v9 = [(HSPCSuggestedAutomationsItemManager *)self recommendationModule];
    v10 = [v9 itemsToHideInSet:v4];
    [v6 unionSet:v10];
  }

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001A414;
    v15[3] = &unk_1000C6128;
    v15[4] = self;
    v12 = [v6 na_map:v15];
    *buf = 138412290;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Hiding items: %@", buf, 0xCu);
  }

  v13 = [v6 copy];

  return v13;
}

- (id)_buildItemModulesForHome:(id)a3
{
  v4 = a3;
  v5 = [HUAvailableRelatedTriggerItemModule alloc];
  v6 = [(HSPCSuggestedAutomationsItemManager *)self serviceLikeItems];
  v7 = [(HSPCSuggestedAutomationsItemManager *)self context];
  v8 = [v5 initWithItems:v6 itemUpdater:self home:v4 context:v7];

  recommendationModule = self->_recommendationModule;
  self->_recommendationModule = v8;

  v10 = [(HSPCSuggestedAutomationsItemManager *)self recommendationModule];
  v13 = v10;
  v11 = [NSArray arrayWithObjects:&v13 count:1];

  return v11;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  v5 = [(HSPCSuggestedAutomationsItemManager *)self recommendationModule];
  v6 = [v5 buildSectionsWithDisplayedItems:v4];
  v7 = [v6 firstObject];
  v8 = [v7 mutableCopy];

  [v8 setFooterTitle:0];
  [v8 setHeaderTitle:0];
  [v8 setAttributedFooterTitle:0];
  v9 = [NSArray na_arrayWithSafeObject:v8];
  v10 = [HFItemSection filterSections:v9 toDisplayedItems:v4];

  return v10;
}

@end