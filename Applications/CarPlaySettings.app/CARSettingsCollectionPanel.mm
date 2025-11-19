@interface CARSettingsCollectionPanel
- (UIEdgeInsets)effectiveSectionInset;
- (UIEdgeInsets)sectionInset;
- (double)calculatedCellHeight;
- (double)calculatedCellWidth;
- (void)_reloadData;
- (void)reloadSpecifiers;
- (void)setBackgroundColor:(id)a3;
- (void)setNeedsScrollBar:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CARSettingsCollectionPanel

- (void)viewDidLoad
{
  v67.receiver = self;
  v67.super_class = CARSettingsCollectionPanel;
  [(CARSettingsPanel *)&v67 viewDidLoad];
  v3 = [(CARSettingsCollectionPanel *)self specifierSections];

  v4 = [SettingsPanelCollectionSource alloc];
  if (v3)
  {
    v5 = [(CARSettingsCollectionPanel *)self specifierSections];
    v6 = [(SettingsPanelCollectionSource *)v4 initWithPanel:self sections:v5];
  }

  else
  {
    v5 = [(CARSettingsCollectionPanel *)self cellSpecifiers];
    v6 = [(SettingsPanelCollectionSource *)v4 initWithPanel:self specifiers:v5];
  }

  v7 = v6;
  [(CARSettingsCollectionPanel *)self setCollectionSource:v6];

  v8 = objc_alloc_init(CARCollectionViewFlowLayout);
  [(CARSettingsCollectionPanel *)self setCollectionViewLayout:v8];

  v9 = [(CARSettingsCollectionPanel *)self collectionViewLayout];
  [v9 setItemSize:{40.0, 40.0}];

  [(CARSettingsCollectionPanel *)self effectiveSectionInset];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(CARSettingsCollectionPanel *)self collectionViewLayout];
  [v18 setSectionInset:{v11, v13, v15, v17}];

  [(CARSettingsCollectionPanel *)self minimumLineSpacing];
  v20 = v19;
  v21 = [(CARSettingsCollectionPanel *)self collectionViewLayout];
  [v21 setMinimumLineSpacing:v20];

  [(CARSettingsCollectionPanel *)self minimumInteritemSpacing];
  v23 = v22;
  v24 = [(CARSettingsCollectionPanel *)self collectionViewLayout];
  [v24 setMinimumInteritemSpacing:v23];

  v25 = [UICollectionView alloc];
  v26 = [(CARSettingsCollectionPanel *)self collectionViewLayout];
  v27 = [v25 initWithFrame:v26 collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(CARSettingsCollectionPanel *)self setCollectionView:v27];

  v28 = [(CARSettingsCollectionPanel *)self collectionView];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];

  v29 = [(CARSettingsCollectionPanel *)self collectionSource];
  v30 = [(CARSettingsCollectionPanel *)self collectionView];
  [v30 setDataSource:v29];

  v31 = [(CARSettingsCollectionPanel *)self collectionSource];
  v32 = [(CARSettingsCollectionPanel *)self collectionView];
  [v32 setDelegate:v31];

  v33 = [(CARSettingsCollectionPanel *)self collectionView];
  v34 = objc_opt_class();
  v35 = +[CARSettingsCollectionViewCell reuseIdentifier];
  [v33 registerClass:v34 forCellWithReuseIdentifier:v35];

  v36 = [(CARSettingsCollectionPanel *)self collectionView];
  v37 = objc_opt_class();
  v38 = +[CARSettingsCollectionViewHeader reuseIdentifier];
  [v36 registerClass:v37 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v38];

  v39 = +[UIColor tableBackgroundColor];
  v40 = [(CARSettingsCollectionPanel *)self collectionView];
  [v40 setBackgroundColor:v39];

  v41 = [(CARSettingsCollectionPanel *)self view];
  v42 = [(CARSettingsCollectionPanel *)self collectionView];
  [v41 addSubview:v42];

  v66 = [(CARSettingsCollectionPanel *)self collectionView];
  v64 = [v66 topAnchor];
  v65 = [(CARSettingsCollectionPanel *)self view];
  v63 = [v65 topAnchor];
  v62 = [v64 constraintEqualToAnchor:v63];
  v68[0] = v62;
  v61 = [(CARSettingsCollectionPanel *)self collectionView];
  v59 = [v61 leftAnchor];
  v60 = [(CARSettingsCollectionPanel *)self view];
  v58 = [v60 leftAnchor];
  v57 = [v59 constraintEqualToAnchor:v58];
  v68[1] = v57;
  v56 = [(CARSettingsCollectionPanel *)self collectionView];
  v55 = [v56 rightAnchor];
  v43 = [(CARSettingsCollectionPanel *)self view];
  v44 = [v43 rightAnchor];
  v45 = [v55 constraintEqualToAnchor:v44];
  v68[2] = v45;
  v46 = [(CARSettingsCollectionPanel *)self collectionView];
  v47 = [v46 bottomAnchor];
  v48 = [(CARSettingsCollectionPanel *)self view];
  v49 = [v48 bottomAnchor];
  v50 = [v47 constraintEqualToAnchor:v49];
  v68[3] = v50;
  v51 = [NSArray arrayWithObjects:v68 count:4];
  [NSLayoutConstraint activateConstraints:v51];

  v52 = [(CARSettingsCollectionPanel *)self collectionView];
  [v52 reloadData];

  v53 = [(CARSettingsCollectionPanel *)self collectionView];
  [v53 setNeedsLayout];

  v54 = [(CARSettingsCollectionPanel *)self collectionView];
  [v54 layoutIfNeeded];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = CARSettingsCollectionPanel;
  v7 = a4;
  [(CARSettingsCollectionPanel *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100025F04;
  v8[3] = &unk_1000DB698;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:&stru_1000DB6D8];
}

