@interface OfflineMapsManagementViewController
- (OfflineMapsManagementActionCoordination)delegate;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)dataSource:(id)a3 itemTapped:(id)a4;
- (void)dataSourceUpdated:(id)a3;
- (void)didDismissByGesture;
- (void)didSelectDownloadNewMap;
- (void)didSelectExpiredMaps;
- (void)didSelectRenameSubscriptionInfo:(id)a3 completionHandler:(id)a4;
- (void)didSelectResumeSubscriptionInfo:(id)a3;
- (void)didSelectSuggestion:(id)a3;
- (void)didSelectUpdateAll;
- (void)didSetAutomaticUpdatesEnabled:(BOOL)a3 completionHandler:(id)a4;
- (void)didSetSyncToWatch:(BOOL)a3 completionHandler:(id)a4;
- (void)handleDismissAction:(id)a3;
- (void)showPairedDeviceDiskSpaceDialogWithRequiredDiskSpace:(int64_t)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation OfflineMapsManagementViewController

- (OfflineMapsManagementActionCoordination)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didSetAutomaticUpdatesEnabled:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(OfflineMapsManagementViewController *)self delegate];
  [v7 setAutomaticUpdatesEnabled:v4 completionHandler:v6];
}

- (void)showPairedDeviceDiskSpaceDialogWithRequiredDiskSpace:(int64_t)a3
{
  v4 = [(OfflineMapsManagementViewController *)self delegate];
  [v4 showPairedDeviceDiskSpaceDialogWithRequiredDiskSpace:a3];
}

- (void)didSetSyncToWatch:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(OfflineMapsManagementViewController *)self delegate];
  [v7 setSyncToWatch:v4 completionHandler:v6];
}

- (void)didSelectExpiredMaps
{
  v2 = [(OfflineMapsManagementViewController *)self delegate];
  [v2 presentExpiredMapsManagement];
}

- (void)didSelectUpdateAll
{
  v2 = [(OfflineMapsManagementViewController *)self delegate];
  [v2 startUpdatingOfflineSubscriptions];
}

- (void)didSelectResumeSubscriptionInfo:(id)a3
{
  v4 = a3;
  v5 = [(OfflineMapsManagementViewController *)self delegate];
  [v5 resumeDownloadingForSubscriptionInfo:v4];
}

- (void)didSelectRenameSubscriptionInfo:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(OfflineMapsManagementViewController *)self delegate];
  [v8 presentRenameOfflineMapForSubscriptionInfo:v7 completionHandler:v6];
}

- (void)didSelectSuggestion:(id)a3
{
  v4 = a3;
  v7 = [(OfflineMapsManagementViewController *)self delegate];
  v5 = [v4 mapRegion];
  v6 = [v4 regionName];

  [v7 presentOfflineMapRegionSelectorForRegion:v5 name:v6];
}

- (void)didSelectDownloadNewMap
{
  [GEOAPPortal captureUserAction:381 target:86 value:0];
  v3 = [(OfflineMapsManagementViewController *)self delegate];
  [v3 presentAddNewMapSearchAutocomplete];
}

- (void)dataSource:(id)a3 itemTapped:(id)a4
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(OfflineMapsManagementViewController *)self delegate];
    [v7 presentOfflineMapDetailsForSubscriptionInfo:v6];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v5;
    v9 = [v8 tableRow];
    v10 = [v9 selectionAction];

    if (v10)
    {
      v11 = [v8 tableRow];
      v12 = [v11 selectionAction];
      v12[2]();
    }
  }

  if (MapsFeature_IsEnabled_OfflineMapsUIEnhancementsEnabled())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v5;
      v14 = [(OfflineMapsManagementViewController *)self delegate];
      v19 = v13;
      v15 = [NSArray arrayWithObjects:&v19 count:1];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100ECD59C;
      v17[3] = &unk_101661738;
      v18 = v13;
      v16 = v13;
      [v14 restoreExpiredSubscriptions:v15 completionHandler:v17];
    }
  }
}

