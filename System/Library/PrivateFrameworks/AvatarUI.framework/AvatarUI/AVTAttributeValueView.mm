@interface AVTAttributeValueView
+ (CGRect)imageViewRectForBounds:(CGRect)bounds imageSizeRatio:(CGSize)ratio scale:(double)scale;
- (AVTAttributeValueView)initWithFrame:(CGRect)frame;
- (CGRect)selectorRect;
- (CGSize)imageSizeRatio;
- (id)clippingBezierPath;
- (id)selectionBezierPath;
- (void)bringSelectionLayersToFront;
- (void)cleanupAfterTransition;
- (void)configureImageLayer:(id)layer;
- (void)discardContent;
- (void)layoutSubviews;
- (void)prepareForTransitionToImage:(id)image;
- (void)relayoutSublayers;
- (void)setImageSizeRatio:(CGSize)ratio;
- (void)setSelectionStyle:(unint64_t)style;
- (void)setShowPlaceholder:(BOOL)placeholder;
- (void)traitCollectionDidChange:(id)change;
- (void)updateCornerRadii;
- (void)updateHighlightedState:(BOOL)state animated:(BOOL)animated completionBlock:(id)block;
- (void)updateSelectedState:(BOOL)state animated:(BOOL)animated;
- (void)updateSelectionAndMaskLayer;
- (void)updateWithImage:(id)image;
@end

@implementation AVTAttributeValueView

- (AVTAttributeValueView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v31.receiver = self;
  v31.super_class = AVTAttributeValueView;
  v7 = [(AVTAttributeValueView *)&v31 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    __asm { FMOV            V0.2D, #1.0 }

    *(v7 + 488) = _Q0;
    v14 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{x, y, width, height}];
    contentView = v8->_contentView;
    v8->_contentView = v14;

    [(UIView *)v8->_contentView setAutoresizingMask:18];
    [(AVTAttributeValueView *)v8 addSubview:v8->_contentView];
    v16 = objc_alloc_init(MEMORY[0x1E6979398]);
    imageLayer = v8->_imageLayer;
    v8->_imageLayer = v16;

    [(AVTAttributeValueView *)v8 configureImageLayer:v8->_imageLayer];
    layer = [(UIView *)v8->_contentView layer];
    [layer addSublayer:v8->_imageLayer];

    v19 = objc_alloc_init(MEMORY[0x1E6979398]);
    transitionImageLayer = v8->_transitionImageLayer;
    v8->_transitionImageLayer = v19;

    [(CALayer *)v8->_transitionImageLayer setOpacity:0.0];
    [(AVTAttributeValueView *)v8 configureImageLayer:v8->_transitionImageLayer];
    layer2 = [(UIView *)v8->_contentView layer];
    [layer2 addSublayer:v8->_transitionImageLayer];

    layer3 = [MEMORY[0x1E69794A0] layer];
    selectionLayer = v8->_selectionLayer;
    v8->_selectionLayer = layer3;

    v24 = +[AVTUIColorRepository attributeValueCellSelectedStrokeColor];
    -[CAShapeLayer setStrokeColor:](v8->_selectionLayer, "setStrokeColor:", [v24 CGColor]);

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    -[CAShapeLayer setFillColor:](v8->_selectionLayer, "setFillColor:", [clearColor CGColor]);

    [(CAShapeLayer *)v8->_selectionLayer setLineWidth:3.0];
    [(CAShapeLayer *)v8->_selectionLayer setOpacity:0.0];
    layer4 = [(AVTAttributeValueView *)v8 layer];
    [layer4 addSublayer:v8->_selectionLayer];

    layer5 = [MEMORY[0x1E69794A0] layer];
    clippingLayer = v8->_clippingLayer;
    v8->_clippingLayer = layer5;

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    -[CAShapeLayer setFillColor:](v8->_clippingLayer, "setFillColor:", [blackColor CGColor]);

    [(CAShapeLayer *)v8->_clippingLayer setLineWidth:0.0];
  }

  return v8;
}