- (void)viewSafeAreaInsetsDidChange
{
  v6.receiver = self;
  v6.super_class = CARSettingsCollectionPanel;
  [(CARSettingsCollectionPanel *)&v6 viewSafeAreaInsetsDidChange];
  v3 = [(CARSettingsCollectionPanel *)self collectionViewLayout];
  [(CARSettingsCollectionPanel *)self effectiveSectionInset];
  [v3 setSectionInset:?];

  v4 = [(CARSettingsCollectionPanel *)self collectionView];
  [v4 setNeedsLayout];

  v5 = [(CARSettingsCollectionPanel *)self collectionView];
  [v5 layoutIfNeeded];
}

- (void)setBackgroundColor:(id)a3
{
  v9 = a3;
  backgroundColor = self->_backgroundColor;
  if (!backgroundColor || ([(UIColor *)backgroundColor isEqual:v9]& 1) == 0)
  {
    objc_storeStrong(&self->_backgroundColor, a3);
    v6 = [(CARSettingsCollectionPanel *)self view];
    [v6 setBackgroundColor:v9];

    v7 = +[UIColor clearColor];
    v8 = [(CARSettingsCollectionPanel *)self collectionView];
    [v8 setBackgroundColor:v7];
  }
}

- (void)reloadSpecifiers
{
  v3 = [(CARSettingsCollectionPanel *)self cellSpecifiers];
  v4 = [(CARSettingsCollectionPanel *)self collectionSource];
  [v4 setSpecifiers:v3];

  [(CARSettingsCollectionPanel *)self _reloadData];
}

- (double)calculatedCellWidth
{
  v3 = [(CARSettingsCollectionPanel *)self collectionView];
  [v3 bounds];
  v5 = v4;
  [(CARSettingsCollectionPanel *)self effectiveSectionInset];
  v8 = v5 - (v6 + v7);

  [(CARSettingsCollectionPanel *)self minimumInteritemSpacing];
  v10 = v8 - v9 * ([(CARSettingsCollectionPanel *)self numberOfColumns]- 1);
  return v10 / [(CARSettingsCollectionPanel *)self numberOfColumns];
}

- (double)calculatedCellHeight
{
  v3 = [(CARSettingsCollectionPanel *)self collectionView];
  [v3 bounds];
  v5 = v4;
  [(CARSettingsCollectionPanel *)self effectiveSectionInset];
  v8 = v5 - (v6 + v7);

  [(CARSettingsCollectionPanel *)self minimumLineSpacing];
  v10 = v8 - v9 * ([(CARSettingsCollectionPanel *)self numberOfRows]- 1);
  return v10 / [(CARSettingsCollectionPanel *)self numberOfRows];
}

- (UIEdgeInsets)sectionInset
{
  v3 = [(CARSettingsCollectionPanel *)self view];
  [v3 safeAreaInsets];
  v5 = v4;
  v6 = [(CARSettingsCollectionPanel *)self view];
  [v6 safeAreaInsets];
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

- (void)setNeedsScrollBar:(BOOL)a3
{
  if (self->_needsScrollBar != a3)
  {
    self->_needsScrollBar = a3;
    [(CARSettingsCollectionPanel *)self effectiveSectionInset];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(CARSettingsCollectionPanel *)self collectionViewLayout];
    [v13 setSectionInset:{v6, v8, v10, v12}];

    v14 = [(CARSettingsCollectionPanel *)self collectionView];
    v15 = [v14 collectionViewLayout];
    [v15 invalidateLayout];

    v16 = [(CARSettingsCollectionPanel *)self collectionView];
    [v16 setNeedsLayout];

    v17 = [(CARSettingsCollectionPanel *)self collectionView];
    [v17 layoutIfNeeded];
  }
}

- (UIEdgeInsets)effectiveSectionInset
{
  v3 = [(CARSettingsPanel *)self panelController];
  v4 = [v3 carSession];
  v5 = [v4 configuration];
  v6 = [v5 rightHandDrive];

  if (([(CARSettingsCollectionPanel *)self needsScrollBar]& v6) != 0)
  {
    v7 = 45.0;
  }

  else
  {
    v7 = 0.0;
  }

  if (([(CARSettingsCollectionPanel *)self needsScrollBar]& (v6 ^ 1)) != 0)
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