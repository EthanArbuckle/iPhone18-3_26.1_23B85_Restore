@interface PKPaletteColorSwatch
- (UIColor)presentationColor;
- (id)_uiColor;
- (id)initWithSelectionRingInset:(double)a3 bulletInset:;
- (id)newColorBackgroundView;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_updateBackgroundView;
- (void)_updateColorBulletView;
- (void)_updateSelectionHighlight;
- (void)layoutSubviews;
- (void)setColorUserInterfaceStyle:(void *)a1;
- (void)setSelected:(BOOL)a3;
- (void)setSwatchColor:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PKPaletteColorSwatch

- (id)initWithSelectionRingInset:(double)a3 bulletInset:
{
  if (!a1)
  {
    return 0;
  }

  v13.receiver = a1;
  v13.super_class = PKPaletteColorSwatch;
  v5 = objc_msgSendSuper2(&v13, sel_initWithFrame_, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
  v6 = v5;
  if (v5)
  {
    *(v5 + 55) = a2;
    *(v5 + 56) = a3;
    v7 = [MEMORY[0x1E69DC888] clearColor];
    [v6 setBackgroundColor:v7];

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
  if (a1)
  {
    v2 = [a1 colorBackgroundView];

    if (!v2)
    {
      v3 = [a1 newColorBackgroundView];
      [a1 setColorBackgroundView:v3];

      v4 = [a1 colorBackgroundView];
      [a1 addSubview:v4];
    }

    if ([a1 wantsBackgroundViewColor])
    {
      v20 = [(PKPaletteColorSwatch *)a1 _uiColor];
    }

    else
    {
      v20 = 0;
    }

    v5 = [a1 colorBackgroundView];
    [v5 setBackgroundColor:v20];

    v6 = [a1 isSelected];
    v7 = [a1 selectionRingMaskLayer];

    if (!v6 || v7)
    {
      if (v7)
      {
        v17 = v6;
      }

      else
      {
        v17 = 1;
      }

      if ((v17 & 1) == 0)
      {
        v18 = [a1 colorBackgroundView];
        v19 = [v18 layer];
        [v19 setMask:0];

        [a1 setSelectionRingMaskLayer:0];
      }
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x1E69794A0]);
      [a1 setSelectionRingMaskLayer:v8];

      v9 = [MEMORY[0x1E69DC888] blackColor];
      v10 = [v9 CGColor];
      v11 = [a1 selectionRingMaskLayer];
      [v11 setFillColor:v10];

      v12 = *MEMORY[0x1E69797F8];
      v13 = [a1 selectionRingMaskLayer];
      [v13 setFillRule:v12];

      v14 = [a1 selectionRingMaskLayer];
      v15 = [a1 colorBackgroundView];
      v16 = [v15 layer];
      [v16 setMask:v14];
    }

    if (v6)
    {
      [a1 setNeedsLayout];
    }
  }
}

- (void)_updateColorBulletView
{
  if (a1)
  {
    v2 = [a1 wantsColorBulletVisible];
    v3 = [a1 colorBulletView];

    if (!v2 || v3)
    {
      if (v3)
      {
        v7 = v2;
      }

      else
      {
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        v8 = [a1 colorBulletView];
        [v8 removeFromSuperview];

        [a1 setColorBulletView:0];
      }
    }

    else
    {
      v4 = objc_alloc(MEMORY[0x1E69DD250]);
      v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [a1 setColorBulletView:v5];

      v6 = [a1 colorBulletView];
      [a1 addSubview:v6];
    }

    if (v2)
    {
      v9 = [(PKPaletteColorSwatch *)a1 _uiColor];
      v10 = [a1 colorBulletView];
      [v10 setBackgroundColor:v9];

      v11 = [(PKPaletteColorSwatch *)a1 _uiColor];
      [v11 CGColor];
      CGColorGetContentHeadroom();
      v12 = MEMORY[0x1E69792A0];
      if (v13 <= 1.0)
      {
        v12 = MEMORY[0x1E69792A8];
      }

      v14 = *v12;
      v15 = [a1 colorBulletView];
      v16 = [v15 layer];
      [v16 setPreferredDynamicRange:v14];

      [a1 setNeedsLayout];
    }
  }
}

- (void)_updateSelectionHighlight
{
  if (a1)
  {
    if (a1[409])
    {
      v2 = 0.5;
    }

    else
    {
      v2 = 1.0;
    }

    v3 = [a1 colorBackgroundView];
    [v3 setAlpha:v2];

    v4 = [a1 colorBulletView];
    [v4 setAlpha:v2];
  }
}

