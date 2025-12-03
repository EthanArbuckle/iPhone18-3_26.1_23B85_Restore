@interface NTKUpNextStatusBarDynamicUnderlay
- (NTKUpNextStatusBarDynamicUnderlay)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)layoutSubviews;
- (void)updateBackgroundColor;
@end

@implementation NTKUpNextStatusBarDynamicUnderlay

- (NTKUpNextStatusBarDynamicUnderlay)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = NTKUpNextStatusBarDynamicUnderlay;
  v3 = [(NTKUpNextStatusBarDynamicUnderlay *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(NTKUpNextStatusBarDynamicUnderlay *)v3 updateBackgroundColor];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"updateBackgroundColor" name:UIAccessibilityReduceTransparencyStatusDidChangeNotification object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIAccessibilityReduceTransparencyStatusDidChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = NTKUpNextStatusBarDynamicUnderlay;
  [(NTKUpNextStatusBarDynamicUnderlay *)&v4 dealloc];
}

- (void)updateBackgroundColor
{
  [(UIView *)self->_overlayView removeFromSuperview];
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v4 = +[UIColor blackColor];
    [(UIView *)v3 setBackgroundColor:v4];
  }

  else
  {
    v3 = objc_alloc_init(UIVisualEffectView);
    v5 = [UIBlurEffect effectWithBlurRadius:20.0];
    v6 = [UIColorEffect colorEffectSaturate:0.7, v5];
    v11[1] = v6;
    v7 = [UIColorEffect colorEffectBrightness:-0.25];
    v11[2] = v7;
    v8 = [NSArray arrayWithObjects:v11 count:3];

    [(UIView *)v3 setBackgroundEffects:v8];
  }

  overlayView = self->_overlayView;
  self->_overlayView = v3;
  v10 = v3;

  [(NTKUpNextStatusBarDynamicUnderlay *)self addSubview:v10];
  [(NTKUpNextStatusBarDynamicUnderlay *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = NTKUpNextStatusBarDynamicUnderlay;
  [(NTKUpNextStatusBarDynamicUnderlay *)&v10 layoutSubviews];
  v3 = +[NTKFaceViewRenderingContext sharedRenderingContext];
  device = [v3 device];

  sub_B3F4(device, v8);
  v5 = v9;
  v6 = -v9;
  [(NTKUpNextStatusBarDynamicUnderlay *)self bounds];
  Width = CGRectGetWidth(v11);
  [(NTKUpNextStatusBarDynamicUnderlay *)self bounds];
  [(UIView *)self->_overlayView setFrame:0.0, v6, Width, v5 + CGRectGetHeight(v12) + 1.0];
}

@end