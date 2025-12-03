@interface AXDisplayFilterOverlayViewController
- (NSArray)filters;
- (void)_applyInitialLayoutConstraints;
- (void)fadeToBlackAndComeBack:(double)back completion:(id)completion;
- (void)loadView;
- (void)setFilters:(id)filters;
@end

@implementation AXDisplayFilterOverlayViewController

- (void)fadeToBlackAndComeBack:(double)back completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1CFC;
  v8[3] = &unk_8220;
  v8[4] = self;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1D44;
  v5[3] = &unk_8298;
  backCopy = back;
  v5[4] = self;
  completionCopy = completion;
  v4 = completionCopy;
  [UIView animateWithDuration:v8 animations:v5 completion:backCopy * 0.25];
}

- (void)loadView
{
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(AXDisplayFilterOverlayViewController *)self setView:v9];
  height = [[AXDisplayFilterOverlayView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(AXDisplayFilterOverlayView *)height setTranslatesAutoresizingMaskIntoConstraints:1];
  [(AXDisplayFilterOverlayView *)height setAutoresizingMask:18];
  [(AXDisplayFilterOverlayView *)height setAlpha:0.0];
  v8 = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1.0];
  [(AXDisplayFilterOverlayView *)height setBackgroundColor:v8];

  [(AXDisplayFilterOverlayViewController *)self set_filterView:height];
  [v9 addSubview:height];
  [(AXDisplayFilterOverlayViewController *)self _applyInitialLayoutConstraints];
}

- (void)_applyInitialLayoutConstraints
{
  view = [(AXDisplayFilterOverlayViewController *)self view];
  _filterView = [(AXDisplayFilterOverlayViewController *)self _filterView];
  v4 = [NSLayoutConstraint constraintWithItem:_filterView attribute:1 relatedBy:0 toItem:view attribute:1 multiplier:1.0 constant:0.0];
  [view addConstraint:v4];

  v5 = [NSLayoutConstraint constraintWithItem:_filterView attribute:2 relatedBy:0 toItem:view attribute:2 multiplier:1.0 constant:0.0];
  [view addConstraint:v5];

  v6 = [NSLayoutConstraint constraintWithItem:_filterView attribute:3 relatedBy:0 toItem:view attribute:3 multiplier:1.0 constant:0.0];
  [view addConstraint:v6];

  v7 = [NSLayoutConstraint constraintWithItem:_filterView attribute:4 relatedBy:0 toItem:view attribute:4 multiplier:1.0 constant:0.0];
  [view addConstraint:v7];
}

- (NSArray)filters
{
  _filterView = [(AXDisplayFilterOverlayViewController *)self _filterView];

  if (!_filterView)
  {
    view = [(AXDisplayFilterOverlayViewController *)self view];
  }

  _filterView2 = [(AXDisplayFilterOverlayViewController *)self _filterView];
  filters = [_filterView2 filters];

  return filters;
}

- (void)setFilters:(id)filters
{
  filtersCopy = filters;
  _filterView = [(AXDisplayFilterOverlayViewController *)self _filterView];

  if (!_filterView)
  {
    view = [(AXDisplayFilterOverlayViewController *)self view];
  }

  _filterView2 = [(AXDisplayFilterOverlayViewController *)self _filterView];
  [_filterView2 setFilters:filtersCopy];
}

@end