@interface PKProgressAlertContentView
- (CGSize)intrinsicContentSize;
- (PKProgressAlertContentView)initWithFrame:(CGRect)frame;
- (id)_shapeLayerPathForProgress:(double)progress;
- (void)layoutSubviews;
- (void)setProgress:(double)progress;
@end

@implementation PKProgressAlertContentView

- (void)layoutSubviews
{
  [(PKProgressAlertContentView *)self bounds];
  UIRectCenteredIntegralRect();
  [(_PKAnimatableBorderCornerRadiusView *)self->_outerRingView setFrame:?];
  UIRectCenteredIntegralRect();
  [(_PKPathView *)self->_innerPieView setFrame:?];
  [(_PKAnimatableBorderCornerRadiusView *)self->_outerRingView setBorderWidth:4.0];
  [(_PKAnimatableBorderCornerRadiusView *)self->_outerRingView setCornerRadius:20.0];
  outerRingView = self->_outerRingView;
  tintColor = [(PKProgressAlertContentView *)self tintColor];
  [(_PKAnimatableBorderCornerRadiusView *)outerRingView setBorderColor:tintColor];

  innerPieView = self->_innerPieView;
  tintColor2 = [(PKProgressAlertContentView *)self tintColor];
  [(_PKPathView *)innerPieView setFillColor:tintColor2];
}

- (id)_shapeLayerPathForProgress:(double)progress
{
  bezierPath = [MEMORY[0x1E69DC728] bezierPath];
  [bezierPath moveToPoint:{18.0, 18.0}];
  [bezierPath addArcWithCenter:1 radius:18.0 startAngle:18.0 endAngle:18.0 clockwise:{-1.57079633, progress * 6.28318531 + -1.57079633}];
  [bezierPath closePath];

  return bezierPath;
}

- (CGSize)intrinsicContentSize
{
  v2 = 105.0;
  v3 = 105.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setProgress:(double)progress
{
  progress = self->_progress;
  self->_progress = progress;
  if (progress < 0.1)
  {
    progress = 0.1;
  }

  if (progress < 0.1)
  {
    progress = 0.1;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__PKProgressAlertContentView_setProgress___block_invoke;
  v4[3] = &unk_1E82D98D8;
  *&v4[6] = progress;
  v4[7] = 0x3F847AE147AE147BLL;
  v4[4] = self;
  v4[5] = fmax((progress - progress) / 0.01, 1.0);
  [MEMORY[0x1E69DD250] animateKeyframesWithDuration:4 delay:v4 options:0 animations:? completion:?];
}

uint64_t __42__PKProgressAlertContentView_setProgress___block_invoke(uint64_t result)
{
  v5 = *(result + 40);
  if (v5 >= 1)
  {
    v10[6] = v4;
    v10[7] = v3;
    v10[14] = v1;
    v10[15] = v2;
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x1E69E9820];
    do
    {
      v9 = *(v6 + 48) + v7 * *(v6 + 56);
      v10[0] = v8;
      v10[1] = 3221225472;
      v10[2] = __42__PKProgressAlertContentView_setProgress___block_invoke_2;
      v10[3] = &unk_1E82D7170;
      v10[4] = *(v6 + 32);
      *&v10[5] = v9;
      result = [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v10 relativeDuration:v7++ / v5 animations:1.0 / v5];
      v5 = *(v6 + 40);
    }

    while (v7 < v5);
  }

  return result;
}

void __42__PKProgressAlertContentView_setProgress___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 416);
  v2 = [*(a1 + 32) _shapeLayerPathForProgress:*(a1 + 40)];
  [v1 setPath:v2];
}

- (PKProgressAlertContentView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = PKProgressAlertContentView;
  v3 = [(PKProgressAlertContentView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = objc_alloc_init(_PKAnimatableBorderCornerRadiusView);
  outerRingView = v3->_outerRingView;
  v3->_outerRingView = v4;

  [(PKProgressAlertContentView *)v3 addSubview:v3->_outerRingView];
  v6 = objc_alloc_init(_PKPathView);
  innerPieView = v3->_innerPieView;
  v3->_innerPieView = v6;

  [(PKProgressAlertContentView *)v3 addSubview:v3->_innerPieView];
  v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.455 alpha:1.0];
  [(PKProgressAlertContentView *)v3 setTintColor:v8];

  return v3;
}

@end