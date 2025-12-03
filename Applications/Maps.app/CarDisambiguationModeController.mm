@interface CarDisambiguationModeController
- (CarDisambiguationModeController)initWithSearchInfo:(id)info completionBlock:(id)block;
- (ChromeViewController)chromeViewController;
- (NSArray)carFocusOrderSequences;
- (NSArray)focusOrderSubItems;
- (id)desiredCards;
- (id)itemAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)carCardViewCloseButtonTapped:(id)tapped;
- (void)configureCard:(id)card forKey:(id)key;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation CarDisambiguationModeController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (NSArray)focusOrderSubItems
{
  if ([(CarDisambiguationModeController *)self isViewLoaded])
  {
    tableView = [(CarBaseSearchViewController *)self tableView];
    _car_visibleCells = [tableView _car_visibleCells];
  }

  else
  {
    _car_visibleCells = &__NSArray0__struct;
  }

  return _car_visibleCells;
}

- (NSArray)carFocusOrderSequences
{
  chromeViewController = [(CarDisambiguationModeController *)self chromeViewController];
  itemRepresentingOverlays = [chromeViewController itemRepresentingOverlays];
  v8 = itemRepresentingOverlays;
  v4 = [NSArray arrayWithObjects:&v8 count:1];
  v5 = [CarFocusOrderSequence sequenceWithItems:v4 options:5];
  v9 = v5;
  v6 = [NSArray arrayWithObjects:&v9 count:1];

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v8.receiver = self;
  v8.super_class = CarDisambiguationModeController;
  [(CarBaseSearchViewController *)&v8 tableView:view didSelectRowAtIndexPath:pathCopy];
  resultCompletionBlock = self->_resultCompletionBlock;
  if (resultCompletionBlock)
  {
    resultCompletionBlock[2](resultCompletionBlock, [pathCopy row]);
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(SearchInfo *)self->_searchInfo results:view];
  v5 = [v4 count];

  return v5;
}

- (id)itemAtIndexPath:(id)path
{
  searchInfo = self->_searchInfo;
  pathCopy = path;
  results = [(SearchInfo *)searchInfo results];
  v6 = [pathCopy row];

  v7 = [results objectAtIndexedSubscript:v6];

  return v7;
}

- (void)carCardViewCloseButtonTapped:(id)tapped
{
  resultCompletionBlock = self->_resultCompletionBlock;
  if (resultCompletionBlock)
  {
    resultCompletionBlock[2](resultCompletionBlock, -1, tapped);
  }

  v5 = +[CarChromeModeCoordinator sharedInstance];
  [v5 popFromContext:self];
}

