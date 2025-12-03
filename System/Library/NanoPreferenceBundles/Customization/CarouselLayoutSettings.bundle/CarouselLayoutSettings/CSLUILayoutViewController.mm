@interface CSLUILayoutViewController
- (CSLUILayoutViewController)initWithNibName:(id)name bundle:(id)bundle;
- (UILabel)nameLabel;
- (id)createIconViewWithBundleIdentifier:(id)identifier;
- (void)createFieldOfIconsView;
- (void)iconsEdited;
- (void)resetIconPositions;
- (void)showConfirmationAlert;
- (void)updatedIconGraph:(id)graph;
- (void)viewDidLoad;
@end

@implementation CSLUILayoutViewController

- (CSLUILayoutViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v17.receiver = self;
  v17.super_class = CSLUILayoutViewController;
  v8 = [(CSLUILayoutViewController *)&v17 initWithNibName:nameCopy bundle:bundleCopy];
  if (v8)
  {
    v9 = objc_alloc_init(CSLIconPositionsStore);
    iconPositionsStore = v8->_iconPositionsStore;
    v8->_iconPositionsStore = v9;

    loadPositions = [(CSLIconPositionsStore *)v8->_iconPositionsStore loadPositions];
    iconGraph = v8->_iconGraph;
    v8->_iconGraph = loadPositions;

    [(CSLIconPositionsStore *)v8->_iconPositionsStore setDelegate:v8];
    v13 = cslprf_icon_field_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      if (v8->_iconGraph)
      {
        v14 = "";
      }

      else
      {
        v14 = "not ";
      }

      *buf = 136446210;
      v19 = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "initial icon positions %{public}sloaded", buf, 0xCu);
    }

    v15 = sub_19C54(@"CSL_LAYOUT_NAV_TITLE");
    [(CSLUILayoutViewController *)v8 setTitle:v15];
  }

  return v8;
}

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = CSLUILayoutViewController;
  [(CSLUILayoutViewController *)&v30 viewDidLoad];
  if (MGGetBoolAnswer())
  {
    v3 = [UIBarButtonItem alloc];
    v4 = sub_19C54(@"CSL_LAYOUT_INTERNAL_RESET_BUTTON");
    v5 = [v3 initWithTitle:v4 style:0 target:self action:"showConfirmationAlert"];

    navigationItem = [(CSLUILayoutViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v5];
  }

  view = [(CSLUILayoutViewController *)self view];
  v8 = +[UIColor blackColor];
  [view setBackgroundColor:v8];

  [view setClipsToBounds:1];
  v9 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  [v9 setHidesWhenStopped:1];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:v9];
  objc_storeWeak(&self->_spinner, v9);
  v10 = [NSLayoutConstraint constraintWithItem:v9 attribute:9 relatedBy:0 toItem:view attribute:9 multiplier:1.0 constant:0.0];
  [view addConstraint:v10];

  v11 = [NSLayoutConstraint constraintWithItem:v9 attribute:10 relatedBy:0 toItem:view attribute:10 multiplier:1.0 constant:0.0];
  [view addConstraint:v11];

  [(CSLUILayoutViewController *)self updatedIconGraph:self->_iconGraph];
  navigationController = [(CSLUILayoutViewController *)self navigationController];
  LOBYTE(v11) = navigationController == 0;

  if (v11)
  {
    v17 = cslprf_icon_field_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%@ navigationController is nil, this is expected if the user deep links from search", buf, 0xCu);
    }
  }

  else
  {
    v13 = [UINavigationBarAppearance alloc];
    navigationController2 = [(CSLUILayoutViewController *)self navigationController];
    navigationBar = [navigationController2 navigationBar];
    standardAppearance = [navigationBar standardAppearance];
    v17 = [v13 initWithBarAppearance:standardAppearance];

    v18 = [UIBlurEffect effectWithStyle:18];
    [v17 setBackgroundEffect:v18];

    navigationItem2 = [(CSLUILayoutViewController *)self navigationItem];
    [navigationItem2 setScrollEdgeAppearance:v17];

    v20 = [UITabBarAppearance alloc];
    navigationController3 = [(CSLUILayoutViewController *)self navigationController];
    tabBarController = [navigationController3 tabBarController];
    tabBar = [tabBarController tabBar];
    standardAppearance2 = [tabBar standardAppearance];
    v25 = [v20 initWithBarAppearance:standardAppearance2];

    v26 = [UIBlurEffect effectWithStyle:18];
    [v25 setBackgroundEffect:v26];

    navigationController4 = [(CSLUILayoutViewController *)self navigationController];
    tabBarController2 = [navigationController4 tabBarController];
    tabBar2 = [tabBarController2 tabBar];
    [tabBar2 setScrollEdgeAppearance:v25];
  }
}

- (void)updatedIconGraph:(id)graph
{
  graphCopy = graph;
  if (graphCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_spinner);
    [WeakRetained stopAnimating];

    v7 = objc_loadWeakRetained(&self->_fieldOfIconsView);
    if (v7)
    {
      v8 = [(CSLHexAppGraph *)self->_iconGraph changeToMatch:graphCopy];
    }

    else
    {
      objc_storeStrong(&self->_iconGraph, graph);
      if ([(CSLUILayoutViewController *)self isViewLoaded])
      {
        [(CSLUILayoutViewController *)self createFieldOfIconsView];
      }
    }
  }

  else
  {
    v9 = cslprf_icon_field_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "spinner started", v12, 2u);
    }

    v10 = objc_loadWeakRetained(&self->_fieldOfIconsView);
    [v10 removeFromSuperview];

    objc_storeWeak(&self->_fieldOfIconsView, 0);
    v11 = objc_loadWeakRetained(&self->_spinner);
    [v11 startAnimating];
  }
}

