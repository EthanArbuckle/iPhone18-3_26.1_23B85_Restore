@interface RAPNotificationDetailsViewController
- (RAPNotificationDetailsViewController)initWithViewModel:(id)model report:(id)report question:(id)question;
- (RAPNotificationDetailsViewControllerDelegate)delegate;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_dismissAndOpenReportsHome;
- (void)_done:(id)_done;
- (void)_initPhotoPicker;
- (void)_performButtonAction:(int)action;
- (void)_setupConstraints;
- (void)_setupHeaderButtons;
- (void)_setupViews;
- (void)_submitReport;
- (void)_updateDoneButton;
- (void)_updateSummarySection;
- (void)descriptionCellLinkButtonClick:(id)click;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)photoCarouselController:(id)controller requestsRemovingImageForIdentifier:(id)identifier completion:(id)completion;
- (void)photoCarouselControllerRequestsAddingNewPhoto:(id)photo;
- (void)textViewCellDidChangeWithTextViewCell:(id)cell validatedText:(id)text;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation RAPNotificationDetailsViewController

- (RAPNotificationDetailsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)descriptionCellLinkButtonClick:(id)click
{
  viewModel = [(RAPNotificationDetailsViewController *)self viewModel];
  linkButtonLink = [viewModel linkButtonLink];
  v7 = [NSURL URLWithString:linkButtonLink];

  delegate = [(RAPNotificationDetailsViewController *)self delegate];
  [delegate openURLWithDetailsViewController:self URL:v7];
}

- (void)textViewCellDidChangeWithTextViewCell:(id)cell validatedText:(id)text
{
  question = self->_question;
  textCopy = text;
  commentQuestion = [(RAPUserResponseQuestion *)question commentQuestion];
  [commentQuestion setComment:textCopy];

  [(RAPNotificationDetailsViewController *)self _updateDoneButton];
}

- (void)photoCarouselController:(id)controller requestsRemovingImageForIdentifier:(id)identifier completion:(id)completion
{
  question = self->_question;
  completionCopy = completion;
  identifierCopy = identifier;
  commentQuestion = [(RAPUserResponseQuestion *)question commentQuestion];
  v10 = [commentQuestion removePhotoForIdentifier:identifierCopy];

  [(RAPNotificationDetailsViewController *)self _updateDoneButton];
  completionCopy[2](completionCopy, v10);
}

- (void)photoCarouselControllerRequestsAddingNewPhoto:(id)photo
{
  anchoringView = [photo anchoringView];
  [(RAPPhotoPickerController *)self->_photoPicker setAnchoringView:anchoringView];

  [(RAPPhotoPickerController *)self->_photoPicker setPresentingViewController:self];
  photoPicker = self->_photoPicker;

  [(RAPPhotoPickerController *)photoPicker startPicking];
}

