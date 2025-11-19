@interface MTAPresetsViewController
- (MTAPresetsViewController)initWithDelegate:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setupCollectionControllerWithDelegate:(id)a3;
- (void)setupLayoutConstraints;
- (void)viewDidLoad;
@end

@implementation MTAPresetsViewController

- (MTAPresetsViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MTAPresetsViewController;
  v5 = [(MTAPresetsViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MTAPresetsViewController *)v5 setupCollectionControllerWithDelegate:v4];
    [(MTAPresetsViewController *)v6 setupLayoutConstraints];
  }

  return v6;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = MTAPresetsViewController;
  [(MTAPresetsViewController *)&v2 viewDidLoad];
}

- (void)setupCollectionControllerWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [MTAPresetsCollectionViewController alloc];
  v6 = +[MTATimerPresetItem mockItems];
  v7 = [(MTAPresetsCollectionViewController *)v5 initWithItems:v6 presetsDelegate:v4];

  collectionController = self->_collectionController;
  self->_collectionController = v7;

  v9 = [(MTAPresetsCollectionViewController *)self->_collectionController collectionView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(MTAPresetsCollectionViewController *)self->_collectionController collectionView];
  [v10 setContentInset:{0.0, 16.0, 0.0, 16.0}];

  v11 = [(MTAPresetsCollectionViewController *)self->_collectionController collectionView];
  [v11 setHoverStyle:0];

  v13 = [(MTAPresetsViewController *)self view];
  v12 = [(MTAPresetsCollectionViewController *)self->_collectionController collectionView];
  [v13 addSubview:v12];
}

- (void)setupLayoutConstraints
{
  v29 = objc_opt_new();
  v3 = objc_opt_self();
  v4 = [v3 collectionController];
  v5 = [v4 collectionView];
  v6 = [v5 topAnchor];
  v7 = [(MTAPresetsViewController *)self view];
  v8 = [v7 topAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  [v29 addObject:v9];

  v10 = objc_opt_self();
  v11 = [v10 collectionController];
  v12 = [v11 collectionView];
  v13 = [v12 leadingAnchor];
  v14 = [(MTAPresetsViewController *)self view];
  v15 = [v14 leadingAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  [v29 addObject:v16];

  v17 = objc_opt_self();
  v18 = [v17 collectionController];
  v19 = [v18 collectionView];
  v20 = [v19 trailingAnchor];
  v21 = [(MTAPresetsViewController *)self view];
  v22 = [v21 trailingAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  [v29 addObject:v23];

  v24 = objc_opt_self();
  v25 = [v24 collectionController];
  v26 = [v25 collectionView];
  v27 = [v26 heightAnchor];
  v28 = [v27 constraintEqualToConstant:90.0];
  [v29 addObject:v28];

  [NSLayoutConstraint activateConstraints:v29];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(MTAPresetsViewController *)self collectionController];
  [v5 setPresetsDelegate:v4];
}

@end