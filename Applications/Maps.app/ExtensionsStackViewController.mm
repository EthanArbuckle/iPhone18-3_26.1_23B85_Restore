@interface ExtensionsStackViewController
- (void)_updateScrollViewForLayout:(unint64_t)layout;
- (void)didChangeLayout:(unint64_t)layout;
- (void)viewDidLoad;
@end

@implementation ExtensionsStackViewController

- (void)_updateScrollViewForLayout:(unint64_t)layout
{
  if (layout - 1 <= 1)
  {
    y = CGPointZero.y;
    scrollView = [(ExtensionsStackViewController *)self scrollView];
    [scrollView setContentOffset:{CGPointZero.x, y}];
  }
}

- (void)didChangeLayout:(unint64_t)layout
{
  v5.receiver = self;
  v5.super_class = ExtensionsStackViewController;
  [(ContaineeViewController *)&v5 didChangeLayout:?];
  [(ExtensionsStackViewController *)self _updateScrollViewForLayout:layout];
}

- (void)viewDidLoad
{
  v59.receiver = self;
  v59.super_class = ExtensionsStackViewController;
  [(ContaineeViewController *)&v59 viewDidLoad];
  v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  headerView = self->_headerView;
  self->_headerView = v3;

  [(UIView *)self->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = +[UIColor clearColor];
  [(UIView *)self->_headerView setBackgroundColor:v5];

  view = [(ExtensionsStackViewController *)self view];
  [view addSubview:self->_headerView];

  v7 = objc_alloc_init(UIScrollView);
  [(ExtensionsStackViewController *)self setScrollView:v7];

  scrollView = [(ExtensionsStackViewController *)self scrollView];
  [scrollView setTranslatesAutoresizingMaskIntoConstraints:0];

  scrollView2 = [(ExtensionsStackViewController *)self scrollView];
  [scrollView2 setAlwaysBounceVertical:1];

  scrollView3 = [(ExtensionsStackViewController *)self scrollView];
  [scrollView3 setDelegate:self];

  view2 = [(ExtensionsStackViewController *)self view];
  scrollView4 = [(ExtensionsStackViewController *)self scrollView];
  [view2 addSubview:scrollView4];

  v13 = objc_alloc_init(UIStackView);
  stackView = self->_stackView;
  self->_stackView = v13;

  stackView = [(ExtensionsStackViewController *)self stackView];
  [stackView setTranslatesAutoresizingMaskIntoConstraints:0];

  stackView2 = [(ExtensionsStackViewController *)self stackView];
  [stackView2 setAxis:1];

  stackView3 = [(ExtensionsStackViewController *)self stackView];
  [stackView3 setAlignment:0];

  stackView4 = [(ExtensionsStackViewController *)self stackView];
  [stackView4 setDistribution:3];

  stackView5 = [(ExtensionsStackViewController *)self stackView];
  [stackView5 setSpacing:0.0];

  scrollView5 = [(ExtensionsStackViewController *)self scrollView];
  stackView6 = [(ExtensionsStackViewController *)self stackView];
  [scrollView5 addSubview:stackView6];

  [(ExtensionsStackViewController *)self _updateScrollViewForLayout:2];
  stackView7 = [(ExtensionsStackViewController *)self stackView];
  scrollView6 = [(ExtensionsStackViewController *)self scrollView];
  v24 = [stackView7 _maps_constraintsForCenteringInView:scrollView6];
  v58 = [NSMutableArray arrayWithArray:v24];

  stackView8 = [(ExtensionsStackViewController *)self stackView];
  widthAnchor = [stackView8 widthAnchor];
  scrollView7 = [(ExtensionsStackViewController *)self scrollView];
  widthAnchor2 = [scrollView7 widthAnchor];
  v29 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v58 addObject:v29];

  topAnchor = [(UIView *)self->_headerView topAnchor];
  view3 = [(ExtensionsStackViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v54 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v60[0] = v54;
  leadingAnchor = [(UIView *)self->_headerView leadingAnchor];
  view4 = [(ExtensionsStackViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v50 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v60[1] = v50;
  trailingAnchor = [(UIView *)self->_headerView trailingAnchor];
  view5 = [(ExtensionsStackViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v46 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v60[2] = v46;
  topAnchor3 = [(UIScrollView *)self->_scrollView topAnchor];
  bottomAnchor = [(UIView *)self->_headerView bottomAnchor];
  v43 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v60[3] = v43;
  leadingAnchor3 = [(UIScrollView *)self->_scrollView leadingAnchor];
  view6 = [(ExtensionsStackViewController *)self view];
  leadingAnchor4 = [view6 leadingAnchor];
  v30 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v60[4] = v30;
  trailingAnchor3 = [(UIScrollView *)self->_scrollView trailingAnchor];
  view7 = [(ExtensionsStackViewController *)self view];
  trailingAnchor4 = [view7 trailingAnchor];
  v34 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v60[5] = v34;
  bottomAnchor2 = [(UIScrollView *)self->_scrollView bottomAnchor];
  view8 = [(ExtensionsStackViewController *)self view];
  bottomAnchor3 = [view8 bottomAnchor];
  v38 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v60[6] = v38;
  v39 = [NSArray arrayWithObjects:v60 count:7];
  [v58 addObjectsFromArray:v39];

  [NSLayoutConstraint activateConstraints:v58];
}

@end