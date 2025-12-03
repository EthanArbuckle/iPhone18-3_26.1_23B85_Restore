@interface OfflineMapsManagementViewController
- (OfflineMapsManagementActionCoordination)delegate;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)dataSource:(id)source itemTapped:(id)tapped;
- (void)dataSourceUpdated:(id)updated;
- (void)didDismissByGesture;
- (void)didSelectDownloadNewMap;
- (void)didSelectExpiredMaps;
- (void)didSelectRenameSubscriptionInfo:(id)info completionHandler:(id)handler;
- (void)didSelectResumeSubscriptionInfo:(id)info;
- (void)didSelectSuggestion:(id)suggestion;
- (void)didSelectUpdateAll;
- (void)didSetAutomaticUpdatesEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)didSetSyncToWatch:(BOOL)watch completionHandler:(id)handler;
- (void)handleDismissAction:(id)action;
- (void)showPairedDeviceDiskSpaceDialogWithRequiredDiskSpace:(int64_t)space;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation OfflineMapsManagementViewController

- (OfflineMapsManagementActionCoordination)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didSetAutomaticUpdatesEnabled:(BOOL)enabled completionHandler:(id)handler
{
  enabledCopy = enabled;
  handlerCopy = handler;
  delegate = [(OfflineMapsManagementViewController *)self delegate];
  [delegate setAutomaticUpdatesEnabled:enabledCopy completionHandler:handlerCopy];
}

- (void)showPairedDeviceDiskSpaceDialogWithRequiredDiskSpace:(int64_t)space
{
  delegate = [(OfflineMapsManagementViewController *)self delegate];
  [delegate showPairedDeviceDiskSpaceDialogWithRequiredDiskSpace:space];
}

- (void)didSetSyncToWatch:(BOOL)watch completionHandler:(id)handler
{
  watchCopy = watch;
  handlerCopy = handler;
  delegate = [(OfflineMapsManagementViewController *)self delegate];
  [delegate setSyncToWatch:watchCopy completionHandler:handlerCopy];
}

- (void)didSelectExpiredMaps
{
  delegate = [(OfflineMapsManagementViewController *)self delegate];
  [delegate presentExpiredMapsManagement];
}

- (void)didSelectUpdateAll
{
  delegate = [(OfflineMapsManagementViewController *)self delegate];
  [delegate startUpdatingOfflineSubscriptions];
}

- (void)didSelectResumeSubscriptionInfo:(id)info
{
  infoCopy = info;
  delegate = [(OfflineMapsManagementViewController *)self delegate];
  [delegate resumeDownloadingForSubscriptionInfo:infoCopy];
}

- (void)didSelectRenameSubscriptionInfo:(id)info completionHandler:(id)handler
{
  handlerCopy = handler;
  infoCopy = info;
  delegate = [(OfflineMapsManagementViewController *)self delegate];
  [delegate presentRenameOfflineMapForSubscriptionInfo:infoCopy completionHandler:handlerCopy];
}

- (void)didSelectSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  delegate = [(OfflineMapsManagementViewController *)self delegate];
  mapRegion = [suggestionCopy mapRegion];
  regionName = [suggestionCopy regionName];

  [delegate presentOfflineMapRegionSelectorForRegion:mapRegion name:regionName];
}

- (void)didSelectDownloadNewMap
{
  [GEOAPPortal captureUserAction:381 target:86 value:0];
  delegate = [(OfflineMapsManagementViewController *)self delegate];
  [delegate presentAddNewMapSearchAutocomplete];
}

- (void)dataSource:(id)source itemTapped:(id)tapped
{
  tappedCopy = tapped;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = tappedCopy;
    delegate = [(OfflineMapsManagementViewController *)self delegate];
    [delegate presentOfflineMapDetailsForSubscriptionInfo:v6];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = tappedCopy;
    tableRow = [v8 tableRow];
    selectionAction = [tableRow selectionAction];

    if (selectionAction)
    {
      tableRow2 = [v8 tableRow];
      selectionAction2 = [tableRow2 selectionAction];
      selectionAction2[2]();
    }
  }

  if (MapsFeature_IsEnabled_OfflineMapsUIEnhancementsEnabled())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = tappedCopy;
      delegate2 = [(OfflineMapsManagementViewController *)self delegate];
      v19 = v13;
      v15 = [NSArray arrayWithObjects:&v19 count:1];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100ECD59C;
      v17[3] = &unk_101661738;
      v18 = v13;
      v16 = v13;
      [delegate2 restoreExpiredSubscriptions:v15 completionHandler:v17];
    }
  }
}

