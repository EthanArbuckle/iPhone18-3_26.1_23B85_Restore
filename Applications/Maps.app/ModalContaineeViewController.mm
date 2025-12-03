@interface ModalContaineeViewController
- (HeightProviding)childHeightProvider;
- (ModalContaineeViewController)initWithChildViewController:(id)controller visualEffectDisabled:(BOOL)disabled fullScreen:(BOOL)screen;
- (_TtC4Maps19ModalCardHeaderView)headerView;
- (double)heightForLayout:(unint64_t)layout;
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
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController dismiss:1];

  blockAlongDismissContainee = [(ModalContaineeViewController *)self blockAlongDismissContainee];

  if (blockAlongDismissContainee)
  {
    blockAlongDismissContainee2 = [(ModalContaineeViewController *)self blockAlongDismissContainee];
    v6 = [blockAlongDismissContainee2 copy];

    [(ModalContaineeViewController *)self setBlockAlongDismissContainee:0];
    v6[2]();
  }
}

- (double)heightForLayout:(unint64_t)layout
{
  v3 = -1.0;
  if ((layout & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    childHeightProvider = [(ModalContaineeViewController *)self childHeightProvider];

    if (childHeightProvider)
    {
      childHeightProvider2 = [(ModalContaineeViewController *)self childHeightProvider];
      [childHeightProvider2 fittingHeight];
      v8 = v7;
      [(ContaineeViewController *)self headerHeight];
      v3 = v9 + v8;
    }

    else
    {
      childHeightProvider2 = [(ContaineeViewController *)self cardPresentationController];
      [childHeightProvider2 availableHeight];
      v3 = v10;
    }
  }

  return v3;
}

- (void)_setupConstraints
{
  headerView = [(ModalContaineeViewController *)self headerView];
  topAnchor = [headerView topAnchor];
  view = [(ModalContaineeViewController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v34 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v40[0] = v34;
  headerView2 = [(ModalContaineeViewController *)self headerView];
  bottomAnchor = [headerView2 bottomAnchor];
  view2 = [(UIViewController *)self->_childVC view];
  topAnchor3 = [view2 topAnchor];
  v29 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
  v40[1] = v29;
  headerView3 = [(ModalContaineeViewController *)self headerView];
  leadingAnchor = [headerView3 leadingAnchor];
  view3 = [(ModalContaineeViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v40[2] = v24;
  headerView4 = [(ModalContaineeViewController *)self headerView];
  trailingAnchor = [headerView4 trailingAnchor];
  view4 = [(ModalContaineeViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v40[3] = v19;
  view5 = [(UIViewController *)self->_childVC view];
  leadingAnchor3 = [view5 leadingAnchor];
  view6 = [(ModalContaineeViewController *)self view];
  leadingAnchor4 = [view6 leadingAnchor];
  v14 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v40[4] = v14;
  view7 = [(UIViewController *)self->_childVC view];
  trailingAnchor3 = [view7 trailingAnchor];
  view8 = [(ModalContaineeViewController *)self view];
  trailingAnchor4 = [view8 trailingAnchor];
  v6 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v40[5] = v6;
  view9 = [(UIViewController *)self->_childVC view];
  bottomAnchor2 = [view9 bottomAnchor];
  view10 = [(ModalContaineeViewController *)self view];
  bottomAnchor3 = [view10 bottomAnchor];
  v11 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
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
    view = [(ModalContaineeViewController *)self view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  if (self->_childVC)
  {
    [(ModalContaineeViewController *)self addChildViewController:?];
    view2 = [(UIViewController *)self->_childVC view];
    [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

    view3 = [(ModalContaineeViewController *)self view];
    view4 = [(UIViewController *)self->_childVC view];
    [view3 addSubview:view4];

    [(UIViewController *)self->_childVC didMoveToParentViewController:self];
  }

  view5 = [(ModalContaineeViewController *)self view];
  headerView = [(ModalContaineeViewController *)self headerView];
  [view5 addSubview:headerView];
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

- (ModalContaineeViewController)initWithChildViewController:(id)controller visualEffectDisabled:(BOOL)disabled fullScreen:(BOOL)screen
{
  screenCopy = screen;
  disabledCopy = disabled;
  controllerCopy = controller;
  v18.receiver = self;
  v18.super_class = ModalContaineeViewController;
  v10 = [(ModalContaineeViewController *)&v18 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    if (screenCopy)
    {
      [(ModalContaineeViewController *)v10 setModalPresentationStyle:0];
      cardPresentationController = [(ContaineeViewController *)v11 cardPresentationController];
      [cardPresentationController setWantsFullscreen:1];
    }

    cardPresentationController2 = [(ContaineeViewController *)v11 cardPresentationController];
    [cardPresentationController2 setPresentedModally:1];

    cardPresentationController3 = [(ContaineeViewController *)v11 cardPresentationController];
    [cardPresentationController3 setTakesAvailableHeight:1];

    cardPresentationController4 = [(ContaineeViewController *)v11 cardPresentationController];
    [cardPresentationController4 setBlurInCardView:!disabledCopy];

    cardPresentationController5 = [(ContaineeViewController *)v11 cardPresentationController];
    [cardPresentationController5 setAllowsSwipeToDismiss:0];

    objc_storeStrong(&v11->_childVC, controller);
  }

  return v11;
}

@end