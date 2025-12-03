@interface IMActivityController
- (IMActivityController)initWithActivityItems:(id)items applicationActivities:(id)activities shareType:(int64_t)type propertySource:(id)source sharingStyle:(int64_t)style customActivityTypeOrder:(id)order customShareActivityTitle:(id)title tracker:(id)self0;
- (IMActivityController)initWithActivityItems:(id)items applicationActivities:(id)activities shareType:(int64_t)type propertySource:(id)source tracker:(id)tracker;
- (NSArray)excludedActivityTypes;
- (NSArray)expandedActivityItems;
- (id)expandedActivityItemsFromActivityItems:(id)items conformingToProtocol:(id)protocol;
- (id)includedActivityTypes;
- (id)viewController;
- (void)dealloc;
- (void)setCompletionHandler:(id)handler;
@end

@implementation IMActivityController

- (IMActivityController)initWithActivityItems:(id)items applicationActivities:(id)activities shareType:(int64_t)type propertySource:(id)source tracker:(id)tracker
{
  itemsCopy = items;
  activitiesCopy = activities;
  sourceCopy = source;
  trackerCopy = tracker;
  v17 = [(IMActivityController *)self init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_activityItems, items);
    objc_storeStrong(&v18->_applicationActivities, activities);
    v18->_shareType = type;
    v19 = [[AEAssetActivityPropertyProvider alloc] initWithPropertySource:sourceCopy];
    propertyProvider = v18->_propertyProvider;
    v18->_propertyProvider = v19;

    objc_storeStrong(&v18->_tracker, tracker);
  }

  return v18;
}

- (IMActivityController)initWithActivityItems:(id)items applicationActivities:(id)activities shareType:(int64_t)type propertySource:(id)source sharingStyle:(int64_t)style customActivityTypeOrder:(id)order customShareActivityTitle:(id)title tracker:(id)self0
{
  orderCopy = order;
  titleCopy = title;
  v19 = [(IMActivityController *)self initWithActivityItems:items applicationActivities:activities shareType:type propertySource:source tracker:tracker];
  v20 = v19;
  if (v19)
  {
    v19->_sharingStyle = style;
    objc_storeStrong(&v19->_customActivityTypeOrder, order);
    v21 = [titleCopy copy];
    customShareActivityTitle = v20->_customShareActivityTitle;
    v20->_customShareActivityTitle = v21;
  }

  return v20;
}

- (void)setCompletionHandler:(id)handler
{
  v4 = objc_retainBlock(handler);
  self->_completionHandler = v4;

  _objc_release_x1(v4);
}

- (id)viewController
{
  activityVC = [(IMActivityController *)self activityVC];

  if (!activityVC)
  {
    v4 = [BCActivityViewController alloc];
    activityItems = [(IMActivityController *)self activityItems];
    expandedActivityItems = [(IMActivityController *)self expandedActivityItems];
    applicationActivities = [(IMActivityController *)self applicationActivities];
    sharingStyle = [(IMActivityController *)self sharingStyle];
    customActivityTypeOrder = [(IMActivityController *)self customActivityTypeOrder];
    customShareActivityTitle = [(IMActivityController *)self customShareActivityTitle];
    propertyProvider = [(IMActivityController *)self propertyProvider];
    tracker = [(IMActivityController *)self tracker];
    v13 = [(BCActivityViewController *)v4 initWithRootActivityItems:activityItems expandedActivityItems:expandedActivityItems applicationActivities:applicationActivities sharingStyle:sharingStyle customActivityTypeOrder:customActivityTypeOrder customShareActivityTitle:customShareActivityTitle appAnalyticsProvider:propertyProvider tracker:tracker];

    if ([(IMActivityController *)self shareType]!= &dword_0 + 2)
    {
      includedActivityTypes = [(IMActivityController *)self includedActivityTypes];
      [(BCActivityViewController *)v13 setIncludedActivityTypes:includedActivityTypes];
    }

    excludedActivityTypes = [(IMActivityController *)self excludedActivityTypes];
    [(BCActivityViewController *)v13 setExcludedActivityTypes:excludedActivityTypes];

    [(BCActivityViewController *)v13 setManagedBook:self->_managedBook];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_160380;
    v18[3] = &unk_2CE918;
    v18[4] = self;
    [(BCActivityViewController *)v13 setCompletionWithItemsHandler:v18];
    [(IMActivityController *)self setActivityVC:v13];
  }

  activityVC2 = [(IMActivityController *)self activityVC];

  return activityVC2;
}

