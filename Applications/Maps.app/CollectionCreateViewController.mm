@interface CollectionCreateViewController
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (CollectionCreateViewController)initWithEditSession:(id)session;
- (id)keyCommands;
- (id)preferredFocusEnvironments;
- (void)collectionHandlerInfoUpdated:(id)updated;
- (void)createAction:(id)action;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CollectionCreateViewController

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = CollectionCreateViewController;
  [(ContaineeViewController *)&v4 viewDidLayoutSubviews];
  headerView = [(ContaineeViewController *)self headerView];
  [headerView bounds];
  [(NSLayoutConstraint *)self->_collectionViewToTopConstraint setConstant:CGRectGetHeight(v5)];
}

- (void)collectionHandlerInfoUpdated:(id)updated
{
  title = [updated title];
  v4 = [title length] != 0;
  trailingButton = [(ModalCardHeaderView *)self->_modalHeaderView trailingButton];
  [trailingButton setEnabled:v4];
}

- (void)createAction:(id)action
{
  actionCopy = action;
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
    v14 = actionCopy;
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
    v11 = actionCopy;
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

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CollectionCreateViewController;
  [(CollectionCreateViewController *)&v4 viewDidAppear:appear];
  [(CollectionView *)self->_collectionView becomeFirstResponder];
}

