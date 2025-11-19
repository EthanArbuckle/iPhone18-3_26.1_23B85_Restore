@interface RAPNotificationDetailsViewController
- (RAPNotificationDetailsViewController)initWithViewModel:(id)a3 report:(id)a4 question:(id)a5;
- (RAPNotificationDetailsViewControllerDelegate)delegate;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_dismissAndOpenReportsHome;
- (void)_done:(id)a3;
- (void)_initPhotoPicker;
- (void)_performButtonAction:(int)a3;
- (void)_setupConstraints;
- (void)_setupHeaderButtons;
- (void)_setupViews;
- (void)_submitReport;
- (void)_updateDoneButton;
- (void)_updateSummarySection;
- (void)descriptionCellLinkButtonClick:(id)a3;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)photoCarouselController:(id)a3 requestsRemovingImageForIdentifier:(id)a4 completion:(id)a5;
- (void)photoCarouselControllerRequestsAddingNewPhoto:(id)a3;
- (void)textViewCellDidChangeWithTextViewCell:(id)a3 validatedText:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation RAPNotificationDetailsViewController

- (RAPNotificationDetailsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)descriptionCellLinkButtonClick:(id)a3
{
  v4 = [(RAPNotificationDetailsViewController *)self viewModel];
  v5 = [v4 linkButtonLink];
  v7 = [NSURL URLWithString:v5];

  v6 = [(RAPNotificationDetailsViewController *)self delegate];
  [v6 openURLWithDetailsViewController:self URL:v7];
}

- (void)textViewCellDidChangeWithTextViewCell:(id)a3 validatedText:(id)a4
{
  question = self->_question;
  v6 = a4;
  v7 = [(RAPUserResponseQuestion *)question commentQuestion];
  [v7 setComment:v6];

  [(RAPNotificationDetailsViewController *)self _updateDoneButton];
}

- (void)photoCarouselController:(id)a3 requestsRemovingImageForIdentifier:(id)a4 completion:(id)a5
{
  question = self->_question;
  v11 = a5;
  v8 = a4;
  v9 = [(RAPUserResponseQuestion *)question commentQuestion];
  v10 = [v9 removePhotoForIdentifier:v8];

  [(RAPNotificationDetailsViewController *)self _updateDoneButton];
  v11[2](v11, v10);
}

- (void)photoCarouselControllerRequestsAddingNewPhoto:(id)a3
{
  v4 = [a3 anchoringView];
  [(RAPPhotoPickerController *)self->_photoPicker setAnchoringView:v4];

  [(RAPPhotoPickerController *)self->_photoPicker setPresentingViewController:self];
  photoPicker = self->_photoPicker;

  [(RAPPhotoPickerController *)photoPicker startPicking];
}