- (void)configureCard:(id)card forKey:(id)key
{
  cardCopy = card;
  if ([key isEqualToString:@"primary"])
  {
    [cardCopy setContent:self];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Did you mean... [CarPlay disambiguation title]" value:@"localized string not found" table:0];
    [cardCopy setTitle:v7];

    v8 = objc_alloc_init(CarCardLayout);
    [(CarCardLayout *)v8 setEdgePosition:0];
    [(CarCardLayout *)v8 setCornerPosition:4];
    [(CarCardLayout *)v8 setPrimaryAxis:1];
    [(CarCardLayout *)v8 setPinnedEdges:0];
    [(CarCardLayout *)v8 setPrimaryAxisFillMode:3];
    LODWORD(v9) = 1148846080;
    [(CarCardLayout *)v8 setPrimaryAxisFillModePriority:v9];
    [(CarCardLayout *)v8 setSecondaryAxisFillMode:2];
    LODWORD(v10) = 1148846080;
    [(CarCardLayout *)v8 setSecondaryAxisFillModePriority:v10];
    [(CarCardLayout *)v8 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
    [(CarCardLayout *)v8 setFlipForRightHandDrive:1];
    v11 = v8;
    primaryAxis = [(CarCardLayout *)v11 primaryAxis];
    cornerPosition = [(CarCardLayout *)v11 cornerPosition];
    if (primaryAxis == 1)
    {
      if (cornerPosition == 4 || [(CarCardLayout *)v11 cornerPosition]== 1 || [(CarCardLayout *)v11 edgePosition]== 2)
      {
        v14 = 8;
      }

      else
      {
        v14 = 0;
      }

      if ([(CarCardLayout *)v11 cornerPosition]== 8 || [(CarCardLayout *)v11 cornerPosition]== 2 || [(CarCardLayout *)v11 edgePosition]== 8)
      {
        v14 |= 2uLL;
      }

      if ([(CarCardLayout *)v11 edgePosition]== 1)
      {
        v14 |= 4uLL;
      }

      v15 = v14 | ([(CarCardLayout *)v11 edgePosition]== 4);
    }

    else
    {
      v15 = cornerPosition == 4 || [(CarCardLayout *)v11 cornerPosition]== 8 || [(CarCardLayout *)v11 edgePosition]== 4;
      if ([(CarCardLayout *)v11 cornerPosition]== 1 || [(CarCardLayout *)v11 cornerPosition]== 2 || [(CarCardLayout *)v11 edgePosition]== 1)
      {
        v15 |= 4uLL;
      }

      if ([(CarCardLayout *)v11 edgePosition]== 2)
      {
        v15 |= 8uLL;
      }

      if ([(CarCardLayout *)v11 edgePosition]== 8)
      {
        v15 |= 2uLL;
      }
    }

    [(CarCardLayout *)v11 setEdgesAffectingMapInsets:v15];
    [(CarCardLayout *)v11 setHorizontallyCenterMapInsets:0];
    [cardCopy setLayout:v11];

    [cardCopy setAccessoryType:1];
  }
}

- (id)desiredCards
{
  v4 = @"primary";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = CarDisambiguationModeController;
  [(CarDisambiguationModeController *)&v19 viewDidLoad];
  view = [(CarDisambiguationModeController *)self view];
  [view setAccessibilityIdentifier:@"CarDisambiguationView"];

  v4 = [CarTableView alloc];
  view2 = [(CarDisambiguationModeController *)self view];
  [view2 bounds];
  v6 = [(CarTableView *)v4 initWithFrame:0 style:?];
  [(CarBaseSearchViewController *)self setTableView:v6];

  tableView = [(CarBaseSearchViewController *)self tableView];
  [tableView setAccessibilityIdentifier:@"CarDisambiguationTableView"];

  tableView2 = [(CarBaseSearchViewController *)self tableView];
  [tableView2 setAutoresizingMask:18];

  v9 = +[UIColor clearColor];
  tableView3 = [(CarBaseSearchViewController *)self tableView];
  [tableView3 setBackgroundColor:v9];

  tableView4 = [(CarBaseSearchViewController *)self tableView];
  [tableView4 setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView5 = [(CarBaseSearchViewController *)self tableView];
  [tableView5 setDelegate:self];

  tableView6 = [(CarBaseSearchViewController *)self tableView];
  [tableView6 setRowHeight:UITableViewAutomaticDimension];

  tableView7 = [(CarBaseSearchViewController *)self tableView];
  v15 = objc_opt_class();
  v16 = +[CarSearchItemCell reuseIdentifier];
  [tableView7 registerClass:v15 forCellReuseIdentifier:v16];

  view3 = [(CarDisambiguationModeController *)self view];
  tableView8 = [(CarBaseSearchViewController *)self tableView];
  [view3 addSubview:tableView8];
}

- (CarDisambiguationModeController)initWithSearchInfo:(id)info completionBlock:(id)block
{
  infoCopy = info;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = CarDisambiguationModeController;
  v9 = [(CarBaseSearchViewController *)&v14 initWithDisabledETAUpdates:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_searchInfo, info);
    v11 = [blockCopy copy];
    resultCompletionBlock = v10->_resultCompletionBlock;
    v10->_resultCompletionBlock = v11;
  }

  return v10;
}

@end