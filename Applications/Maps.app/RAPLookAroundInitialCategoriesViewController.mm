@interface RAPLookAroundInitialCategoriesViewController
- (RAPLookAroundInitialCategoriesViewController)initWithReport:(id)report question:(id)question completion:(id)completion;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_captureUserAction:(int)action;
- (void)_setupTableView;
- (void)didSelectCategoryOfType:(unint64_t)type;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation RAPLookAroundInitialCategoriesViewController

- (void)_captureUserAction:(int)action
{
  v3 = *&action;
  analyticTarget = [(RAPLookAroundInitialCategoriesViewController *)self analyticTarget];

  [GEOAPPortal captureUserAction:v3 target:analyticTarget value:0];
}

- (void)didSelectCategoryOfType:(unint64_t)type
{
  [(RAPLookAroundQuestion *)self->_question setSelectedQuestionType:type];
  selectedQuestionType = [(RAPLookAroundQuestion *)self->_question selectedQuestionType];
  v5 = off_1015F6530;
  if (selectedQuestionType != 3)
  {
    v5 = off_1015F6528;
  }

  v7 = [objc_alloc(*v5) initWithReport:self->_report question:self->_question completion:self->_completion];
  navigationController = [(RAPLookAroundInitialCategoriesViewController *)self navigationController];
  [navigationController pushViewController:v7 animated:1];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section > 2)
  {
    v8 = &stru_1016631F0;
  }

  else
  {
    v6 = off_1016328C0[section];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:v6 value:@"localized string not found" table:0];
  }

  v9 = [viewCopy _maps_groupedHeaderViewWithTitle:v8];

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  section = [pathCopy section];
  if (section == 2)
  {
    privacyItems = [(RAPLookAroundQuestion *)self->_question privacyItems];
    v11 = [privacyItems objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    -[RAPLookAroundQuestion setSelectedQuestionType:](self->_question, "setSelectedQuestionType:", [v11 type]);
    -[RAPLookAroundInitialCategoriesViewController _captureUserAction:](self, "_captureUserAction:", [v11 analyticAction]);
    v12 = [[RAPLookAroundDetailsEditorViewController alloc] initWithReport:self->_report question:self->_question completion:self->_completion];
    navigationController = [(RAPLookAroundInitialCategoriesViewController *)self navigationController];
    [navigationController pushViewController:v12 animated:1];
  }

  else
  {
    if (section != 1)
    {
      goto LABEL_9;
    }

    traitCollection = [(RAPLookAroundInitialCategoriesViewController *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];
    question = self->_question;
    if (userInterfaceIdiom == 5)
    {
      [(RAPLookAroundQuestion *)question initialItemsMinusPrivacy];
    }

    else
    {
      [(RAPLookAroundQuestion *)question initialItems];
    }
    v11 = ;

    v12 = [v11 objectAtIndex:{objc_msgSend(pathCopy, "row")}];
    [(RAPLookAroundInitialCategoriesViewController *)self _captureUserAction:[(RAPLookAroundDetailsEditorViewController *)v12 analyticAction]];
    [(RAPLookAroundInitialCategoriesViewController *)self didSelectCategoryOfType:[(RAPLookAroundDetailsEditorViewController *)v12 type]];
  }

LABEL_9:
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section == 2)
  {
    privacyItems = [(RAPLookAroundQuestion *)self->_question privacyItems];
    _context = [privacyItems objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    tableView = [(RAPLookAroundInitialCategoriesViewController *)self tableView];
    v19 = +[MacRapImageSingleLineCell reuseIdentifier];
    v11 = [tableView dequeueReusableCellWithIdentifier:v19];

    localizedName = [_context localizedName];
    textLabel = [v11 textLabel];
    [textLabel setText:localizedName];

    reportedLookAroundContext = [UIImage systemImageNamed:@"arrow.forward"];
    [v11 setImage:reportedLookAroundContext];
LABEL_16:

    goto LABEL_17;
  }

  if (section == 1)
  {
    traitCollection = [(RAPLookAroundInitialCategoriesViewController *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];
    question = self->_question;
    if (userInterfaceIdiom == 5)
    {
      [(RAPLookAroundQuestion *)question initialItemsMinusPrivacy];
    }

    else
    {
      [(RAPLookAroundQuestion *)question initialItems];
    }
    _context = ;

    reportedLookAroundContext = [_context objectAtIndex:{objc_msgSend(pathCopy, "row")}];
    traitCollection2 = [(RAPLookAroundInitialCategoriesViewController *)self traitCollection];
    userInterfaceIdiom2 = [traitCollection2 userInterfaceIdiom];

    tableView2 = [(RAPLookAroundInitialCategoriesViewController *)self tableView];
    if (userInterfaceIdiom2 == 5)
    {
      v26 = +[MacRapImageSingleLineCell reuseIdentifier];
      v11 = [tableView2 dequeueReusableCellWithIdentifier:v26];

      localizedName2 = [reportedLookAroundContext localizedName];
      textLabel2 = [v11 textLabel];
      [textLabel2 setText:localizedName2];

      localizedName3 = [UIImage systemImageNamed:@"arrow.forward"];
      [v11 setImage:localizedName3];
    }

    else
    {
      v30 = +[RAPSingleLineTableViewCell reuseIdentifier];
      v11 = [tableView2 dequeueReusableCellWithIdentifier:v30];

      [v11 setAccessoryType:1];
      localizedName3 = [reportedLookAroundContext localizedName];
      textLabel3 = [v11 textLabel];
      [textLabel3 setText:localizedName3];
    }

    goto LABEL_15;
  }

  if (section)
  {
    v11 = 0;
    goto LABEL_18;
  }

  traitCollection3 = [(RAPLookAroundInitialCategoriesViewController *)self traitCollection];
  userInterfaceIdiom3 = [traitCollection3 userInterfaceIdiom];

  tableView3 = [(RAPLookAroundInitialCategoriesViewController *)self tableView];
  if (userInterfaceIdiom3 != 5)
  {
    v32 = +[RAPLookAroundThumbnailTableViewCell reuseIdentifier];
    v11 = [tableView3 dequeueReusableCellWithIdentifier:v32];

    thumbnailImage = [(RAPLookAroundQuestion *)self->_question thumbnailImage];
    [v11 setThumbnailImage:thumbnailImage];

    _context = [(RAPReport *)self->_report _context];
    reportedLookAroundContext = [_context reportedLookAroundContext];
    localizedName3 = [reportedLookAroundContext reportedMuninViewState];
    [v11 setViewState:localizedName3];
LABEL_15:

    goto LABEL_16;
  }

  v10 = +[MacRAPLookAroundImageCell reuseIdentifier];
  v11 = [tableView3 dequeueReusableCellWithIdentifier:v10];

  thumbnailImage2 = [(RAPLookAroundQuestion *)self->_question thumbnailImage];
  [v11 setLookAroundImage:thumbnailImage2];

  _context = +[UIColor systemBackgroundColor];
  [v11 setBackgroundColor:_context];
LABEL_17:

LABEL_18:
  traitCollection4 = [(RAPLookAroundInitialCategoriesViewController *)self traitCollection];
  userInterfaceIdiom4 = [traitCollection4 userInterfaceIdiom];

  if (userInterfaceIdiom4 == 5)
  {
    v36 = +[UIColor systemBackgroundColor];
    [v11 setBackgroundColor:v36];
  }

  return v11;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 2)
  {
    privacyItems = [(RAPLookAroundQuestion *)self->_question privacyItems];
LABEL_9:
    v12 = privacyItems;
    v11 = [privacyItems count];

    goto LABEL_10;
  }

  if (section == 1)
  {
    traitCollection = [(RAPLookAroundInitialCategoriesViewController *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    question = self->_question;
    if (userInterfaceIdiom == 5)
    {
      [(RAPLookAroundQuestion *)question initialItemsMinusPrivacy];
    }

    else
    {
      [(RAPLookAroundQuestion *)question initialItems];
    }
    privacyItems = ;
    goto LABEL_9;
  }

  v11 = 1;
LABEL_10:

  return v11;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  traitCollection = [(RAPLookAroundInitialCategoriesViewController *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 5)
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
  tableView = [(RAPLookAroundInitialCategoriesViewController *)self tableView];
  [tableView setDataSource:self];

  tableView2 = [(RAPLookAroundInitialCategoriesViewController *)self tableView];
  v5 = objc_opt_class();
  v6 = +[RAPLookAroundThumbnailTableViewCell reuseIdentifier];
  [tableView2 registerClass:v5 forCellReuseIdentifier:v6];

  tableView3 = [(RAPLookAroundInitialCategoriesViewController *)self tableView];
  v8 = objc_opt_class();
  v9 = +[MacRAPLookAroundImageCell reuseIdentifier];
  [tableView3 registerClass:v8 forCellReuseIdentifier:v9];

  tableView4 = [(RAPLookAroundInitialCategoriesViewController *)self tableView];
  v11 = objc_opt_class();
  v12 = +[RAPSingleLineTableViewCell reuseIdentifier];
  [tableView4 registerClass:v11 forCellReuseIdentifier:v12];

  tableView5 = [(RAPLookAroundInitialCategoriesViewController *)self tableView];
  v14 = objc_opt_class();
  v15 = +[MacRapImageSingleLineCell reuseIdentifier];
  [tableView5 registerClass:v14 forCellReuseIdentifier:v15];

  tableView6 = [(RAPLookAroundInitialCategoriesViewController *)self tableView];
  [tableView6 _maps_initializeRAPAppearance];

  v18 = +[UIColor systemBackgroundColor];
  tableView7 = [(RAPLookAroundInitialCategoriesViewController *)self tableView];
  [tableView7 setBackgroundColor:v18];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = RAPLookAroundInitialCategoriesViewController;
  [(RAPLookAroundInitialCategoriesViewController *)&v5 viewDidLoad];
  [(RAPLookAroundInitialCategoriesViewController *)self _setupTableView];
  localizedTitle = [(RAPLookAroundQuestion *)self->_question localizedTitle];
  navigationItem = [(RAPLookAroundInitialCategoriesViewController *)self navigationItem];
  [navigationItem setTitle:localizedTitle];

  [(RAPLookAroundInitialCategoriesViewController *)self setAccessibilityIdentifier:@"LookAroundRAPView"];
}

- (RAPLookAroundInitialCategoriesViewController)initWithReport:(id)report question:(id)question completion:(id)completion
{
  reportCopy = report;
  questionCopy = question;
  completionCopy = completion;
  v17.receiver = self;
  v17.super_class = RAPLookAroundInitialCategoriesViewController;
  v12 = [(RAPLookAroundInitialCategoriesViewController *)&v17 initWithStyle:2];
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

@end