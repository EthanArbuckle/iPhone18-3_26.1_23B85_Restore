@interface AVTAttributeValueView
+ (CGRect)imageViewRectForBounds:(CGRect)a3 imageSizeRatio:(CGSize)a4 scale:(double)a5;
- (AVTAttributeValueView)initWithFrame:(CGRect)a3;
- (CGRect)selectorRect;
- (CGSize)imageSizeRatio;
- (id)clippingBezierPath;
- (id)selectionBezierPath;
- (void)bringSelectionLayersToFront;
- (void)cleanupAfterTransition;
- (void)configureImageLayer:(id)a3;
- (void)discardContent;
- (void)layoutSubviews;
- (void)prepareForTransitionToImage:(id)a3;
- (void)relayoutSublayers;
- (void)setImageSizeRatio:(CGSize)a3;
- (void)setSelectionStyle:(unint64_t)a3;
- (void)setShowPlaceholder:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateCornerRadii;
- (void)updateHighlightedState:(BOOL)a3 animated:(BOOL)a4 completionBlock:(id)a5;
- (void)updateSelectedState:(BOOL)a3 animated:(BOOL)a4;
- (void)updateSelectionAndMaskLayer;
- (void)updateWithImage:(id)a3;
@end

@implementation AVTAttributeValueView

