@interface RAPLookAroundInitialCategoriesViewController
- (RAPLookAroundInitialCategoriesViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_captureUserAction:(int)a3;
- (void)_setupTableView;
- (void)didSelectCategoryOfType:(unint64_t)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation RAPLookAroundInitialCategoriesViewController

- (void)_captureUserAction:(int)a3
{
  v3 = *&a3;
  v4 = [(RAPLookAroundInitialCategoriesViewController *)self analyticTarget];

  [GEOAPPortal captureUserAction:v3 target:v4 value:0];
}

- (void)didSelectCategoryOfType:(unint64_t)a3
{
  [(RAPLookAroundQuestion *)self->_question setSelectedQuestionType:a3];
  v4 = [(RAPLookAroundQuestion *)self->_question selectedQuestionType];
  v5 = off_1015F6530;
  if (v4 != 3)
  {
    v5 = off_1015F6528;
  }

  v7 = [objc_alloc(*v5) initWithReport:self->_report question:self->_question completion:self->_completion];
  v6 = [(RAPLookAroundInitialCategoriesViewController *)self navigationController];
  [v6 pushViewController:v7 animated:1];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v5 = a3;
  if (a4 > 2)
  {
    v8 = &stru_1016631F0;
  }

  else
  {
    v6 = off_1016328C0[a4];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:v6 value:@"localized string not found" table:0];
  }

  v9 = [v5 _maps_groupedHeaderViewWithTitle:v8];

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v14 = a4;
  [a3 deselectRowAtIndexPath:v14 animated:1];
  v6 = [v14 section];
  if (v6 == 2)
  {
    v10 = [(RAPLookAroundQuestion *)self->_question privacyItems];
    v11 = [v10 objectAtIndex:{objc_msgSend(v14, "row")}];

    -[RAPLookAroundQuestion setSelectedQuestionType:](self->_question, "setSelectedQuestionType:", [v11 type]);
    -[RAPLookAroundInitialCategoriesViewController _captureUserAction:](self, "_captureUserAction:", [v11 analyticAction]);
    v12 = [[RAPLookAroundDetailsEditorViewController alloc] initWithReport:self->_report question:self->_question completion:self->_completion];
    v13 = [(RAPLookAroundInitialCategoriesViewController *)self navigationController];
    [v13 pushViewController:v12 animated:1];
  }

  else
  {
    if (v6 != 1)
    {
      goto LABEL_9;
    }

    v7 = [(RAPLookAroundInitialCategoriesViewController *)self traitCollection];
    v8 = [v7 userInterfaceIdiom];
    question = self->_question;
    if (v8 == 5)
    {
      [(RAPLookAroundQuestion *)question initialItemsMinusPrivacy];
    }

    else
    {
      [(RAPLookAroundQuestion *)question initialItems];
    }
    v11 = ;

    v12 = [v11 objectAtIndex:{objc_msgSend(v14, "row")}];
    [(RAPLookAroundInitialCategoriesViewController *)self _captureUserAction:[(RAPLookAroundDetailsEditorViewController *)v12 analyticAction]];
    [(RAPLookAroundInitialCategoriesViewController *)self didSelectCategoryOfType:[(RAPLookAroundDetailsEditorViewController *)v12 type]];
  }

LABEL_9:
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 section];
  if (v6 == 2)
  {
    v17 = [(RAPLookAroundQuestion *)self->_question privacyItems];
    v13 = [v17 objectAtIndex:{objc_msgSend(v5, "row")}];

    v18 = [(RAPLookAroundInitialCategoriesViewController *)self tableView];
    v19 = +[MacRapImageSingleLineCell reuseIdentifier];
    v11 = [v18 dequeueReusableCellWithIdentifier:v19];

    v20 = [v13 localizedName];
    v21 = [v11 textLabel];
    [v21 setText:v20];

    v22 = [UIImage systemImageNamed:@"arrow.forward"];
    [v11 setImage:v22];
LABEL_16:

    goto LABEL_17;
  }

  if (v6 == 1)
  {
    v14 = [(RAPLookAroundInitialCategoriesViewController *)self traitCollection];
    v15 = [v14 userInterfaceIdiom];
    question = self->_question;
    if (v15 == 5)
    {
      [(RAPLookAroundQuestion *)question initialItemsMinusPrivacy];
    }

    else
    {
      [(RAPLookAroundQuestion *)question initialItems];
    }
    v13 = ;

    v22 = [v13 objectAtIndex:{objc_msgSend(v5, "row")}];
    v23 = [(RAPLookAroundInitialCategoriesViewController *)self traitCollection];
    v24 = [v23 userInterfaceIdiom];

    v25 = [(RAPLookAroundInitialCategoriesViewController *)self tableView];
    if (v24 == 5)
    {
      v26 = +[MacRapImageSingleLineCell reuseIdentifier];
      v11 = [v25 dequeueReusableCellWithIdentifier:v26];

      v27 = [v22 localizedName];
      v28 = [v11 textLabel];
      [v28 setText:v27];

      v29 = [UIImage systemImageNamed:@"arrow.forward"];
      [v11 setImage:v29];
    }

    else
    {
      v30 = +[RAPSingleLineTableViewCell reuseIdentifier];
      v11 = [v25 dequeueReusableCellWithIdentifier:v30];

      [v11 setAccessoryType:1];
      v29 = [v22 localizedName];
      v31 = [v11 textLabel];
      [v31 setText:v29];
    }

    goto LABEL_15;
  }

  if (v6)
  {
    v11 = 0;
    goto LABEL_18;
  }

  v7 = [(RAPLookAroundInitialCategoriesViewController *)self traitCollection];
  v8 = [v7 userInterfaceIdiom];

  v9 = [(RAPLookAroundInitialCategoriesViewController *)self tableView];
  if (v8 != 5)
  {
    v32 = +[RAPLookAroundThumbnailTableViewCell reuseIdentifier];
    v11 = [v9 dequeueReusableCellWithIdentifier:v32];

    v33 = [(RAPLookAroundQuestion *)self->_question thumbnailImage];
    [v11 setThumbnailImage:v33];

    v13 = [(RAPReport *)self->_report _context];
    v22 = [v13 reportedLookAroundContext];
    v29 = [v22 reportedMuninViewState];
    [v11 setViewState:v29];
LABEL_15:

    goto LABEL_16;
  }

  v10 = +[MacRAPLookAroundImageCell reuseIdentifier];
  v11 = [v9 dequeueReusableCellWithIdentifier:v10];

  v12 = [(RAPLookAroundQuestion *)self->_question thumbnailImage];
  [v11 setLookAroundImage:v12];

  v13 = +[UIColor systemBackgroundColor];
  [v11 setBackgroundColor:v13];
