@interface MFModernAtomBackgroundView
- (MFModernAtomBackgroundView)initWithFrame:(CGRect)a3;
- (MFModernAtomView)hostAtomView;
- (UIEdgeInsets)_backgroundBleedArea;
- (double)separatorWidth;
- (id)_chevronImage;
- (void)_setSelectionStyle:(unint64_t)a3;
- (void)invalidateIntrinsicContentSize;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4 style:(unint64_t)a5;
- (void)setSeparatorStyle:(int64_t)a3;
- (void)tintColorDidChange;
@end

@implementation MFModernAtomBackgroundView

- (MFModernAtomBackgroundView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = MFModernAtomBackgroundView;
  v3 = [(MFModernAtomBackgroundView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_scalingFactor = 1.0;
    [(MFModernAtomBackgroundView *)v3 setAutoresizesSubviews:1];
    v5 = objc_alloc(MEMORY[0x1E69DD250]);
    [(MFModernAtomBackgroundView *)v4 bounds];
    v6 = [v5 initWithFrame:?];
    selectedView = v4->_selectedView;
    v4->_selectedView = v6;

    v8 = [(MFModernAtomBackgroundView *)v4 tintColor];
    [(UIView *)v4->_selectedView setBackgroundColor:v8];

    [(UIView *)v4->_selectedView setAlpha:0.0];
    [(UIView *)v4->_selectedView setAutoresizingMask:2];
    v9 = [(UIView *)v4->_selectedView layer];
    [v9 setShouldRasterize:1];

    v10 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v10 scale];
    v12 = v11;
    v13 = [(UIView *)v4->_selectedView layer];
    [v13 setRasterizationScale:v12];

    [(MFModernAtomBackgroundView *)v4 addSubview:v4->_selectedView];
    v4->_selectionStyle = 0;
  }

  return v4;
}

- (void)tintColorDidChange
{
  v3 = [(MFModernAtomBackgroundView *)self tintColor];
  [(UIView *)self->_selectedView setBackgroundColor:?];
}

- (double)separatorWidth
{
  v3 = [(MFModernAtomBackgroundView *)self hostAtomView];
  v4 = [v3 isWrappingEnabled];

  result = 0.0;
  if ((v4 & 1) == 0)
  {
    separatorStyle = self->_separatorStyle;
    [(UIView *)self->_separatorView bounds];
    if (separatorStyle)
    {
      v8 = 3.0;
    }

    else
    {
      v8 = -7.0;
    }

    return v7 + v8;
  }

  return result;
}

