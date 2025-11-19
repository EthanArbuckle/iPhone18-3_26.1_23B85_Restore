@interface AXDisplayFilterOverlayViewController
- (NSArray)filters;
- (void)_applyInitialLayoutConstraints;
- (void)fadeToBlackAndComeBack:(double)a3 completion:(id)a4;
- (void)loadView;
- (void)setFilters:(id)a3;
@end

@implementation AXDisplayFilterOverlayViewController

- (void)fadeToBlackAndComeBack:(double)a3 completion:(id)a4
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
  v7 = a3;
  v5[4] = self;
  v6 = a4;
  v4 = v6;
  [UIView animateWithDuration:v8 animations:v5 completion:v7 * 0.25];
}

- (void)loadView
{
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(AXDisplayFilterOverlayViewController *)self setView:v9];
  v7 = [[AXDisplayFilterOverlayView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(AXDisplayFilterOverlayView *)v7 setTranslatesAutoresizingMaskIntoConstraints:1];
  [(AXDisplayFilterOverlayView *)v7 setAutoresizingMask:18];
  [(AXDisplayFilterOverlayView *)v7 setAlpha:0.0];
  v8 = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1.0];
  [(AXDisplayFilterOverlayView *)v7 setBackgroundColor:v8];

  [(AXDisplayFilterOverlayViewController *)self set_filterView:v7];
  [v9 addSubview:v7];
  [(AXDisplayFilterOverlayViewController *)self _applyInitialLayoutConstraints];
}

- (void)_applyInitialLayoutConstraints
{
  v8 = [(AXDisplayFilterOverlayViewController *)self view];
  v3 = [(AXDisplayFilterOverlayViewController *)self _filterView];
  v4 = [NSLayoutConstraint constraintWithItem:v3 attribute:1 relatedBy:0 toItem:v8 attribute:1 multiplier:1.0 constant:0.0];
  [v8 addConstraint:v4];

  v5 = [NSLayoutConstraint constraintWithItem:v3 attribute:2 relatedBy:0 toItem:v8 attribute:2 multiplier:1.0 constant:0.0];
  [v8 addConstraint:v5];

  v6 = [NSLayoutConstraint constraintWithItem:v3 attribute:3 relatedBy:0 toItem:v8 attribute:3 multiplier:1.0 constant:0.0];
  [v8 addConstraint:v6];

  v7 = [NSLayoutConstraint constraintWithItem:v3 attribute:4 relatedBy:0 toItem:v8 attribute:4 multiplier:1.0 constant:0.0];
  [v8 addConstraint:v7];
}

- (NSArray)filters
{
  v3 = [(AXDisplayFilterOverlayViewController *)self _filterView];

  if (!v3)
  {
    v4 = [(AXDisplayFilterOverlayViewController *)self view];
  }

  v5 = [(AXDisplayFilterOverlayViewController *)self _filterView];
  v6 = [v5 filters];

  return v6;
}

- (void)setFilters:(id)a3
{
  v4 = a3;
  v5 = [(AXDisplayFilterOverlayViewController *)self _filterView];

  if (!v5)
  {
    v6 = [(AXDisplayFilterOverlayViewController *)self view];
  }

  v7 = [(AXDisplayFilterOverlayViewController *)self _filterView];
  [v7 setFilters:v4];
}

@end