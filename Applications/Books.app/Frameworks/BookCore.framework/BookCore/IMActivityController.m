@interface IMActivityController
- (IMActivityController)initWithActivityItems:(id)a3 applicationActivities:(id)a4 shareType:(int64_t)a5 propertySource:(id)a6 sharingStyle:(int64_t)a7 customActivityTypeOrder:(id)a8 customShareActivityTitle:(id)a9 tracker:(id)a10;
- (IMActivityController)initWithActivityItems:(id)a3 applicationActivities:(id)a4 shareType:(int64_t)a5 propertySource:(id)a6 tracker:(id)a7;
- (NSArray)excludedActivityTypes;
- (NSArray)expandedActivityItems;
- (id)expandedActivityItemsFromActivityItems:(id)a3 conformingToProtocol:(id)a4;
- (id)includedActivityTypes;
- (id)viewController;
- (void)dealloc;
- (void)setCompletionHandler:(id)a3;
@end

@implementation IMActivityController

- (IMActivityController)initWithActivityItems:(id)a3 applicationActivities:(id)a4 shareType:(int64_t)a5 propertySource:(id)a6 tracker:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = [(IMActivityController *)self init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_activityItems, a3);
    objc_storeStrong(&v18->_applicationActivities, a4);
    v18->_shareType = a5;
    v19 = [[AEAssetActivityPropertyProvider alloc] initWithPropertySource:v15];
    propertyProvider = v18->_propertyProvider;
    v18->_propertyProvider = v19;

    objc_storeStrong(&v18->_tracker, a7);
  }

  return v18;
}

- (IMActivityController)initWithActivityItems:(id)a3 applicationActivities:(id)a4 shareType:(int64_t)a5 propertySource:(id)a6 sharingStyle:(int64_t)a7 customActivityTypeOrder:(id)a8 customShareActivityTitle:(id)a9 tracker:(id)a10
{
  v17 = a8;
  v18 = a9;
  v19 = [(IMActivityController *)self initWithActivityItems:a3 applicationActivities:a4 shareType:a5 propertySource:a6 tracker:a10];
  v20 = v19;
  if (v19)
  {
    v19->_sharingStyle = a7;
    objc_storeStrong(&v19->_customActivityTypeOrder, a8);
    v21 = [v18 copy];
    customShareActivityTitle = v20->_customShareActivityTitle;
    v20->_customShareActivityTitle = v21;
  }

  return v20;
}

- (void)setCompletionHandler:(id)a3
{
  v4 = objc_retainBlock(a3);
  self->_completionHandler = v4;

  _objc_release_x1(v4);
}

- (id)viewController
{
  v3 = [(IMActivityController *)self activityVC];

  if (!v3)
  {
    v4 = [BCActivityViewController alloc];
    v5 = [(IMActivityController *)self activityItems];
    v6 = [(IMActivityController *)self expandedActivityItems];
    v7 = [(IMActivityController *)self applicationActivities];
    v8 = [(IMActivityController *)self sharingStyle];
    v9 = [(IMActivityController *)self customActivityTypeOrder];
    v10 = [(IMActivityController *)self customShareActivityTitle];
    v11 = [(IMActivityController *)self propertyProvider];
    v12 = [(IMActivityController *)self tracker];
    v13 = [(BCActivityViewController *)v4 initWithRootActivityItems:v5 expandedActivityItems:v6 applicationActivities:v7 sharingStyle:v8 customActivityTypeOrder:v9 customShareActivityTitle:v10 appAnalyticsProvider:v11 tracker:v12];

    if ([(IMActivityController *)self shareType]!= &dword_0 + 2)
    {
      v14 = [(IMActivityController *)self includedActivityTypes];
      [(BCActivityViewController *)v13 setIncludedActivityTypes:v14];
    }

    v15 = [(IMActivityController *)self excludedActivityTypes];
    [(BCActivityViewController *)v13 setExcludedActivityTypes:v15];

    [(BCActivityViewController *)v13 setManagedBook:self->_managedBook];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_160380;
    v18[3] = &unk_2CE918;
    v18[4] = self;
    [(BCActivityViewController *)v13 setCompletionWithItemsHandler:v18];
    [(IMActivityController *)self setActivityVC:v13];
  }

  v16 = [(IMActivityController *)self activityVC];

  return v16;
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
    v4 = [(IMActivityController *)self propertyProvider];
    v5 = [v4 assetType];

    v6 = [(IMActivityController *)self propertyProvider];
    v7 = [v6 isStoreAsset];

    if (self->_managedBook || !((v5 == &dword_0 + 3) | v7 & 1))
    {
      v8 = [v3 arrayByAddingObject:UIActivityTypeAirDrop];

      v3 = v8;
    }

    if (v5 != &dword_0 + 3)
    {
      v9 = [v3 arrayByAddingObject:UIActivityTypeSaveToFiles];

      v3 = v9;
    }

    if ((v7 & 1) == 0)
    {
      v10 = [v3 arrayByAddingObject:UIActivityTypePostToFacebook];

      v3 = v10;
    }
  }

  else
  {
    v11 = +[IMActivity activityTypes];
    v12 = [NSMutableArray arrayWithArray:v11];

    v13 = [(IMActivityController *)self includedActivityTypes];
    [v12 removeObjectsInArray:v13];

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
          v11 = [v9 supportedActivityTypes];
          [v3 addObjectsFromArray:v11];
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
    v4 = [(IMActivityController *)self activityItems];
    v5 = [(IMActivityController *)self expandedActivityItemsFromActivityItems:v4 conformingToProtocol:&OBJC_PROTOCOL___UIActivityItemSource];
    v6 = self->_expandedActivityItems;
    self->_expandedActivityItems = v5;

    expandedActivityItems = self->_expandedActivityItems;
  }

  return expandedActivityItems;
}

- (id)expandedActivityItemsFromActivityItems:(id)a3 conformingToProtocol:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = +[NSMutableArray array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = v6;
    v9 = v6;
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
          if ([v14 conformsToProtocol:v7])
          {
            [v8 addObject:v14];
          }

          if ([v14 conformsToProtocol:&OBJC_PROTOCOL___IMActivityItemSourceExpanding])
          {
            v15 = [v14 expandedItemProviders];
            v16 = [(IMActivityController *)self expandedActivityItemsFromActivityItems:v15 conformingToProtocol:v7];

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

    v6 = v18;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end