- (UIEdgeInsets)_backgroundBleedArea
{
  [(MFModernAtomBackgroundView *)self separatorWidth];
  v3 = v2;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  result.right = v3;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (void)layoutSubviews
{
  [(MFModernAtomBackgroundView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v38 = [(MFModernAtomBackgroundView *)self hostAtomView];
  v11 = [v38 separatorIsLeftAligned];
  v12 = v8;
  if ((self->_selectionStyle & 0x20) != 0)
  {
    [(MFModernAtomBackgroundView *)self _backgroundBleedArea];
    v12 = v8 + v13;
  }

  v14 = v4;
  if (((self->_separatorStyle == 0) & v11) == 1)
  {
    [(MFModernAtomBackgroundView *)self separatorWidth];
    v14 = v4 + v15;
  }

  [(UIView *)self->_selectedView setFrame:v14, v6, v12, v10];
  [(MFModernAtomBackgroundView *)self _setSelectionStyle:self->_selectionStyle];
  if (([v38 isWrappingEnabled] & 1) == 0)
  {
    [(UIView *)self->_separatorView sizeToFit];
    [(UIView *)self->_separatorView frame];
    v17 = v16;
    v19 = v18;
    UIRoundToViewScale();
    v21 = v20;
    v22 = floor(v4 + v8 - v17) + -3.0;
    if (v11)
    {
      v23 = 3.0;
    }

    else
    {
      v23 = v22;
    }

    if (self->_separatorStyle)
    {
      goto LABEL_23;
    }

    v24 = [v38 accessoryIconView];
    v25 = [v38 presentationOptions];
    if (v11)
    {
      v26 = [v24 iconImages];
      v27 = [v26 count];

      if (v27)
      {
        [v24 frame];
        MinX = CGRectGetMinX(v40);
        [v24 iconPadding];
        v30 = MinX + v29 + -3.0;
      }

      else
      {
        v35 = [v38 titleLabel];
        [v35 frame];
        v30 = CGRectGetMinX(v42);
      }

      v23 = v30 - v17;
      if ((v25 & 4) == 0)
      {
        goto LABEL_22;
      }

      v36 = [v38 activityIndicator];
      [v36 frame];
      v23 = v23 - (CGRectGetWidth(v43) + 3.0);
    }

    else
    {
      v31 = [v24 iconImages];
      v32 = [v31 count];

      if (v32)
      {
        [v24 frame];
        MaxX = CGRectGetMaxX(v41);
        [v24 iconPadding];
        v23 = MaxX - v34 + 3.0;
        if ((v25 & 4) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v37 = [v38 titleLabel];
        [v37 frame];
        v23 = CGRectGetMaxX(v44);

        if ((v25 & 4) == 0)
        {
LABEL_22:

LABEL_23:
          [(UIView *)self->_separatorView setFrame:v23, v21, v17, v19];
          goto LABEL_24;
        }
      }

      v36 = [v38 activityIndicator];
      [v36 frame];
      v23 = v23 + CGRectGetWidth(v45) + 3.0;
    }

    goto LABEL_22;
  }

LABEL_24:
}

- (void)_setSelectionStyle:(unint64_t)a3
{
  v3 = a3;
  self->_selectionStyle = a3;
  if ((~a3 & 0xCLL) != 0)
  {
    [(MFModernAtomBackgroundView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = 10;
    if ((v3 & 4) == 0)
    {
      v13 = -1;
    }

    if ((v3 & 8) != 0)
    {
      v14 = 5;
    }

    else
    {
      v14 = v13;
    }

    if ((v3 & 0x20) != 0)
    {
      [(MFModernAtomBackgroundView *)self _backgroundBleedArea];
      v10 = v10 + v15;
    }

    v19 = [MEMORY[0x1E69794A0] layer];
    [v19 setAnchorPoint:{0.0, 0.0}];
    [v19 setBounds:{v6, v8, v10, v12}];
    v16 = MEMORY[0x1E69DC728];
    [(UIView *)self->_selectedView bounds];
    v17 = [v16 bezierPathWithRoundedRect:v14 byRoundingCorners:? cornerRadii:?];
    [v19 setPath:{objc_msgSend(v17, "CGPath")}];

    v18 = [(UIView *)self->_selectedView layer];
    [v18 setMask:v19];
  }

  else
  {
    v19 = [(UIView *)self->_selectedView layer];
    [v19 setMask:0];
  }
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4 style:(unint64_t)a5
{
  v5 = a4;
  if (self->_selected != a3 || self->_selectionStyle != a5)
  {
    self->_selected = a3;
    [(MFModernAtomBackgroundView *)self _setSelectionStyle:a5];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__MFModernAtomBackgroundView_setSelected_animated_style___block_invoke;
    aBlock[3] = &unk_1E806C570;
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    v8 = v7;
    if (v5)
    {
      [MEMORY[0x1E69DD250] animateWithDuration:v7 animations:0.15];
    }

    else
    {
      (*(v7 + 2))(v7);
    }

    [(MFModernAtomBackgroundView *)self setNeedsDisplay];
    [(MFModernAtomBackgroundView *)self layoutSubviews];
  }
}

uint64_t __57__MFModernAtomBackgroundView_setSelected_animated_style___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 432))
  {
    v3 = 1.0;
    if (*(v1 + 440))
    {
      v3 = 0.0;
    }

    [*(v1 + 424) setAlpha:v3];
    v1 = *(a1 + 32);
  }

  v4 = *(v1 + 408);
  v5 = 0.0;
  if (*(v1 + 440))
  {
    v5 = 1.0;
  }

  return [v4 setAlpha:v5];
}

- (id)_chevronImage
{
  if (!_chevronImage__chevronImageCache)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = _chevronImage__chevronImageCache;
    _chevronImage__chevronImageCache = v3;
  }

  v5 = [(MFModernAtomBackgroundView *)self hostAtomView];
  v6 = [v5 _preferredIconVariant];
  v7 = [v5 isPrimaryAddressAtom];
  if (v6 < 6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8 == 1)
  {
    ++v6;
  }

  else
  {
    v9 = [v5 titleFont];
    v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    v11 = [v9 isEqual:v10];

    if (v11)
    {
      if (v6 == 1)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6;
      }

      if (v6 >= 2)
      {
        v6 -= 2;
      }

      else
      {
        v6 = v12;
      }
    }
  }

  v13 = _MFAtomViewIconImageVariantNameForGlyphType(@"chevron", v6);
  v14 = [_chevronImage__chevronImageCache objectForKeyedSubscript:v13];
  if (!v14)
  {
    v15 = MEMORY[0x1E69DCAB8];
    v16 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v17 = [v15 imageNamed:v13 inBundle:v16];
    v18 = [MEMORY[0x1E69DC888] colorWithWhite:0.8 alpha:1.0];
    v14 = [v17 _flatImageWithColor:v18];

    [_chevronImage__chevronImageCache setObject:v14 forKeyedSubscript:v13];
  }

  return v14;
}

- (void)setSeparatorStyle:(int64_t)a3
{
  self->_separatorStyle = a3;
  v5 = [(MFModernAtomBackgroundView *)self hostAtomView];
  v6 = [v5 isWrappingEnabled] ^ 1;
  separatorView = self->_separatorView;
  if (a3 == 2)
  {
    LOBYTE(v6) = 0;
  }

  if (v6)
  {
    if (!separatorView || self->_separatorStyle != a3)
    {
      if (a3)
      {
        if (a3 != 1)
        {
          __assert_rtn("[MFModernAtomBackgroundView setSeparatorStyle:]", "MFModernAtomView.m", 1567, "0 && unexpected separatorStyle");
        }

        v9 = [(MFModernAtomBackgroundView *)self _chevronImage];
        v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v9];
        if ([v5 separatorIsLeftAligned])
        {
          CGAffineTransformMakeScale(&v19, -1.0, 1.0);
        }

        else
        {
          v16 = *(MEMORY[0x1E695EFD0] + 16);
          *&v19.a = *MEMORY[0x1E695EFD0];
          *&v19.c = v16;
          *&v19.tx = *(MEMORY[0x1E695EFD0] + 32);
        }

        v18 = v19;
        [v10 setTransform:&v18];
      }

      else
      {
        v11 = objc_alloc(MEMORY[0x1E69DCC10]);
        v10 = [v11 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        v12 = MFLocalizedAddressSeparator();
        [v10 setText:v12];

        v13 = +[MFModernAtomView defaultFont];
        [v10 setFont:v13];

        v14 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:1.0];
        [v10 setTextColor:v14];

        v15 = [MEMORY[0x1E69DC888] clearColor];
        [v10 setBackgroundColor:v15];

        [v10 setAutoresizingMask:0];
        [v10 sizeToFit];
      }

      v17 = self->_separatorView;
      if (v17)
      {
        [(UIView *)v17 removeFromSuperview];
      }

      objc_storeStrong(&self->_separatorView, v10);
      [(MFModernAtomBackgroundView *)self addSubview:self->_separatorView];
    }
  }

  else
  {
    [(UIView *)separatorView removeFromSuperview];
    v8 = self->_separatorView;
    self->_separatorView = 0;
  }
}

- (void)invalidateIntrinsicContentSize
{
  v7.receiver = self;
  v7.super_class = MFModernAtomBackgroundView;
  [(MFModernAtomBackgroundView *)&v7 invalidateIntrinsicContentSize];
  v3 = [(MFModernAtomBackgroundView *)self hostAtomView];
  v4 = [v3 isWrappingEnabled];

  if ((v4 & 1) == 0)
  {
    if ([(MFModernAtomBackgroundView *)self separatorStyle]== 1)
    {
      v5 = [(MFModernAtomBackgroundView *)self _chevronImage];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(UIView *)self->_separatorView setImage:v5];
      }

      goto LABEL_8;
    }

    if (![(MFModernAtomBackgroundView *)self separatorStyle])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = self->_separatorView;
        v6 = +[MFModernAtomView defaultFont];
        [(UIView *)v5 setFont:v6];

LABEL_8:
      }
    }
  }
}

- (MFModernAtomView)hostAtomView
{
  WeakRetained = objc_loadWeakRetained(&self->_hostAtomView);

  return WeakRetained;
}

@end