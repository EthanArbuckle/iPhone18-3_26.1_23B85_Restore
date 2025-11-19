@interface HSDiscoveredAccessoryGridContentItemManager
- (HSDiscoveredAccessoryFilter)discoveredAccessoryFilter;
- (HSDiscoveredAccessoryGridContentItemManager)initWithAccessoryBrowsingManager:(id)a3 delegate:(id)a4 discoveredAccessoryFilter:(id)a5;
- (id)_buildItemProvidersWithoutHome;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (void)_registerForExternalUpdates;
- (void)_reloadDiscoveredAccessoryItemProviderWithSenderSelector:(SEL)a3;
- (void)_unregisterForExternalUpdates;
@end

@implementation HSDiscoveredAccessoryGridContentItemManager

- (HSDiscoveredAccessoryGridContentItemManager)initWithAccessoryBrowsingManager:(id)a3 delegate:(id)a4 discoveredAccessoryFilter:(id)a5
{
  v9 = a3;
  v10 = a5;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10005CDB8;
  v17[3] = &unk_1000C7D10;
  v11 = v9;
  v18 = v11;
  v12 = v10;
  v19 = v12;
  v16.receiver = self;
  v16.super_class = HSDiscoveredAccessoryGridContentItemManager;
  v13 = [(HSDiscoveredAccessoryGridContentItemManager *)&v16 initWithDelegate:a4 shouldGroupByRoom:0 itemProvidersCreator:v17];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_accessoryBrowsingManager, a3);
    objc_storeWeak(&v14->_discoveredAccessoryFilter, v12);
  }

  return v14;
}

- (void)_registerForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HSDiscoveredAccessoryGridContentItemManager;
  [(HSDiscoveredAccessoryGridContentItemManager *)&v4 _registerForExternalUpdates];
  v3 = [(HSDiscoveredAccessoryGridContentItemManager *)self accessoryBrowsingManager];
  [v3 addBrowsingObserver:self];
}

- (void)_unregisterForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HSDiscoveredAccessoryGridContentItemManager;
  [(HSDiscoveredAccessoryGridContentItemManager *)&v4 _unregisterForExternalUpdates];
  v3 = [(HSDiscoveredAccessoryGridContentItemManager *)self accessoryBrowsingManager];
  [v3 removeBrowsingObserver:self];
}

- (id)_buildItemProvidersWithoutHome
{
  v3 = [HFDiscoveredAccessoryItemProvider alloc];
  v4 = [(HSDiscoveredAccessoryGridContentItemManager *)self accessoryBrowsingManager];
  v5 = [v3 initWithAccessoryBrowsingManager:v4];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005D0BC;
  v8[3] = &unk_1000C7CE8;
  v8[4] = self;
  [v5 setFilter:v8];
  v9 = v5;
  v6 = [NSArray arrayWithObjects:&v9 count:1];

  return v6;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v5 = [v3 na_filter:&stru_1000C7D30];
  if ([v5 count])
  {
    v6 = [[HFMutableItemSection alloc] initWithIdentifier:@"HSDiscoveredAccessoryGridContentUnpairedSectionIdentifier"];
    v7 = [v5 allObjects];
    v8 = [objc_opt_class() _discoveredAccessoryItemComparator];
    v9 = [v7 sortedArrayUsingComparator:v8];
    [v6 setItems:v9];

    v10 = HULocalizedString();
    [v6 setHeaderTitle:v10];

    [v4 addObject:v6];
  }

  v11 = [v3 na_setByRemovingObjectsFromSet:v5];
  if ([v11 count])
  {
    v12 = [[HFMutableItemSection alloc] initWithIdentifier:@"HSDiscoveredAccessoryGridContentPairedSectionIdentifier"];
    v13 = [v11 allObjects];
    v14 = [objc_opt_class() _discoveredAccessoryItemComparator];
    v15 = [v13 sortedArrayUsingComparator:v14];
    [v12 setItems:v15];

    v16 = HULocalizedString();
    [v12 setHeaderTitle:v16];

    [v4 addObject:v12];
  }

  return v4;
}

- (void)_reloadDiscoveredAccessoryItemProviderWithSenderSelector:(SEL)a3
{
  v5 = [(HSDiscoveredAccessoryGridContentItemManager *)self itemProviders];
  v6 = [v5 na_firstObjectPassingTest:&stru_1000C7DB0];

  if (v6)
  {
    v9 = v6;
    v7 = [NSArray arrayWithObjects:&v9 count:1];
    v8 = [(HSDiscoveredAccessoryGridContentItemManager *)self reloadAndUpdateItemsForProviders:v7 senderSelector:a2];
  }

  else
  {
    NSLog(@"Could not find discoveredAccessoryItemProvider");
  }
}

- (HSDiscoveredAccessoryFilter)discoveredAccessoryFilter
{
  WeakRetained = objc_loadWeakRetained(&self->_discoveredAccessoryFilter);

  return WeakRetained;
}

@end