- (void)updateSelectionAndMaskLayer
{
  [(AVTAttributeValueView *)self shapeLayerRect];
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  if (!CGRectIsEmpty(v31))
  {
    selectionLayer = [(AVTAttributeValueView *)self selectionLayer];
    [selectionLayer frame];
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v8 = CGRectEqualToRect(v32, v33);

    if (!v8)
    {
      selectionLayer2 = [(AVTAttributeValueView *)self selectionLayer];
      [selectionLayer2 setBounds:{x, y, width, height}];

      selectionBezierPath = [(AVTAttributeValueView *)self selectionBezierPath];
      cGPath = [selectionBezierPath CGPath];
      selectionLayer3 = [(AVTAttributeValueView *)self selectionLayer];
      [selectionLayer3 setPath:cGPath];

      clippingLayer = [(AVTAttributeValueView *)self clippingLayer];
      [clippingLayer setBounds:{x, y, width, height}];

      clippingBezierPath = [(AVTAttributeValueView *)self clippingBezierPath];
      cGPath2 = [clippingBezierPath CGPath];
      clippingLayer2 = [(AVTAttributeValueView *)self clippingLayer];
      [clippingLayer2 setPath:cGPath2];
    }

    v17 = +[AVTUIColorRepository attributeValueCellSelectedStrokeColor];
    cGColor = [v17 CGColor];
    selectionLayer4 = [(AVTAttributeValueView *)self selectionLayer];
    [selectionLayer4 setStrokeColor:cGColor];

    [(AVTAttributeValueView *)self bounds];
    UIRectGetCenter();
    v21 = v20;
    v23 = v22;
    selectionLayer5 = [(AVTAttributeValueView *)self selectionLayer];
    [selectionLayer5 setPosition:{v21, v23}];

    clippingLayer3 = [(AVTAttributeValueView *)self clippingLayer];
    [clippingLayer3 setPosition:{v21, v23}];

    if ([(AVTAttributeValueView *)self selectionStyle]== 1 || [(AVTAttributeValueView *)self isSelected])
    {
      clippingLayer4 = [(AVTAttributeValueView *)self clippingLayer];
      v26 = 1;
    }

    else
    {
      v26 = 0;
      clippingLayer4 = 0;
    }

    contentView = [(AVTAttributeValueView *)self contentView];
    layer = [contentView layer];
    [layer setMask:clippingLayer4];

    if (v26)
    {
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = AVTAttributeValueView;
  [(AVTAttributeValueView *)&v10 traitCollectionDidChange:changeCopy];
  [(AVTAttributeValueView *)self updateSelectionAndMaskLayer];
  if (self->_showPlaceholder)
  {
    userInterfaceStyle = [changeCopy userInterfaceStyle];
    traitCollection = [(AVTAttributeValueView *)self traitCollection];
    userInterfaceStyle2 = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle != userInterfaceStyle2)
    {
      traitCollection2 = [(AVTAttributeValueView *)self traitCollection];
      v9 = AVTFlatSilhouetteImageForTraitCollection(traitCollection2);
      [(AVTAttributeValueView *)self updateWithImage:v9];
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVTAttributeValueView;
  [(AVTAttributeValueView *)&v3 layoutSubviews];
  [(AVTAttributeValueView *)self relayoutSublayers];
  [(AVTAttributeValueView *)self updateSelectionAndMaskLayer];
  [(AVTAttributeValueView *)self updateCornerRadii];
}

- (void)relayoutSublayers
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  [(AVTAttributeValueView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(AVTAttributeValueView *)self imageSizeRatio];
  v13 = v12;
  v15 = v14;
  window = [(AVTAttributeValueView *)self window];
  screen = [window screen];
  [screen scale];
  [v3 imageViewRectForBounds:v5 imageSizeRatio:v7 scale:{v9, v11, v13, v15, v18}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [(AVTAttributeValueView *)self bounds];
  UIRectGetCenter();
  v28 = v27;
  v30 = v29;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  imageLayer = [(AVTAttributeValueView *)self imageLayer];
  [imageLayer setPosition:{v28, v30}];

  imageLayer2 = [(AVTAttributeValueView *)self imageLayer];
  [imageLayer2 setBounds:{v20, v22, v24, v26}];

  transitionImageLayer = [(AVTAttributeValueView *)self transitionImageLayer];
  [transitionImageLayer setPosition:{v28, v30}];

  transitionImageLayer2 = [(AVTAttributeValueView *)self transitionImageLayer];
  [transitionImageLayer2 setBounds:{v20, v22, v24, v26}];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  imageLayer3 = [(AVTAttributeValueView *)self imageLayer];
  sublayers = [imageLayer3 sublayers];

  v37 = [sublayers countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v44;
    do
    {
      v40 = 0;
      do
      {
        if (*v44 != v39)
        {
          objc_enumerationMutation(sublayers);
        }

        v41 = *(*(&v43 + 1) + 8 * v40);
        imageLayer4 = [(AVTAttributeValueView *)self imageLayer];
        [imageLayer4 bounds];
        [v41 setFrame:?];

        ++v40;
      }

      while (v38 != v40);
      v38 = [sublayers countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v38);
  }

  [MEMORY[0x1E6979518] commit];
}

- (CGRect)selectorRect
{
  [(AVTAttributeValueView *)self shapeLayerRect];
  width = v21.size.width;
  height = v21.size.height;
  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  v21.origin.x = *MEMORY[0x1E695EFF8];
  v21.origin.y = v6;
  CGRectGetWidth(v21);
  v22.origin.x = v5;
  v22.origin.y = v6;
  v22.size.width = width;
  v22.size.height = height;
  CGRectGetHeight(v22);
  UIRectGetCenter();
  window = [(AVTAttributeValueView *)self window];
  screen = [window screen];
  [screen scale];
  UIRectCenteredAboutPointScale();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)configureImageLayer:(id)layer
{
  v3 = *MEMORY[0x1E69796E8];
  layerCopy = layer;
  [layerCopy setCornerCurve:v3];
  [layerCopy setCornerRadius:6.0];
  [layerCopy setMasksToBounds:1];
  [layerCopy setContentsGravity:*MEMORY[0x1E6979DF0]];
}

+ (CGRect)imageViewRectForBounds:(CGRect)bounds imageSizeRatio:(CGSize)ratio scale:(double)scale
{
  height = ratio.height;
  width = ratio.width;
  v8 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  _UIScaleTransformForAspectFitOfSizeInTargetSize();
  memset(&v9, 0, sizeof(v9));
  v13.origin.x = v8;
  v13.origin.y = v7;
  v13.size.width = width;
  v13.size.height = height;
  CGRectApplyAffineTransform(v13, &v9);
  UIRectGetCenter();
  UIRectCenteredAboutPointScale();
  return CGRectInset(v14, 8.0, 8.0);
}

- (id)selectionBezierPath
{
  [(AVTAttributeValueView *)self selectorRect];
  v11 = CGRectInset(v10, 1.5, 1.5);
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  if ([(AVTAttributeValueView *)self selectionStyle]== 1)
  {
    [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{x, y, width, height}];
  }

  else
  {
    [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:x cornerRadius:{y, width, height, 12.0}];
  }
  v7 = ;

  return v7;
}

- (id)clippingBezierPath
{
  if ([(AVTAttributeValueView *)self selectionStyle])
  {
    v3 = objc_opt_class();
    [(AVTAttributeValueView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(AVTAttributeValueView *)self imageSizeRatio];
    [v3 imageViewRectForBounds:v5 imageSizeRatio:v7 scale:{v9, v11, v12, v13, 0.0}];
    [(AVTAttributeValueView *)self shapeLayerRect];
    v14 = MEMORY[0x1E69DC728];
    UIRectGetCenter();
    UIRectCenteredAboutPoint();
    [v14 bezierPathWithOvalInRect:?];
  }

  else
  {
    [(AVTAttributeValueView *)self selectorRect];
    v23 = CGRectInset(v22, 8.0, 8.0);
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
    [(AVTAttributeValueView *)self shapeLayerRect];
    [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:x cornerRadius:{y, width, height, 5.5}];
  }
  v15 = ;

  return v15;
}

- (void)setSelectionStyle:(unint64_t)style
{
  if (self->_selectionStyle != style)
  {
    self->_selectionStyle = style;
    [(AVTAttributeValueView *)self setNeedsLayout];
  }
}

- (void)updateCornerRadii
{
  v3 = 0.0;
  if (![(AVTAttributeValueView *)self selectionStyle])
  {
    v4 = *MEMORY[0x1E69796E8];
    imageLayer = [(AVTAttributeValueView *)self imageLayer];
    [imageLayer setCornerCurve:v4];

    v3 = 6.0;
  }

  imageLayer2 = [(AVTAttributeValueView *)self imageLayer];
  [imageLayer2 setCornerRadius:v3];
}

- (void)setImageSizeRatio:(CGSize)ratio
{
  if (self->_imageSizeRatio.width != ratio.width || self->_imageSizeRatio.height != ratio.height)
  {
    self->_imageSizeRatio = ratio;
    [(AVTAttributeValueView *)self setNeedsLayout];
  }
}

- (void)updateHighlightedState:(BOOL)state animated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  stateCopy = state;
  blockCopy = block;
  memset(&v13, 0, sizeof(v13));
  if (stateCopy)
  {
    CGAffineTransformMakeScale(&v13, 0.95, 0.95);
    if (!animatedCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v12 = v13;
    v11[2] = __73__AVTAttributeValueView_updateHighlightedState_animated_completionBlock___block_invoke;
    v11[3] = &unk_1E7F3C0A0;
    v11[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v11 options:blockCopy animations:0.1 completion:0.0];
    goto LABEL_7;
  }

  v9 = *(MEMORY[0x1E695EFD0] + 16);
  *&v13.a = *MEMORY[0x1E695EFD0];
  *&v13.c = v9;
  *&v13.tx = *(MEMORY[0x1E695EFD0] + 32);
  if (animatedCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  v10 = v13;
  [(AVTAttributeValueView *)self setTransform:&v10];
  if (blockCopy)
  {
    blockCopy[2](blockCopy, 1);
  }

LABEL_7:
}

uint64_t __73__AVTAttributeValueView_updateHighlightedState_animated_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  v3[0] = *(a1 + 40);
  v3[1] = v1;
  v3[2] = *(a1 + 72);
  return [*(a1 + 32) setTransform:v3];
}

- (void)updateSelectedState:(BOOL)state animated:(BOOL)animated
{
  animatedCopy = animated;
  stateCopy = state;
  [(AVTAttributeValueView *)self setSelected:?];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(AVTAttributeValueView *)self updateSelectionAndMaskLayer];
  if (animatedCopy)
  {
    [MEMORY[0x1E6979518] commit];
    if (stateCopy)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    selectionLayer = [(AVTAttributeValueView *)self selectionLayer];
    *&v8 = v7;
    [selectionLayer setOpacity:v8];
  }

  else
  {
    if (stateCopy)
    {
      v9 = 1.0;
    }

    else
    {
      v9 = 0.0;
    }

    selectionLayer2 = [(AVTAttributeValueView *)self selectionLayer];
    *&v11 = v9;
    [selectionLayer2 setOpacity:v11];

    v12 = MEMORY[0x1E6979518];

    [v12 commit];
  }
}

- (void)bringSelectionLayersToFront
{
  imageLayer = [(AVTAttributeValueView *)self imageLayer];
  [imageLayer removeFromSuperlayer];

  selectionLayer = [(AVTAttributeValueView *)self selectionLayer];
  [selectionLayer removeFromSuperlayer];

  contentView = [(AVTAttributeValueView *)self contentView];
  layer = [contentView layer];
  imageLayer2 = [(AVTAttributeValueView *)self imageLayer];
  [layer addSublayer:imageLayer2];

  layer2 = [(AVTAttributeValueView *)self layer];
  selectionLayer2 = [(AVTAttributeValueView *)self selectionLayer];
  [layer2 addSublayer:selectionLayer2];
}

- (void)updateWithImage:(id)image
{
  imageCopy = image;
  image = [(AVTAttributeValueView *)self image];

  if (image != imageCopy)
  {
    [(AVTAttributeValueView *)self setImage:imageCopy];
    self->_showPlaceholder = 0;
  }

  v5 = imageCopy;
  cGImage = [imageCopy CGImage];
  imageLayer = [(AVTAttributeValueView *)self imageLayer];
  [imageLayer setContents:cGImage];
}

- (void)prepareForTransitionToImage:(id)image
{
  imageCopy = image;
  image = [(AVTAttributeValueView *)self image];

  if (image != imageCopy)
  {
    [(AVTAttributeValueView *)self setImage:imageCopy];
    self->_showPlaceholder = 0;
  }

  v5 = imageCopy;
  cGImage = [imageCopy CGImage];
  transitionImageLayer = [(AVTAttributeValueView *)self transitionImageLayer];
  [transitionImageLayer setContents:cGImage];
}

- (void)setShowPlaceholder:(BOOL)placeholder
{
  if (self->_showPlaceholder != placeholder)
  {
    self->_showPlaceholder = placeholder;
    if (placeholder)
    {
      traitCollection = [(AVTAttributeValueView *)self traitCollection];
      v6 = AVTFlatSilhouetteImageForTraitCollection(traitCollection);
    }

    else
    {
      v6 = 0;
    }

    [(AVTAttributeValueView *)self updateWithImage:v6];
  }
}

- (void)cleanupAfterTransition
{
  imageLayer = [(AVTAttributeValueView *)self imageLayer];
  transitionImageLayer = [(AVTAttributeValueView *)self transitionImageLayer];
  [(AVTAttributeValueView *)self setImageLayer:transitionImageLayer];

  [(AVTAttributeValueView *)self bringSelectionLayersToFront];
  [(AVTAttributeValueView *)self setTransitionImageLayer:imageLayer];
}

- (void)discardContent
{
  [(AVTAttributeValueView *)self updateWithImage:0];
  discardableContentHandler = [(AVTAttributeValueView *)self discardableContentHandler];

  if (discardableContentHandler)
  {
    discardableContentHandler2 = [(AVTAttributeValueView *)self discardableContentHandler];
    discardableContentHandler2[2](discardableContentHandler2, self);
  }
}

- (CGSize)imageSizeRatio
{
  width = self->_imageSizeRatio.width;
  height = self->_imageSizeRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

@end