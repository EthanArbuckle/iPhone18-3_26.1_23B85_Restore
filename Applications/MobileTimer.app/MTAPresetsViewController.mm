@interface MTAPresetsViewController
- (MTAPresetsViewController)initWithDelegate:(id)delegate;
- (void)setDelegate:(id)delegate;
- (void)setupCollectionControllerWithDelegate:(id)delegate;
- (void)setupLayoutConstraints;
- (void)viewDidLoad;
@end

@implementation MTAPresetsViewController

- (MTAPresetsViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = MTAPresetsViewController;
  v5 = [(MTAPresetsViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MTAPresetsViewController *)v5 setupCollectionControllerWithDelegate:delegateCopy];
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

- (void)setupCollectionControllerWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [MTAPresetsCollectionViewController alloc];
  v6 = +[MTATimerPresetItem mockItems];
  v7 = [(MTAPresetsCollectionViewController *)v5 initWithItems:v6 presetsDelegate:delegateCopy];

  collectionController = self->_collectionController;
  self->_collectionController = v7;

  collectionView = [(MTAPresetsCollectionViewController *)self->_collectionController collectionView];
  [collectionView setTranslatesAutoresizingMaskIntoConstraints:0];

  collectionView2 = [(MTAPresetsCollectionViewController *)self->_collectionController collectionView];
  [collectionView2 setContentInset:{0.0, 16.0, 0.0, 16.0}];

  collectionView3 = [(MTAPresetsCollectionViewController *)self->_collectionController collectionView];
  [collectionView3 setHoverStyle:0];

  view = [(MTAPresetsViewController *)self view];
  collectionView4 = [(MTAPresetsCollectionViewController *)self->_collectionController collectionView];
  [view addSubview:collectionView4];
}

- (void)setupLayoutConstraints
{
  v29 = objc_opt_new();
  v3 = objc_opt_self();
  collectionController = [v3 collectionController];
  collectionView = [collectionController collectionView];
  topAnchor = [collectionView topAnchor];
  view = [(MTAPresetsViewController *)self view];
  topAnchor2 = [view topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v29 addObject:v9];

  v10 = objc_opt_self();
  collectionController2 = [v10 collectionController];
  collectionView2 = [collectionController2 collectionView];
  leadingAnchor = [collectionView2 leadingAnchor];
  view2 = [(MTAPresetsViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v29 addObject:v16];

  v17 = objc_opt_self();
  collectionController3 = [v17 collectionController];
  collectionView3 = [collectionController3 collectionView];
  trailingAnchor = [collectionView3 trailingAnchor];
  view3 = [(MTAPresetsViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v29 addObject:v23];

  v24 = objc_opt_self();
  collectionController4 = [v24 collectionController];
  collectionView4 = [collectionController4 collectionView];
  heightAnchor = [collectionView4 heightAnchor];
  v28 = [heightAnchor constraintEqualToConstant:90.0];
  [v29 addObject:v28];

  [NSLayoutConstraint activateConstraints:v29];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  collectionController = [(MTAPresetsViewController *)self collectionController];
  [collectionController setPresetsDelegate:delegateCopy];
}

@end