- (void)dataSourceUpdated:(id)a3
{
  v4 = [(OfflineMapsManagementViewController *)self collectionView];
  if ([v4 numberOfSections] == 1)
  {
    v5 = [(OfflineMapsManagementViewController *)self offlineMapsDataSource];
    v6 = [v5 sectionForSectionIndex:0];
    v7 = [v6 sectionType];

    if (!v7)
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
  v9 = [(OfflineMapsManagementViewController *)self collectionView];
  [v9 setContentInsetAdjustmentBehavior:v8];
}

- (void)didDismissByGesture
{
  v3 = [(OfflineMapsManagementViewController *)self delegate];
  [v3 closeOfflineMapsManagement];

  v4.receiver = self;
  v4.super_class = OfflineMapsManagementViewController;
  [(ContaineeViewController *)&v4 didDismissByGesture];
}

- (void)handleDismissAction:(id)a3
{
  v3 = [(OfflineMapsManagementViewController *)self delegate];
  [v3 closeOfflineMapsManagement];
}

- (void)_setupConstraints
{
  v43 = [(OfflineMapsManagementViewController *)self titleHeaderView];
  v41 = [v43 topAnchor];
  v42 = [(ContaineeViewController *)self headerView];
  v40 = [v42 topAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v44[0] = v39;
  v38 = [(OfflineMapsManagementViewController *)self titleHeaderView];
  v36 = [v38 leadingAnchor];
  v37 = [(ContaineeViewController *)self headerView];
  v35 = [v37 leadingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v44[1] = v34;
  v33 = [(OfflineMapsManagementViewController *)self titleHeaderView];
  v31 = [v33 trailingAnchor];
  v32 = [(ContaineeViewController *)self headerView];
  v30 = [v32 trailingAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v44[2] = v29;
  v28 = [(OfflineMapsManagementViewController *)self titleHeaderView];
  v26 = [v28 bottomAnchor];
  v27 = [(ContaineeViewController *)self headerView];
  v25 = [v27 bottomAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v44[3] = v24;
  v23 = [(OfflineMapsManagementViewController *)self collectionView];
  v21 = [v23 topAnchor];
  v22 = [(ContaineeViewController *)self contentView];
  v20 = [v22 topAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v44[4] = v19;
  v18 = [(OfflineMapsManagementViewController *)self collectionView];
  v16 = [v18 leadingAnchor];
  v17 = [(ContaineeViewController *)self contentView];
  v15 = [v17 leadingAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v44[5] = v14;
  v13 = [(OfflineMapsManagementViewController *)self collectionView];
  v3 = [v13 trailingAnchor];
  v4 = [(ContaineeViewController *)self contentView];
  v5 = [v4 trailingAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v44[6] = v6;
  v7 = [(OfflineMapsManagementViewController *)self collectionView];
  v8 = [v7 bottomAnchor];
  v9 = [(ContaineeViewController *)self contentView];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v44[7] = v11;
  v12 = [NSArray arrayWithObjects:v44 count:8];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_setupViews
{
  v3 = [(ContaineeViewController *)self cardPresentationController];
  [v3 setPresentedModally:1];

  v4 = [(ContaineeViewController *)self cardPresentationController];
  [v4 setTakesAvailableHeight:1];

  v5 = [(ContaineeViewController *)self cardPresentationController];
  [v5 setAllowsSwipeToDismiss:1];

  v6 = +[UIColor clearColor];
  v7 = [(OfflineMapsManagementViewController *)self view];
  [v7 setBackgroundColor:v6];

  v8 = [(OfflineMapsManagementViewController *)self view];
  [v8 setAccessibilityIdentifier:@"OfflineMapsView"];

  v9 = [ContainerHeaderView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v13 = [(ContainerHeaderView *)v9 initWithFrame:CGRectZero.origin.x, y, width, height];
  [(OfflineMapsManagementViewController *)self setTitleHeaderView:v13];

  v14 = [(OfflineMapsManagementViewController *)self titleHeaderView];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [(OfflineMapsManagementViewController *)self titleHeaderView];
  [v15 setDelegate:self];

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"Offline Maps" value:@"localized string not found" table:@"Offline"];
  v18 = [(OfflineMapsManagementViewController *)self titleHeaderView];
  [v18 setTitle:v17];

  v19 = [(ContaineeViewController *)self headerView];
  v20 = [(OfflineMapsManagementViewController *)self titleHeaderView];
  [v19 addSubview:v20];

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

  v25 = [(OfflineMapsManagementViewController *)self collectionView];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

  v26 = +[UIColor clearColor];
  v27 = [(OfflineMapsManagementViewController *)self collectionView];
  [v27 setBackgroundColor:v26];

  v28 = [(OfflineMapsManagementViewController *)self collectionView];
  [v28 setAccessibilityIdentifier:@"OfflineMapsCollectionView"];

  v29 = [(ContaineeViewController *)self contentView];
  v30 = [(OfflineMapsManagementViewController *)self collectionView];
  [v29 addSubview:v30];

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = OfflineMapsManagementViewController;
  [(ContaineeViewController *)&v5 viewWillDisappear:a3];
  v4 = [(OfflineMapsManagementViewController *)self offlineMapsDataSource];
  [v4 setActive:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = OfflineMapsManagementViewController;
  [(ContaineeViewController *)&v10 viewWillAppear:a3];
  v4 = [OfflineMapsManagementDataSource alloc];
  v5 = [(OfflineMapsManagementViewController *)self collectionView];
  v6 = [(OfflineMapsManagementDataSource *)v4 initWithCollectionView:v5 updateLocation:0];
  [(OfflineMapsManagementViewController *)self setOfflineMapsDataSource:v6];

  v7 = [(OfflineMapsManagementViewController *)self offlineMapsDataSource];
  [v7 setDelegate:self];

  v8 = [(OfflineMapsManagementViewController *)self offlineMapsDataSource];
  [v8 setOfflineDelegate:self];

  v9 = [(OfflineMapsManagementViewController *)self offlineMapsDataSource];
  [v9 setActive:1];
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