- (void)viewDidLoad
{
  v73.receiver = self;
  v73.super_class = CollectionCreateViewController;
  [(ContaineeViewController *)&v73 viewDidLoad];
  headerView = [(ContaineeViewController *)self headerView];
  contentView = [(ContaineeViewController *)self contentView];
  view = [(CollectionCreateViewController *)self view];
  [view setAccessibilityIdentifier:@"CollectionCreateView"];

  [contentView setAccessibilityIdentifier:@"CollectionCreateContent"];
  v6 = [_TtC4Maps19ModalCardHeaderView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(ModalCardHeaderView *)v6 initWithFrame:CGRectZero.origin.x, y, width, height];
  [(ModalCardHeaderView *)height setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"[Guide] New guide" value:@"localized string not found" table:0];
  [(ModalCardHeaderView *)height setTitle:v12];

  v13 = [MapsThemeButton buttonWithType:1];
  [v13 addTarget:self action:"cancelAction:" forControlEvents:64];
  v68 = v13;
  [(ModalCardHeaderView *)height setLeadingButton:v13];
  v14 = [MapsThemeButton buttonWithType:1];
  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"[Collection] Create" value:@"localized string not found" table:0];
  [v14 setTitle:v16 forState:0];

  [v14 addTarget:self action:"createAction:" forControlEvents:64];
  [v14 setEnabled:0];
  v67 = v14;
  [(ModalCardHeaderView *)height setTrailingButton:v14];
  [headerView addSubview:height];
  objc_storeStrong(&self->_modalHeaderView, height);
  v17 = [[CollectionView alloc] initWithCollectionViewSize:1];
  [(CollectionView *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CollectionView *)v17 setEditSession:self->_editSession];
  [(CollectionView *)v17 setMaxContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [(CollectionView *)v17 setAllowAccessibilityTextWrapping:0];
  [(CollectionView *)v17 setCollectionInfo:self->_collection];
  [(CollectionView *)v17 setEditing:1];
  [contentView addSubview:v17];
  objc_storeStrong(&self->_collectionView, v17);
  topAnchor = [(CollectionView *)v17 topAnchor];
  topAnchor2 = [contentView topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
  collectionViewToTopConstraint = self->_collectionViewToTopConstraint;
  self->_collectionViewToTopConstraint = v20;

  leadingAnchor = [(ModalCardHeaderView *)height leadingAnchor];
  leadingAnchor2 = [headerView leadingAnchor];
  v61 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v75[0] = v61;
  topAnchor3 = [(ModalCardHeaderView *)height topAnchor];
  topAnchor4 = [headerView topAnchor];
  v55 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v75[1] = v55;
  trailingAnchor = [(ModalCardHeaderView *)height trailingAnchor];
  trailingAnchor2 = [headerView trailingAnchor];
  v52 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v75[2] = v52;
  v69 = height;
  bottomAnchor = [(ModalCardHeaderView *)height bottomAnchor];
  v70 = headerView;
  bottomAnchor2 = [headerView bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v24 = self->_collectionViewToTopConstraint;
  v75[3] = v23;
  v75[4] = v24;
  leadingAnchor3 = [(CollectionView *)v17 leadingAnchor];
  leadingAnchor4 = [contentView leadingAnchor];
  v27 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v75[5] = v27;
  v71 = v17;
  trailingAnchor3 = [(CollectionView *)v17 trailingAnchor];
  v72 = contentView;
  trailingAnchor4 = [contentView trailingAnchor];
  v30 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
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
    height2 = [[MapsThemeTableView alloc] initWithFrame:0 style:CGRectZero.origin.x, y, width, height];
    [(MapsThemeTableView *)height2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v36 = +[UIColor clearColor];
    [(MapsThemeTableView *)height2 setBackgroundColor:v36];

    [(MapsThemeTableView *)height2 setScrollEnabled:0];
    [(MapsThemeTableView *)height2 setAccessibilityIdentifier:@"CollectionCreateTable"];
    [v72 addSubview:height2];
    tableView = self->_tableView;
    self->_tableView = height2;
    v38 = height2;

    v39 = 0.0;
    v40 = [(CollectionView *)v71 _maps_addHairlineAtTopWithMargin:0.0];
    if (sub_10000FA08(self) == 5)
    {
      v39 = 16.0;
    }

    leadingAnchor5 = [(MapsThemeTableView *)v38 leadingAnchor];
    leadingAnchor6 = [v72 leadingAnchor];
    v60 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:v39];
    v74[0] = v60;
    topAnchor5 = [(MapsThemeTableView *)v38 topAnchor];
    bottomAnchor3 = [(CollectionView *)v71 bottomAnchor];
    [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:10.0];
    v41 = v66 = v34;
    v74[1] = v41;
    trailingAnchor5 = [(MapsThemeTableView *)v38 trailingAnchor];
    trailingAnchor6 = [v72 trailingAnchor];
    v44 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-v39];
    v74[2] = v44;
    bottomAnchor4 = [(MapsThemeTableView *)v38 bottomAnchor];
    bottomAnchor5 = [v72 bottomAnchor];
    v47 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
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
  keyCommands = [(ContaineeViewController *)&v8 keyCommands];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[Guide] Create" value:@"localized string not found" table:0];
  v5 = [UIKeyCommand commandWithTitle:v4 image:0 action:"createAction:" input:@"\r" modifierFlags:0x100000 propertyList:0];
  v6 = [keyCommands arrayByAddingObject:v5];

  return v6;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if ("createAction:" == action)
  {
    stagedTitle = [(CollectionHandler *)self->_collection stagedTitle];
    v4 = [stagedTitle length] != 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CollectionCreateViewController;
    return [CollectionCreateViewController canPerformAction:"canPerformAction:withSender:" withSender:?];
  }

  return v4;
}

- (CollectionCreateViewController)initWithEditSession:(id)session
{
  sessionCopy = session;
  v14.receiver = self;
  v14.super_class = CollectionCreateViewController;
  v6 = [(CollectionCreateViewController *)&v14 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_editSession, session);
    cardPresentationController = [(ContaineeViewController *)v7 cardPresentationController];
    [cardPresentationController setPresentedModally:1];

    cardPresentationController2 = [(ContaineeViewController *)v7 cardPresentationController];
    [cardPresentationController2 setTakesAvailableHeight:1];

    cardPresentationController3 = [(ContaineeViewController *)v7 cardPresentationController];
    [cardPresentationController3 setAllowsSwipeToDismiss:0];

    [(ContaineeViewController *)v7 setPreferredPresentationStyle:5];
    v11 = +[CollectionHandler collection];
    collection = v7->_collection;
    v7->_collection = v11;

    [(CollectionHandler *)v7->_collection addObserver:v7];
  }

  return v7;
}

@end