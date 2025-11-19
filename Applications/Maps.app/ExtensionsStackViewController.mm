@interface ExtensionsStackViewController
- (void)_updateScrollViewForLayout:(unint64_t)a3;
- (void)didChangeLayout:(unint64_t)a3;
- (void)viewDidLoad;
@end

@implementation ExtensionsStackViewController

- (void)_updateScrollViewForLayout:(unint64_t)a3
{
  if (a3 - 1 <= 1)
  {
    y = CGPointZero.y;
    v5 = [(ExtensionsStackViewController *)self scrollView];
    [v5 setContentOffset:{CGPointZero.x, y}];
  }
}

- (void)didChangeLayout:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = ExtensionsStackViewController;
  [(ContaineeViewController *)&v5 didChangeLayout:?];
  [(ExtensionsStackViewController *)self _updateScrollViewForLayout:a3];
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

  v6 = [(ExtensionsStackViewController *)self view];
  [v6 addSubview:self->_headerView];

  v7 = objc_alloc_init(UIScrollView);
  [(ExtensionsStackViewController *)self setScrollView:v7];

  v8 = [(ExtensionsStackViewController *)self scrollView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(ExtensionsStackViewController *)self scrollView];
  [v9 setAlwaysBounceVertical:1];

  v10 = [(ExtensionsStackViewController *)self scrollView];
  [v10 setDelegate:self];

  v11 = [(ExtensionsStackViewController *)self view];
  v12 = [(ExtensionsStackViewController *)self scrollView];
  [v11 addSubview:v12];

  v13 = objc_alloc_init(UIStackView);
  stackView = self->_stackView;
  self->_stackView = v13;

  v15 = [(ExtensionsStackViewController *)self stackView];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(ExtensionsStackViewController *)self stackView];
  [v16 setAxis:1];

  v17 = [(ExtensionsStackViewController *)self stackView];
  [v17 setAlignment:0];

  v18 = [(ExtensionsStackViewController *)self stackView];
  [v18 setDistribution:3];

  v19 = [(ExtensionsStackViewController *)self stackView];
  [v19 setSpacing:0.0];

  v20 = [(ExtensionsStackViewController *)self scrollView];
  v21 = [(ExtensionsStackViewController *)self stackView];
  [v20 addSubview:v21];

  [(ExtensionsStackViewController *)self _updateScrollViewForLayout:2];
  v22 = [(ExtensionsStackViewController *)self stackView];
  v23 = [(ExtensionsStackViewController *)self scrollView];
  v24 = [v22 _maps_constraintsForCenteringInView:v23];
  v58 = [NSMutableArray arrayWithArray:v24];

  v25 = [(ExtensionsStackViewController *)self stackView];
  v26 = [v25 widthAnchor];
  v27 = [(ExtensionsStackViewController *)self scrollView];
  v28 = [v27 widthAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];
  [v58 addObject:v29];

  v56 = [(UIView *)self->_headerView topAnchor];
  v57 = [(ExtensionsStackViewController *)self view];
  v55 = [v57 topAnchor];
  v54 = [v56 constraintEqualToAnchor:v55];
  v60[0] = v54;
  v52 = [(UIView *)self->_headerView leadingAnchor];
  v53 = [(ExtensionsStackViewController *)self view];
  v51 = [v53 leadingAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v60[1] = v50;
  v48 = [(UIView *)self->_headerView trailingAnchor];
  v49 = [(ExtensionsStackViewController *)self view];
  v47 = [v49 trailingAnchor];
  v46 = [v48 constraintEqualToAnchor:v47];
  v60[2] = v46;
  v45 = [(UIScrollView *)self->_scrollView topAnchor];
  v44 = [(UIView *)self->_headerView bottomAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v60[3] = v43;
  v41 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v42 = [(ExtensionsStackViewController *)self view];
  v40 = [v42 leadingAnchor];
  v30 = [v41 constraintEqualToAnchor:v40];
  v60[4] = v30;
  v31 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v32 = [(ExtensionsStackViewController *)self view];
  v33 = [v32 trailingAnchor];
  v34 = [v31 constraintEqualToAnchor:v33];
  v60[5] = v34;
  v35 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v36 = [(ExtensionsStackViewController *)self view];
  v37 = [v36 bottomAnchor];
  v38 = [v35 constraintEqualToAnchor:v37];
  v60[6] = v38;
  v39 = [NSArray arrayWithObjects:v60 count:7];
  [v58 addObjectsFromArray:v39];

  [NSLayoutConstraint activateConstraints:v58];
}

@end