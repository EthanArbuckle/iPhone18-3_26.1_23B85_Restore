@interface PKDragIndicatorView
- (CGSize)intrinsicContentSize;
- (PKDragIndicatorView)init;
- (void)layoutSubviews;
- (void)setEdgeLocation:(unint64_t)location;
- (void)setScalingFactor:(double)factor;
@end

@implementation PKDragIndicatorView

- (PKDragIndicatorView)init
{
  v7.receiver = self;
  v7.super_class = PKDragIndicatorView;
  v2 = [(PKDragIndicatorView *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v3 = v2;
  if (v2)
  {
    v2->_scalingFactor = 1.0;
    v4 = *MEMORY[0x1E69796E8];
    layer = [(PKDragIndicatorView *)v2 layer];
    [layer setCornerCurve:v4];
  }

  return v3;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = PKDragIndicatorView;
  [(PKDragIndicatorView *)&v10 layoutSubviews];
  [(PKDragIndicatorView *)self bounds];
  v4 = v3;
  [(PKDragIndicatorView *)self bounds];
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6 * 0.5;
  layer = [(PKDragIndicatorView *)self layer];
  [layer setCornerRadius:v7];

  pk_paletteButtonBackgroundColor = [MEMORY[0x1E69DC888] pk_paletteButtonBackgroundColor];
  [(PKDragIndicatorView *)self setBackgroundColor:pk_paletteButtonBackgroundColor];
}

- (void)setEdgeLocation:(unint64_t)location
{
  if (self->_edgeLocation != location)
  {
    self->_edgeLocation = location;
    [(PKDragIndicatorView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setScalingFactor:(double)factor
{
  if (self->_scalingFactor != factor)
  {
    self->_scalingFactor = factor;
    [(PKDragIndicatorView *)self invalidateIntrinsicContentSize];
  }
}

- (CGSize)intrinsicContentSize
{
  edgeLocation = [(PKDragIndicatorView *)self edgeLocation];
  v5 = edgeLocation == 2 || edgeLocation == 8;
  v6 = PKPaletteDragHandleSize(v5);
  v8 = v7;
  [(PKDragIndicatorView *)self scalingFactor];
  v10 = v8 * v9;
  v11 = v6 * v9;
  result.height = v10;
  result.width = v11;
  return result;
}

@end