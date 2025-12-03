@interface RAPCuratedCollectionCategoriesViewController
- (RAPCuratedCollectionCategoriesViewController)initWithReport:(id)report question:(id)question completion:(id)completion;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation RAPCuratedCollectionCategoriesViewController

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![pathCopy section])
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    question = [(RAPCuratedCollectionCategoriesViewController *)self question];
    categoryItems = [question categoryItems];
    v9 = [categoryItems objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    type = [v9 type];
    question2 = [(RAPCuratedCollectionCategoriesViewController *)self question];
    [question2 setSelectedQuestionType:type];

    if ([v9 type] == 3)
    {
      v12 = [RAPCuratedCollectionPOISelectionViewController alloc];
      report = [(RAPCuratedCollectionCategoriesViewController *)self report];
      question3 = [(RAPCuratedCollectionCategoriesViewController *)self question];
      v15 = [(RAPCuratedCollectionPOISelectionViewController *)v12 initWithReport:report parentQuestion:question3 completion:self->_completion];
    }

    else
    {
      v16 = [RAPReportComposerCommentViewController alloc];
      report = [(RAPCuratedCollectionCategoriesViewController *)self report];
      question3 = [(RAPCuratedCollectionCategoriesViewController *)self question];
      v15 = [(RAPReportComposerCommentViewController *)v16 initWithReport:report question:question3 completion:self->_completion];
    }

    v17 = v15;

    navigationController = [(RAPCuratedCollectionCategoriesViewController *)self navigationController];
    [navigationController pushViewController:v17 animated:1];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section])
  {
    v8 = 0;
  }

  else
  {
    v9 = +[RAPSingleLineTableViewCell reuseIdentifier];
    v8 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

    question = [(RAPCuratedCollectionCategoriesViewController *)self question];
    categoryItems = [question categoryItems];
    v12 = [categoryItems objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    [v8 setAccessoryType:1];
    localizedName = [v12 localizedName];
    textLabel = [v8 textLabel];
    [textLabel setText:localizedName];
  }

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    return 0;
  }

  question = [(RAPCuratedCollectionCategoriesViewController *)self question];
  categoryItems = [question categoryItems];
  v7 = [categoryItems count];

  return v7;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section)
  {
    v6 = &stru_1016631F0;
  }

  else
  {
    v7 = +[NSBundle mainBundle];
    v6 = [v7 localizedStringForKey:@"Feedback [Report a Problem]" value:@"localized string not found" table:0];
  }

  v8 = [viewCopy _maps_groupedHeaderViewWithTitle:v6];

  return v8;
}

- (RAPCuratedCollectionCategoriesViewController)initWithReport:(id)report question:(id)question completion:(id)completion
{
  reportCopy = report;
  questionCopy = question;
  completionCopy = completion;
  v23.receiver = self;
  v23.super_class = RAPCuratedCollectionCategoriesViewController;
  v12 = [(RAPCuratedCollectionCategoriesViewController *)&v23 initWithStyle:2];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_report, report);
    objc_storeStrong(&v13->_question, question);
    v14 = [completionCopy copy];
    completion = v13->_completion;
    v13->_completion = v14;

    tableView = [(RAPCuratedCollectionCategoriesViewController *)v13 tableView];
    v17 = objc_opt_class();
    v18 = +[RAPSingleLineTableViewCell reuseIdentifier];
    [tableView registerClass:v17 forCellReuseIdentifier:v18];

    tableView2 = [(RAPCuratedCollectionCategoriesViewController *)v13 tableView];
    [tableView2 _maps_initializeRAPAppearance];

    localizedTitle = [(RAPQuestion *)v13->_question localizedTitle];
    navigationItem = [(RAPCuratedCollectionCategoriesViewController *)v13 navigationItem];
    [navigationItem setTitle:localizedTitle];
  }

  return v13;
}

@end