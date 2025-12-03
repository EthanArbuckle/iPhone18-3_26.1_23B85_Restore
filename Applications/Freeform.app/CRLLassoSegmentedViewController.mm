@interface CRLLassoSegmentedViewController
- (CGSize)preferredContentSize;
- (CRLLassoSegmentedControlDelegate)delegate;
- (CRLLassoSegmentedViewController)initWithCoder:(id)coder;
- (CRLLassoSegmentedViewController)initWithLassoType:(unint64_t)type;
- (CRLLassoSegmentedViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)p_commonInit;
- (void)segmentedControlDidChangeValue:(id)value;
- (void)setLassoType:(unint64_t)type;
- (void)viewDidLoad;
@end

@implementation CRLLassoSegmentedViewController

- (CRLLassoSegmentedViewController)initWithLassoType:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = CRLLassoSegmentedViewController;
  v4 = [(CRLLassoSegmentedViewController *)&v7 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    [(CRLLassoSegmentedViewController *)v4 p_commonInit];
    [(UISegmentedControl *)v5->_segmentedControl setSelectedSegmentIndex:type];
  }

  return v5;
}

- (CRLLassoSegmentedViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRLLassoSegmentedViewController;
  v3 = [(CRLLassoSegmentedViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(CRLLassoSegmentedViewController *)v3 p_commonInit];
    [(UISegmentedControl *)v4->_segmentedControl setSelectedSegmentIndex:0];
  }

  return v4;
}

- (CRLLassoSegmentedViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = CRLLassoSegmentedViewController;
  v4 = [(CRLLassoSegmentedViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(CRLLassoSegmentedViewController *)v4 p_commonInit];
    [(UISegmentedControl *)v5->_segmentedControl setSelectedSegmentIndex:0];
  }

  return v5;
}

- (void)p_commonInit
{
  v3 = objc_alloc_init(UISegmentedControl);
  segmentedControl = self->_segmentedControl;
  self->_segmentedControl = v3;

  [(UISegmentedControl *)self->_segmentedControl setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = +[NSBundle mainBundle];
  v8 = [v5 localizedStringForKey:@"All Objects" value:0 table:0];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Drawings Only" value:0 table:0];

  [(UISegmentedControl *)self->_segmentedControl insertSegmentWithTitle:v8 atIndex:0 animated:1];
  [(UISegmentedControl *)self->_segmentedControl insertSegmentWithTitle:v7 atIndex:1 animated:1];
}

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = CRLLassoSegmentedViewController;
  [(CRLLassoSegmentedViewController *)&v20 viewDidLoad];
  view = [(CRLLassoSegmentedViewController *)self view];
  [view addSubview:self->_segmentedControl];

  topAnchor = [(UISegmentedControl *)self->_segmentedControl topAnchor];
  view2 = [(CRLLassoSegmentedViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  v21[0] = v15;
  leadingAnchor = [(UISegmentedControl *)self->_segmentedControl leadingAnchor];
  view3 = [(CRLLassoSegmentedViewController *)self view];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  v5 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
  v21[1] = v5;
  trailingAnchor = [(UISegmentedControl *)self->_segmentedControl trailingAnchor];
  view4 = [(CRLLassoSegmentedViewController *)self view];
  safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
  v21[2] = v10;
  v11 = [NSArray arrayWithObjects:v21 count:3];
  [NSLayoutConstraint activateConstraints:v11];

  [(UISegmentedControl *)self->_segmentedControl addTarget:self action:"segmentedControlDidChangeValue:" forControlEvents:4096];
}

- (void)setLassoType:(unint64_t)type
{
  if ([(UISegmentedControl *)self->_segmentedControl numberOfSegments]> type)
  {
    segmentedControl = self->_segmentedControl;

    [(UISegmentedControl *)segmentedControl setSelectedSegmentIndex:type];
  }
}

- (CGSize)preferredContentSize
{
  [(UISegmentedControl *)self->_segmentedControl sizeThatFits:CGSizeZero.width, CGSizeZero.height];
  if (v2 >= 300.0)
  {
    v4 = v2 + 20.0;
  }

  else
  {
    v4 = 300.0;
  }

  v5 = v3 + 20.0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)segmentedControlDidChangeValue:(id)value
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained lassoSegmentedControlDidChangeType:{-[CRLLassoSegmentedViewController lassoType](self, "lassoType")}];
}

- (CRLLassoSegmentedControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end