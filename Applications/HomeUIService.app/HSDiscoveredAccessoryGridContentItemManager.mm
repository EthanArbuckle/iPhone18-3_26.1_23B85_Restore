@interface HSDiscoveredAccessoryGridContentItemManager
- (HSDiscoveredAccessoryFilter)discoveredAccessoryFilter;
- (HSDiscoveredAccessoryGridContentItemManager)initWithAccessoryBrowsingManager:(id)manager delegate:(id)delegate discoveredAccessoryFilter:(id)filter;
- (id)_buildItemProvidersWithoutHome;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (void)_registerForExternalUpdates;
- (void)_reloadDiscoveredAccessoryItemProviderWithSenderSelector:(SEL)selector;
- (void)_unregisterForExternalUpdates;
@end

@implementation HSDiscoveredAccessoryGridContentItemManager

- (HSDiscoveredAccessoryGridContentItemManager)initWithAccessoryBrowsingManager:(id)manager delegate:(id)delegate discoveredAccessoryFilter:(id)filter
{
  managerCopy = manager;
  filterCopy = filter;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10005CDB8;
  v17[3] = &unk_1000C7D10;
  v11 = managerCopy;
  v18 = v11;
  v12 = filterCopy;
  v19 = v12;
  v16.receiver = self;
  v16.super_class = HSDiscoveredAccessoryGridContentItemManager;
  v13 = [(HSDiscoveredAccessoryGridContentItemManager *)&v16 initWithDelegate:delegate shouldGroupByRoom:0 itemProvidersCreator:v17];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_accessoryBrowsingManager, manager);
    objc_storeWeak(&v14->_discoveredAccessoryFilter, v12);
  }

  return v14;
}

- (void)_registerForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HSDiscoveredAccessoryGridContentItemManager;
  [(HSDiscoveredAccessoryGridContentItemManager *)&v4 _registerForExternalUpdates];
  accessoryBrowsingManager = [(HSDiscoveredAccessoryGridContentItemManager *)self accessoryBrowsingManager];
  [accessoryBrowsingManager addBrowsingObserver:self];
}

- (void)_unregisterForExternalUpdates
{
  v4.receiver = self;
  v4.super_class = HSDiscoveredAccessoryGridContentItemManager;
  [(HSDiscoveredAccessoryGridContentItemManager *)&v4 _unregisterForExternalUpdates];
  accessoryBrowsingManager = [(HSDiscoveredAccessoryGridContentItemManager *)self accessoryBrowsingManager];
  [accessoryBrowsingManager removeBrowsingObserver:self];
}

- (id)_buildItemProvidersWithoutHome
{
  v3 = [HFDiscoveredAccessoryItemProvider alloc];
  accessoryBrowsingManager = [(HSDiscoveredAccessoryGridContentItemManager *)self accessoryBrowsingManager];
  v5 = [v3 initWithAccessoryBrowsingManager:accessoryBrowsingManager];

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

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  v4 = +[NSMutableArray array];
  v5 = [itemsCopy na_filter:&stru_1000C7D30];
  if ([v5 count])
  {
    v6 = [[HFMutableItemSection alloc] initWithIdentifier:@"HSDiscoveredAccessoryGridContentUnpairedSectionIdentifier"];
    allObjects = [v5 allObjects];
    _discoveredAccessoryItemComparator = [objc_opt_class() _discoveredAccessoryItemComparator];
    v9 = [allObjects sortedArrayUsingComparator:_discoveredAccessoryItemComparator];
    [v6 setItems:v9];

    v10 = HULocalizedString();
    [v6 setHeaderTitle:v10];

    [v4 addObject:v6];
  }

  v11 = [itemsCopy na_setByRemovingObjectsFromSet:v5];
  if ([v11 count])
  {
    v12 = [[HFMutableItemSection alloc] initWithIdentifier:@"HSDiscoveredAccessoryGridContentPairedSectionIdentifier"];
    allObjects2 = [v11 allObjects];
    _discoveredAccessoryItemComparator2 = [objc_opt_class() _discoveredAccessoryItemComparator];
    v15 = [allObjects2 sortedArrayUsingComparator:_discoveredAccessoryItemComparator2];
    [v12 setItems:v15];

    v16 = HULocalizedString();
    [v12 setHeaderTitle:v16];

    [v4 addObject:v12];
  }

  return v4;
}

- (void)_reloadDiscoveredAccessoryItemProviderWithSenderSelector:(SEL)selector
{
  itemProviders = [(HSDiscoveredAccessoryGridContentItemManager *)self itemProviders];
  v6 = [itemProviders na_firstObjectPassingTest:&stru_1000C7DB0];

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