@interface CarDisambiguationModeController
- (CarDisambiguationModeController)initWithSearchInfo:(id)a3 completionBlock:(id)a4;
- (ChromeViewController)chromeViewController;
- (NSArray)carFocusOrderSequences;
- (NSArray)focusOrderSubItems;
- (id)desiredCards;
- (id)itemAtIndexPath:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)carCardViewCloseButtonTapped:(id)a3;
- (void)configureCard:(id)a3 forKey:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
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
    v3 = [(CarBaseSearchViewController *)self tableView];
    v4 = [v3 _car_visibleCells];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (NSArray)carFocusOrderSequences
{
  v2 = [(CarDisambiguationModeController *)self chromeViewController];
  v3 = [v2 itemRepresentingOverlays];
  v8 = v3;
  v4 = [NSArray arrayWithObjects:&v8 count:1];
  v5 = [CarFocusOrderSequence sequenceWithItems:v4 options:5];
  v9 = v5;
  v6 = [NSArray arrayWithObjects:&v9 count:1];

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v8.receiver = self;
  v8.super_class = CarDisambiguationModeController;
  [(CarBaseSearchViewController *)&v8 tableView:a3 didSelectRowAtIndexPath:v6];
  resultCompletionBlock = self->_resultCompletionBlock;
  if (resultCompletionBlock)
  {
    resultCompletionBlock[2](resultCompletionBlock, [v6 row]);
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(SearchInfo *)self->_searchInfo results:a3];
  v5 = [v4 count];

  return v5;
}

- (id)itemAtIndexPath:(id)a3
{
  searchInfo = self->_searchInfo;
  v4 = a3;
  v5 = [(SearchInfo *)searchInfo results];
  v6 = [v4 row];

  v7 = [v5 objectAtIndexedSubscript:v6];

  return v7;
}

- (void)carCardViewCloseButtonTapped:(id)a3
{
  resultCompletionBlock = self->_resultCompletionBlock;
  if (resultCompletionBlock)
  {
    resultCompletionBlock[2](resultCompletionBlock, -1, a3);
  }

  v5 = +[CarChromeModeCoordinator sharedInstance];
  [v5 popFromContext:self];
}

- (void)configureCard:(id)a3 forKey:(id)a4
{
  v16 = a3;
  if ([a4 isEqualToString:@"primary"])
  {
    [v16 setContent:self];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Did you mean... [CarPlay disambiguation title]" value:@"localized string not found" table:0];
    [v16 setTitle:v7];

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
    v12 = [(CarCardLayout *)v11 primaryAxis];
    v13 = [(CarCardLayout *)v11 cornerPosition];
    if (v12 == 1)
    {
      if (v13 == 4 || [(CarCardLayout *)v11 cornerPosition]== 1 || [(CarCardLayout *)v11 edgePosition]== 2)
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
      v15 = v13 == 4 || [(CarCardLayout *)v11 cornerPosition]== 8 || [(CarCardLayout *)v11 edgePosition]== 4;
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
    [v16 setLayout:v11];

    [v16 setAccessoryType:1];
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
  v3 = [(CarDisambiguationModeController *)self view];
  [v3 setAccessibilityIdentifier:@"CarDisambiguationView"];

  v4 = [CarTableView alloc];
  v5 = [(CarDisambiguationModeController *)self view];
  [v5 bounds];
  v6 = [(CarTableView *)v4 initWithFrame:0 style:?];
  [(CarBaseSearchViewController *)self setTableView:v6];

  v7 = [(CarBaseSearchViewController *)self tableView];
  [v7 setAccessibilityIdentifier:@"CarDisambiguationTableView"];

  v8 = [(CarBaseSearchViewController *)self tableView];
  [v8 setAutoresizingMask:18];

  v9 = +[UIColor clearColor];
  v10 = [(CarBaseSearchViewController *)self tableView];
  [v10 setBackgroundColor:v9];

  v11 = [(CarBaseSearchViewController *)self tableView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(CarBaseSearchViewController *)self tableView];
  [v12 setDelegate:self];

  v13 = [(CarBaseSearchViewController *)self tableView];
  [v13 setRowHeight:UITableViewAutomaticDimension];

  v14 = [(CarBaseSearchViewController *)self tableView];
  v15 = objc_opt_class();
  v16 = +[CarSearchItemCell reuseIdentifier];
  [v14 registerClass:v15 forCellReuseIdentifier:v16];

  v17 = [(CarDisambiguationModeController *)self view];
  v18 = [(CarBaseSearchViewController *)self tableView];
  [v17 addSubview:v18];
}

- (CarDisambiguationModeController)initWithSearchInfo:(id)a3 completionBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CarDisambiguationModeController;
  v9 = [(CarBaseSearchViewController *)&v14 initWithDisabledETAUpdates:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_searchInfo, a3);
    v11 = [v8 copy];
    resultCompletionBlock = v10->_resultCompletionBlock;
    v10->_resultCompletionBlock = v11;
  }

  return v10;
}

@end