- (UIColor)presentationColor
{
  v2 = [(PKPaletteColorSwatch *)self swatchColor];
  v3 = [v2 color];

  return v3;
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
  v11 = [(PKPaletteColorSwatch *)self colorBackgroundView];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(PKPaletteColorSwatch *)self bounds];
  v12 = CGRectGetWidth(v55) * 0.5;
  v13 = [(PKPaletteColorSwatch *)self colorBackgroundView];
  v14 = [v13 layer];
  [v14 setCornerRadius:v12];

  v15 = [(PKPaletteColorSwatch *)self layer];
  [v15 setCornerRadius:v12];

  v16 = [(PKPaletteColorSwatch *)self colorBulletView];

  if (v16)
  {
    [(PKPaletteColorSwatch *)self bounds];
    v57 = CGRectInset(v56, self->_bulletInset, self->_bulletInset);
    x = v57.origin.x;
    y = v57.origin.y;
    width = v57.size.width;
    height = v57.size.height;
    v21 = [(PKPaletteColorSwatch *)self colorBulletView];
    [v21 setFrame:{x, y, width, height}];

    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.width = width;
    v58.size.height = height;
    v22 = CGRectGetWidth(v58) * 0.5;
    v23 = [(PKPaletteColorSwatch *)self colorBulletView];
    v24 = [v23 layer];
    [v24 setCornerRadius:v22];

    v25 = [(PKPaletteColorSwatch *)self colorBulletView];
    v26 = [v25 layer];
    [v26 setBorderWidth:0.5];

    v27 = [(PKPaletteColorSwatch *)self traitCollection];
    v28 = [v27 userInterfaceStyle];

    if (v28 == 2)
    {
      v29 = [MEMORY[0x1E69DC888] whiteColor];
      v30 = v29;
      v31 = 0.16;
    }

    else
    {
      v29 = [MEMORY[0x1E69DC888] blackColor];
      v30 = v29;
      v31 = 0.08;
    }

    v32 = [v29 colorWithAlphaComponent:v31];

    v33 = [v32 CGColor];
    v34 = [(PKPaletteColorSwatch *)self colorBulletView];
    v35 = [v34 layer];
    [v35 setBorderColor:v33];
  }

  v36 = [(PKPaletteColorSwatch *)self selectionRingMaskLayer];

  if (v36)
  {
    [(PKPaletteColorSwatch *)self bounds];
    v60 = CGRectInset(v59, self->_selectionInset, self->_selectionInset);
    v37 = v60.origin.x;
    v38 = v60.origin.y;
    v39 = v60.size.width;
    v40 = v60.size.height;
    v41 = [(PKPaletteColorSwatch *)self colorBackgroundView];
    v42 = [v41 layer];
    [v42 bounds];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;

    v51 = [(PKPaletteColorSwatch *)self selectionRingMaskLayer];
    [v51 setFrame:{v44, v46, v48, v50}];

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
    v53 = [(PKPaletteColorSwatch *)self selectionRingMaskLayer];
    [v53 setPath:Mutable];

    CGPathRelease(Mutable);
  }
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    self->_selected = a3;
    [(PKPaletteColorSwatch *)self _updateBackgroundView];

    [(PKPaletteColorSwatch *)self _updateColorBulletView];
  }
}

- (void)setSwatchColor:(id)a3
{
  v5 = a3;
  if (self->_swatchColor != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_swatchColor, a3);
    [(PKPaletteColorSwatch *)self _updateBackgroundView];
    [(PKPaletteColorSwatch *)self _updateColorBulletView];
    v6 = [(PKSwatchColor *)self->_swatchColor identifier];
    v7 = [v6 isEqualToString:@"multi"];

    if (v7)
    {
      v8 = _PencilKitBundle();
      v9 = [v8 localizedStringForKey:@"Show More Colors" value:@"Show More Colors" table:@"Localizable"];
      [(PKPaletteColorSwatch *)self setLargeContentTitle:v9];
    }

    else
    {
      v8 = [(PKSwatchColor *)self->_swatchColor identifier];
      [(PKPaletteColorSwatch *)self setLargeContentTitle:v8];
    }

    v5 = v10;
  }
}

- (id)_uiColor
{
  v2 = [a1 presentationColor];
  v3 = a1[53];
  if (!v3)
  {
    v4 = [a1 traitCollection];
    v3 = [v4 userInterfaceStyle];
  }

  v5 = [PKInkingTool convertColor:v2 fromUserInterfaceStyle:1 to:v3];

  return v5;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKPaletteColorSwatch;
  [(PKPaletteColorSwatch *)&v4 traitCollectionDidChange:a3];
  if (self)
  {
    [(PKPaletteColorSwatch *)self _updateBackgroundView];
    [(PKPaletteColorSwatch *)self _updateColorBulletView];
  }
}

- (void)setColorUserInterfaceStyle:(void *)a1
{
  if (a1 && a1[53] != a2)
  {
    a1[53] = a2;
    [(PKPaletteColorSwatch *)a1 _updateBackgroundView];

    [(PKPaletteColorSwatch *)a1 _updateColorBulletView];
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

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = a3;
  v6 = objc_alloc(MEMORY[0x1E69DD070]);
  v7 = [v5 view];
  v8 = [v6 initWithView:v7];

  v9 = [MEMORY[0x1E69DCDB8] effectWithPreview:v8];
  v10 = [(PKPaletteColorSwatch *)self traitCollection];
  v11 = [v10 userInterfaceIdiom];

  v12 = MEMORY[0x1E69DCDC8];
  if (v11 == 6)
  {
    v13 = [v5 view];
    [v13 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [v5 view];
    [v22 bounds];
    [v12 shapeWithRoundedRect:v15 cornerRadius:{v17, v19, v21, v23 * 0.5}];
  }

  else
  {
    v24 = MEMORY[0x1E69DC728];
    v13 = [v5 view];
    [v13 bounds];
    v22 = [v24 bezierPathWithOvalInRect:?];
    [v12 shapeWithPath:v22];
  }
  v25 = ;

  v26 = [MEMORY[0x1E69DCDD0] styleWithEffect:v9 shape:v25];

  return v26;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  [a5 rect];
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