- (AVTAttributeValueView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v18 = [(UIView *)v8->_contentView layer];
    [v18 addSublayer:v8->_imageLayer];

    v19 = objc_alloc_init(MEMORY[0x1E6979398]);
    transitionImageLayer = v8->_transitionImageLayer;
    v8->_transitionImageLayer = v19;

    [(CALayer *)v8->_transitionImageLayer setOpacity:0.0];
    [(AVTAttributeValueView *)v8 configureImageLayer:v8->_transitionImageLayer];
    v21 = [(UIView *)v8->_contentView layer];
    [v21 addSublayer:v8->_transitionImageLayer];

    v22 = [MEMORY[0x1E69794A0] layer];
    selectionLayer = v8->_selectionLayer;
    v8->_selectionLayer = v22;

    v24 = +[AVTUIColorRepository attributeValueCellSelectedStrokeColor];
    -[CAShapeLayer setStrokeColor:](v8->_selectionLayer, "setStrokeColor:", [v24 CGColor]);

    v25 = [MEMORY[0x1E69DC888] clearColor];
    -[CAShapeLayer setFillColor:](v8->_selectionLayer, "setFillColor:", [v25 CGColor]);

    [(CAShapeLayer *)v8->_selectionLayer setLineWidth:3.0];
    [(CAShapeLayer *)v8->_selectionLayer setOpacity:0.0];
    v26 = [(AVTAttributeValueView *)v8 layer];
    [v26 addSublayer:v8->_selectionLayer];

    v27 = [MEMORY[0x1E69794A0] layer];
    clippingLayer = v8->_clippingLayer;
    v8->_clippingLayer = v27;

    v29 = [MEMORY[0x1E69DC888] blackColor];
    -[CAShapeLayer setFillColor:](v8->_clippingLayer, "setFillColor:", [v29 CGColor]);

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
    v7 = [(AVTAttributeValueView *)self selectionLayer];
    [v7 frame];
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v8 = CGRectEqualToRect(v32, v33);

    if (!v8)
    {
      v9 = [(AVTAttributeValueView *)self selectionLayer];
      [v9 setBounds:{x, y, width, height}];

      v10 = [(AVTAttributeValueView *)self selectionBezierPath];
      v11 = [v10 CGPath];
      v12 = [(AVTAttributeValueView *)self selectionLayer];
      [v12 setPath:v11];

      v13 = [(AVTAttributeValueView *)self clippingLayer];
      [v13 setBounds:{x, y, width, height}];

      v14 = [(AVTAttributeValueView *)self clippingBezierPath];
      v15 = [v14 CGPath];
      v16 = [(AVTAttributeValueView *)self clippingLayer];
      [v16 setPath:v15];
    }

    v17 = +[AVTUIColorRepository attributeValueCellSelectedStrokeColor];
    v18 = [v17 CGColor];
    v19 = [(AVTAttributeValueView *)self selectionLayer];
    [v19 setStrokeColor:v18];

    [(AVTAttributeValueView *)self bounds];
    UIRectGetCenter();
    v21 = v20;
    v23 = v22;
    v24 = [(AVTAttributeValueView *)self selectionLayer];
    [v24 setPosition:{v21, v23}];

    v25 = [(AVTAttributeValueView *)self clippingLayer];
    [v25 setPosition:{v21, v23}];

    if ([(AVTAttributeValueView *)self selectionStyle]== 1 || [(AVTAttributeValueView *)self isSelected])
    {
      v29 = [(AVTAttributeValueView *)self clippingLayer];
      v26 = 1;
    }

    else
    {
      v26 = 0;
      v29 = 0;
    }

    v27 = [(AVTAttributeValueView *)self contentView];
    v28 = [v27 layer];
    [v28 setMask:v29];

    if (v26)
    {
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AVTAttributeValueView;
  [(AVTAttributeValueView *)&v10 traitCollectionDidChange:v4];
  [(AVTAttributeValueView *)self updateSelectionAndMaskLayer];
  if (self->_showPlaceholder)
  {
    v5 = [v4 userInterfaceStyle];
    v6 = [(AVTAttributeValueView *)self traitCollection];
    v7 = [v6 userInterfaceStyle];

    if (v5 != v7)
    {
      v8 = [(AVTAttributeValueView *)self traitCollection];
      v9 = AVTFlatSilhouetteImageForTraitCollection(v8);
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
  v16 = [(AVTAttributeValueView *)self window];
  v17 = [v16 screen];
  [v17 scale];
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
  v31 = [(AVTAttributeValueView *)self imageLayer];
  [v31 setPosition:{v28, v30}];

  v32 = [(AVTAttributeValueView *)self imageLayer];
  [v32 setBounds:{v20, v22, v24, v26}];

  v33 = [(AVTAttributeValueView *)self transitionImageLayer];
  [v33 setPosition:{v28, v30}];

  v34 = [(AVTAttributeValueView *)self transitionImageLayer];
  [v34 setBounds:{v20, v22, v24, v26}];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v35 = [(AVTAttributeValueView *)self imageLayer];
  v36 = [v35 sublayers];

  v37 = [v36 countByEnumeratingWithState:&v43 objects:v47 count:16];
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
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v43 + 1) + 8 * v40);
        v42 = [(AVTAttributeValueView *)self imageLayer];
        [v42 bounds];
        [v41 setFrame:?];

        ++v40;
      }

      while (v38 != v40);
      v38 = [v36 countByEnumeratingWithState:&v43 objects:v47 count:16];
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
  v7 = [(AVTAttributeValueView *)self window];
  v8 = [v7 screen];
  [v8 scale];
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

- (void)configureImageLayer:(id)a3
{
  v3 = *MEMORY[0x1E69796E8];
  v4 = a3;
  [v4 setCornerCurve:v3];
  [v4 setCornerRadius:6.0];
  [v4 setMasksToBounds:1];
  [v4 setContentsGravity:*MEMORY[0x1E6979DF0]];
}

+ (CGRect)imageViewRectForBounds:(CGRect)a3 imageSizeRatio:(CGSize)a4 scale:(double)a5
{
  height = a4.height;
  width = a4.width;
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

- (void)setSelectionStyle:(unint64_t)a3
{
  if (self->_selectionStyle != a3)
  {
    self->_selectionStyle = a3;
    [(AVTAttributeValueView *)self setNeedsLayout];
  }
}

- (void)updateCornerRadii
{
  v3 = 0.0;
  if (![(AVTAttributeValueView *)self selectionStyle])
  {
    v4 = *MEMORY[0x1E69796E8];
    v5 = [(AVTAttributeValueView *)self imageLayer];
    [v5 setCornerCurve:v4];

    v3 = 6.0;
  }

  v6 = [(AVTAttributeValueView *)self imageLayer];
  [v6 setCornerRadius:v3];
}

- (void)setImageSizeRatio:(CGSize)a3
{
  if (self->_imageSizeRatio.width != a3.width || self->_imageSizeRatio.height != a3.height)
  {
    self->_imageSizeRatio = a3;
    [(AVTAttributeValueView *)self setNeedsLayout];
  }
}

- (void)updateHighlightedState:(BOOL)a3 animated:(BOOL)a4 completionBlock:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  memset(&v13, 0, sizeof(v13));
  if (v6)
  {
    CGAffineTransformMakeScale(&v13, 0.95, 0.95);
    if (!v5)
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
    [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v11 options:v8 animations:0.1 completion:0.0];
    goto LABEL_7;
  }

  v9 = *(MEMORY[0x1E695EFD0] + 16);
  *&v13.a = *MEMORY[0x1E695EFD0];
  *&v13.c = v9;
  *&v13.tx = *(MEMORY[0x1E695EFD0] + 32);
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v10 = v13;
  [(AVTAttributeValueView *)self setTransform:&v10];
  if (v8)
  {
    v8[2](v8, 1);
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

- (void)updateSelectedState:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(AVTAttributeValueView *)self setSelected:?];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(AVTAttributeValueView *)self updateSelectionAndMaskLayer];
  if (v4)
  {
    [MEMORY[0x1E6979518] commit];
    if (v5)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    v13 = [(AVTAttributeValueView *)self selectionLayer];
    *&v8 = v7;
    [v13 setOpacity:v8];
  }

  else
  {
    if (v5)
    {
      v9 = 1.0;
    }

    else
    {
      v9 = 0.0;
    }

    v10 = [(AVTAttributeValueView *)self selectionLayer];
    *&v11 = v9;
    [v10 setOpacity:v11];

    v12 = MEMORY[0x1E6979518];

    [v12 commit];
  }
}