- (void)dealloc
{
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  activityVC = self->_activityVC;
  self->_activityVC = 0;

  v5.receiver = self;
  v5.super_class = IMActivityController;
  [(IMActivityController *)&v5 dealloc];
}

- (NSArray)excludedActivityTypes
{
  if ([(IMActivityController *)self shareType]== &dword_0 + 2)
  {
    v15[0] = UIActivityTypeCloudSharing;
    v15[1] = UIActivityTypeMarkupAsPDF;
    v15[2] = UIActivityTypeAddToReadingList;
    v3 = [NSArray arrayWithObjects:v15 count:3];
    propertyProvider = [(IMActivityController *)self propertyProvider];
    assetType = [propertyProvider assetType];

    propertyProvider2 = [(IMActivityController *)self propertyProvider];
    isStoreAsset = [propertyProvider2 isStoreAsset];

    if (self->_managedBook || !((assetType == &dword_0 + 3) | isStoreAsset & 1))
    {
      v8 = [v3 arrayByAddingObject:UIActivityTypeAirDrop];

      v3 = v8;
    }

    if (assetType != &dword_0 + 3)
    {
      v9 = [v3 arrayByAddingObject:UIActivityTypeSaveToFiles];

      v3 = v9;
    }

    if ((isStoreAsset & 1) == 0)
    {
      v10 = [v3 arrayByAddingObject:UIActivityTypePostToFacebook];

      v3 = v10;
    }
  }

  else
  {
    v11 = +[IMActivity activityTypes];
    v12 = [NSMutableArray arrayWithArray:v11];

    includedActivityTypes = [(IMActivityController *)self includedActivityTypes];
    [v12 removeObjectsInArray:includedActivityTypes];

    v3 = [v12 copy];
  }

  return v3;
}

- (id)includedActivityTypes
{
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(IMActivityController *)self expandedActivityItems:0];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = BUProtocolCast();
        v10 = v9;
        if (v9)
        {
          supportedActivityTypes = [v9 supportedActivityTypes];
          [v3 addObjectsFromArray:supportedActivityTypes];
        }

        else
        {
          objc_opt_class();
          v12 = BUDynamicCast();

          if (v12)
          {
            [v3 addObject:@"com.apple.schoolwork.ClassKitApp.SaveToClassKitApp"];
            [v3 addObject:@"com.apple.schoolwork.ClassKitApp.ShareWithClassKitApp"];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSArray)expandedActivityItems
{
  expandedActivityItems = self->_expandedActivityItems;
  if (!expandedActivityItems)
  {
    activityItems = [(IMActivityController *)self activityItems];
    v5 = [(IMActivityController *)self expandedActivityItemsFromActivityItems:activityItems conformingToProtocol:&OBJC_PROTOCOL___UIActivityItemSource];
    v6 = self->_expandedActivityItems;
    self->_expandedActivityItems = v5;

    expandedActivityItems = self->_expandedActivityItems;
  }

  return expandedActivityItems;
}

- (id)expandedActivityItemsFromActivityItems:(id)items conformingToProtocol:(id)protocol
{
  itemsCopy = items;
  protocolCopy = protocol;
  if ([itemsCopy count])
  {
    v8 = +[NSMutableArray array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = itemsCopy;
    v9 = itemsCopy;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          if ([v14 conformsToProtocol:protocolCopy])
          {
            [v8 addObject:v14];
          }

          if ([v14 conformsToProtocol:&OBJC_PROTOCOL___IMActivityItemSourceExpanding])
          {
            expandedItemProviders = [v14 expandedItemProviders];
            v16 = [(IMActivityController *)self expandedActivityItemsFromActivityItems:expandedItemProviders conformingToProtocol:protocolCopy];

            if (v16)
            {
              [v8 addObjectsFromArray:v16];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    itemsCopy = v18;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end