- (void)keyboardWillHide:(id)hide
{
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  collectionView = [(RAPNotificationDetailsViewController *)self collectionView];
  [collectionView setContentInset:{UIEdgeInsetsZero.top, left, bottom, right}];

  collectionView2 = [(RAPNotificationDetailsViewController *)self collectionView];
  [collectionView2 setScrollIndicatorInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
}

- (void)keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v5 = [userInfo objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  collectionView = [(RAPNotificationDetailsViewController *)self collectionView];
  v15 = +[UIScreen mainScreen];
  coordinateSpace = [v15 coordinateSpace];
  [collectionView convertRect:coordinateSpace fromCoordinateSpace:{v7, v9, v11, v13}];
  v18 = v17;

  collectionView2 = [(RAPNotificationDetailsViewController *)self collectionView];
  [collectionView2 setContentInset:{0.0, 0.0, v18, 0.0}];

  collectionView3 = [(RAPNotificationDetailsViewController *)self collectionView];
  [collectionView3 frame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  textViewCell = self->_textViewCell;
  if (textViewCell)
  {
    [(RAPTextViewCollectionViewCell *)textViewCell frame];
    v37.origin.x = v30;
    v37.origin.y = v31;
    v37.size.width = v32;
    v37.size.height = v33;
    v36.origin.x = v22;
    v36.origin.y = v24;
    v36.size.width = v26;
    v36.size.height = v28 - v18;
    if (!CGRectContainsRect(v36, v37))
    {
      collectionView4 = [(RAPNotificationDetailsViewController *)self collectionView];
      [(RAPTextViewCollectionViewCell *)self->_textViewCell frame];
      [collectionView4 scrollRectToVisible:1 animated:?];
    }
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section == 2)
  {
    if (![pathCopy row])
    {
      v22 = +[_TtC4Maps34RAPPhotoCarouselCollectionViewCell reuseIdentifier];
      v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v22 forIndexPath:pathCopy];

      [v12 setCarouselController:self->_photoCarouselController];
      goto LABEL_15;
    }

    if ([pathCopy row] == 1)
    {
      v21 = +[_TtC4Maps29RAPTextViewCollectionViewCell reuseIdentifier];
      v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v21 forIndexPath:pathCopy];

      [v12 setDelegate:self];
      objc_storeStrong(&self->_textViewCell, v12);
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (section == 1)
  {
    v17 = +[RAPNotificationDescriptionCell identifier];
    v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v17 forIndexPath:pathCopy];

    v18 = [RAPNotificationDescriptionViewModel alloc];
    viewModel = [(RAPNotificationDetailsViewController *)self viewModel];
    v20 = [(RAPNotificationDescriptionViewModel *)v18 initWithRAPNotificationDetailsViewModel:viewModel];
    [v12 setViewModel:v20];

    [v12 setDelegate:self];
    goto LABEL_15;
  }

  if (section)
  {
    goto LABEL_11;
  }

  v9 = -[NSArray objectAtIndexedSubscript:](self->_notificationSummaryItems, "objectAtIndexedSubscript:", [pathCopy row]);
  integerValue = [v9 integerValue];

  if (integerValue == 1)
  {
    v23 = +[RAPNotificationDetailsMapCell identifier];
    v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v23 forIndexPath:pathCopy];

    viewModel2 = [(RAPNotificationDetailsViewController *)self viewModel];
    [v12 setViewModel:viewModel2];
    goto LABEL_14;
  }

  if (integerValue)
  {
LABEL_11:
    v12 = 0;
    goto LABEL_15;
  }

  v11 = +[(TwoLineCollectionViewListCell *)TwoLinesCollectionViewInsetGroupedListCell];
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:pathCopy];

  viewModel3 = [(RAPNotificationDetailsViewController *)self viewModel];
  rapRecord = [viewModel3 rapRecord];
  v15 = [TwoLinesContentViewModelComposer cellModelForRAPReportsHistory:rapRecord allowDisclosureIndicator:0];
  [v12 setViewModel:v15];

  viewModel2 = +[UIColor secondarySystemGroupedBackgroundColor];
  [v12 setBackgroundColor:viewModel2];
LABEL_14:

LABEL_15:

  return v12;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 2)
  {
    viewModel = [(RAPNotificationDetailsViewController *)self viewModel];
    if ([viewModel editMode])
    {
      if ([(RAPNotificationDetailsViewController *)self _supportEdit])
      {
        section = 2;
      }

      else
      {
        section = 0;
      }
    }

    else
    {
      section = 0;
    }
  }

  else if (section != 1)
  {
    if (section)
    {
      section = 0;
    }

    else
    {
      section = [(NSArray *)self->_notificationSummaryItems count];
    }
  }

  return section;
}

