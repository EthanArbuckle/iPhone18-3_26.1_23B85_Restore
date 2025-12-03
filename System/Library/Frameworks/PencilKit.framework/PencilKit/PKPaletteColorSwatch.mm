@interface PKPaletteColorSwatch
- (UIColor)presentationColor;
- (id)_uiColor;
- (id)initWithSelectionRingInset:(double)inset bulletInset:;
- (id)newColorBackgroundView;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_updateBackgroundView;
- (void)_updateColorBulletView;
- (void)_updateSelectionHighlight;
- (void)layoutSubviews;
- (void)setColorUserInterfaceStyle:(void *)style;
- (void)setSelected:(BOOL)selected;
- (void)setSwatchColor:(id)color;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PKPaletteColorSwatch

- (id)initWithSelectionRingInset:(double)inset bulletInset:
{
  if (!self)
  {
    return 0;
  }

  v13.receiver = self;
  v13.super_class = PKPaletteColorSwatch;
  v5 = objc_msgSendSuper2(&v13, sel_initWithFrame_, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
  v6 = v5;
  if (v5)
  {
    *(v5 + 55) = a2;
    *(v5 + 56) = inset;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v6 setBackgroundColor:clearColor];

    [(PKPaletteColorSwatch *)v6 _updateBackgroundView];
    [(PKPaletteColorSwatch *)v6 _updateColorBulletView];
    [(PKPaletteColorSwatch *)v6 _updateSelectionHighlight];
    [v6 setShowsLargeContentViewer:1];
    v8 = objc_alloc_init(MEMORY[0x1E69DCC18]);
    [v6 addInteraction:v8];

    v9 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v6];
    objc_storeStrong(v6 + 54, v9);

    v10 = v6[54];
  }

  else
  {
    [0 setShowsLargeContentViewer:1];
    v11 = objc_alloc_init(MEMORY[0x1E69DCC18]);
    [0 addInteraction:v11];

    v10 = 0;
  }

  [v6 addInteraction:v10];
  [v6 setHitTestInsets:{-12.0, -12.0, -12.0, -12.0}];
  return v6;
}

- (void)_updateBackgroundView
{
  if (self)
  {
    colorBackgroundView = [self colorBackgroundView];

    if (!colorBackgroundView)
    {
      newColorBackgroundView = [self newColorBackgroundView];
      [self setColorBackgroundView:newColorBackgroundView];

      colorBackgroundView2 = [self colorBackgroundView];
      [self addSubview:colorBackgroundView2];
    }

    if ([self wantsBackgroundViewColor])
    {
      _uiColor = [(PKPaletteColorSwatch *)self _uiColor];
    }

    else
    {
      _uiColor = 0;
    }

    colorBackgroundView3 = [self colorBackgroundView];
    [colorBackgroundView3 setBackgroundColor:_uiColor];

    isSelected = [self isSelected];
    selectionRingMaskLayer = [self selectionRingMaskLayer];

    if (!isSelected || selectionRingMaskLayer)
    {
      if (selectionRingMaskLayer)
      {
        v17 = isSelected;
      }

      else
      {
        v17 = 1;
      }

      if ((v17 & 1) == 0)
      {
        colorBackgroundView4 = [self colorBackgroundView];
        layer = [colorBackgroundView4 layer];
        [layer setMask:0];

        [self setSelectionRingMaskLayer:0];
      }
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x1E69794A0]);
      [self setSelectionRingMaskLayer:v8];

      blackColor = [MEMORY[0x1E69DC888] blackColor];
      cGColor = [blackColor CGColor];
      selectionRingMaskLayer2 = [self selectionRingMaskLayer];
      [selectionRingMaskLayer2 setFillColor:cGColor];

      v12 = *MEMORY[0x1E69797F8];
      selectionRingMaskLayer3 = [self selectionRingMaskLayer];
      [selectionRingMaskLayer3 setFillRule:v12];

      selectionRingMaskLayer4 = [self selectionRingMaskLayer];
      colorBackgroundView5 = [self colorBackgroundView];
      layer2 = [colorBackgroundView5 layer];
      [layer2 setMask:selectionRingMaskLayer4];
    }

    if (isSelected)
    {
      [self setNeedsLayout];
    }
  }
}

