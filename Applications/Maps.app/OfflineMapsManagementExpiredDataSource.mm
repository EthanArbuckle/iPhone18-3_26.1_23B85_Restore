@interface OfflineMapsManagementExpiredDataSource
- (BOOL)_canItemIdentifierBeSelected:(id)selected;
- (BOOL)canRestoreAnyMaps;
- (BOOL)canRestoreSelectedMaps;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (OfflineMapsManagementExpiredDataSource)initWithCollectionView:(id)view updateLocation:(BOOL)location;
- (OfflineMapsManagementExpiredDataSourceDelegate)offlineDelegate;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)swipeActionsConfigurationForIndexPath:(id)path;
- (void)_deleteSelectedMapsAndPerformBlock:(id)block;
- (void)_fetchExpiredSubscriptionsAnimated:(BOOL)animated;
- (void)_restoreSubscription:(id)subscription completionHandler:(id)handler;
- (void)_updateContentAnimated:(BOOL)animated;
- (void)clearSelectedMaps;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)commonInit;
- (void)restoreSelectedMaps;
- (void)setActive:(BOOL)active;
@end

@implementation OfflineMapsManagementExpiredDataSource

- (OfflineMapsManagementExpiredDataSourceDelegate)offlineDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_offlineDelegate);

  return WeakRetained;
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  pathCopy = path;
  diffableDataSource = [(OfflineMapsManagementExpiredDataSource *)self diffableDataSource];
  v8 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

  delegate = [(DataSource *)self delegate];
  [delegate dataSource:self itemTapped:v8];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  diffableDataSource = [(OfflineMapsManagementExpiredDataSource *)self diffableDataSource];
  v8 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

  if (([viewCopy isEditing] & 1) != 0 || (objc_msgSend(viewCopy, "deselectItemAtIndexPath:animated:", pathCopy, 1), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    delegate = [(DataSource *)self delegate];
    [delegate dataSource:self itemTapped:v8];
  }

  else
  {
    [(OfflineMapsManagementExpiredDataSource *)self _restoreSubscription:v8 completionHandler:0];
  }
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  diffableDataSource = [(OfflineMapsManagementExpiredDataSource *)self diffableDataSource];
  v7 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

  LOBYTE(self) = [(OfflineMapsManagementExpiredDataSource *)self _canItemIdentifierBeSelected:v7];
  return self;
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  diffableDataSource = [(OfflineMapsManagementExpiredDataSource *)self diffableDataSource];
  v7 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

  LOBYTE(self) = [(OfflineMapsManagementExpiredDataSource *)self _canItemIdentifierBeSelected:v7];
  return self;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  kindCopy = kind;
  diffableDataSource = [(OfflineMapsManagementExpiredDataSource *)self diffableDataSource];
  v12 = [diffableDataSource sectionIdentifierForIndex:{objc_msgSend(pathCopy, "section")}];

  v13 = [kindCopy isEqualToString:UICollectionElementKindSectionFooter];
  if (v13 && [v12 isEqual:@"kExpiredSectionIdentifier"])
  {
    if (GEOConfigGetBOOL())
    {
      v14 = +[NSBundle mainBundle];
      v15 = v14;
      v16 = @"EXPIRED_OFFLINE_MAPS_FOOTER";
    }

    else
    {
      v18 = MGGetBoolAnswer();
      v14 = +[NSBundle mainBundle];
      v15 = v14;
      if (v18)
      {
        v16 = @"EXPIRED_OFFLINE_MAPS_FOOTER_NO_AUTOUPDATES_WLAN";
      }

      else
      {
        v16 = @"EXPIRED_OFFLINE_MAPS_FOOTER_NO_AUTOUPDATES_WIFI";
      }
    }

    v19 = [v14 localizedStringForKey:v16 value:@"localized string not found" table:@"Offline"];

    v20 = [[NSAttributedString alloc] initWithString:v19];
    v21 = [[UserProfileSectionFooterViewModel alloc] initWithContentString:v20];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v17 = [viewCopy dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:v23 forIndexPath:pathCopy];

    [v17 configureWithViewModel:v21];
    [v17 setNeedsLayout];
    [v17 layoutIfNeeded];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = identifierCopy;
    v12 = +[(TwoLineCollectionViewListCell *)TwoLinesCollectionViewInsetGroupedListCell];
    v13 = [viewCopy dequeueReusableCellWithReuseIdentifier:v12 forIndexPath:pathCopy];

    subscription = [v11 subscription];
    v15 = sub_10086FE68(subscription);

    subscription2 = [v11 subscription];
    v17 = [TwoLinesContentViewModelComposer cellModelForExpiredOfflineMapSubscription:subscription2 isAvailable:v15 isSupportedOSVersion:GEOConfigGetBOOL() ^ 1];
    [v13 setViewModel:v17];

    v18 = objc_alloc_init(UICellAccessoryMultiselect);
    [v18 setDisplayedState:1];
    v31 = v18;
    v19 = [NSArray arrayWithObjects:&v31 count:1];
    v20 = [v19 mutableCopy];

    if (v15)
    {
      objc_initWeak(&location, self);
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1008F9CC0;
      v27[3] = &unk_101660418;
      objc_copyWeak(&v29, &location);
      v28 = v11;
      v21 = [UIAction actionWithHandler:v27];
      v22 = [UIButton buttonWithType:0 primaryAction:v21];

      v23 = [UIImageSymbolConfiguration configurationWithPointSize:30.0];
      v24 = [UIImage systemImageNamed:@"arrow.down.circle" withConfiguration:v23];
      [v22 setImage:v24 forState:0];

      [v22 setAccessibilityIdentifier:@"RestoreExpiredMap"];
      v25 = [[UICellAccessoryCustomView alloc] initWithCustomView:v22 placement:1];
      [v25 setDisplayedState:2];
      [v20 addObject:v25];

      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }

    [v13 setAccessories:v20];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_updateContentAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  if ([(NSArray *)self->_expiredSubscriptions count])
  {
    v8 = @"kExpiredSectionIdentifier";
    v6 = [NSArray arrayWithObjects:&v8 count:1];
    [v5 appendSectionsWithIdentifiers:v6];

    [v5 appendItemsWithIdentifiers:self->_expiredSubscriptions intoSectionWithIdentifier:@"kExpiredSectionIdentifier"];
  }

  diffableDataSource = [(OfflineMapsManagementExpiredDataSource *)self diffableDataSource];
  [diffableDataSource applySnapshot:v5 animatingDifferences:animatedCopy];
}

- (void)_fetchExpiredSubscriptionsAnimated:(BOOL)animated
{
  objc_initWeak(&location, self);
  v5 = [NSString stringWithFormat:@"%@*", @"com.apple.Maps.offline."];
  subscriptionManager = [(OfflineMapsManagementExpiredDataSource *)self subscriptionManager];
  v13 = v5;
  v7 = [NSArray arrayWithObjects:&v13 count:1];
  v8 = &_dispatch_main_q;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1008F9FB0;
  v9[3] = &unk_10162E3B8;
  objc_copyWeak(&v10, &location);
  animatedCopy = animated;
  [subscriptionManager fetchExpiredSubscriptionsWithIdentifiers:v7 callbackQueue:&_dispatch_main_q completionHandler:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (BOOL)_canItemIdentifierBeSelected:(id)selected
{
  selectedCopy = selected;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = selectedCopy;
    collectionView = [(DataSource *)self collectionView];
    if ([collectionView isEditing])
    {
      v7 = 1;
    }

    else
    {
      subscription = [v5 subscription];
      v7 = sub_10086FE68(subscription);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_restoreSubscription:(id)subscription completionHandler:(id)handler
{
  subscriptionCopy = subscription;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  offlineDelegate = [(OfflineMapsManagementExpiredDataSource *)self offlineDelegate];
  subscription = [subscriptionCopy subscription];
  v18 = subscription;
  v10 = [NSArray arrayWithObjects:&v18 count:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1008FA374;
  v13[3] = &unk_10163BD00;
  objc_copyWeak(&v16, &location);
  v11 = subscriptionCopy;
  v14 = v11;
  v12 = handlerCopy;
  v15 = v12;
  [offlineDelegate didSelectRestoreExpiredSubscriptions:v10 completionHandler:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (id)swipeActionsConfigurationForIndexPath:(id)path
{
  pathCopy = path;
  diffableDataSource = [(OfflineMapsManagementExpiredDataSource *)self diffableDataSource];
  v6 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_initWeak(&location, self);
    v7 = v6;
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"RowSwipe_Clear" value:@"localized string not found" table:@"Offline"];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1008FA7D0;
    v24[3] = &unk_101652738;
    objc_copyWeak(&v26, &location);
    v10 = v7;
    v25 = v10;
    v11 = [UIContextualAction contextualActionWithStyle:1 title:v9 handler:v24];

    v12 = [NSMutableArray arrayWithObject:v11];
    subscription = [v10 subscription];
    v14 = sub_10086FE68(subscription);

    if (v14)
    {
      v15 = +[NSBundle mainBundle];
      v16 = [v15 localizedStringForKey:@"RowSwipe_Restore" value:@"localized string not found" table:@"Offline"];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1008FA968;
      v21[3] = &unk_101652738;
      objc_copyWeak(&v23, &location);
      v22 = v10;
      v17 = [UIContextualAction contextualActionWithStyle:1 title:v16 handler:v21];

      v18 = +[UIColor systemBlueColor];
      [v17 setBackgroundColor:v18];

      [v12 addObject:v17];
      objc_destroyWeak(&v23);
    }

    v19 = [UISwipeActionsConfiguration configurationWithActions:v12];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)_deleteSelectedMapsAndPerformBlock:(id)block
{
  blockCopy = block;
  diffableDataSource = [(OfflineMapsManagementExpiredDataSource *)self diffableDataSource];
  snapshot = [diffableDataSource snapshot];

  v20 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  collectionView = [(DataSource *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  v8 = [indexPathsForSelectedItems countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        diffableDataSource2 = [(OfflineMapsManagementExpiredDataSource *)self diffableDataSource];
        v14 = [diffableDataSource2 itemIdentifierForIndexPath:v12];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
          [v20 addObject:v15];
          blockCopy[2](blockCopy, v15);
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [indexPathsForSelectedItems countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v16 = [v20 copy];
  [snapshot deleteItemsWithIdentifiers:v16];

  diffableDataSource3 = [(OfflineMapsManagementExpiredDataSource *)self diffableDataSource];
  [diffableDataSource3 applySnapshot:snapshot animatingDifferences:1];

  offlineDelegate = [(OfflineMapsManagementExpiredDataSource *)self offlineDelegate];
  [offlineDelegate dismissExpiredViewControllerIfNecessary];
}

- (BOOL)canRestoreSelectedMaps
{
  collectionView = [(DataSource *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v5 = [indexPathsForSelectedItems count];

  if (!v5)
  {
    return 0;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  collectionView2 = [(DataSource *)self collectionView];
  indexPathsForSelectedItems2 = [collectionView2 indexPathsForSelectedItems];

  v8 = [indexPathsForSelectedItems2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(indexPathsForSelectedItems2);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        diffableDataSource = [(OfflineMapsManagementExpiredDataSource *)self diffableDataSource];
        v14 = [diffableDataSource itemIdentifierForIndexPath:v12];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          subscription = [v14 subscription];
          v16 = sub_10086FE68(subscription);

          if (!v16)
          {

            v17 = 0;
            goto LABEL_14;
          }
        }
      }

      v9 = [indexPathsForSelectedItems2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v17 = 1;
LABEL_14:

  return v17;
}

- (BOOL)canRestoreAnyMaps
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_expiredSubscriptions;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        subscription = [*(*(&v9 + 1) + 8 * i) subscription];
        v7 = sub_10086FE68(subscription);

        if (v7)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)restoreSelectedMaps
{
  v16 = +[NSMutableArray array];
  v3 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  collectionView = [(DataSource *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  v6 = [indexPathsForSelectedItems countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        v9 = *(*(&v21 + 1) + 8 * v8);
        diffableDataSource = [(OfflineMapsManagementExpiredDataSource *)self diffableDataSource];
        v11 = [diffableDataSource itemIdentifierForIndexPath:v9];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          subscription = [v12 subscription];
          [v16 addObject:subscription];

          [v3 addObject:v12];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [indexPathsForSelectedItems countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  objc_initWeak(&location, self);
  offlineDelegate = [(OfflineMapsManagementExpiredDataSource *)self offlineDelegate];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1008FB330;
  v17[3] = &unk_10165FC50;
  objc_copyWeak(&v19, &location);
  v15 = v3;
  v18 = v15;
  [offlineDelegate didSelectRestoreExpiredSubscriptions:v16 completionHandler:v17];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)clearSelectedMaps
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1008FB4B0;
  v3[3] = &unk_10162E328;
  objc_copyWeak(&v4, &location);
  [(OfflineMapsManagementExpiredDataSource *)self _deleteSelectedMapsAndPerformBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  v7.receiver = self;
  v7.super_class = OfflineMapsManagementExpiredDataSource;
  [(DataSource *)&v7 setActive:?];
  v5 = +[MapsOfflineUIHelper sharedHelper];
  v6 = v5;
  if (activeCopy)
  {
    [v5 addObserver:self];
  }

  else
  {
    [v5 removeObserver:self];
  }
}

- (void)commonInit
{
  v3 = objc_alloc_init(GEOMapDataSubscriptionManager);
  [(OfflineMapsManagementExpiredDataSource *)self setSubscriptionManager:v3];

  collectionView = [(DataSource *)self collectionView];
  [collectionView setDelegate:self];

  collectionView2 = [(DataSource *)self collectionView];
  v6 = objc_opt_class();
  v7 = +[(TwoLineCollectionViewListCell *)TwoLinesCollectionViewInsetGroupedListCell];
  [collectionView2 registerClass:v6 forCellWithReuseIdentifier:v7];

  collectionView3 = [(DataSource *)self collectionView];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [collectionView3 registerClass:v9 forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:v11];

  v12 = [UICollectionViewDiffableDataSource alloc];
  collectionView4 = [(DataSource *)self collectionView];
  v14 = sub_1007CDFC8(self);
  v15 = [v12 initWithCollectionView:collectionView4 cellProvider:v14];
  [(OfflineMapsManagementExpiredDataSource *)self setDiffableDataSource:v15];

  v16 = sub_1007CE178(self);
  diffableDataSource = [(OfflineMapsManagementExpiredDataSource *)self diffableDataSource];
  [diffableDataSource setSupplementaryViewProvider:v16];

  [(OfflineMapsManagementExpiredDataSource *)self _fetchExpiredSubscriptionsAnimated:0];
}

- (OfflineMapsManagementExpiredDataSource)initWithCollectionView:(id)view updateLocation:(BOOL)location
{
  v7.receiver = self;
  v7.super_class = OfflineMapsManagementExpiredDataSource;
  v4 = [(DataSource *)&v7 initWithCollectionView:view updateLocation:location];
  v5 = v4;
  if (v4)
  {
    [(OfflineMapsManagementExpiredDataSource *)v4 commonInit];
  }

  return v5;
}

@end