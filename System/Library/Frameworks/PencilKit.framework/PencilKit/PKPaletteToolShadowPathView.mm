@interface PKPaletteToolShadowPathView
- (CGSize)intrinsicContentSize;
- (PKPaletteToolShadowPathView)initWithToolConfiguration:(id)configuration;
- (void)_applyLargeShadowToLayer:(id)layer;
- (void)_applySmallShadowToLayer:(id)layer;
- (void)_updateUI;
- (void)applyShadowToLayer:(id)layer;
- (void)layoutSubviews;
- (void)setEdgeLocation:(unint64_t)location;
- (void)setScalingFactor:(double)factor;
@end

@implementation PKPaletteToolShadowPathView

- (PKPaletteToolShadowPathView)initWithToolConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v21.receiver = self;
  v21.super_class = PKPaletteToolShadowPathView;
  v5 = [(PKPaletteToolShadowPathView *)&v21 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(PKPaletteToolShadowPathView *)v5 setUserInteractionEnabled:0];
    layer = [(PKPaletteToolShadowPathView *)v6 layer];
    [layer setMasksToBounds:0];

    shadowPath = [configurationCopy shadowPath];
    cGPath = [shadowPath CGPath];

    v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
    largeShadow = v6->_largeShadow;
    v6->_largeShadow = v10;

    [(UIView *)v6->_largeShadow setUserInteractionEnabled:0];
    layer2 = [(UIView *)v6->_largeShadow layer];
    [layer2 setShadowPath:cGPath];

    layer3 = [(UIView *)v6->_largeShadow layer];
    [(PKPaletteToolShadowPathView *)v6 _applyLargeShadowToLayer:layer3];

    [(PKPaletteToolShadowPathView *)v6 addSubview:v6->_largeShadow];
    shadowPathIncludingTip = [configurationCopy shadowPathIncludingTip];
    cGPath2 = [shadowPathIncludingTip CGPath];

    if (cGPath2)
    {
      cGPath = cGPath2;
    }

    v16 = objc_alloc_init(MEMORY[0x1E69DD250]);
    smallShadow = v6->_smallShadow;
    v6->_smallShadow = v16;

    [(UIView *)v6->_smallShadow setUserInteractionEnabled:0];
    layer4 = [(UIView *)v6->_smallShadow layer];
    [layer4 setShadowPath:cGPath];

    layer5 = [(UIView *)v6->_smallShadow layer];
    [(PKPaletteToolShadowPathView *)v6 _applySmallShadowToLayer:layer5];

    [(PKPaletteToolShadowPathView *)v6 addSubview:v6->_smallShadow];
    [(PKPaletteToolShadowPathView *)v6 _updateUI];
  }

  return v6;
}

- (void)applyShadowToLayer:(id)layer
{
  layerCopy = layer;
  [(PKPaletteToolShadowPathView *)self _applyLargeShadowToLayer:layerCopy];
  [layerCopy shadowRadius];
  v5 = v4;
  [(PKPaletteToolShadowPathView *)self scalingFactor];
  [layerCopy setShadowRadius:v5 * v6];
  [layerCopy shadowOffset];
  v8 = v7;
  [(PKPaletteToolShadowPathView *)self scalingFactor];
  v10 = v8 * v9;
  [layerCopy shadowOffset];
  v12 = v11;
  [(PKPaletteToolShadowPathView *)self scalingFactor];
  [layerCopy setShadowOffset:{v10, v12 * v13}];
  if ([(PKPaletteToolShadowPathView *)self edgeLocation]== 2)
  {
    [layerCopy shadowOffset];
    v15 = -v14;
    [layerCopy shadowOffset];
    v17 = v16;
  }

  else
  {
    if ([(PKPaletteToolShadowPathView *)self edgeLocation]!= 8)
    {
      goto LABEL_6;
    }

    [layerCopy shadowOffset];
    v15 = v18;
    [layerCopy shadowOffset];
    v17 = -v19;
  }

  [layerCopy setShadowOffset:{v15, v17}];
LABEL_6:
}

- (void)_applyLargeShadowToLayer:(id)layer
{
  v3 = MEMORY[0x1E69DC888];
  layerCopy = layer;
  blackColor = [v3 blackColor];
  [layerCopy setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

  [layerCopy setShadowRadius:8.0];
  LODWORD(v5) = 1036831949;
  [layerCopy setShadowOpacity:v5];
  [layerCopy setShadowOffset:{0.0, 3.0}];
}

- (void)_applySmallShadowToLayer:(id)layer
{
  v3 = MEMORY[0x1E69DC888];
  layerCopy = layer;
  blackColor = [v3 blackColor];
  [layerCopy setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

  [layerCopy setShadowRadius:1.0];
  LODWORD(v5) = 1041865114;
  [layerCopy setShadowOpacity:v5];
  [layerCopy setShadowOffset:{0.0, 3.0}];
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

- (void)setEdgeLocation:(unint64_t)location
{
  if (self->_edgeLocation != location)
  {
    self->_edgeLocation = location;
    [(PKPaletteToolShadowPathView *)self _updateUI];

    [(PKPaletteToolShadowPathView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setScalingFactor:(double)factor
{
  scalingFactor = self->_scalingFactor;
  if (scalingFactor != factor && vabdd_f64(scalingFactor, factor) >= fabs(factor * 0.000000999999997))
  {
    self->_scalingFactor = factor;
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
  edgeLocation = [(PKPaletteToolShadowPathView *)self edgeLocation];
  v4 = 46.0;
  v5 = 106.0;
  if (edgeLocation != 2 && edgeLocation != 8)
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