@interface CarCollectionListModeController
- (CarCollectionListModeController)init;
- (ChromeViewController)chromeViewController;
- (NSArray)carFocusOrderSequences;
- (id)desiredCards;
- (void)_updateCollections:(id)a3;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)collectionListCard:(id)a3 didSelectCollection:(id)a4;
- (void)configureCard:(id)a3 forKey:(id)a4;
- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
@end

@implementation CarCollectionListModeController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (NSArray)carFocusOrderSequences
{
  v3 = [(CarCollectionListModeController *)self chromeViewController];
  v4 = [v3 itemRepresentingStatusBanner];
  v5 = [(CarCollectionListModeController *)self chromeViewController];
  v6 = [v5 itemRepresentingOverlays];
  v11[1] = v6;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v8 = [CarFocusOrderSequence sequenceWithItems:v7 options:5];
  v12 = v8;
  v9 = [NSArray arrayWithObjects:&v12 count:1];

  return v9;
}

- (void)collectionListCard:(id)a3 didSelectCollection:(id)a4
{
  v4 = a4;
  v5 = sub_100006E1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "searchCategoriesCard:didSelectCollection: %@", &v7, 0xCu);
  }

  v6 = +[CarChromeModeCoordinator sharedInstance];
  [v6 displaySearchResultsWithCollection:v4];
}

- (void)_updateCollections:(id)a3
{
  v8 = a3;
  v4 = [(CarCollectionListModeController *)self collections];
  v5 = [v8 isEqualToArray:v4];

  if ((v5 & 1) == 0)
  {
    [(CarCollectionListModeController *)self setCollections:v8];
    v6 = [(CarCollectionListModeController *)self collectionListCard];
    v7 = [(CarCollectionListModeController *)self collections];
    [v6 setCollections:v7];
  }
}

- (void)configureCard:(id)a3 forKey:(id)a4
{
  v17 = a3;
  if ([a4 isEqualToString:@"primary"])
  {
    v6 = [(CarCollectionListModeController *)self collectionListCard];
    [v17 setContent:v6];

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"CarPlay_Guides_List_Title" value:@"localized string not found" table:0];
    [v17 setTitle:v8];

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
    v13 = [(CarCardLayout *)v12 primaryAxis];
    v14 = [(CarCardLayout *)v12 cornerPosition];
    if (v13 == 1)
    {
      if (v14 == 4 || [(CarCardLayout *)v12 cornerPosition]== 1 || [(CarCardLayout *)v12 edgePosition]== 2)
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
      v16 = v14 == 4 || [(CarCardLayout *)v12 cornerPosition]== 8 || [(CarCardLayout *)v12 edgePosition]== 4;
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
    [v17 setLayout:v12];

    [v17 setAccessoryType:1];
  }
}

- (id)desiredCards
{
  v4 = @"primary";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)resignTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v5 = [CollectionManager sharedManager:a3];
  [v5 removeObserver:self];
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v5 = [CarCollectionListCardViewController alloc];
  v6 = [(CarCollectionListModeController *)self collections];
  v7 = [(CarCollectionListCardViewController *)v5 initWithCollections:v6 delegate:self];
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
    v4 = [v3 currentCollectionsForCarPlay];
    collections = v2->_collections;
    v2->_collections = v4;
  }

  return v2;
}

@end