@interface CarCollectionListModeController
- (CarCollectionListModeController)init;
- (ChromeViewController)chromeViewController;
- (NSArray)carFocusOrderSequences;
- (id)desiredCards;
- (void)_updateCollections:(id)collections;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)collectionListCard:(id)card didSelectCollection:(id)collection;
- (void)configureCard:(id)card forKey:(id)key;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
@end

@implementation CarCollectionListModeController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (NSArray)carFocusOrderSequences
{
  chromeViewController = [(CarCollectionListModeController *)self chromeViewController];
  itemRepresentingStatusBanner = [chromeViewController itemRepresentingStatusBanner];
  chromeViewController2 = [(CarCollectionListModeController *)self chromeViewController];
  itemRepresentingOverlays = [chromeViewController2 itemRepresentingOverlays];
  v11[1] = itemRepresentingOverlays;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v8 = [CarFocusOrderSequence sequenceWithItems:v7 options:5];
  v12 = v8;
  v9 = [NSArray arrayWithObjects:&v12 count:1];

  return v9;
}

- (void)collectionListCard:(id)card didSelectCollection:(id)collection
{
  collectionCopy = collection;
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = collectionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "searchCategoriesCard:didSelectCollection: %@", &v7, 0xCu);
  }

  v6 = +[CarChromeModeCoordinator sharedInstance];
  [v6 displaySearchResultsWithCollection:collectionCopy];
}

- (void)_updateCollections:(id)collections
{
  collectionsCopy = collections;
  collections = [(CarCollectionListModeController *)self collections];
  v5 = [collectionsCopy isEqualToArray:collections];

  if ((v5 & 1) == 0)
  {
    [(CarCollectionListModeController *)self setCollections:collectionsCopy];
    collectionListCard = [(CarCollectionListModeController *)self collectionListCard];
    collections2 = [(CarCollectionListModeController *)self collections];
    [collectionListCard setCollections:collections2];
  }
}

- (void)configureCard:(id)card forKey:(id)key
{
  cardCopy = card;
  if ([key isEqualToString:@"primary"])
  {
    collectionListCard = [(CarCollectionListModeController *)self collectionListCard];
    [cardCopy setContent:collectionListCard];

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"CarPlay_Guides_List_Title" value:@"localized string not found" table:0];
    [cardCopy setTitle:v8];

    v9 = objc_alloc_init(CarCardLayout);
    [(CarCardLayout *)v9 setEdgePosition:0];
    [(CarCardLayout *)v9 setCornerPosition:4];
    [(CarCardLayout *)v9 setPrimaryAxis:1];
    [(CarCardLayout *)v9 setPinnedEdges:0];
    [(CarCardLayout *)v9 setPrimaryAxisFillMode:3];
    LODWORD(v10) = 1148846080;
    [(CarCardLayout *)v9 setPrimaryAxisFillModePriority:v10];
    [(CarCardLayout *)v9 setSecondaryAxisFillMode:2];
    LODWORD(v11) = 1148846080;
    [(CarCardLayout *)v9 setSecondaryAxisFillModePriority:v11];
    [(CarCardLayout *)v9 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
    [(CarCardLayout *)v9 setFlipForRightHandDrive:1];
    v12 = v9;
    primaryAxis = [(CarCardLayout *)v12 primaryAxis];
    cornerPosition = [(CarCardLayout *)v12 cornerPosition];
    if (primaryAxis == 1)
    {
      if (cornerPosition == 4 || [(CarCardLayout *)v12 cornerPosition]== 1 || [(CarCardLayout *)v12 edgePosition]== 2)
      {
        v15 = 8;
      }

      else
      {
        v15 = 0;
      }

      if ([(CarCardLayout *)v12 cornerPosition]== 8 || [(CarCardLayout *)v12 cornerPosition]== 2 || [(CarCardLayout *)v12 edgePosition]== 8)
      {
        v15 |= 2uLL;
      }

      if ([(CarCardLayout *)v12 edgePosition]== 1)
      {
        v15 |= 4uLL;
      }

      v16 = v15 | ([(CarCardLayout *)v12 edgePosition]== 4);
    }

    else
    {
      v16 = cornerPosition == 4 || [(CarCardLayout *)v12 cornerPosition]== 8 || [(CarCardLayout *)v12 edgePosition]== 4;
      if ([(CarCardLayout *)v12 cornerPosition]== 1 || [(CarCardLayout *)v12 cornerPosition]== 2 || [(CarCardLayout *)v12 edgePosition]== 1)
      {
        v16 |= 4uLL;
      }

      if ([(CarCardLayout *)v12 edgePosition]== 2)
      {
        v16 |= 8uLL;
      }

      if ([(CarCardLayout *)v12 edgePosition]== 8)
      {
        v16 |= 2uLL;
      }
    }

    [(CarCardLayout *)v12 setEdgesAffectingMapInsets:v16];
    [(CarCardLayout *)v12 setHorizontallyCenterMapInsets:0];
    [cardCopy setLayout:v12];

    [cardCopy setAccessoryType:1];
  }
}

- (id)desiredCards
{
  v4 = @"primary";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v5 = [CollectionManager sharedManager:controller];
  [v5 removeObserver:self];
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v5 = [CarCollectionListCardViewController alloc];
  collections = [(CarCollectionListModeController *)self collections];
  v7 = [(CarCollectionListCardViewController *)v5 initWithCollections:collections delegate:self];
  [(CarCollectionListModeController *)self setCollectionListCard:v7];

  v8 = +[CollectionManager sharedManager];
  [v8 addObserver:self];
}

- (CarCollectionListModeController)init
{
  v7.receiver = self;
  v7.super_class = CarCollectionListModeController;
  v2 = [(CarCollectionListModeController *)&v7 init];
  if (v2)
  {
    v3 = +[CollectionManager sharedManager];
    currentCollectionsForCarPlay = [v3 currentCollectionsForCarPlay];
    collections = v2->_collections;
    v2->_collections = currentCollectionsForCarPlay;
  }

  return v2;
}

@end