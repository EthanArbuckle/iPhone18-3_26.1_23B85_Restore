@interface VenueCardCoordinator
+ (id)searchResultForPlaceCardItem:(id)item;
- (BOOL)isCardStackEmpty;
- (BOOL)venuesStackContainsCategoryListCard;
- (ContaineeProtocol)topViewController;
- (VenueCardCoordinator)initWithActionCoordinator:(id)coordinator venueChangeNotifier:(id)notifier;
- (VenueCardCoordinatorDataSource)dataSource;
- (id)routePlanningOverviewViewControllerForCardFactory:(id)factory;
- (id)shareDelegateForCardFactory:(id)factory;
- (id)stateForNewCardItem:(id)item previousItemInStack:(id)stack savePlaceCardSelectionState:(BOOL)state;
- (void)popVenueCardItem:(id)item;
- (void)venuesStack:(id)stack reorderedStackAndRemovedCardItems:(id)items;
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
  allItems = [(VenuesStack *)self->_cardStack allItems];
  lastObject = [allItems lastObject];

  if (lastObject)
  {
    v5 = [(VenueCardFactory *)self->_cardFactory existingViewControllerForCardItem:lastObject];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)popVenueCardItem:(id)item
{
  itemCopy = item;
  cardStack = self->_cardStack;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100810728;
  v7[3] = &unk_10162B220;
  v8 = itemCopy;
  v6 = itemCopy;
  [(VenuesStack *)cardStack popVenueCard:v7];
}

- (BOOL)isCardStackEmpty
{
  allItems = [(VenuesStack *)self->_cardStack allItems];
  v3 = [allItems count] == 0;

  return v3;
}

- (VenueCardCoordinator)initWithActionCoordinator:(id)coordinator venueChangeNotifier:(id)notifier
{
  coordinatorCopy = coordinator;
  notifierCopy = notifier;
  v18.receiver = self;
  v18.super_class = VenueCardCoordinator;
  v8 = [(VenueCardCoordinator *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_actionCoordinator, coordinatorCopy);
    v10 = objc_alloc_init(VenueCardDealer);
    v11 = [[VenuesStack alloc] initWithCardDealer:v10];
    cardStack = v9->_cardStack;
    v9->_cardStack = v11;

    [(VenuesStack *)v9->_cardStack setDelegate:v9];
    [(VenuesStack *)v9->_cardStack setDataSource:v9];
    v13 = [[VenueCardFactory alloc] initWithChangeNotifier:notifierCopy];
    cardFactory = v9->_cardFactory;
    v9->_cardFactory = v13;

    [(VenueCardFactory *)v9->_cardFactory setDelegate:v9];
    [(VenuesStack *)v9->_cardStack addStackObserver:v9->_cardFactory];
    v15 = v9->_cardStack;
    venuesManager = [coordinatorCopy venuesManager];
    [venuesManager setVenueCardStack:v15];
  }

  return v9;
}

+ (id)searchResultForPlaceCardItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = itemCopy;
    mapItem = [v4 mapItem];

    if (mapItem)
    {
      v6 = [SearchResult alloc];
      mapItem2 = [v4 mapItem];
      searchResult = [(SearchResult *)v6 initWithMapItem:mapItem2];
    }

    else
    {
      searchResult = [v4 searchResult];
    }
  }

  else
  {
    searchResult = 0;
  }

  return searchResult;
}

- (void)venuesStack:(id)stack reorderedStackAndRemovedCardItems:(id)items
{
  stackCopy = stack;
  itemsCopy = items;
  allObjects = [itemsCopy allObjects];
  v9 = [VenuesStack cards:allObjects lastCardConformingToProtocol:&OBJC_PROTOCOL___VenueCategoryCardItem];
  if (v9)
  {
  }

  else
  {
    allObjects2 = [itemsCopy allObjects];
    v11 = [VenuesStack cards:allObjects2 lastCardConformingToProtocol:&OBJC_PROTOCOL___VenueAutoCompleteCategoryCardItem];

    if (!v11)
    {
      goto LABEL_7;
    }
  }

  allItems = [stackCopy allItems];
  lastObject = [allItems lastObject];

  v14 = [VenueCardCoordinator searchResultForPlaceCardItem:lastObject];
  if (v14)
  {
    WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);
    searchPinsManager = [WeakRetained searchPinsManager];
    v33 = v14;
    v17 = [NSArray arrayWithObjects:&v33 count:1];
    [searchPinsManager setSearchPins:v17 selectedPin:v14 animated:1];
  }

LABEL_7:
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = itemsCopy;
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
        currentViewController = [v24 currentViewController];

        if (v23 != currentViewController)
        {
          v26 = objc_loadWeakRetained(&self->_actionCoordinator);
          containerViewController = [v26 containerViewController];
          [containerViewController removeControllerFromStack:v23];
        }

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v20);
  }
}

- (id)stateForNewCardItem:(id)item previousItemInStack:(id)stack savePlaceCardSelectionState:(BOOL)state
{
  stateCopy = state;
  stackCopy = stack;
  itemCopy = item;
  dataSource = [(VenueCardCoordinator *)self dataSource];
  v11 = [dataSource mapSelectionStateForVenueCardItem:itemCopy savePlaceCardSelectionState:stateCopy];

  dataSource2 = [(VenueCardCoordinator *)self dataSource];
  v13 = [dataSource2 searchFieldItemForVenueCardItem:itemCopy previousItemInStack:stackCopy];

  dataSource3 = [(VenueCardCoordinator *)self dataSource];
  v15 = [dataSource3 searchInfoForVenueCardItem:itemCopy previousItemInStack:stackCopy];

  v16 = [VenueMapSearchState stateWithMapSelectionState:v11 searchFieldItem:v13 searchInfo:v15];

  return v16;
}

- (id)routePlanningOverviewViewControllerForCardFactory:(id)factory
{
  WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);
  routePlanningOverviewViewController = [WeakRetained routePlanningOverviewViewController];

  return routePlanningOverviewViewController;
}

- (id)shareDelegateForCardFactory:(id)factory
{
  WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);
  appCoordinator = [WeakRetained appCoordinator];

  return appCoordinator;
}

@end