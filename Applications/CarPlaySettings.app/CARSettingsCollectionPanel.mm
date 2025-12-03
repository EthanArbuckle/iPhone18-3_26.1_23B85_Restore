@interface CARSettingsCollectionPanel
- (UIEdgeInsets)effectiveSectionInset;
- (UIEdgeInsets)sectionInset;
- (double)calculatedCellHeight;
- (double)calculatedCellWidth;
- (void)_reloadData;
- (void)reloadSpecifiers;
- (void)setBackgroundColor:(id)color;
- (void)setNeedsScrollBar:(BOOL)bar;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CARSettingsCollectionPanel

- (void)viewDidLoad
{
  v67.receiver = self;
  v67.super_class = CARSettingsCollectionPanel;
  [(CARSettingsPanel *)&v67 viewDidLoad];
  specifierSections = [(CARSettingsCollectionPanel *)self specifierSections];

  v4 = [SettingsPanelCollectionSource alloc];
  if (specifierSections)
  {
    specifierSections2 = [(CARSettingsCollectionPanel *)self specifierSections];
    v6 = [(SettingsPanelCollectionSource *)v4 initWithPanel:self sections:specifierSections2];
  }

  else
  {
    specifierSections2 = [(CARSettingsCollectionPanel *)self cellSpecifiers];
    v6 = [(SettingsPanelCollectionSource *)v4 initWithPanel:self specifiers:specifierSections2];
  }

  v7 = v6;
  [(CARSettingsCollectionPanel *)self setCollectionSource:v6];

  v8 = objc_alloc_init(CARCollectionViewFlowLayout);
  [(CARSettingsCollectionPanel *)self setCollectionViewLayout:v8];

  collectionViewLayout = [(CARSettingsCollectionPanel *)self collectionViewLayout];
  [collectionViewLayout setItemSize:{40.0, 40.0}];

  [(CARSettingsCollectionPanel *)self effectiveSectionInset];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  collectionViewLayout2 = [(CARSettingsCollectionPanel *)self collectionViewLayout];
  [collectionViewLayout2 setSectionInset:{v11, v13, v15, v17}];

  [(CARSettingsCollectionPanel *)self minimumLineSpacing];
  v20 = v19;
  collectionViewLayout3 = [(CARSettingsCollectionPanel *)self collectionViewLayout];
  [collectionViewLayout3 setMinimumLineSpacing:v20];

  [(CARSettingsCollectionPanel *)self minimumInteritemSpacing];
  v23 = v22;
  collectionViewLayout4 = [(CARSettingsCollectionPanel *)self collectionViewLayout];
  [collectionViewLayout4 setMinimumInteritemSpacing:v23];

  v25 = [UICollectionView alloc];
  collectionViewLayout5 = [(CARSettingsCollectionPanel *)self collectionViewLayout];
  v27 = [v25 initWithFrame:collectionViewLayout5 collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(CARSettingsCollectionPanel *)self setCollectionView:v27];

  collectionView = [(CARSettingsCollectionPanel *)self collectionView];
  [collectionView setTranslatesAutoresizingMaskIntoConstraints:0];

  collectionSource = [(CARSettingsCollectionPanel *)self collectionSource];
  collectionView2 = [(CARSettingsCollectionPanel *)self collectionView];
  [collectionView2 setDataSource:collectionSource];

  collectionSource2 = [(CARSettingsCollectionPanel *)self collectionSource];
  collectionView3 = [(CARSettingsCollectionPanel *)self collectionView];
  [collectionView3 setDelegate:collectionSource2];

  collectionView4 = [(CARSettingsCollectionPanel *)self collectionView];
  v34 = objc_opt_class();
  v35 = +[CARSettingsCollectionViewCell reuseIdentifier];
  [collectionView4 registerClass:v34 forCellWithReuseIdentifier:v35];

  collectionView5 = [(CARSettingsCollectionPanel *)self collectionView];
  v37 = objc_opt_class();
  v38 = +[CARSettingsCollectionViewHeader reuseIdentifier];
  [collectionView5 registerClass:v37 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v38];

  v39 = +[UIColor tableBackgroundColor];
  collectionView6 = [(CARSettingsCollectionPanel *)self collectionView];
  [collectionView6 setBackgroundColor:v39];

  view = [(CARSettingsCollectionPanel *)self view];
  collectionView7 = [(CARSettingsCollectionPanel *)self collectionView];
  [view addSubview:collectionView7];

  collectionView8 = [(CARSettingsCollectionPanel *)self collectionView];
  topAnchor = [collectionView8 topAnchor];
  view2 = [(CARSettingsCollectionPanel *)self view];
  topAnchor2 = [view2 topAnchor];
  v62 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v68[0] = v62;
  collectionView9 = [(CARSettingsCollectionPanel *)self collectionView];
  leftAnchor = [collectionView9 leftAnchor];
  view3 = [(CARSettingsCollectionPanel *)self view];
  leftAnchor2 = [view3 leftAnchor];
  v57 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v68[1] = v57;
  collectionView10 = [(CARSettingsCollectionPanel *)self collectionView];
  rightAnchor = [collectionView10 rightAnchor];
  view4 = [(CARSettingsCollectionPanel *)self view];
  rightAnchor2 = [view4 rightAnchor];
  v45 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v68[2] = v45;
  collectionView11 = [(CARSettingsCollectionPanel *)self collectionView];
  bottomAnchor = [collectionView11 bottomAnchor];
  view5 = [(CARSettingsCollectionPanel *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v50 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v68[3] = v50;
  v51 = [NSArray arrayWithObjects:v68 count:4];
  [NSLayoutConstraint activateConstraints:v51];

  collectionView12 = [(CARSettingsCollectionPanel *)self collectionView];
  [collectionView12 reloadData];

  collectionView13 = [(CARSettingsCollectionPanel *)self collectionView];
  [collectionView13 setNeedsLayout];

  collectionView14 = [(CARSettingsCollectionPanel *)self collectionView];
  [collectionView14 layoutIfNeeded];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = CARSettingsCollectionPanel;
  coordinatorCopy = coordinator;
  [(CARSettingsCollectionPanel *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100025F04;
  v8[3] = &unk_1000DB698;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:&stru_1000DB6D8];
}

- (void)viewSafeAreaInsetsDidChange
{
  v6.receiver = self;
  v6.super_class = CARSettingsCollectionPanel;
  [(CARSettingsCollectionPanel *)&v6 viewSafeAreaInsetsDidChange];
  collectionViewLayout = [(CARSettingsCollectionPanel *)self collectionViewLayout];
  [(CARSettingsCollectionPanel *)self effectiveSectionInset];
  [collectionViewLayout setSectionInset:?];

  collectionView = [(CARSettingsCollectionPanel *)self collectionView];
  [collectionView setNeedsLayout];

  collectionView2 = [(CARSettingsCollectionPanel *)self collectionView];
  [collectionView2 layoutIfNeeded];
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  backgroundColor = self->_backgroundColor;
  if (!backgroundColor || ([(UIColor *)backgroundColor isEqual:colorCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_backgroundColor, color);
    view = [(CARSettingsCollectionPanel *)self view];
    [view setBackgroundColor:colorCopy];

    v7 = +[UIColor clearColor];
    collectionView = [(CARSettingsCollectionPanel *)self collectionView];
    [collectionView setBackgroundColor:v7];
  }
}

- (void)reloadSpecifiers
{
  cellSpecifiers = [(CARSettingsCollectionPanel *)self cellSpecifiers];
  collectionSource = [(CARSettingsCollectionPanel *)self collectionSource];
  [collectionSource setSpecifiers:cellSpecifiers];

  [(CARSettingsCollectionPanel *)self _reloadData];
}

- (double)calculatedCellWidth
{
  collectionView = [(CARSettingsCollectionPanel *)self collectionView];
  [collectionView bounds];
  v5 = v4;
  [(CARSettingsCollectionPanel *)self effectiveSectionInset];
  v8 = v5 - (v6 + v7);

  [(CARSettingsCollectionPanel *)self minimumInteritemSpacing];
  v10 = v8 - v9 * ([(CARSettingsCollectionPanel *)self numberOfColumns]- 1);
  return v10 / [(CARSettingsCollectionPanel *)self numberOfColumns];
}

- (double)calculatedCellHeight
{
  collectionView = [(CARSettingsCollectionPanel *)self collectionView];
  [collectionView bounds];
  v5 = v4;
  [(CARSettingsCollectionPanel *)self effectiveSectionInset];
  v8 = v5 - (v6 + v7);

  [(CARSettingsCollectionPanel *)self minimumLineSpacing];
  v10 = v8 - v9 * ([(CARSettingsCollectionPanel *)self numberOfRows]- 1);
  return v10 / [(CARSettingsCollectionPanel *)self numberOfRows];
}

- (UIEdgeInsets)sectionInset
{
  view = [(CARSettingsCollectionPanel *)self view];
  [view safeAreaInsets];
  v5 = v4;
  view2 = [(CARSettingsCollectionPanel *)self view];
  [view2 safeAreaInsets];
  v8 = v7;

  v9 = 0.0;
  v10 = 0.0;
  v11 = v5;
  v12 = v8;
  result.right = v12;
  result.bottom = v10;
  result.left = v11;
  result.top = v9;
  return result;
}

- (void)setNeedsScrollBar:(BOOL)bar
{
  if (self->_needsScrollBar != bar)
  {
    self->_needsScrollBar = bar;
    [(CARSettingsCollectionPanel *)self effectiveSectionInset];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    collectionViewLayout = [(CARSettingsCollectionPanel *)self collectionViewLayout];
    [collectionViewLayout setSectionInset:{v6, v8, v10, v12}];

    collectionView = [(CARSettingsCollectionPanel *)self collectionView];
    collectionViewLayout2 = [collectionView collectionViewLayout];
    [collectionViewLayout2 invalidateLayout];

    collectionView2 = [(CARSettingsCollectionPanel *)self collectionView];
    [collectionView2 setNeedsLayout];

    collectionView3 = [(CARSettingsCollectionPanel *)self collectionView];
    [collectionView3 layoutIfNeeded];
  }
}

- (UIEdgeInsets)effectiveSectionInset
{
  panelController = [(CARSettingsPanel *)self panelController];
  carSession = [panelController carSession];
  configuration = [carSession configuration];
  rightHandDrive = [configuration rightHandDrive];

  if (([(CARSettingsCollectionPanel *)self needsScrollBar]& rightHandDrive) != 0)
  {
    v7 = 45.0;
  }

  else
  {
    v7 = 0.0;
  }

  if (([(CARSettingsCollectionPanel *)self needsScrollBar]& (rightHandDrive ^ 1)) != 0)
  {
    v8 = 45.0;
  }

  else
  {
    v8 = 0.0;
  }

  [(CARSettingsCollectionPanel *)self sectionInset];
  v10 = v9;
  [(CARSettingsCollectionPanel *)self sectionInset];
  v12 = v7 + v11;
  [(CARSettingsCollectionPanel *)self sectionInset];
  v14 = v13;
  [(CARSettingsCollectionPanel *)self sectionInset];
  v16 = v8 + v15;
  v17 = v10;
  v18 = v12;
  v19 = v14;
  result.right = v16;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

- (void)_reloadData
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100026518;
  block[3] = &unk_1000DAD70;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end