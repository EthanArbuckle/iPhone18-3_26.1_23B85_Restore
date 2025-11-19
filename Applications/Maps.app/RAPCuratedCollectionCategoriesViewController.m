@interface RAPCuratedCollectionCategoriesViewController
- (RAPCuratedCollectionCategoriesViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation RAPCuratedCollectionCategoriesViewController

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v19 = a3;
  v6 = a4;
  if (![v6 section])
  {
    [v19 deselectRowAtIndexPath:v6 animated:1];
    v7 = [(RAPCuratedCollectionCategoriesViewController *)self question];
    v8 = [v7 categoryItems];
    v9 = [v8 objectAtIndex:{objc_msgSend(v6, "row")}];

    v10 = [v9 type];
    v11 = [(RAPCuratedCollectionCategoriesViewController *)self question];
    [v11 setSelectedQuestionType:v10];

    if ([v9 type] == 3)
    {
      v12 = [RAPCuratedCollectionPOISelectionViewController alloc];
      v13 = [(RAPCuratedCollectionCategoriesViewController *)self report];
      v14 = [(RAPCuratedCollectionCategoriesViewController *)self question];
      v15 = [(RAPCuratedCollectionPOISelectionViewController *)v12 initWithReport:v13 parentQuestion:v14 completion:self->_completion];
    }

    else
    {
      v16 = [RAPReportComposerCommentViewController alloc];
      v13 = [(RAPCuratedCollectionCategoriesViewController *)self report];
      v14 = [(RAPCuratedCollectionCategoriesViewController *)self question];
      v15 = [(RAPReportComposerCommentViewController *)v16 initWithReport:v13 question:v14 completion:self->_completion];
    }

    v17 = v15;

    v18 = [(RAPCuratedCollectionCategoriesViewController *)self navigationController];
    [v18 pushViewController:v17 animated:1];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 section])
  {
    v8 = 0;
  }

  else
  {
    v9 = +[RAPSingleLineTableViewCell reuseIdentifier];
    v8 = [v6 dequeueReusableCellWithIdentifier:v9 forIndexPath:v7];

    v10 = [(RAPCuratedCollectionCategoriesViewController *)self question];
    v11 = [v10 categoryItems];
    v12 = [v11 objectAtIndex:{objc_msgSend(v7, "row")}];

    [v8 setAccessoryType:1];
    v13 = [v12 localizedName];
    v14 = [v8 textLabel];
    [v14 setText:v13];
  }

  return v8;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    return 0;
  }

  v5 = [(RAPCuratedCollectionCategoriesViewController *)self question];
  v6 = [v5 categoryItems];
  v7 = [v6 count];

  return v7;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v5 = a3;
  if (a4)
  {
    v6 = &stru_1016631F0;
  }

  else
  {
    v7 = +[NSBundle mainBundle];
    v6 = [v7 localizedStringForKey:@"Feedback [Report a Problem]" value:@"localized string not found" table:0];
  }

  v8 = [v5 _maps_groupedHeaderViewWithTitle:v6];

  return v8;
}

- (RAPCuratedCollectionCategoriesViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = RAPCuratedCollectionCategoriesViewController;
  v12 = [(RAPCuratedCollectionCategoriesViewController *)&v23 initWithStyle:2];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_report, a3);
    objc_storeStrong(&v13->_question, a4);
    v14 = [v11 copy];
    completion = v13->_completion;
    v13->_completion = v14;

    v16 = [(RAPCuratedCollectionCategoriesViewController *)v13 tableView];
    v17 = objc_opt_class();
    v18 = +[RAPSingleLineTableViewCell reuseIdentifier];
    [v16 registerClass:v17 forCellReuseIdentifier:v18];

    v19 = [(RAPCuratedCollectionCategoriesViewController *)v13 tableView];
    [v19 _maps_initializeRAPAppearance];

    v20 = [(RAPQuestion *)v13->_question localizedTitle];
    v21 = [(RAPCuratedCollectionCategoriesViewController *)v13 navigationItem];
    [v21 setTitle:v20];
  }

  return v13;
}

@end