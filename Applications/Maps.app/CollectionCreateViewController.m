@interface CollectionCreateViewController
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (CollectionCreateViewController)initWithEditSession:(id)a3;
- (id)keyCommands;
- (id)preferredFocusEnvironments;
- (void)collectionHandlerInfoUpdated:(id)a3;
- (void)createAction:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CollectionCreateViewController

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = CollectionCreateViewController;
  [(ContaineeViewController *)&v4 viewDidLayoutSubviews];
  v3 = [(ContaineeViewController *)self headerView];
  [v3 bounds];
  [(NSLayoutConstraint *)self->_collectionViewToTopConstraint setConstant:CGRectGetHeight(v5)];
}

- (void)collectionHandlerInfoUpdated:(id)a3
{
  v6 = [a3 title];
  v4 = [v6 length] != 0;
  v5 = [(ModalCardHeaderView *)self->_modalHeaderView trailingButton];
  [v5 setEnabled:v4];
}

- (void)createAction:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  editSession = self->_editSession;
  collection = self->_collection;
  if (editSession)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1006B2E40;
    v13[3] = &unk_10165D288;
    v7 = &v15;
    objc_copyWeak(&v15, &location);
    v14 = v4;
    [(CollectionEditSession *)editSession applyToCollection:collection completion:v13];
    v8 = &v14;
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1006B2E90;
    v10[3] = &unk_10165D288;
    v7 = &v12;
    objc_copyWeak(&v12, &location);
    v11 = v4;
    [(CollectionHandler *)collection createCollection:v10];
    v8 = &v11;
  }

  objc_destroyWeak(v7);
  target = self->_target;
  if (target)
  {
    [GEOAPPortal captureUserAction:2072 target:target value:0];
  }

  [GEOAPPortal captureUserAction:2072 target:0 value:0];
  objc_destroyWeak(&location);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CollectionCreateViewController;
  [(CollectionCreateViewController *)&v4 viewDidAppear:a3];
  [(CollectionView *)self->_collectionView becomeFirstResponder];
}

