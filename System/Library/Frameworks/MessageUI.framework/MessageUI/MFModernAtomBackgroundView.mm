@interface MFModernAtomBackgroundView
- (MFModernAtomBackgroundView)initWithFrame:(CGRect)frame;
- (MFModernAtomView)hostAtomView;
- (UIEdgeInsets)_backgroundBleedArea;
- (double)separatorWidth;
- (id)_chevronImage;
- (void)_setSelectionStyle:(unint64_t)style;
- (void)invalidateIntrinsicContentSize;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated style:(unint64_t)style;
- (void)setSeparatorStyle:(int64_t)style;
- (void)tintColorDidChange;
@end

@implementation MFModernAtomBackgroundView

- (MFModernAtomBackgroundView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = MFModernAtomBackgroundView;
  v3 = [(MFModernAtomBackgroundView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

    tintColor = [(MFModernAtomBackgroundView *)v4 tintColor];
    [(UIView *)v4->_selectedView setBackgroundColor:tintColor];

    [(UIView *)v4->_selectedView setAlpha:0.0];
    [(UIView *)v4->_selectedView setAutoresizingMask:2];
    layer = [(UIView *)v4->_selectedView layer];
    [layer setShouldRasterize:1];

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v12 = v11;
    layer2 = [(UIView *)v4->_selectedView layer];
    [layer2 setRasterizationScale:v12];

    [(MFModernAtomBackgroundView *)v4 addSubview:v4->_selectedView];
    v4->_selectionStyle = 0;
  }

  return v4;
}

- (void)tintColorDidChange
{
  tintColor = [(MFModernAtomBackgroundView *)self tintColor];
  [(UIView *)self->_selectedView setBackgroundColor:?];
}

- (double)separatorWidth
{
  hostAtomView = [(MFModernAtomBackgroundView *)self hostAtomView];
  isWrappingEnabled = [hostAtomView isWrappingEnabled];

  result = 0.0;
  if ((isWrappingEnabled & 1) == 0)
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
  hostAtomView = [(MFModernAtomBackgroundView *)self hostAtomView];
  separatorIsLeftAligned = [hostAtomView separatorIsLeftAligned];
  v12 = v8;
  if ((self->_selectionStyle & 0x20) != 0)
  {
    [(MFModernAtomBackgroundView *)self _backgroundBleedArea];
    v12 = v8 + v13;
  }

  v14 = v4;
  if (((self->_separatorStyle == 0) & separatorIsLeftAligned) == 1)
  {
    [(MFModernAtomBackgroundView *)self separatorWidth];
    v14 = v4 + v15;
  }

  [(UIView *)self->_selectedView setFrame:v14, v6, v12, v10];
  [(MFModernAtomBackgroundView *)self _setSelectionStyle:self->_selectionStyle];
  if (([hostAtomView isWrappingEnabled] & 1) == 0)
  {
    [(UIView *)self->_separatorView sizeToFit];
    [(UIView *)self->_separatorView frame];
    v17 = v16;
    v19 = v18;
    UIRoundToViewScale();
    v21 = v20;
    v22 = floor(v4 + v8 - v17) + -3.0;
    if (separatorIsLeftAligned)
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

    accessoryIconView = [hostAtomView accessoryIconView];
    presentationOptions = [hostAtomView presentationOptions];
    if (separatorIsLeftAligned)
    {
      iconImages = [accessoryIconView iconImages];
      v27 = [iconImages count];

      if (v27)
      {
        [accessoryIconView frame];
        MinX = CGRectGetMinX(v40);
        [accessoryIconView iconPadding];
        v30 = MinX + v29 + -3.0;
      }

      else
      {
        titleLabel = [hostAtomView titleLabel];
        [titleLabel frame];
        v30 = CGRectGetMinX(v42);
      }

      v23 = v30 - v17;
      if ((presentationOptions & 4) == 0)
      {
        goto LABEL_22;
      }

      activityIndicator = [hostAtomView activityIndicator];
      [activityIndicator frame];
      v23 = v23 - (CGRectGetWidth(v43) + 3.0);
    }

    else
    {
      iconImages2 = [accessoryIconView iconImages];
      v32 = [iconImages2 count];

      if (v32)
      {
        [accessoryIconView frame];
        MaxX = CGRectGetMaxX(v41);
        [accessoryIconView iconPadding];
        v23 = MaxX - v34 + 3.0;
        if ((presentationOptions & 4) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        titleLabel2 = [hostAtomView titleLabel];
        [titleLabel2 frame];
        v23 = CGRectGetMaxX(v44);

        if ((presentationOptions & 4) == 0)
        {
LABEL_22:

LABEL_23:
          [(UIView *)self->_separatorView setFrame:v23, v21, v17, v19];
          goto LABEL_24;
        }
      }

      activityIndicator = [hostAtomView activityIndicator];
      [activityIndicator frame];
      v23 = v23 + CGRectGetWidth(v45) + 3.0;
    }

    goto LABEL_22;
  }

LABEL_24:
}

- (void)_setSelectionStyle:(unint64_t)style
{
  styleCopy = style;
  self->_selectionStyle = style;
  if ((~style & 0xCLL) != 0)
  {
    [(MFModernAtomBackgroundView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = 10;
    if ((styleCopy & 4) == 0)
    {
      v13 = -1;
    }

    if ((styleCopy & 8) != 0)
    {
      v14 = 5;
    }

    else
    {
      v14 = v13;
    }

    if ((styleCopy & 0x20) != 0)
    {
      [(MFModernAtomBackgroundView *)self _backgroundBleedArea];
      v10 = v10 + v15;
    }

    layer = [MEMORY[0x1E69794A0] layer];
    [layer setAnchorPoint:{0.0, 0.0}];
    [layer setBounds:{v6, v8, v10, v12}];
    v16 = MEMORY[0x1E69DC728];
    [(UIView *)self->_selectedView bounds];
    v17 = [v16 bezierPathWithRoundedRect:v14 byRoundingCorners:? cornerRadii:?];
    [layer setPath:{objc_msgSend(v17, "CGPath")}];

    layer2 = [(UIView *)self->_selectedView layer];
    [layer2 setMask:layer];
  }

  else
  {
    layer = [(UIView *)self->_selectedView layer];
    [layer setMask:0];
  }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated style:(unint64_t)style
{
  animatedCopy = animated;
  if (self->_selected != selected || self->_selectionStyle != style)
  {
    self->_selected = selected;
    [(MFModernAtomBackgroundView *)self _setSelectionStyle:style];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__MFModernAtomBackgroundView_setSelected_animated_style___block_invoke;
    aBlock[3] = &unk_1E806C570;
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    v8 = v7;
    if (animatedCopy)
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

  hostAtomView = [(MFModernAtomBackgroundView *)self hostAtomView];
  _preferredIconVariant = [hostAtomView _preferredIconVariant];
  isPrimaryAddressAtom = [hostAtomView isPrimaryAddressAtom];
  if (_preferredIconVariant < 6)
  {
    v8 = isPrimaryAddressAtom;
  }

  else
  {
    v8 = 0;
  }

  if (v8 == 1)
  {
    ++_preferredIconVariant;
  }

  else
  {
    titleFont = [hostAtomView titleFont];
    v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    v11 = [titleFont isEqual:v10];

    if (v11)
    {
      if (_preferredIconVariant == 1)
      {
        v12 = 0;
      }

      else
      {
        v12 = _preferredIconVariant;
      }

      if (_preferredIconVariant >= 2)
      {
        _preferredIconVariant -= 2;
      }

      else
      {
        _preferredIconVariant = v12;
      }
    }
  }

  v13 = _MFAtomViewIconImageVariantNameForGlyphType(@"chevron", _preferredIconVariant);
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

- (void)setSeparatorStyle:(int64_t)style
{
  self->_separatorStyle = style;
  hostAtomView = [(MFModernAtomBackgroundView *)self hostAtomView];
  v6 = [hostAtomView isWrappingEnabled] ^ 1;
  separatorView = self->_separatorView;
  if (style == 2)
  {
    LOBYTE(v6) = 0;
  }

  if (v6)
  {
    if (!separatorView || self->_separatorStyle != style)
    {
      if (style)
      {
        if (style != 1)
        {
          __assert_rtn("[MFModernAtomBackgroundView setSeparatorStyle:]", "MFModernAtomView.m", 1567, "0 && unexpected separatorStyle");
        }

        _chevronImage = [(MFModernAtomBackgroundView *)self _chevronImage];
        v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:_chevronImage];
        if ([hostAtomView separatorIsLeftAligned])
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

        clearColor = [MEMORY[0x1E69DC888] clearColor];
        [v10 setBackgroundColor:clearColor];

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
  hostAtomView = [(MFModernAtomBackgroundView *)self hostAtomView];
  isWrappingEnabled = [hostAtomView isWrappingEnabled];

  if ((isWrappingEnabled & 1) == 0)
  {
    if ([(MFModernAtomBackgroundView *)self separatorStyle]== 1)
    {
      _chevronImage = [(MFModernAtomBackgroundView *)self _chevronImage];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(UIView *)self->_separatorView setImage:_chevronImage];
      }

      goto LABEL_8;
    }

    if (![(MFModernAtomBackgroundView *)self separatorStyle])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        _chevronImage = self->_separatorView;
        v6 = +[MFModernAtomView defaultFont];
        [(UIView *)_chevronImage setFont:v6];

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