- (void)_submitReport
{
  if ([(RAPNotificationDetailsViewController *)self _supportEdit])
  {
    v3 = sub_100BD9980();
    objc_initWeak(&location, self);
    report = self->_report;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100636ED4;
    v10[3] = &unk_10162B7F0;
    v5 = v3;
    v11 = v5;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100636EDC;
    v7[3] = &unk_101657410;
    objc_copyWeak(&v9, &location);
    v6 = v5;
    v8 = v6;
    [(RAPReport *)report submitWithPrivacyRequestHandler:&stru_1016246F0 willStartSubmitting:v10 didFinishSubmitting:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_updateSummarySection
{
  v11 = +[NSMutableArray array];
  viewModel = [(RAPNotificationDetailsViewController *)self viewModel];
  rapRecord = [viewModel rapRecord];

  if (rapRecord)
  {
    [v11 addObject:&off_1016E65A8];
  }

  viewModel2 = [(RAPNotificationDetailsViewController *)self viewModel];
  displayStyle = [viewModel2 displayStyle];

  if (displayStyle != 6)
  {
    [v11 addObject:&off_1016E65C0];
  }

  v7 = [v11 copy];
  notificationSummaryItems = self->_notificationSummaryItems;
  self->_notificationSummaryItems = v7;

  collectionView = [(RAPNotificationDetailsViewController *)self collectionView];
  v10 = [NSIndexSet indexSetWithIndex:0];
  [collectionView reloadSections:v10];
}

- (void)_dismissAndOpenReportsHome
{
  if (sub_10000FA08(self) == 5)
  {
    navigationController = [(RAPNotificationDetailsViewController *)self navigationController];
    v4 = &stru_1016246B0;
  }

  else
  {
    navigationController = [(RAPNotificationDetailsViewController *)self presentingViewController];
    v4 = &stru_1016246D0;
  }

  v5 = navigationController;
  [navigationController dismissViewControllerAnimated:1 completion:v4];
}

- (void)_performButtonAction:(int)action
{
  if (action == 1)
  {
    [(RAPNotificationDetailsViewController *)self _dismissAndOpenReportsHome];
  }
}

- (void)_done:(id)_done
{
  viewModel = [(RAPNotificationDetailsViewController *)self viewModel];
  editMode = [viewModel editMode];

  if (editMode)
  {
    [RAPAnalyticsManager captureRAPCancelActionFromReport:self->_report forMuid:0];
  }

  [(RAPNotificationDetailsViewController *)self _dismissAndOpenReportsHome];
}

- (void)_setupConstraints
{
  v48 = +[NSMutableArray array];
  collectionView = [(RAPNotificationDetailsViewController *)self collectionView];
  topAnchor = [collectionView topAnchor];
  view = [(RAPNotificationDetailsViewController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v36 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v50[0] = v36;
  collectionView2 = [(RAPNotificationDetailsViewController *)self collectionView];
  leadingAnchor = [collectionView2 leadingAnchor];
  view2 = [(RAPNotificationDetailsViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v5 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v50[1] = v5;
  collectionView3 = [(RAPNotificationDetailsViewController *)self collectionView];
  trailingAnchor = [collectionView3 trailingAnchor];
  view3 = [(RAPNotificationDetailsViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v50[2] = v10;
  v11 = [NSArray arrayWithObjects:v50 count:3];
  [v48 addObjectsFromArray:v11];

  actionButton = [(RAPNotificationDetailsViewController *)self actionButton];

  if (actionButton)
  {
    actionButton2 = [(RAPNotificationDetailsViewController *)self actionButton];
    topAnchor3 = [actionButton2 topAnchor];
    collectionView4 = [(RAPNotificationDetailsViewController *)self collectionView];
    bottomAnchor = [collectionView4 bottomAnchor];
    v33 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:16.0];
    v49[0] = v33;
    actionButton3 = [(RAPNotificationDetailsViewController *)self actionButton];
    leadingAnchor3 = [actionButton3 leadingAnchor];
    view4 = [(RAPNotificationDetailsViewController *)self view];
    leadingAnchor4 = [view4 leadingAnchor];
    v31 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
    v49[1] = v31;
    actionButton4 = [(RAPNotificationDetailsViewController *)self actionButton];
    trailingAnchor3 = [actionButton4 trailingAnchor];
    view5 = [(RAPNotificationDetailsViewController *)self view];
    trailingAnchor4 = [view5 trailingAnchor];
    v15 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
    v49[2] = v15;
    actionButton5 = [(RAPNotificationDetailsViewController *)self actionButton];
    bottomAnchor2 = [actionButton5 bottomAnchor];
    view6 = [(RAPNotificationDetailsViewController *)self view];
    safeAreaLayoutGuide2 = [view6 safeAreaLayoutGuide];
    bottomAnchor3 = [safeAreaLayoutGuide2 bottomAnchor];
    v21 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v49[3] = v21;
    v22 = [NSArray arrayWithObjects:v49 count:4];
    [v48 addObjectsFromArray:v22];

    bottomAnchor4 = topAnchor3;
    collectionView5 = actionButton2;

    view7 = collectionView4;
    v26 = v33;

    bottomAnchor5 = bottomAnchor;
  }

  else
  {
    collectionView5 = [(RAPNotificationDetailsViewController *)self collectionView];
    bottomAnchor4 = [collectionView5 bottomAnchor];
    view7 = [(RAPNotificationDetailsViewController *)self view];
    bottomAnchor5 = [view7 bottomAnchor];
    v26 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    [v48 addObject:v26];
  }

  [NSLayoutConstraint activateConstraints:v48];
}

- (void)_setupViews
{
  v3 = [[UICollectionViewCompositionalLayout alloc] initWithSectionProvider:&stru_101624650];
  v4 = [[UICollectionView alloc] initWithFrame:v3 collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(RAPNotificationDetailsViewController *)self setCollectionView:v4];

  collectionView = [(RAPNotificationDetailsViewController *)self collectionView];
  [collectionView setDataSource:self];

  collectionView2 = [(RAPNotificationDetailsViewController *)self collectionView];
  [collectionView2 setDelegate:self];

  collectionView3 = [(RAPNotificationDetailsViewController *)self collectionView];
  v8 = objc_opt_class();
  v9 = +[(TwoLineCollectionViewListCell *)TwoLinesCollectionViewInsetGroupedListCell];
  [collectionView3 registerClass:v8 forCellWithReuseIdentifier:v9];

  collectionView4 = [(RAPNotificationDetailsViewController *)self collectionView];
  v11 = objc_opt_class();
  v12 = +[RAPNotificationDetailsMapCell identifier];
  [collectionView4 registerClass:v11 forCellWithReuseIdentifier:v12];

  collectionView5 = [(RAPNotificationDetailsViewController *)self collectionView];
  v14 = objc_opt_class();
  v15 = +[RAPNotificationDescriptionCell identifier];
  [collectionView5 registerClass:v14 forCellWithReuseIdentifier:v15];

  collectionView6 = [(RAPNotificationDetailsViewController *)self collectionView];
  v17 = objc_opt_class();
  v18 = +[_TtC4Maps34RAPPhotoCarouselCollectionViewCell reuseIdentifier];
  [collectionView6 registerClass:v17 forCellWithReuseIdentifier:v18];

  collectionView7 = [(RAPNotificationDetailsViewController *)self collectionView];
  v20 = objc_opt_class();
  v21 = +[_TtC4Maps29RAPTextViewCollectionViewCell reuseIdentifier];
  [collectionView7 registerClass:v20 forCellWithReuseIdentifier:v21];

  collectionView8 = [(RAPNotificationDetailsViewController *)self collectionView];
  [collectionView8 setTranslatesAutoresizingMaskIntoConstraints:0];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  collectionView9 = [(RAPNotificationDetailsViewController *)self collectionView];
  [collectionView9 setContentInset:{UIEdgeInsetsZero.top, left, bottom, right}];

  view = [(RAPNotificationDetailsViewController *)self view];
  collectionView10 = [(RAPNotificationDetailsViewController *)self collectionView];
  [view addSubview:collectionView10];

  viewModel = [(RAPNotificationDetailsViewController *)self viewModel];
  if (([viewModel hasButton] & 1) == 0)
  {
    goto LABEL_4;
  }

  viewModel2 = [(RAPNotificationDetailsViewController *)self viewModel];
  button = [viewModel2 button];
  buttonAction = [button buttonAction];

  if (buttonAction)
  {
    viewModel = +[UIButtonConfiguration grayButtonConfiguration];
    [viewModel setButtonSize:3];
    objc_initWeak(&location, self);
    v42 = _NSConcreteStackBlock;
    v43 = 3221225472;
    v44 = sub_100637D70;
    v45 = &unk_101661900;
    objc_copyWeak(&v46, &location);
    v33 = [UIAction actionWithHandler:&v42];
    v34 = [UIButton buttonWithConfiguration:viewModel primaryAction:v33, v42, v43, v44, v45];
    [(RAPNotificationDetailsViewController *)self setActionButton:v34];

    actionButton = [(RAPNotificationDetailsViewController *)self actionButton];
    [actionButton setTranslatesAutoresizingMaskIntoConstraints:0];

    actionButton2 = [(RAPNotificationDetailsViewController *)self actionButton];
    viewModel3 = [(RAPNotificationDetailsViewController *)self viewModel];
    button2 = [viewModel3 button];
    localizedText = [button2 localizedText];
    [actionButton2 setTitle:localizedText forState:0];

    view2 = [(RAPNotificationDetailsViewController *)self view];
    actionButton3 = [(RAPNotificationDetailsViewController *)self actionButton];
    [view2 addSubview:actionButton3];

    objc_destroyWeak(&v46);
    objc_destroyWeak(&location);
LABEL_4:
  }
}

- (void)_updateDoneButton
{
  viewModel = [(RAPNotificationDetailsViewController *)self viewModel];
  editMode = [viewModel editMode];

  if ((editMode & 1) == 0)
  {
    goto LABEL_5;
  }

  commentQuestion = [(RAPUserResponseQuestion *)self->_question commentQuestion];
  comment = [commentQuestion comment];
  if ([comment length])
  {

LABEL_5:
    navigationItem = [(RAPNotificationDetailsViewController *)self navigationItem];
    v11 = 1;
    goto LABEL_6;
  }

  commentQuestion2 = [(RAPUserResponseQuestion *)self->_question commentQuestion];
  photos = [commentQuestion2 photos];
  v9 = [photos count];

  if (v9)
  {
    goto LABEL_5;
  }

  navigationItem = [(RAPNotificationDetailsViewController *)self navigationItem];
  v11 = 0;
LABEL_6:
  v13 = navigationItem;
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v11];
}

- (void)_setupHeaderButtons
{
  viewModel = [(RAPNotificationDetailsViewController *)self viewModel];
  editMode = [viewModel editMode];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Reviewed Reports [RAP]" value:@"localized string not found" table:0];
  [(RAPNotificationDetailsViewController *)self setTitle:v6];

  v7 = [UIBarButtonItem alloc];
  v8 = v7;
  if (editMode)
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Not Now [RAP]" value:@"localized string not found" table:0];
    v11 = [v8 initWithTitle:v10 style:0 target:self action:"_done:"];
    navigationItem = [(RAPNotificationDetailsViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v11];

    v13 = [UIBarButtonItem alloc];
    v14 = +[NSBundle mainBundle];
    navigationItem3 = [v14 localizedStringForKey:@"Send [RAP]" value:@"localized string not found" table:0];
    v16 = [v13 initWithTitle:navigationItem3 style:0 target:self action:"_send:"];
    navigationItem2 = [(RAPNotificationDetailsViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:v16];
  }

  else
  {
    v14 = [v7 initWithBarButtonSystemItem:0 target:self action:"_done:"];
    navigationItem3 = [(RAPNotificationDetailsViewController *)self navigationItem];
    [navigationItem3 setRightBarButtonItem:v14];
  }

  [(RAPNotificationDetailsViewController *)self _updateDoneButton];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = RAPNotificationDetailsViewController;
  [(RAPNotificationDetailsViewController *)&v6 viewWillDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UIKeyboardWillShowNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:UIKeyboardWillHideNotification object:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = RAPNotificationDetailsViewController;
  [(RAPNotificationDetailsViewController *)&v6 viewWillAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"keyboardWillShow:" name:UIKeyboardWillShowNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"keyboardWillHide:" name:UIKeyboardWillHideNotification object:0];
}

- (void)viewDidLoad
{
  [(RAPNotificationDetailsViewController *)self _setupHeaderButtons];
  v10.receiver = self;
  v10.super_class = RAPNotificationDetailsViewController;
  [(RAPNotificationDetailsViewController *)&v10 viewDidLoad];
  if (sub_10000FA08(self) == 5)
  {
    [(RAPNotificationDetailsViewController *)self setPreferredContentSize:390.0, 520.0];
  }

  [(RAPNotificationDetailsViewController *)self _setupViews];
  [(RAPNotificationDetailsViewController *)self _setupConstraints];
  viewModel = [(RAPNotificationDetailsViewController *)self viewModel];
  rapRecord = [viewModel rapRecord];

  if (rapRecord)
  {
    [(RAPNotificationDetailsViewController *)self _updateSummarySection];
  }

  else
  {
    objc_initWeak(&location, self);
    viewModel2 = [(RAPNotificationDetailsViewController *)self viewModel];
    reportId = [viewModel2 reportId];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10063852C;
    v7[3] = &unk_101654BC0;
    objc_copyWeak(&v8, &location);
    [RAPRecordManager fetchRAPRecordsMatchingProblemId:reportId completion:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)_initPhotoPicker
{
  v3 = objc_alloc_init(RAPPhotoPickerController);
  photoPicker = self->_photoPicker;
  self->_photoPicker = v3;

  v5 = self->_photoCarouselController;
  commentQuestion = [(RAPUserResponseQuestion *)self->_question commentQuestion];
  objc_initWeak(&location, self);
  v7 = self->_photoPicker;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100638714;
  v10[3] = &unk_101624610;
  objc_copyWeak(&v13, &location);
  v8 = commentQuestion;
  v11 = v8;
  v9 = v5;
  v12 = v9;
  [(RAPPhotoPickerController *)v7 addObserver:self changeHandler:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (RAPNotificationDetailsViewController)initWithViewModel:(id)model report:(id)report question:(id)question
{
  modelCopy = model;
  reportCopy = report;
  questionCopy = question;
  v19.receiver = self;
  v19.super_class = RAPNotificationDetailsViewController;
  v12 = [(RAPNotificationDetailsViewController *)&v19 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_viewModel, model);
    objc_storeStrong(&v13->_report, report);
    objc_storeStrong(&v13->_question, question);
    v14 = [UGCPhotoCarouselController alloc];
    commentQuestion = [(RAPUserResponseQuestion *)v13->_question commentQuestion];
    v16 = -[UGCPhotoCarouselController initWithDelegate:maximumNumberOfPhotos:](v14, "initWithDelegate:maximumNumberOfPhotos:", v13, [commentQuestion maximumNumberOfPhotos]);
    photoCarouselController = v13->_photoCarouselController;
    v13->_photoCarouselController = v16;

    [(RAPNotificationDetailsViewController *)v13 _initPhotoPicker];
  }

  return v13;
}

@end