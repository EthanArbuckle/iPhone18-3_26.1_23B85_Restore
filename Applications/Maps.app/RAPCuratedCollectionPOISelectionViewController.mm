@interface RAPCuratedCollectionPOISelectionViewController
- (RAPCuratedCollectionPOISelectionViewController)initWithReport:(id)report parentQuestion:(id)question completion:(id)completion;
- (id)_mapItemAtIndex:(unint64_t)index;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (unint64_t)_numberOfMapItems;
- (void)_cancel;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation RAPCuratedCollectionPOISelectionViewController

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = pathCopy;
  if (!self->_isOpeningRAP)
  {
    v9 = -[RAPCuratedCollectionPOISelectionViewController _mapItemAtIndex:](self, "_mapItemAtIndex:", [pathCopy row]);
    [viewCopy deselectRowAtIndexPath:v8 animated:1];
    objc_initWeak(&location, self);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100736DC4;
    v13[3] = &unk_101627D28;
    objc_copyWeak(&v14, &location);
    v13[4] = self;
    v10 = objc_retainBlock(v13);
    self->_isOpeningRAP = 1;
    _maps_mapsSceneDelegate = [(RAPCuratedCollectionPOISelectionViewController *)self _maps_mapsSceneDelegate];
    rapPresenter = [_maps_mapsSceneDelegate rapPresenter];
    [rapPresenter presentRAPWebBundleWithMapItem:v9 fromEntryPoint:259 completion:v10];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[RAPTwoLinesMenuTableViewCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8];

  v10 = [pathCopy row];
  v11 = [(RAPCuratedCollectionPOISelectionViewController *)self _mapItemAtIndex:v10];
  v12 = [RAPTwoLinesViewModelImpl viewModelFromMapItem:v11];
  [v9 setViewModel:v12];

  return v9;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Pick the Place [RAP]" value:@"localized string not found" table:0];
  v7 = [viewCopy _maps_groupedHeaderViewWithTitle:v6];

  return v7;
}

- (unint64_t)_numberOfMapItems
{
  _context = [(RAPReport *)self->_report _context];
  curatedCollectionContext = [_context curatedCollectionContext];
  placeCollectionMapItems = [curatedCollectionContext placeCollectionMapItems];
  v5 = [placeCollectionMapItems count];

  return v5;
}

- (id)_mapItemAtIndex:(unint64_t)index
{
  _context = [(RAPReport *)self->_report _context];
  curatedCollectionContext = [_context curatedCollectionContext];
  placeCollectionMapItems = [curatedCollectionContext placeCollectionMapItems];
  v7 = [placeCollectionMapItems objectAtIndexedSubscript:index];

  mapItem = [v7 mapItem];

  return mapItem;
}

- (void)_cancel
{
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, self, 0);
  }
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = RAPCuratedCollectionPOISelectionViewController;
  [(RAPCuratedCollectionPOISelectionViewController *)&v8 viewDidLoad];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Report an Individual Place [Curated Collections]" value:@"localized string not found" table:0];
  navigationItem = [(RAPCuratedCollectionPOISelectionViewController *)self navigationItem];
  [navigationItem setTitle:v4];

  v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancel"];
  navigationItem2 = [(RAPCuratedCollectionPOISelectionViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v6];
}

- (RAPCuratedCollectionPOISelectionViewController)initWithReport:(id)report parentQuestion:(id)question completion:(id)completion
{
  reportCopy = report;
  questionCopy = question;
  completionCopy = completion;
  v21.receiver = self;
  v21.super_class = RAPCuratedCollectionPOISelectionViewController;
  v12 = [(RAPCuratedCollectionPOISelectionViewController *)&v21 initWithStyle:2];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_question, question);
    objc_storeStrong(&v13->_report, report);
    v14 = [completionCopy copy];
    completion = v13->_completion;
    v13->_completion = v14;

    tableView = [(RAPCuratedCollectionPOISelectionViewController *)v13 tableView];
    [tableView _maps_initializeRAPAppearance];

    tableView2 = [(RAPCuratedCollectionPOISelectionViewController *)v13 tableView];
    v18 = objc_opt_class();
    v19 = +[RAPTwoLinesMenuTableViewCell reuseIdentifier];
    [tableView2 registerClass:v18 forCellReuseIdentifier:v19];
  }

  return v13;
}

@end