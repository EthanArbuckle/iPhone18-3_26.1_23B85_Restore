@interface ModalContaineeViewController
- (HeightProviding)childHeightProvider;
- (ModalContaineeViewController)initWithChildViewController:(id)a3 visualEffectDisabled:(BOOL)a4 fullScreen:(BOOL)a5;
- (_TtC4Maps19ModalCardHeaderView)headerView;
- (double)heightForLayout:(unint64_t)a3;
- (void)_dismissContainee;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)viewDidLoad;
@end

@implementation ModalContaineeViewController

- (HeightProviding)childHeightProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_childHeightProvider);

  return WeakRetained;
}

- (void)_dismissContainee
{
  v3 = [(ContaineeViewController *)self cardPresentationController];
  [v3 dismiss:1];

  v4 = [(ModalContaineeViewController *)self blockAlongDismissContainee];

  if (v4)
  {
    v5 = [(ModalContaineeViewController *)self blockAlongDismissContainee];
    v6 = [v5 copy];

    [(ModalContaineeViewController *)self setBlockAlongDismissContainee:0];
    v6[2]();
  }
}

- (double)heightForLayout:(unint64_t)a3
{
  v3 = -1.0;
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v5 = [(ModalContaineeViewController *)self childHeightProvider];

    if (v5)
    {
      v6 = [(ModalContaineeViewController *)self childHeightProvider];
      [v6 fittingHeight];
      v8 = v7;
      [(ContaineeViewController *)self headerHeight];
      v3 = v9 + v8;
    }

    else
    {
      v6 = [(ContaineeViewController *)self cardPresentationController];
      [v6 availableHeight];
      v3 = v10;
    }
  }

  return v3;
}

- (void)_setupConstraints
{
  v39 = [(ModalContaineeViewController *)self headerView];
  v37 = [v39 topAnchor];
  v38 = [(ModalContaineeViewController *)self view];
  v36 = [v38 safeAreaLayoutGuide];
  v35 = [v36 topAnchor];
  v34 = [v37 constraintEqualToAnchor:v35];
  v40[0] = v34;
  v33 = [(ModalContaineeViewController *)self headerView];
  v31 = [v33 bottomAnchor];
  v32 = [(UIViewController *)self->_childVC view];
  v30 = [v32 topAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v40[1] = v29;
  v28 = [(ModalContaineeViewController *)self headerView];
  v26 = [v28 leadingAnchor];
  v27 = [(ModalContaineeViewController *)self view];
  v25 = [v27 leadingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v40[2] = v24;
  v23 = [(ModalContaineeViewController *)self headerView];
  v21 = [v23 trailingAnchor];
  v22 = [(ModalContaineeViewController *)self view];
  v20 = [v22 trailingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v40[3] = v19;
  v18 = [(UIViewController *)self->_childVC view];
  v16 = [v18 leadingAnchor];
  v17 = [(ModalContaineeViewController *)self view];
  v15 = [v17 leadingAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v40[4] = v14;
  v13 = [(UIViewController *)self->_childVC view];
  v3 = [v13 trailingAnchor];
  v4 = [(ModalContaineeViewController *)self view];
  v5 = [v4 trailingAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v40[5] = v6;
  v7 = [(UIViewController *)self->_childVC view];
  v8 = [v7 bottomAnchor];
  v9 = [(ModalContaineeViewController *)self view];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v40[6] = v11;
  v12 = [NSArray arrayWithObjects:v40 count:7];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_setupViews
{
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  if (byte_10195DF08 != 1 || (-[ContaineeViewController cardPresentationController](self, "cardPresentationController"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 wantsFullscreen], v3, (v4 & 1) == 0))
  {
    v5 = [(ModalContaineeViewController *)self view];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  if (self->_childVC)
  {
    [(ModalContaineeViewController *)self addChildViewController:?];
    v6 = [(UIViewController *)self->_childVC view];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = [(ModalContaineeViewController *)self view];
    v8 = [(UIViewController *)self->_childVC view];
    [v7 addSubview:v8];

    [(UIViewController *)self->_childVC didMoveToParentViewController:self];
  }

  v10 = [(ModalContaineeViewController *)self view];
  v9 = [(ModalContaineeViewController *)self headerView];
  [v10 addSubview:v9];
}

- (_TtC4Maps19ModalCardHeaderView)headerView
{
  headerView = self->_headerView;
  if (!headerView)
  {
    v4 = [[_TtC4Maps19ModalCardHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_headerView;
    self->_headerView = v4;

    [(ModalCardHeaderView *)self->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [MapsThemeButton buttonWithType:1];
    [v6 addTarget:self action:"headerViewCloseTapped:" forControlEvents:64];
    [(ModalCardHeaderView *)self->_headerView setTrailingButton:v6];

    headerView = self->_headerView;
  }

  return headerView;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = ModalContaineeViewController;
  [(ContaineeViewController *)&v3 viewDidLoad];
  [(ModalContaineeViewController *)self _setupViews];
  [(ModalContaineeViewController *)self _setupConstraints];
}

- (ModalContaineeViewController)initWithChildViewController:(id)a3 visualEffectDisabled:(BOOL)a4 fullScreen:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  v18.receiver = self;
  v18.super_class = ModalContaineeViewController;
  v10 = [(ModalContaineeViewController *)&v18 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    if (v5)
    {
      [(ModalContaineeViewController *)v10 setModalPresentationStyle:0];
      v12 = [(ContaineeViewController *)v11 cardPresentationController];
      [v12 setWantsFullscreen:1];
    }

    v13 = [(ContaineeViewController *)v11 cardPresentationController];
    [v13 setPresentedModally:1];

    v14 = [(ContaineeViewController *)v11 cardPresentationController];
    [v14 setTakesAvailableHeight:1];

    v15 = [(ContaineeViewController *)v11 cardPresentationController];
    [v15 setBlurInCardView:!v6];

    v16 = [(ContaineeViewController *)v11 cardPresentationController];
    [v16 setAllowsSwipeToDismiss:0];

    objc_storeStrong(&v11->_childVC, a3);
  }

  return v11;
}

@end