- (void)dataSourceUpdated:(id)updated
{
  collectionView = [(OfflineMapsManagementViewController *)self collectionView];
  if ([collectionView numberOfSections] == 1)
  {
    offlineMapsDataSource = [(OfflineMapsManagementViewController *)self offlineMapsDataSource];
    v6 = [offlineMapsDataSource sectionForSectionIndex:0];
    sectionType = [v6 sectionType];

    if (!sectionType)
    {
      v8 = 2;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v8 = 0;
LABEL_6:
  collectionView2 = [(OfflineMapsManagementViewController *)self collectionView];
  [collectionView2 setContentInsetAdjustmentBehavior:v8];
}

- (void)didDismissByGesture
{
  delegate = [(OfflineMapsManagementViewController *)self delegate];
  [delegate closeOfflineMapsManagement];

  v4.receiver = self;
  v4.super_class = OfflineMapsManagementViewController;
  [(ContaineeViewController *)&v4 didDismissByGesture];
}

- (void)handleDismissAction:(id)action
{
  delegate = [(OfflineMapsManagementViewController *)self delegate];
  [delegate closeOfflineMapsManagement];
}

- (void)_setupConstraints
{
  titleHeaderView = [(OfflineMapsManagementViewController *)self titleHeaderView];
  topAnchor = [titleHeaderView topAnchor];
  headerView = [(ContaineeViewController *)self headerView];
  topAnchor2 = [headerView topAnchor];
  v39 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v44[0] = v39;
  titleHeaderView2 = [(OfflineMapsManagementViewController *)self titleHeaderView];
  leadingAnchor = [titleHeaderView2 leadingAnchor];
  headerView2 = [(ContaineeViewController *)self headerView];
  leadingAnchor2 = [headerView2 leadingAnchor];
  v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v44[1] = v34;
  titleHeaderView3 = [(OfflineMapsManagementViewController *)self titleHeaderView];
  trailingAnchor = [titleHeaderView3 trailingAnchor];
  headerView3 = [(ContaineeViewController *)self headerView];
  trailingAnchor2 = [headerView3 trailingAnchor];
  v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v44[2] = v29;
  titleHeaderView4 = [(OfflineMapsManagementViewController *)self titleHeaderView];
  bottomAnchor = [titleHeaderView4 bottomAnchor];
  headerView4 = [(ContaineeViewController *)self headerView];
  bottomAnchor2 = [headerView4 bottomAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v44[3] = v24;
  collectionView = [(OfflineMapsManagementViewController *)self collectionView];
  topAnchor3 = [collectionView topAnchor];
  contentView = [(ContaineeViewController *)self contentView];
  topAnchor4 = [contentView topAnchor];
  v19 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v44[4] = v19;
  collectionView2 = [(OfflineMapsManagementViewController *)self collectionView];
  leadingAnchor3 = [collectionView2 leadingAnchor];
  contentView2 = [(ContaineeViewController *)self contentView];
  leadingAnchor4 = [contentView2 leadingAnchor];
  v14 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v44[5] = v14;
  collectionView3 = [(OfflineMapsManagementViewController *)self collectionView];
  trailingAnchor3 = [collectionView3 trailingAnchor];
  contentView3 = [(ContaineeViewController *)self contentView];
  trailingAnchor4 = [contentView3 trailingAnchor];
  v6 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v44[6] = v6;
  collectionView4 = [(OfflineMapsManagementViewController *)self collectionView];
  bottomAnchor3 = [collectionView4 bottomAnchor];
  contentView4 = [(ContaineeViewController *)self contentView];
  bottomAnchor4 = [contentView4 bottomAnchor];
  v11 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v44[7] = v11;
  v12 = [NSArray arrayWithObjects:v44 count:8];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_setupViews
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController setPresentedModally:1];

  cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController2 setTakesAvailableHeight:1];

  cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController3 setAllowsSwipeToDismiss:1];

  v6 = +[UIColor clearColor];
  view = [(OfflineMapsManagementViewController *)self view];
  [view setBackgroundColor:v6];

  view2 = [(OfflineMapsManagementViewController *)self view];
  [view2 setAccessibilityIdentifier:@"OfflineMapsView"];

  v9 = [ContainerHeaderView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(ContainerHeaderView *)v9 initWithFrame:CGRectZero.origin.x, y, width, height];
  [(OfflineMapsManagementViewController *)self setTitleHeaderView:height];

  titleHeaderView = [(OfflineMapsManagementViewController *)self titleHeaderView];
  [titleHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];

  titleHeaderView2 = [(OfflineMapsManagementViewController *)self titleHeaderView];
  [titleHeaderView2 setDelegate:self];

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"Offline Maps" value:@"localized string not found" table:@"Offline"];
  titleHeaderView3 = [(OfflineMapsManagementViewController *)self titleHeaderView];
  [titleHeaderView3 setTitle:v17];

  headerView = [(ContaineeViewController *)self headerView];
  titleHeaderView4 = [(OfflineMapsManagementViewController *)self titleHeaderView];
  [headerView addSubview:titleHeaderView4];

  objc_initWeak(&location, self);
  v21 = [UICollectionViewCompositionalLayout alloc];
  v31 = _NSConcreteStackBlock;
  v32 = 3221225472;
  v33 = sub_100ECDF90;
  v34 = &unk_10165E4F0;
  objc_copyWeak(&v35, &location);
  v22 = [v21 initWithSectionProvider:&v31];
  v23 = [UICollectionView alloc];
  v24 = [v23 initWithFrame:v22 collectionViewLayout:{CGRectZero.origin.x, y, width, height, v31, v32, v33, v34}];
  [(OfflineMapsManagementViewController *)self setCollectionView:v24];

  collectionView = [(OfflineMapsManagementViewController *)self collectionView];
  [collectionView setTranslatesAutoresizingMaskIntoConstraints:0];

  v26 = +[UIColor clearColor];
  collectionView2 = [(OfflineMapsManagementViewController *)self collectionView];
  [collectionView2 setBackgroundColor:v26];

  collectionView3 = [(OfflineMapsManagementViewController *)self collectionView];
  [collectionView3 setAccessibilityIdentifier:@"OfflineMapsCollectionView"];

  contentView = [(ContaineeViewController *)self contentView];
  collectionView4 = [(OfflineMapsManagementViewController *)self collectionView];
  [contentView addSubview:collectionView4];

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = OfflineMapsManagementViewController;
  [(ContaineeViewController *)&v5 viewWillDisappear:disappear];
  offlineMapsDataSource = [(OfflineMapsManagementViewController *)self offlineMapsDataSource];
  [offlineMapsDataSource setActive:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = OfflineMapsManagementViewController;
  [(ContaineeViewController *)&v10 viewWillAppear:appear];
  v4 = [OfflineMapsManagementDataSource alloc];
  collectionView = [(OfflineMapsManagementViewController *)self collectionView];
  v6 = [(OfflineMapsManagementDataSource *)v4 initWithCollectionView:collectionView updateLocation:0];
  [(OfflineMapsManagementViewController *)self setOfflineMapsDataSource:v6];

  offlineMapsDataSource = [(OfflineMapsManagementViewController *)self offlineMapsDataSource];
  [offlineMapsDataSource setDelegate:self];

  offlineMapsDataSource2 = [(OfflineMapsManagementViewController *)self offlineMapsDataSource];
  [offlineMapsDataSource2 setOfflineDelegate:self];

  offlineMapsDataSource3 = [(OfflineMapsManagementViewController *)self offlineMapsDataSource];
  [offlineMapsDataSource3 setActive:1];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = OfflineMapsManagementViewController;
  [(ContaineeViewController *)&v4 viewDidLoad];
  [(OfflineMapsManagementViewController *)self _setupViews];
  [(OfflineMapsManagementViewController *)self _setupConstraints];
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setBool:1 forKey:@"OfflineMapsUserHasOpenedOfflineManagementScreenKey"];
}

@end