- (void)viewDidLoad
{
  v73.receiver = self;
  v73.super_class = CollectionCreateViewController;
  [(ContaineeViewController *)&v73 viewDidLoad];
  v3 = [(ContaineeViewController *)self headerView];
  v4 = [(ContaineeViewController *)self contentView];
  v5 = [(CollectionCreateViewController *)self view];
  [v5 setAccessibilityIdentifier:@"CollectionCreateView"];

  [v4 setAccessibilityIdentifier:@"CollectionCreateContent"];
  v6 = [_TtC4Maps19ModalCardHeaderView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v10 = [(ModalCardHeaderView *)v6 initWithFrame:CGRectZero.origin.x, y, width, height];
  [(ModalCardHeaderView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"[Guide] New guide" value:@"localized string not found" table:0];
  [(ModalCardHeaderView *)v10 setTitle:v12];

  v13 = [MapsThemeButton buttonWithType:1];
  [v13 addTarget:self action:"cancelAction:" forControlEvents:64];
  v68 = v13;
  [(ModalCardHeaderView *)v10 setLeadingButton:v13];
  v14 = [MapsThemeButton buttonWithType:1];
  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"[Collection] Create" value:@"localized string not found" table:0];
  [v14 setTitle:v16 forState:0];

  [v14 addTarget:self action:"createAction:" forControlEvents:64];
  [v14 setEnabled:0];
  v67 = v14;
  [(ModalCardHeaderView *)v10 setTrailingButton:v14];
  [v3 addSubview:v10];
  objc_storeStrong(&self->_modalHeaderView, v10);
  v17 = [[CollectionView alloc] initWithCollectionViewSize:1];
  [(CollectionView *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CollectionView *)v17 setEditSession:self->_editSession];
  [(CollectionView *)v17 setMaxContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [(CollectionView *)v17 setAllowAccessibilityTextWrapping:0];
  [(CollectionView *)v17 setCollectionInfo:self->_collection];
  [(CollectionView *)v17 setEditing:1];
  [v4 addSubview:v17];
  objc_storeStrong(&self->_collectionView, v17);
  v18 = [(CollectionView *)v17 topAnchor];
  v19 = [v4 topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  collectionViewToTopConstraint = self->_collectionViewToTopConstraint;
  self->_collectionViewToTopConstraint = v20;

  v65 = [(ModalCardHeaderView *)v10 leadingAnchor];
  v63 = [v3 leadingAnchor];
  v61 = [v65 constraintEqualToAnchor:v63];
  v75[0] = v61;
  v59 = [(ModalCardHeaderView *)v10 topAnchor];
  v57 = [v3 topAnchor];
  v55 = [v59 constraintEqualToAnchor:v57];
  v75[1] = v55;
  v54 = [(ModalCardHeaderView *)v10 trailingAnchor];
  v53 = [v3 trailingAnchor];
  v52 = [v54 constraintEqualToAnchor:v53];
  v75[2] = v52;
  v69 = v10;
  v51 = [(ModalCardHeaderView *)v10 bottomAnchor];
  v70 = v3;
  v22 = [v3 bottomAnchor];
  v23 = [v51 constraintEqualToAnchor:v22];
  v24 = self->_collectionViewToTopConstraint;
  v75[3] = v23;
  v75[4] = v24;
  v25 = [(CollectionView *)v17 leadingAnchor];
  v26 = [v4 leadingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  v75[5] = v27;
  v71 = v17;
  v28 = [(CollectionView *)v17 trailingAnchor];
  v72 = v4;
  v29 = [v4 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  v75[6] = v30;
  v31 = [NSArray arrayWithObjects:v75 count:7];
  [NSLayoutConstraint activateConstraints:v31];

  v32 = self->_editSession;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33;

  if (v34)
  {
    v35 = [[MapsThemeTableView alloc] initWithFrame:0 style:CGRectZero.origin.x, y, width, height];
    [(MapsThemeTableView *)v35 setTranslatesAutoresizingMaskIntoConstraints:0];
    v36 = +[UIColor clearColor];
    [(MapsThemeTableView *)v35 setBackgroundColor:v36];

    [(MapsThemeTableView *)v35 setScrollEnabled:0];
    [(MapsThemeTableView *)v35 setAccessibilityIdentifier:@"CollectionCreateTable"];
    [v72 addSubview:v35];
    tableView = self->_tableView;
    self->_tableView = v35;
    v38 = v35;

    v39 = 0.0;
    v40 = [(CollectionView *)v71 _maps_addHairlineAtTopWithMargin:0.0];
    if (sub_10000FA08(self) == 5)
    {
      v39 = 16.0;
    }

    v64 = [(MapsThemeTableView *)v38 leadingAnchor];
    v62 = [v72 leadingAnchor];
    v60 = [v64 constraintEqualToAnchor:v62 constant:v39];
    v74[0] = v60;
    v58 = [(MapsThemeTableView *)v38 topAnchor];
    v56 = [(CollectionView *)v71 bottomAnchor];
    [v58 constraintEqualToAnchor:v56 constant:10.0];
    v41 = v66 = v34;
    v74[1] = v41;
    v42 = [(MapsThemeTableView *)v38 trailingAnchor];
    v43 = [v72 trailingAnchor];
    v44 = [v42 constraintEqualToAnchor:v43 constant:-v39];
    v74[2] = v44;
    v45 = [(MapsThemeTableView *)v38 bottomAnchor];
    v46 = [v72 bottomAnchor];
    v47 = [v45 constraintEqualToAnchor:v46];
    v74[3] = v47;
    v48 = [NSArray arrayWithObjects:v74 count:4];
    [NSLayoutConstraint activateConstraints:v48];

    v34 = v66;
    v49 = [[CollectionDataSource alloc] initWithTableView:self->_tableView collectionEditSession:v66];
    dataSource = self->_dataSource;
    self->_dataSource = v49;

    [(CollectionDataSource *)self->_dataSource setShowsHeader:1];
    [(DataSource *)self->_dataSource setDelegate:self];
    [(MapsThemeTableView *)v38 setDelegate:self->_dataSource];
    [(MapsThemeTableView *)v38 setDataSource:self->_dataSource];
    [(CollectionDataSource *)self->_dataSource setActive:1];
  }
}

- (id)preferredFocusEnvironments
{
  collectionView = self->_collectionView;
  v2 = [NSArray arrayWithObjects:&collectionView count:1];

  return v2;
}

- (id)keyCommands
{
  v8.receiver = self;
  v8.super_class = CollectionCreateViewController;
  v2 = [(ContaineeViewController *)&v8 keyCommands];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[Guide] Create" value:@"localized string not found" table:0];
  v5 = [UIKeyCommand commandWithTitle:v4 image:0 action:"createAction:" input:@"\r" modifierFlags:0x100000 propertyList:0];
  v6 = [v2 arrayByAddingObject:v5];

  return v6;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if ("createAction:" == a3)
  {
    v5 = [(CollectionHandler *)self->_collection stagedTitle];
    v4 = [v5 length] != 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CollectionCreateViewController;
    return [CollectionCreateViewController canPerformAction:"canPerformAction:withSender:" withSender:?];
  }

  return v4;
}

- (CollectionCreateViewController)initWithEditSession:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = CollectionCreateViewController;
  v6 = [(CollectionCreateViewController *)&v14 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_editSession, a3);
    v8 = [(ContaineeViewController *)v7 cardPresentationController];
    [v8 setPresentedModally:1];

    v9 = [(ContaineeViewController *)v7 cardPresentationController];
    [v9 setTakesAvailableHeight:1];

    v10 = [(ContaineeViewController *)v7 cardPresentationController];
    [v10 setAllowsSwipeToDismiss:0];

    [(ContaineeViewController *)v7 setPreferredPresentationStyle:5];
    v11 = +[CollectionHandler collection];
    collection = v7->_collection;
    v7->_collection = v11;

    [(CollectionHandler *)v7->_collection addObserver:v7];
  }

  return v7;
}

@end