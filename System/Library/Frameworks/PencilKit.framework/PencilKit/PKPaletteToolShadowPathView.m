@interface PKPaletteToolShadowPathView
- (CGSize)intrinsicContentSize;
- (PKPaletteToolShadowPathView)initWithToolConfiguration:(id)a3;
- (void)_applyLargeShadowToLayer:(id)a3;
- (void)_applySmallShadowToLayer:(id)a3;
- (void)_updateUI;
- (void)applyShadowToLayer:(id)a3;
- (void)layoutSubviews;
- (void)setEdgeLocation:(unint64_t)a3;
- (void)setScalingFactor:(double)a3;
@end

@implementation PKPaletteToolShadowPathView

- (PKPaletteToolShadowPathView)initWithToolConfiguration:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKPaletteToolShadowPathView;
  v5 = [(PKPaletteToolShadowPathView *)&v21 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(PKPaletteToolShadowPathView *)v5 setUserInteractionEnabled:0];
    v7 = [(PKPaletteToolShadowPathView *)v6 layer];
    [v7 setMasksToBounds:0];

    v8 = [v4 shadowPath];
    v9 = [v8 CGPath];

    v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
    largeShadow = v6->_largeShadow;
    v6->_largeShadow = v10;

    [(UIView *)v6->_largeShadow setUserInteractionEnabled:0];
    v12 = [(UIView *)v6->_largeShadow layer];
    [v12 setShadowPath:v9];

    v13 = [(UIView *)v6->_largeShadow layer];
    [(PKPaletteToolShadowPathView *)v6 _applyLargeShadowToLayer:v13];

    [(PKPaletteToolShadowPathView *)v6 addSubview:v6->_largeShadow];
    v14 = [v4 shadowPathIncludingTip];
    v15 = [v14 CGPath];

    if (v15)
    {
      v9 = v15;
    }

    v16 = objc_alloc_init(MEMORY[0x1E69DD250]);
    smallShadow = v6->_smallShadow;
    v6->_smallShadow = v16;

    [(UIView *)v6->_smallShadow setUserInteractionEnabled:0];
    v18 = [(UIView *)v6->_smallShadow layer];
    [v18 setShadowPath:v9];

    v19 = [(UIView *)v6->_smallShadow layer];
    [(PKPaletteToolShadowPathView *)v6 _applySmallShadowToLayer:v19];

    [(PKPaletteToolShadowPathView *)v6 addSubview:v6->_smallShadow];
    [(PKPaletteToolShadowPathView *)v6 _updateUI];
  }

  return v6;
}

- (void)applyShadowToLayer:(id)a3
{
  v20 = a3;
  [(PKPaletteToolShadowPathView *)self _applyLargeShadowToLayer:v20];
  [v20 shadowRadius];
  v5 = v4;
  [(PKPaletteToolShadowPathView *)self scalingFactor];
  [v20 setShadowRadius:v5 * v6];
  [v20 shadowOffset];
  v8 = v7;
  [(PKPaletteToolShadowPathView *)self scalingFactor];
  v10 = v8 * v9;
  [v20 shadowOffset];
  v12 = v11;
  [(PKPaletteToolShadowPathView *)self scalingFactor];
  [v20 setShadowOffset:{v10, v12 * v13}];
  if ([(PKPaletteToolShadowPathView *)self edgeLocation]== 2)
  {
    [v20 shadowOffset];
    v15 = -v14;
    [v20 shadowOffset];
    v17 = v16;
  }

  else
  {
    if ([(PKPaletteToolShadowPathView *)self edgeLocation]!= 8)
    {
      goto LABEL_6;
    }

    [v20 shadowOffset];
    v15 = v18;
    [v20 shadowOffset];
    v17 = -v19;
  }

  [v20 setShadowOffset:{v15, v17}];
LABEL_6:
}

- (void)_applyLargeShadowToLayer:(id)a3
{
  v3 = MEMORY[0x1E69DC888];
  v6 = a3;
  v4 = [v3 blackColor];
  [v6 setShadowColor:{objc_msgSend(v4, "CGColor")}];

  [v6 setShadowRadius:8.0];
  LODWORD(v5) = 1036831949;
  [v6 setShadowOpacity:v5];
  [v6 setShadowOffset:{0.0, 3.0}];
}

- (void)_applySmallShadowToLayer:(id)a3
{
  v3 = MEMORY[0x1E69DC888];
  v6 = a3;
  v4 = [v3 blackColor];
  [v6 setShadowColor:{objc_msgSend(v4, "CGColor")}];

  [v6 setShadowRadius:1.0];
  LODWORD(v5) = 1041865114;
  [v6 setShadowOpacity:v5];
  [v6 setShadowOffset:{0.0, 3.0}];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKPaletteToolShadowPathView;
  [(PKPaletteToolShadowPathView *)&v3 layoutSubviews];
  [(PKPaletteToolShadowPathView *)self bounds];
  [(UIView *)self->_largeShadow setFrame:?];
  [(PKPaletteToolShadowPathView *)self bounds];
  [(UIView *)self->_smallShadow setFrame:?];
}

- (void)setEdgeLocation:(unint64_t)a3
{
  if (self->_edgeLocation != a3)
  {
    self->_edgeLocation = a3;
    [(PKPaletteToolShadowPathView *)self _updateUI];

    [(PKPaletteToolShadowPathView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setScalingFactor:(double)a3
{
  scalingFactor = self->_scalingFactor;
  if (scalingFactor != a3 && vabdd_f64(scalingFactor, a3) >= fabs(a3 * 0.000000999999997))
  {
    self->_scalingFactor = a3;
    [(PKPaletteToolShadowPathView *)self _updateUI];

    [(PKPaletteToolShadowPathView *)self invalidateIntrinsicContentSize];
  }
}

- (void)_updateUI
{
  if ([(PKPaletteToolShadowPathView *)self edgeLocation]== 2)
  {
    v3 = 1.57079633;
  }

  else if ([(PKPaletteToolShadowPathView *)self edgeLocation]== 8)
  {
    v3 = -1.57079633;
  }

  else
  {
    v3 = 0.0;
  }

  memset(&v12, 0, sizeof(v12));
  [(PKPaletteToolShadowPathView *)self scalingFactor];
  v5 = v4;
  [(PKPaletteToolShadowPathView *)self scalingFactor];
  CGAffineTransformMakeScale(&v12, v5, v6);
  v10 = v12;
  CGAffineTransformRotate(&v11, &v10, v3);
  largeShadow = self->_largeShadow;
  v10 = v11;
  [(UIView *)largeShadow setTransform:&v10];
  v10 = v12;
  CGAffineTransformRotate(&v9, &v10, v3);
  smallShadow = self->_smallShadow;
  v10 = v9;
  [(UIView *)smallShadow setTransform:&v10];
}

- (CGSize)intrinsicContentSize
{
  v3 = [(PKPaletteToolShadowPathView *)self edgeLocation];
  v4 = 46.0;
  v5 = 106.0;
  if (v3 != 2 && v3 != 8)
  {
    v4 = 106.0;
    v5 = 46.0;
  }

  [(PKPaletteToolShadowPathView *)self scalingFactor];
  v7 = v4 * v6;
  v8 = v5 * v6;
  result.height = v7;
  result.width = v8;
  return result;
}

@end