- (void)bringSelectionLayersToFront
{
  v3 = [(AVTAttributeValueView *)self imageLayer];
  [v3 removeFromSuperlayer];

  v4 = [(AVTAttributeValueView *)self selectionLayer];
  [v4 removeFromSuperlayer];

  v5 = [(AVTAttributeValueView *)self contentView];
  v6 = [v5 layer];
  v7 = [(AVTAttributeValueView *)self imageLayer];
  [v6 addSublayer:v7];

  v9 = [(AVTAttributeValueView *)self layer];
  v8 = [(AVTAttributeValueView *)self selectionLayer];
  [v9 addSublayer:v8];
}

- (void)updateWithImage:(id)a3
{
  v8 = a3;
  v4 = [(AVTAttributeValueView *)self image];

  if (v4 != v8)
  {
    [(AVTAttributeValueView *)self setImage:v8];
    self->_showPlaceholder = 0;
  }

  v5 = v8;
  v6 = [v8 CGImage];
  v7 = [(AVTAttributeValueView *)self imageLayer];
  [v7 setContents:v6];
}

- (void)prepareForTransitionToImage:(id)a3
{
  v8 = a3;
  v4 = [(AVTAttributeValueView *)self image];

  if (v4 != v8)
  {
    [(AVTAttributeValueView *)self setImage:v8];
    self->_showPlaceholder = 0;
  }

  v5 = v8;
  v6 = [v8 CGImage];
  v7 = [(AVTAttributeValueView *)self transitionImageLayer];
  [v7 setContents:v6];
}

- (void)setShowPlaceholder:(BOOL)a3
{
  if (self->_showPlaceholder != a3)
  {
    self->_showPlaceholder = a3;
    if (a3)
    {
      v5 = [(AVTAttributeValueView *)self traitCollection];
      v6 = AVTFlatSilhouetteImageForTraitCollection(v5);
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
  v4 = [(AVTAttributeValueView *)self imageLayer];
  v3 = [(AVTAttributeValueView *)self transitionImageLayer];
  [(AVTAttributeValueView *)self setImageLayer:v3];

  [(AVTAttributeValueView *)self bringSelectionLayersToFront];
  [(AVTAttributeValueView *)self setTransitionImageLayer:v4];
}

- (void)discardContent
{
  [(AVTAttributeValueView *)self updateWithImage:0];
  v3 = [(AVTAttributeValueView *)self discardableContentHandler];

  if (v3)
  {
    v4 = [(AVTAttributeValueView *)self discardableContentHandler];
    v4[2](v4, self);
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