@interface PKDragIndicatorView
- (CGSize)intrinsicContentSize;
- (PKDragIndicatorView)init;
- (void)layoutSubviews;
- (void)setEdgeLocation:(unint64_t)a3;
- (void)setScalingFactor:(double)a3;
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
    v5 = [(PKDragIndicatorView *)v2 layer];
    [v5 setCornerCurve:v4];
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
  v8 = [(PKDragIndicatorView *)self layer];
  [v8 setCornerRadius:v7];

  v9 = [MEMORY[0x1E69DC888] pk_paletteButtonBackgroundColor];
  [(PKDragIndicatorView *)self setBackgroundColor:v9];
}

- (void)setEdgeLocation:(unint64_t)a3
{
  if (self->_edgeLocation != a3)
  {
    self->_edgeLocation = a3;
    [(PKDragIndicatorView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setScalingFactor:(double)a3
{
  if (self->_scalingFactor != a3)
  {
    self->_scalingFactor = a3;
    [(PKDragIndicatorView *)self invalidateIntrinsicContentSize];
  }
}

- (CGSize)intrinsicContentSize
{
  v3 = [(PKDragIndicatorView *)self edgeLocation];
  v5 = v3 == 2 || v3 == 8;
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