- (void)keyboardWillHide:(id)a3
{
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v7 = [(RAPNotificationDetailsViewController *)self collectionView];
  [v7 setContentInset:{UIEdgeInsetsZero.top, left, bottom, right}];

  v8 = [(RAPNotificationDetailsViewController *)self collectionView];
  [v8 setScrollIndicatorInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
}

- (void)keyboardWillShow:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(RAPNotificationDetailsViewController *)self collectionView];
  v15 = +[UIScreen mainScreen];
  v16 = [v15 coordinateSpace];
  [v14 convertRect:v16 fromCoordinateSpace:{v7, v9, v11, v13}];
  v18 = v17;

  v19 = [(RAPNotificationDetailsViewController *)self collectionView];
  [v19 setContentInset:{0.0, 0.0, v18, 0.0}];

  v20 = [(RAPNotificationDetailsViewController *)self collectionView];
  [v20 frame];
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
      v34 = [(RAPNotificationDetailsViewController *)self collectionView];
      [(RAPTextViewCollectionViewCell *)self->_textViewCell frame];
      [v34 scrollRectToVisible:1 animated:?];
    }
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 == 2)
  {
    if (![v7 row])
    {
      v22 = +[_TtC4Maps34RAPPhotoCarouselCollectionViewCell reuseIdentifier];
      v12 = [v6 dequeueReusableCellWithReuseIdentifier:v22 forIndexPath:v7];

      [v12 setCarouselController:self->_photoCarouselController];
      goto LABEL_15;
    }

    if ([v7 row] == 1)
    {
      v21 = +[_TtC4Maps29RAPTextViewCollectionViewCell reuseIdentifier];
      v12 = [v6 dequeueReusableCellWithReuseIdentifier:v21 forIndexPath:v7];

      [v12 setDelegate:self];
      objc_storeStrong(&self->_textViewCell, v12);
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (v8 == 1)
  {
    v17 = +[RAPNotificationDescriptionCell identifier];
    v12 = [v6 dequeueReusableCellWithReuseIdentifier:v17 forIndexPath:v7];

    v18 = [RAPNotificationDescriptionViewModel alloc];
    v19 = [(RAPNotificationDetailsViewController *)self viewModel];
    v20 = [(RAPNotificationDescriptionViewModel *)v18 initWithRAPNotificationDetailsViewModel:v19];
    [v12 setViewModel:v20];

    [v12 setDelegate:self];
    goto LABEL_15;
  }

  if (v8)
  {
    goto LABEL_11;
  }

  v9 = -[NSArray objectAtIndexedSubscript:](self->_notificationSummaryItems, "objectAtIndexedSubscript:", [v7 row]);
  v10 = [v9 integerValue];

  if (v10 == 1)
  {
    v23 = +[RAPNotificationDetailsMapCell identifier];
    v12 = [v6 dequeueReusableCellWithReuseIdentifier:v23 forIndexPath:v7];

    v16 = [(RAPNotificationDetailsViewController *)self viewModel];
    [v12 setViewModel:v16];
    goto LABEL_14;
  }

  if (v10)
  {
LABEL_11:
    v12 = 0;
    goto LABEL_15;
  }

  v11 = +[(TwoLineCollectionViewListCell *)TwoLinesCollectionViewInsetGroupedListCell];
  v12 = [v6 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v7];

  v13 = [(RAPNotificationDetailsViewController *)self viewModel];
  v14 = [v13 rapRecord];
  v15 = [TwoLinesContentViewModelComposer cellModelForRAPReportsHistory:v14 allowDisclosureIndicator:0];
  [v12 setViewModel:v15];

  v16 = +[UIColor secondarySystemGroupedBackgroundColor];
  [v12 setBackgroundColor:v16];
LABEL_14:

LABEL_15:

  return v12;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    v7 = [(RAPNotificationDetailsViewController *)self viewModel];
    if ([v7 editMode])
    {
      if ([(RAPNotificationDetailsViewController *)self _supportEdit])
      {
        a4 = 2;
      }

      else
      {
        a4 = 0;
      }
    }

    else
    {
      a4 = 0;
    }
  }

  else if (a4 != 1)
  {
    if (a4)
    {
      a4 = 0;
    }

    else
    {
      a4 = [(NSArray *)self->_notificationSummaryItems count];
    }
  }

  return a4;
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
  v3 = [(RAPNotificationDetailsViewController *)self viewModel];
  v4 = [v3 rapRecord];

  if (v4)
  {
    [v11 addObject:&off_1016E65A8];
  }

  v5 = [(RAPNotificationDetailsViewController *)self viewModel];
  v6 = [v5 displayStyle];

  if (v6 != 6)
  {
    [v11 addObject:&off_1016E65C0];
  }

  v7 = [v11 copy];
  notificationSummaryItems = self->_notificationSummaryItems;
  self->_notificationSummaryItems = v7;

  v9 = [(RAPNotificationDetailsViewController *)self collectionView];
  v10 = [NSIndexSet indexSetWithIndex:0];
  [v9 reloadSections:v10];
}

- (void)_dismissAndOpenReportsHome
{
  if (sub_10000FA08(self) == 5)
  {
    v3 = [(RAPNotificationDetailsViewController *)self navigationController];
    v4 = &stru_1016246B0;
  }

  else
  {
    v3 = [(RAPNotificationDetailsViewController *)self presentingViewController];
    v4 = &stru_1016246D0;
  }

  v5 = v3;
  [v3 dismissViewControllerAnimated:1 completion:v4];
}