- (void)_updateColorBulletView
{
  if (self)
  {
    wantsColorBulletVisible = [self wantsColorBulletVisible];
    colorBulletView = [self colorBulletView];

    if (!wantsColorBulletVisible || colorBulletView)
    {
      if (colorBulletView)
      {
        v7 = wantsColorBulletVisible;
      }

      else
      {
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        colorBulletView2 = [self colorBulletView];
        [colorBulletView2 removeFromSuperview];

        [self setColorBulletView:0];
      }
    }

    else
    {
      v4 = objc_alloc(MEMORY[0x1E69DD250]);
      v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [self setColorBulletView:v5];

      colorBulletView3 = [self colorBulletView];
      [self addSubview:colorBulletView3];
    }

    if (wantsColorBulletVisible)
    {
      _uiColor = [(PKPaletteColorSwatch *)self _uiColor];
      colorBulletView4 = [self colorBulletView];
      [colorBulletView4 setBackgroundColor:_uiColor];

      _uiColor2 = [(PKPaletteColorSwatch *)self _uiColor];
      [_uiColor2 CGColor];
      CGColorGetContentHeadroom();
      v12 = MEMORY[0x1E69792A0];
      if (v13 <= 1.0)
      {
        v12 = MEMORY[0x1E69792A8];
      }

      v14 = *v12;
      colorBulletView5 = [self colorBulletView];
      layer = [colorBulletView5 layer];
      [layer setPreferredDynamicRange:v14];

      [self setNeedsLayout];
    }
  }
}

- (void)_updateSelectionHighlight
{
  if (self)
  {
    if (self[409])
    {
      v2 = 0.5;
    }

    else
    {
      v2 = 1.0;
    }

    colorBackgroundView = [self colorBackgroundView];
    [colorBackgroundView setAlpha:v2];

    colorBulletView = [self colorBulletView];
    [colorBulletView setAlpha:v2];
  }
}

- (UIColor)presentationColor
{
  swatchColor = [(PKPaletteColorSwatch *)self swatchColor];
  color = [swatchColor color];

  return color;
}

