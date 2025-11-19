@interface RAPLookAroundPrivacyCategoryViewController
- (RAPLookAroundPrivacyCategoryViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_captureUserAction:(int)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation RAPLookAroundPrivacyCategoryViewController

- (void)_captureUserAction:(int)a3
{
  v3 = *&a3;
  v4 = [(RAPLookAroundPrivacyCategoryViewController *)self analyticTarget];

  [GEOAPPortal captureUserAction:v3 target:v4 value:0];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[RAPSingleLineTableViewCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithIdentifier:v8 forIndexPath:v6];

  v10 = [(RAPLookAroundQuestion *)self->_question privacyItems];
  v11 = [v6 row];

  v12 = [v10 objectAtIndex:v11];

  [v9 setAccessoryType:1];
  v13 = [v12 localizedName];
  v14 = [v9 textLabel];
  [v14 setText:v13];

  return v9;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(RAPLookAroundQuestion *)self->_question privacyItems:a3];
  v5 = [v4 count];

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:0];
  v7 = [(RAPLookAroundQuestion *)self->_question privacyItems];
  v8 = [v6 row];

  v11 = [v7 objectAtIndex:v8];

  -[RAPLookAroundQuestion setSelectedQuestionType:](self->_question, "setSelectedQuestionType:", [v11 type]);
  -[RAPLookAroundPrivacyCategoryViewController _captureUserAction:](self, "_captureUserAction:", [v11 analyticAction]);
  v9 = [[RAPLookAroundDetailsEditorViewController alloc] initWithReport:self->_report question:self->_question completion:self->_completion];
  v10 = [(RAPLookAroundPrivacyCategoryViewController *)self navigationController];
  [v10 pushViewController:v9 animated:1];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Feedback [Report a Problem]" value:@"localized string not found" table:0];
  v7 = [v4 _maps_groupedHeaderViewWithTitle:v6];

  return v7;
}

- (RAPLookAroundPrivacyCategoryViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = RAPLookAroundPrivacyCategoryViewController;
  v12 = [(RAPLookAroundPrivacyCategoryViewController *)&v17 initWithStyle:2];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_report, a3);
    objc_storeStrong(&v13->_question, a4);
    v14 = [v11 copy];
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
  v3 = [(RAPLookAroundPrivacyCategoryViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[RAPSingleLineTableViewCell reuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];

  v6 = [(RAPLookAroundPrivacyCategoryViewController *)self tableView];
  [v6 _maps_initializeRAPAppearance];

  v7 = [(RAPLookAroundQuestion *)self->_question localizedPrivacyNavigationTitle];
  v8 = [(RAPLookAroundPrivacyCategoryViewController *)self navigationItem];
  [v8 setTitle:v7];

  v9 = [(RAPLookAroundPrivacyCategoryViewController *)self view];
  [v9 setAccessibilityIdentifier:@"LookAroundRAPPrivacyConcernsView"];
}

@end