@interface RAPLookAroundPrivacyCategoryViewController
- (RAPLookAroundPrivacyCategoryViewController)initWithReport:(id)report question:(id)question completion:(id)completion;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_captureUserAction:(int)action;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation RAPLookAroundPrivacyCategoryViewController

- (void)_captureUserAction:(int)action
{
  v3 = *&action;
  analyticTarget = [(RAPLookAroundPrivacyCategoryViewController *)self analyticTarget];

  [GEOAPPortal captureUserAction:v3 target:analyticTarget value:0];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[RAPSingleLineTableViewCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8 forIndexPath:pathCopy];

  privacyItems = [(RAPLookAroundQuestion *)self->_question privacyItems];
  v11 = [pathCopy row];

  v12 = [privacyItems objectAtIndex:v11];

  [v9 setAccessoryType:1];
  localizedName = [v12 localizedName];
  textLabel = [v9 textLabel];
  [textLabel setText:localizedName];

  return v9;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(RAPLookAroundQuestion *)self->_question privacyItems:view];
  v5 = [v4 count];

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:0];
  privacyItems = [(RAPLookAroundQuestion *)self->_question privacyItems];
  v8 = [pathCopy row];

  v11 = [privacyItems objectAtIndex:v8];

  -[RAPLookAroundQuestion setSelectedQuestionType:](self->_question, "setSelectedQuestionType:", [v11 type]);
  -[RAPLookAroundPrivacyCategoryViewController _captureUserAction:](self, "_captureUserAction:", [v11 analyticAction]);
  v9 = [[RAPLookAroundDetailsEditorViewController alloc] initWithReport:self->_report question:self->_question completion:self->_completion];
  navigationController = [(RAPLookAroundPrivacyCategoryViewController *)self navigationController];
  [navigationController pushViewController:v9 animated:1];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Feedback [Report a Problem]" value:@"localized string not found" table:0];
  v7 = [viewCopy _maps_groupedHeaderViewWithTitle:v6];

  return v7;
}

- (RAPLookAroundPrivacyCategoryViewController)initWithReport:(id)report question:(id)question completion:(id)completion
{
  reportCopy = report;
  questionCopy = question;
  completionCopy = completion;
  v17.receiver = self;
  v17.super_class = RAPLookAroundPrivacyCategoryViewController;
  v12 = [(RAPLookAroundPrivacyCategoryViewController *)&v17 initWithStyle:2];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_report, report);
    objc_storeStrong(&v13->_question, question);
    v14 = [completionCopy copy];
    completion = v13->_completion;
    v13->_completion = v14;
  }

  return v13;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = RAPLookAroundPrivacyCategoryViewController;
  [(RAPLookAroundPrivacyCategoryViewController *)&v10 viewDidLoad];
  tableView = [(RAPLookAroundPrivacyCategoryViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[RAPSingleLineTableViewCell reuseIdentifier];
  [tableView registerClass:v4 forCellReuseIdentifier:v5];

  tableView2 = [(RAPLookAroundPrivacyCategoryViewController *)self tableView];
  [tableView2 _maps_initializeRAPAppearance];

  localizedPrivacyNavigationTitle = [(RAPLookAroundQuestion *)self->_question localizedPrivacyNavigationTitle];
  navigationItem = [(RAPLookAroundPrivacyCategoryViewController *)self navigationItem];
  [navigationItem setTitle:localizedPrivacyNavigationTitle];

  view = [(RAPLookAroundPrivacyCategoryViewController *)self view];
  [view setAccessibilityIdentifier:@"LookAroundRAPPrivacyConcernsView"];
}

@end