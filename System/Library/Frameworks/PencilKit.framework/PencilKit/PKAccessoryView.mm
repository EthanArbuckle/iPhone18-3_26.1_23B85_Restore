@interface PKAccessoryView
- (BOOL)showsDragIndicator;
- (PKAccessoryView)initWithFrame:(CGRect)frame;
- (double)scalingFactor;
- (unint64_t)edgeLocation;
- (void)setEdgeLocation:(unint64_t)location;
- (void)setScalingFactor:(double)factor;
- (void)setShowsDragIndicator:(BOOL)indicator;
@end

@implementation PKAccessoryView

- (PKAccessoryView)initWithFrame:(CGRect)frame
{
  v16[2] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PKAccessoryView;
  v3 = [(PKAccessoryView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(PKDragIndicatorView);
    dragIndicatorView = v3->_dragIndicatorView;
    v3->_dragIndicatorView = v4;

    [(PKDragIndicatorView *)v3->_dragIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PKAccessoryView *)v3 addSubview:v3->_dragIndicatorView];
    v6 = MEMORY[0x1E696ACD8];
    centerXAnchor = [(PKDragIndicatorView *)v3->_dragIndicatorView centerXAnchor];
    centerXAnchor2 = [(PKAccessoryView *)v3 centerXAnchor];
    v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v16[0] = v9;
    centerYAnchor = [(PKDragIndicatorView *)v3->_dragIndicatorView centerYAnchor];
    centerYAnchor2 = [(PKAccessoryView *)v3 centerYAnchor];
    v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v16[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    [v6 activateConstraints:v13];

    [(PKAccessoryView *)v3 setShowsDragIndicator:1];
  }

  return v3;
}

- (BOOL)showsDragIndicator
{
  dragIndicatorView = [(PKAccessoryView *)self dragIndicatorView];
  isHidden = [dragIndicatorView isHidden];

  return isHidden ^ 1;
}

- (void)setShowsDragIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  dragIndicatorView = [(PKAccessoryView *)self dragIndicatorView];
  [dragIndicatorView setHidden:!indicatorCopy];
}

- (unint64_t)edgeLocation
{
  dragIndicatorView = [(PKAccessoryView *)self dragIndicatorView];
  edgeLocation = [dragIndicatorView edgeLocation];

  return edgeLocation;
}

- (void)setEdgeLocation:(unint64_t)location
{
  dragIndicatorView = [(PKAccessoryView *)self dragIndicatorView];
  [dragIndicatorView setEdgeLocation:location];
}

- (void)setScalingFactor:(double)factor
{
  dragIndicatorView = [(PKAccessoryView *)self dragIndicatorView];
  [dragIndicatorView setScalingFactor:factor];
}

- (double)scalingFactor
{
  dragIndicatorView = [(PKAccessoryView *)self dragIndicatorView];
  [dragIndicatorView scalingFactor];
  v4 = v3;

  return v4;
}

@end