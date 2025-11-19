@interface VenueCardCoordinator
+ (id)searchResultForPlaceCardItem:(id)a3;
- (BOOL)isCardStackEmpty;
- (BOOL)venuesStackContainsCategoryListCard;
- (ContaineeProtocol)topViewController;
- (VenueCardCoordinator)initWithActionCoordinator:(id)a3 venueChangeNotifier:(id)a4;
- (VenueCardCoordinatorDataSource)dataSource;
- (id)routePlanningOverviewViewControllerForCardFactory:(id)a3;
- (id)shareDelegateForCardFactory:(id)a3;
- (id)stateForNewCardItem:(id)a3 previousItemInStack:(id)a4 savePlaceCardSelectionState:(BOOL)a5;
- (void)popVenueCardItem:(id)a3;
- (void)venuesStack:(id)a3 reorderedStackAndRemovedCardItems:(id)a4;
@end

@implementation VenueCardCoordinator

- (VenueCardCoordinatorDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (BOOL)venuesStackContainsCategoryListCard
{
  v3 = [(VenuesStack *)self->_cardStack lastCardConformingToProtocol:&OBJC_PROTOCOL___VenueCategoryCardItem];

  if (v3)
  {
    return 1;
  }

  v5 = [(VenuesStack *)self->_cardStack lastCardConformingToProtocol:&OBJC_PROTOCOL___VenueAutoCompleteCategoryCardItem];
  v4 = v5 != 0;

  return v4;
}

- (ContaineeProtocol)topViewController
{
  v3 = [(VenuesStack *)self->_cardStack allItems];
  v4 = [v3 lastObject];

  if (v4)
  {
    v5 = [(VenueCardFactory *)self->_cardFactory existingViewControllerForCardItem:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)popVenueCardItem:(id)a3
{
  v4 = a3;
  cardStack = self->_cardStack;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100810728;
  v7[3] = &unk_10162B220;
  v8 = v4;
  v6 = v4;
  [(VenuesStack *)cardStack popVenueCard:v7];
}

- (BOOL)isCardStackEmpty
{
  v2 = [(VenuesStack *)self->_cardStack allItems];
  v3 = [v2 count] == 0;

  return v3;
}

- (VenueCardCoordinator)initWithActionCoordinator:(id)a3 venueChangeNotifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = VenueCardCoordinator;
  v8 = [(VenueCardCoordinator *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_actionCoordinator, v6);
    v10 = objc_alloc_init(VenueCardDealer);
    v11 = [[VenuesStack alloc] initWithCardDealer:v10];
    cardStack = v9->_cardStack;
    v9->_cardStack = v11;

    [(VenuesStack *)v9->_cardStack setDelegate:v9];
    [(VenuesStack *)v9->_cardStack setDataSource:v9];
    v13 = [[VenueCardFactory alloc] initWithChangeNotifier:v7];
    cardFactory = v9->_cardFactory;
    v9->_cardFactory = v13;

    [(VenueCardFactory *)v9->_cardFactory setDelegate:v9];
    [(VenuesStack *)v9->_cardStack addStackObserver:v9->_cardFactory];
    v15 = v9->_cardStack;
    v16 = [v6 venuesManager];
    [v16 setVenueCardStack:v15];
  }

  return v9;
}

+ (id)searchResultForPlaceCardItem:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 mapItem];

    if (v5)
    {
      v6 = [SearchResult alloc];
      v7 = [v4 mapItem];
      v8 = [(SearchResult *)v6 initWithMapItem:v7];
    }

    else
    {
      v8 = [v4 searchResult];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)venuesStack:(id)a3 reorderedStackAndRemovedCardItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 allObjects];
  v9 = [VenuesStack cards:v8 lastCardConformingToProtocol:&OBJC_PROTOCOL___VenueCategoryCardItem];
  if (v9)
  {
  }

  else
  {
    v10 = [v7 allObjects];
    v11 = [VenuesStack cards:v10 lastCardConformingToProtocol:&OBJC_PROTOCOL___VenueAutoCompleteCategoryCardItem];

    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v12 = [v6 allItems];
  v13 = [v12 lastObject];

  v14 = [VenueCardCoordinator searchResultForPlaceCardItem:v13];
  if (v14)
  {
    WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);
    v16 = [WeakRetained searchPinsManager];
    v33 = v14;
    v17 = [NSArray arrayWithObjects:&v33 count:1];
    [v16 setSearchPins:v17 selectedPin:v14 animated:1];
  }

LABEL_7:
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = v7;
  v19 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      v22 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [(VenueCardFactory *)self->_cardFactory existingViewControllerForCardItem:*(*(&v28 + 1) + 8 * v22), v28];
        v24 = objc_loadWeakRetained(&self->_actionCoordinator);
        v25 = [v24 currentViewController];

        if (v23 != v25)
        {
          v26 = objc_loadWeakRetained(&self->_actionCoordinator);
          v27 = [v26 containerViewController];
          [v27 removeControllerFromStack:v23];
        }

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v20);
  }
}

- (id)stateForNewCardItem:(id)a3 previousItemInStack:(id)a4 savePlaceCardSelectionState:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(VenueCardCoordinator *)self dataSource];
  v11 = [v10 mapSelectionStateForVenueCardItem:v9 savePlaceCardSelectionState:v5];

  v12 = [(VenueCardCoordinator *)self dataSource];
  v13 = [v12 searchFieldItemForVenueCardItem:v9 previousItemInStack:v8];

  v14 = [(VenueCardCoordinator *)self dataSource];
  v15 = [v14 searchInfoForVenueCardItem:v9 previousItemInStack:v8];

  v16 = [VenueMapSearchState stateWithMapSelectionState:v11 searchFieldItem:v13 searchInfo:v15];

  return v16;
}

- (id)routePlanningOverviewViewControllerForCardFactory:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);
  v4 = [WeakRetained routePlanningOverviewViewController];

  return v4;
}

- (id)shareDelegateForCardFactory:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);
  v4 = [WeakRetained appCoordinator];

  return v4;
}

@end