- (void)_performButtonAction:(int)a3
{
  if (a3 == 1)
  {
    [(RAPNotificationDetailsViewController *)self _dismissAndOpenReportsHome];
  }
}

- (void)_done:(id)a3
{
  v4 = [(RAPNotificationDetailsViewController *)self viewModel];
  v5 = [v4 editMode];

  if (v5)
  {
    [RAPAnalyticsManager captureRAPCancelActionFromReport:self->_report forMuid:0];
  }

  [(RAPNotificationDetailsViewController *)self _dismissAndOpenReportsHome];
}

- (void)_setupConstraints
{
  v48 = +[NSMutableArray array];
  v46 = [(RAPNotificationDetailsViewController *)self collectionView];
  v42 = [v46 topAnchor];
  v44 = [(RAPNotificationDetailsViewController *)self view];
  v40 = [v44 safeAreaLayoutGuide];
  v38 = [v40 topAnchor];
  v36 = [v42 constraintEqualToAnchor:v38];
  v50[0] = v36;
  v34 = [(RAPNotificationDetailsViewController *)self collectionView];
  v32 = [v34 leadingAnchor];
  v3 = [(RAPNotificationDetailsViewController *)self view];
  v4 = [v3 leadingAnchor];
  v5 = [v32 constraintEqualToAnchor:v4];
  v50[1] = v5;
  v6 = [(RAPNotificationDetailsViewController *)self collectionView];
  v7 = [v6 trailingAnchor];
  v8 = [(RAPNotificationDetailsViewController *)self view];
  v9 = [v8 trailingAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v50[2] = v10;
  v11 = [NSArray arrayWithObjects:v50 count:3];
  [v48 addObjectsFromArray:v11];

  v12 = [(RAPNotificationDetailsViewController *)self actionButton];

  if (v12)
  {
    v45 = [(RAPNotificationDetailsViewController *)self actionButton];
    v30 = [v45 topAnchor];
    v37 = [(RAPNotificationDetailsViewController *)self collectionView];
    v41 = [v37 bottomAnchor];
    v33 = [v30 constraintEqualToAnchor:v41 constant:16.0];
    v49[0] = v33;
    v47 = [(RAPNotificationDetailsViewController *)self actionButton];
    v39 = [v47 leadingAnchor];
    v43 = [(RAPNotificationDetailsViewController *)self view];
    v35 = [v43 leadingAnchor];
    v31 = [v39 constraintEqualToAnchor:v35 constant:16.0];
    v49[1] = v31;
    v29 = [(RAPNotificationDetailsViewController *)self actionButton];
    v28 = [v29 trailingAnchor];
    v13 = [(RAPNotificationDetailsViewController *)self view];
    v14 = [v13 trailingAnchor];
    v15 = [v28 constraintEqualToAnchor:v14 constant:-16.0];
    v49[2] = v15;
    v16 = [(RAPNotificationDetailsViewController *)self actionButton];
    v17 = [v16 bottomAnchor];
    v18 = [(RAPNotificationDetailsViewController *)self view];
    v19 = [v18 safeAreaLayoutGuide];
    v20 = [v19 bottomAnchor];
    v21 = [v17 constraintEqualToAnchor:v20];
    v49[3] = v21;
    v22 = [NSArray arrayWithObjects:v49 count:4];
    [v48 addObjectsFromArray:v22];

    v23 = v30;
    v24 = v45;

    v25 = v37;
    v26 = v33;

    v27 = v41;
  }

  else
  {
    v24 = [(RAPNotificationDetailsViewController *)self collectionView];
    v23 = [v24 bottomAnchor];
    v25 = [(RAPNotificationDetailsViewController *)self view];
    v27 = [v25 bottomAnchor];
    v26 = [v23 constraintEqualToAnchor:v27];
    [v48 addObject:v26];
  }

  [NSLayoutConstraint activateConstraints:v48];
}

- (void)_setupViews
{
  v3 = [[UICollectionViewCompositionalLayout alloc] initWithSectionProvider:&stru_101624650];
  v4 = [[UICollectionView alloc] initWithFrame:v3 collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(RAPNotificationDetailsViewController *)self setCollectionView:v4];

  v5 = [(RAPNotificationDetailsViewController *)self collectionView];
  [v5 setDataSource:self];

  v6 = [(RAPNotificationDetailsViewController *)self collectionView];
  [v6 setDelegate:self];

  v7 = [(RAPNotificationDetailsViewController *)self collectionView];
  v8 = objc_opt_class();
  v9 = +[(TwoLineCollectionViewListCell *)TwoLinesCollectionViewInsetGroupedListCell];
  [v7 registerClass:v8 forCellWithReuseIdentifier:v9];

  v10 = [(RAPNotificationDetailsViewController *)self collectionView];
  v11 = objc_opt_class();
  v12 = +[RAPNotificationDetailsMapCell identifier];
  [v10 registerClass:v11 forCellWithReuseIdentifier:v12];

  v13 = [(RAPNotificationDetailsViewController *)self collectionView];
  v14 = objc_opt_class();
  v15 = +[RAPNotificationDescriptionCell identifier];
  [v13 registerClass:v14 forCellWithReuseIdentifier:v15];

  v16 = [(RAPNotificationDetailsViewController *)self collectionView];
  v17 = objc_opt_class();
  v18 = +[_TtC4Maps34RAPPhotoCarouselCollectionViewCell reuseIdentifier];
  [v16 registerClass:v17 forCellWithReuseIdentifier:v18];

  v19 = [(RAPNotificationDetailsViewController *)self collectionView];
  v20 = objc_opt_class();
  v21 = +[_TtC4Maps29RAPTextViewCollectionViewCell reuseIdentifier];
  [v19 registerClass:v20 forCellWithReuseIdentifier:v21];

  v22 = [(RAPNotificationDetailsViewController *)self collectionView];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = [(RAPNotificationDetailsViewController *)self collectionView];
  [v26 setContentInset:{UIEdgeInsetsZero.top, left, bottom, right}];

  v27 = [(RAPNotificationDetailsViewController *)self view];
  v28 = [(RAPNotificationDetailsViewController *)self collectionView];
  [v27 addSubview:v28];

  v29 = [(RAPNotificationDetailsViewController *)self viewModel];
  if (([v29 hasButton] & 1) == 0)
  {
    goto LABEL_4;
  }

  v30 = [(RAPNotificationDetailsViewController *)self viewModel];
  v31 = [v30 button];
  v32 = [v31 buttonAction];

  if (v32)
  {
    v29 = +[UIButtonConfiguration grayButtonConfiguration];
    [v29 setButtonSize:3];
    objc_initWeak(&location, self);
    v42 = _NSConcreteStackBlock;
    v43 = 3221225472;
    v44 = sub_100637D70;
    v45 = &unk_101661900;
    objc_copyWeak(&v46, &location);
    v33 = [UIAction actionWithHandler:&v42];
    v34 = [UIButton buttonWithConfiguration:v29 primaryAction:v33, v42, v43, v44, v45];
    [(RAPNotificationDetailsViewController *)self setActionButton:v34];

    v35 = [(RAPNotificationDetailsViewController *)self actionButton];
    [v35 setTranslatesAutoresizingMaskIntoConstraints:0];

    v36 = [(RAPNotificationDetailsViewController *)self actionButton];
    v37 = [(RAPNotificationDetailsViewController *)self viewModel];
    v38 = [v37 button];
    v39 = [v38 localizedText];
    [v36 setTitle:v39 forState:0];

    v40 = [(RAPNotificationDetailsViewController *)self view];
    v41 = [(RAPNotificationDetailsViewController *)self actionButton];
    [v40 addSubview:v41];

    objc_destroyWeak(&v46);
    objc_destroyWeak(&location);
LABEL_4:
  }
}

- (void)_updateDoneButton
{
  v3 = [(RAPNotificationDetailsViewController *)self viewModel];
  v4 = [v3 editMode];

  if ((v4 & 1) == 0)
  {
    goto LABEL_5;
  }

  v5 = [(RAPUserResponseQuestion *)self->_question commentQuestion];
  v6 = [v5 comment];
  if ([v6 length])
  {

LABEL_5:
    v10 = [(RAPNotificationDetailsViewController *)self navigationItem];
    v11 = 1;
    goto LABEL_6;
  }

  v7 = [(RAPUserResponseQuestion *)self->_question commentQuestion];
  v8 = [v7 photos];
  v9 = [v8 count];

  if (v9)
  {
    goto LABEL_5;
  }

  v10 = [(RAPNotificationDetailsViewController *)self navigationItem];
  v11 = 0;
LABEL_6:
  v13 = v10;
  v12 = [v10 rightBarButtonItem];
  [v12 setEnabled:v11];
}

- (void)_setupHeaderButtons
{
  v3 = [(RAPNotificationDetailsViewController *)self viewModel];
  v4 = [v3 editMode];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Reviewed Reports [RAP]" value:@"localized string not found" table:0];
  [(RAPNotificationDetailsViewController *)self setTitle:v6];

  v7 = [UIBarButtonItem alloc];
  v8 = v7;
  if (v4)
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Not Now [RAP]" value:@"localized string not found" table:0];
    v11 = [v8 initWithTitle:v10 style:0 target:self action:"_done:"];
    v12 = [(RAPNotificationDetailsViewController *)self navigationItem];
    [v12 setLeftBarButtonItem:v11];

    v13 = [UIBarButtonItem alloc];
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"Send [RAP]" value:@"localized string not found" table:0];
    v16 = [v13 initWithTitle:v15 style:0 target:self action:"_send:"];
    v17 = [(RAPNotificationDetailsViewController *)self navigationItem];
    [v17 setRightBarButtonItem:v16];
  }

  else
  {
    v14 = [v7 initWithBarButtonSystemItem:0 target:self action:"_done:"];
    v15 = [(RAPNotificationDetailsViewController *)self navigationItem];
    [v15 setRightBarButtonItem:v14];
  }

  [(RAPNotificationDetailsViewController *)self _updateDoneButton];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = RAPNotificationDetailsViewController;
  [(RAPNotificationDetailsViewController *)&v6 viewWillDisappear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UIKeyboardWillShowNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:UIKeyboardWillHideNotification object:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = RAPNotificationDetailsViewController;
  [(RAPNotificationDetailsViewController *)&v6 viewWillAppear:a3];
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
  v3 = [(RAPNotificationDetailsViewController *)self viewModel];
  v4 = [v3 rapRecord];

  if (v4)
  {
    [(RAPNotificationDetailsViewController *)self _updateSummarySection];
  }

  else
  {
    objc_initWeak(&location, self);
    v5 = [(RAPNotificationDetailsViewController *)self viewModel];
    v6 = [v5 reportId];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10063852C;
    v7[3] = &unk_101654BC0;
    objc_copyWeak(&v8, &location);
    [RAPRecordManager fetchRAPRecordsMatchingProblemId:v6 completion:v7];

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
  v6 = [(RAPUserResponseQuestion *)self->_question commentQuestion];
  objc_initWeak(&location, self);
  v7 = self->_photoPicker;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100638714;
  v10[3] = &unk_101624610;
  objc_copyWeak(&v13, &location);
  v8 = v6;
  v11 = v8;
  v9 = v5;
  v12 = v9;
  [(RAPPhotoPickerController *)v7 addObserver:self changeHandler:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (RAPNotificationDetailsViewController)initWithViewModel:(id)a3 report:(id)a4 question:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = RAPNotificationDetailsViewController;
  v12 = [(RAPNotificationDetailsViewController *)&v19 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_viewModel, a3);
    objc_storeStrong(&v13->_report, a4);
    objc_storeStrong(&v13->_question, a5);
    v14 = [UGCPhotoCarouselController alloc];
    v15 = [(RAPUserResponseQuestion *)v13->_question commentQuestion];
    v16 = -[UGCPhotoCarouselController initWithDelegate:maximumNumberOfPhotos:](v14, "initWithDelegate:maximumNumberOfPhotos:", v13, [v15 maximumNumberOfPhotos]);
    photoCarouselController = v13->_photoCarouselController;
    v13->_photoCarouselController = v16;

    [(RAPNotificationDetailsViewController *)v13 _initPhotoPicker];
  }

  return v13;
}

@end