LABEL_17:

LABEL_18:
  v34 = [(RAPLookAroundInitialCategoriesViewController *)self traitCollection];
  v35 = [v34 userInterfaceIdiom];

  if (v35 == 5)
  {
    v36 = +[UIColor systemBackgroundColor];
    [v11 setBackgroundColor:v36];
  }

  return v11;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    v10 = [(RAPLookAroundQuestion *)self->_question privacyItems];
LABEL_9:
    v12 = v10;
    v11 = [v10 count];

    goto LABEL_10;
  }

  if (a4 == 1)
  {
    v7 = [(RAPLookAroundInitialCategoriesViewController *)self traitCollection];
    v8 = [v7 userInterfaceIdiom];

    question = self->_question;
    if (v8 == 5)
    {
      [(RAPLookAroundQuestion *)question initialItemsMinusPrivacy];
    }

    else
    {
      [(RAPLookAroundQuestion *)question initialItems];
    }
    v10 = ;
    goto LABEL_9;
  }

  v11 = 1;
LABEL_10:

  return v11;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(RAPLookAroundInitialCategoriesViewController *)self traitCollection];
  if ([v3 userInterfaceIdiom] == 5)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)_setupTableView
{
  v3 = [(RAPLookAroundInitialCategoriesViewController *)self tableView];
  [v3 setDataSource:self];

  v4 = [(RAPLookAroundInitialCategoriesViewController *)self tableView];
  v5 = objc_opt_class();
  v6 = +[RAPLookAroundThumbnailTableViewCell reuseIdentifier];
  [v4 registerClass:v5 forCellReuseIdentifier:v6];

  v7 = [(RAPLookAroundInitialCategoriesViewController *)self tableView];
  v8 = objc_opt_class();
  v9 = +[MacRAPLookAroundImageCell reuseIdentifier];
  [v7 registerClass:v8 forCellReuseIdentifier:v9];

  v10 = [(RAPLookAroundInitialCategoriesViewController *)self tableView];
  v11 = objc_opt_class();
  v12 = +[RAPSingleLineTableViewCell reuseIdentifier];
  [v10 registerClass:v11 forCellReuseIdentifier:v12];

  v13 = [(RAPLookAroundInitialCategoriesViewController *)self tableView];
  v14 = objc_opt_class();
  v15 = +[MacRapImageSingleLineCell reuseIdentifier];
  [v13 registerClass:v14 forCellReuseIdentifier:v15];

  v16 = [(RAPLookAroundInitialCategoriesViewController *)self tableView];
  [v16 _maps_initializeRAPAppearance];

  v18 = +[UIColor systemBackgroundColor];
  v17 = [(RAPLookAroundInitialCategoriesViewController *)self tableView];
  [v17 setBackgroundColor:v18];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = RAPLookAroundInitialCategoriesViewController;
  [(RAPLookAroundInitialCategoriesViewController *)&v5 viewDidLoad];
  [(RAPLookAroundInitialCategoriesViewController *)self _setupTableView];
  v3 = [(RAPLookAroundQuestion *)self->_question localizedTitle];
  v4 = [(RAPLookAroundInitialCategoriesViewController *)self navigationItem];
  [v4 setTitle:v3];

  [(RAPLookAroundInitialCategoriesViewController *)self setAccessibilityIdentifier:@"LookAroundRAPView"];
}

- (RAPLookAroundInitialCategoriesViewController)initWithReport:(id)a3 question:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = RAPLookAroundInitialCategoriesViewController;
  v12 = [(RAPLookAroundInitialCategoriesViewController *)&v17 initWithStyle:2];
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

@end