- (void)layoutSubviews
{
  v54.receiver = self;
  v54.super_class = PKPaletteColorSwatch;
  [(PKPaletteColorSwatch *)&v54 layoutSubviews];
  [(PKPaletteColorSwatch *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  colorBackgroundView = [(PKPaletteColorSwatch *)self colorBackgroundView];
  [colorBackgroundView setFrame:{v4, v6, v8, v10}];

  [(PKPaletteColorSwatch *)self bounds];
  v12 = CGRectGetWidth(v55) * 0.5;
  colorBackgroundView2 = [(PKPaletteColorSwatch *)self colorBackgroundView];
  layer = [colorBackgroundView2 layer];
  [layer setCornerRadius:v12];

  layer2 = [(PKPaletteColorSwatch *)self layer];
  [layer2 setCornerRadius:v12];

  colorBulletView = [(PKPaletteColorSwatch *)self colorBulletView];

  if (colorBulletView)
  {
    [(PKPaletteColorSwatch *)self bounds];
    v57 = CGRectInset(v56, self->_bulletInset, self->_bulletInset);
    x = v57.origin.x;
    y = v57.origin.y;
    width = v57.size.width;
    height = v57.size.height;
    colorBulletView2 = [(PKPaletteColorSwatch *)self colorBulletView];
    [colorBulletView2 setFrame:{x, y, width, height}];

    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.width = width;
    v58.size.height = height;
    v22 = CGRectGetWidth(v58) * 0.5;
    colorBulletView3 = [(PKPaletteColorSwatch *)self colorBulletView];
    layer3 = [colorBulletView3 layer];
    [layer3 setCornerRadius:v22];

    colorBulletView4 = [(PKPaletteColorSwatch *)self colorBulletView];
    layer4 = [colorBulletView4 layer];
    [layer4 setBorderWidth:0.5];

    traitCollection = [(PKPaletteColorSwatch *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 2)
    {
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      v30 = whiteColor;
      v31 = 0.16;
    }

    else
    {
      whiteColor = [MEMORY[0x1E69DC888] blackColor];
      v30 = whiteColor;
      v31 = 0.08;
    }

    v32 = [whiteColor colorWithAlphaComponent:v31];

    cGColor = [v32 CGColor];
    colorBulletView5 = [(PKPaletteColorSwatch *)self colorBulletView];
    layer5 = [colorBulletView5 layer];
    [layer5 setBorderColor:cGColor];
  }

  selectionRingMaskLayer = [(PKPaletteColorSwatch *)self selectionRingMaskLayer];

  if (selectionRingMaskLayer)
  {
    [(PKPaletteColorSwatch *)self bounds];
    v60 = CGRectInset(v59, self->_selectionInset, self->_selectionInset);
    v37 = v60.origin.x;
    v38 = v60.origin.y;
    v39 = v60.size.width;
    v40 = v60.size.height;
    colorBackgroundView3 = [(PKPaletteColorSwatch *)self colorBackgroundView];
    layer6 = [colorBackgroundView3 layer];
    [layer6 bounds];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;

    selectionRingMaskLayer2 = [(PKPaletteColorSwatch *)self selectionRingMaskLayer];
    [selectionRingMaskLayer2 setFrame:{v44, v46, v48, v50}];

    Mutable = CGPathCreateMutable();
    v61.origin.x = v44;
    v61.origin.y = v46;
    v61.size.width = v48;
    v61.size.height = v50;
    CGPathAddRect(Mutable, 0, v61);
    v62.origin.x = v37;
    v62.origin.y = v38;
    v62.size.width = v39;
    v62.size.height = v40;
    CGPathAddEllipseInRect(Mutable, 0, v62);
    selectionRingMaskLayer3 = [(PKPaletteColorSwatch *)self selectionRingMaskLayer];
    [selectionRingMaskLayer3 setPath:Mutable];

    CGPathRelease(Mutable);
  }
}

- (void)setSelected:(BOOL)selected
{
  if (self->_selected != selected)
  {
    self->_selected = selected;
    [(PKPaletteColorSwatch *)self _updateBackgroundView];

    [(PKPaletteColorSwatch *)self _updateColorBulletView];
  }
}

- (void)setSwatchColor:(id)color
{
  colorCopy = color;
  if (self->_swatchColor != colorCopy)
  {
    v10 = colorCopy;
    objc_storeStrong(&self->_swatchColor, color);
    [(PKPaletteColorSwatch *)self _updateBackgroundView];
    [(PKPaletteColorSwatch *)self _updateColorBulletView];
    identifier = [(PKSwatchColor *)self->_swatchColor identifier];
    v7 = [identifier isEqualToString:@"multi"];

    if (v7)
    {
      identifier2 = _PencilKitBundle();
      v9 = [identifier2 localizedStringForKey:@"Show More Colors" value:@"Show More Colors" table:@"Localizable"];
      [(PKPaletteColorSwatch *)self setLargeContentTitle:v9];
    }

    else
    {
      identifier2 = [(PKSwatchColor *)self->_swatchColor identifier];
      [(PKPaletteColorSwatch *)self setLargeContentTitle:identifier2];
    }

    colorCopy = v10;
  }
}

- (id)_uiColor
{
  presentationColor = [self presentationColor];
  userInterfaceStyle = self[53];
  if (!userInterfaceStyle)
  {
    traitCollection = [self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];
  }

  v5 = [PKInkingTool convertColor:presentationColor fromUserInterfaceStyle:1 to:userInterfaceStyle];

  return v5;
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = PKPaletteColorSwatch;
  [(PKPaletteColorSwatch *)&v4 traitCollectionDidChange:change];
  if (self)
  {
    [(PKPaletteColorSwatch *)self _updateBackgroundView];
    [(PKPaletteColorSwatch *)self _updateColorBulletView];
  }
}

- (void)setColorUserInterfaceStyle:(void *)style
{
  if (style && style[53] != a2)
  {
    style[53] = a2;
    [(PKPaletteColorSwatch *)style _updateBackgroundView];

    [(PKPaletteColorSwatch *)style _updateColorBulletView];
  }
}

- (id)newColorBackgroundView
{
  v2 = objc_alloc(MEMORY[0x1E69DD250]);
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);

  return [v2 initWithFrame:{v3, v4, v5, v6}];
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  v6 = objc_alloc(MEMORY[0x1E69DD070]);
  view = [interactionCopy view];
  v8 = [v6 initWithView:view];

  v9 = [MEMORY[0x1E69DCDB8] effectWithPreview:v8];
  traitCollection = [(PKPaletteColorSwatch *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v12 = MEMORY[0x1E69DCDC8];
  if (userInterfaceIdiom == 6)
  {
    view2 = [interactionCopy view];
    [view2 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    view3 = [interactionCopy view];
    [view3 bounds];
    [v12 shapeWithRoundedRect:v15 cornerRadius:{v17, v19, v21, v23 * 0.5}];
  }

  else
  {
    v24 = MEMORY[0x1E69DC728];
    view2 = [interactionCopy view];
    [view2 bounds];
    view3 = [v24 bezierPathWithOvalInRect:?];
    [v12 shapeWithPath:view3];
  }
  v25 = ;

  v26 = [MEMORY[0x1E69DCDD0] styleWithEffect:v9 shape:v25];

  return v26;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  [region rect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(PKPaletteColorSwatch *)self hitTestInsets];
  v15 = v14;
  [(PKPaletteColorSwatch *)self hitTestInsets];
  v17 = v16;
  v21.origin.x = v7;
  v21.origin.y = v9;
  v21.size.width = v11;
  v21.size.height = v13;
  v22 = CGRectInset(v21, v15, v17);
  v18 = MEMORY[0x1E69DCDC0];

  return [v18 regionWithRect:0 identifier:{v22.origin.x, v22.origin.y, v22.size.width, v22.size.height}];
}

@end