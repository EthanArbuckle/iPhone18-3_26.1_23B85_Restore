@interface RAPCuratedCollectionPOISelectionViewController
- (RAPCuratedCollectionPOISelectionViewController)initWithReport:(id)a3 parentQuestion:(id)a4 completion:(id)a5;
- (id)_mapItemAtIndex:(unint64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (unint64_t)_numberOfMapItems;
- (void)_cancel;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation RAPCuratedCollectionPOISelectionViewController

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!self->_isOpeningRAP)
  {
    v9 = -[RAPCuratedCollectionPOISelectionViewController _mapItemAtIndex:](self, "_mapItemAtIndex:", [v7 row]);
    [v6 deselectRowAtIndexPath:v8 animated:1];
    objc_initWeak(&location, self);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100736DC4;
    v13[3] = &unk_101627D28;
    objc_copyWeak(&v14, &location);
    v13[4] = self;
    v10 = objc_retainBlock(v13);
    self->_isOpeningRAP = 1;
    v11 = [(RAPCuratedCollectionPOISelectionViewController *)self _maps_mapsSceneDelegate];
    v12 = [v11 rapPresenter];
    [v12 presentRAPWebBundleWithMapItem:v9 fromEntryPoint:259 completion:v10];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[RAPTwoLinesMenuTableViewCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithIdentifier:v8];

  v10 = [v6 row];
  v11 = [(RAPCuratedCollectionPOISelectionViewController *)self _mapItemAtIndex:v10];
  v12 = [RAPTwoLinesViewModelImpl viewModelFromMapItem:v11];
  [v9 setViewModel:v12];

  return v9;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Pick the Place [RAP]" value:@"localized string not found" table:0];
  v7 = [v4 _maps_groupedHeaderViewWithTitle:v6];

  return v7;
}

- (unint64_t)_numberOfMapItems
{
  v2 = [(RAPReport *)self->_report _context];
  v3 = [v2 curatedCollectionContext];
  v4 = [v3 placeCollectionMapItems];
  v5 = [v4 count];

  return v5;
}

- (id)_mapItemAtIndex:(unint64_t)a3
{
  v4 = [(RAPReport *)self->_report _context];
  v5 = [v4 curatedCollectionContext];
  v6 = [v5 placeCollectionMapItems];
  v7 = [v6 objectAtIndexedSubscript:a3];

  v8 = [v7 mapItem];

  return v8;
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
  v5 = [(RAPCuratedCollectionPOISelectionViewController *)self navigationItem];
  [v5 setTitle:v4];

  v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancel"];
  v7 = [(RAPCuratedCollectionPOISelectionViewController *)self navigationItem];
  [v7 setLeftBarButtonItem:v6];
}

- (RAPCuratedCollectionPOISelectionViewController)initWithReport:(id)a3 parentQuestion:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = RAPCuratedCollectionPOISelectionViewController;
  v12 = [(RAPCuratedCollectionPOISelectionViewController *)&v21 initWithStyle:2];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_question, a4);
    objc_storeStrong(&v13->_report, a3);
    v14 = [v11 copy];
    completion = v13->_completion;
    v13->_completion = v14;

    v16 = [(RAPCuratedCollectionPOISelectionViewController *)v13 tableView];
    [v16 _maps_initializeRAPAppearance];

    v17 = [(RAPCuratedCollectionPOISelectionViewController *)v13 tableView];
    v18 = objc_opt_class();
    v19 = +[RAPTwoLinesMenuTableViewCell reuseIdentifier];
    [v17 registerClass:v18 forCellReuseIdentifier:v19];
  }

  return v13;
}

@end