- (void)createFieldOfIconsView
{
  view = [(CSLUILayoutViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [view safeAreaInsets];
  v14 = v9 - (v12 + v13);
  v17 = v11 - (v15 + v16);
  v18 = [[CSLUIFieldOfIconsView alloc] initWithFrame:self->_iconGraph iconGraph:self viewFactory:394 options:v5 + v12, v7 + v15, v14, v17];
  [(CSLUIFieldOfIconsView *)v18 setActionDelegate:self];
  [view addSubview:v18];
  objc_storeWeak(&self->_fieldOfIconsView, v18);
  v19 = [CSLScrollableUniformHexLayout alloc];
  v20 = round((v14 + -60.0) * 0.5) * 0.5;
  __asm { FMOV            V1.2S, #3.0 }

  v35[0] = vdup_n_s32(0x3EAAAAABu);
  v35[1] = _D1;
  __asm
  {
    FMOV            V10.2S, #0.25
    FMOV            V0.2S, #1.0
  }

  v35[2] = _D10;
  v35[3] = _D0;
  v36 = v20;
  v28 = +[UIScreen mainScreen];
  [v28 scale];
  *&v29 = v29;
  v37 = LODWORD(v29);
  *&v30 = v14;
  v31 = v17;
  *(&v30 + 1) = v31;
  v38 = v30;
  v32 = 1.0;
  if (v20 >= 35)
  {
    v32 = (v20 / 0x23u);
  }

  v39 = ((v20 * 0.5) + 2.5) + (v32 * 5.0);
  v33 = vdup_lane_s32(*&v29, 0);
  v40 = vdiv_f32(vrndm_f32(vmul_n_f32(vmul_n_f32(vdup_n_s32(0x3EAAAAABu), v39), *&v29)), v33);
  v41 = vdiv_f32(vrndm_f32(vmul_n_f32(vmul_n_f32(_D10, v39), *&v29)), v33);
  v34 = [(CSLUniformHexLayout *)v19 initWithConfiguration:v35];
  [(CSLUIFieldOfIconsView *)v18 setLayout:v34 percentComplete:0 animated:394 options:0.0];
}

- (void)resetIconPositions
{
  v3 = [(CSLIconPositionsStore *)self->_iconPositionsStore loadDefaultPositionsVerticalOnly:[(CSLHexAppGraph *)self->_iconGraph isVerticalOnly]];
  iconGraph = self->_iconGraph;
  v8 = v3;
  if (iconGraph)
  {
    [(CSLHexAppGraph *)iconGraph resetToDefaults:v3];
    WeakRetained = objc_loadWeakRetained(&self->_fieldOfIconsView);
    layout = [WeakRetained layout];
    [layout setContentOffset:{CGPointZero.x, CGPointZero.y}];

    v7 = objc_loadWeakRetained(&self->_fieldOfIconsView);
    [v7 layoutAnimated:1];

    v3 = self->_iconGraph;
  }

  [(CSLIconPositionsStore *)self->_iconPositionsStore savePositions:v3];
}

- (void)showConfirmationAlert
{
  v3 = sub_19C54(@"RESET_GRID_VIEW_ARRANGEMENT_ALERT_TITLE");
  v4 = sub_19C54(@"RESET_GRID_VIEW_ARRANGEMENT_ALERT_MESSAGE");
  v5 = [UIAlertController alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v6 = sub_19C54(@"RESET_GRID_VIEW_ARRANGEMENT_ALERT_PRIMARY_ACTION");
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1AC34;
  v10[3] = &unk_38D60;
  v10[4] = self;
  v7 = [UIAlertAction actionWithTitle:v6 style:0 handler:v10];

  v8 = sub_19C54(@"RESET_GRID_VIEW_ARRANGEMENT_ALERT_CANCEL");
  v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:0];

  [v5 addAction:v9];
  [v5 addAction:v7];
  [(CSLUILayoutViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)iconsEdited
{
  if (self->_iconGraph)
  {
    [(CSLIconPositionsStore *)self->_iconPositionsStore savePositions:?];
    if (os_variant_has_internal_diagnostics())
    {
      iconPositionsStore = self->_iconPositionsStore;
      iconGraph = self->_iconGraph;

      [(CSLIconPositionsStore *)iconPositionsStore archivePositionsToDiagnostics:iconGraph];
    }
  }
}

- (id)createIconViewWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:kClockBundleIdentifier])
  {
    v4 = &off_383E8;
LABEL_5:
    v5 = objc_alloc_init(*v4);
    goto LABEL_7;
  }

  if ([identifierCopy isEqualToString:kCalendarBundleIdentifier])
  {
    v4 = off_383E0;
    goto LABEL_5;
  }

  v5 = [[CSLUINanoResourceGrabberIconView alloc] initWithBundleID:identifierCopy];
LABEL_7:
  v6 = v5;

  return v6;
}

- (UILabel)nameLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_nameLabel);

  return WeakRetained;
}

@end