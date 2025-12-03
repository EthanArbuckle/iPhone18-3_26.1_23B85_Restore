@interface MFMailComposeNavigationBarTitleView
+ (EFLazyCache)attributedStringsCache;
- (BOOL)_needsToLayoutTitleLabel;
- (MFMailComposeNavigationBarTitleView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)_contentInsetsWithExclusionRects:(id)rects wantsUniformHorizontalInsets:(BOOL)insets;
- (double)_subtitleFontSizeWhenMini:(BOOL)mini;
- (double)_titleFontSizeWhenMini:(BOOL)mini;
- (double)_topPaddingForTitleWhenMini:(BOOL)mini;
- (double)_verticalOffsetForSubtitleWhenMini:(BOOL)mini;
- (id)_subtitleTextColor;
- (void)_updateHeightForCurrentTraits;
- (void)_updateTrailingBarButtonItemsAlpha;
- (void)contentDidChange;
- (void)didMoveToWindow;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)setSubtitle:(id)subtitle withStyle:(unint64_t)style;
- (void)setTitle:(id)title;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MFMailComposeNavigationBarTitleView

+ (EFLazyCache)attributedStringsCache
{
  if (attributedStringsCache_onceToken_0 != -1)
  {
    +[MFMailComposeNavigationBarTitleView attributedStringsCache];
  }

  v3 = attributedStringsCache_sAttributedStringsCache_0;

  return v3;
}

void __61__MFMailComposeNavigationBarTitleView_attributedStringsCache__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E699B7E0]) initWithCountLimit:10];
  v1 = attributedStringsCache_sAttributedStringsCache_0;
  attributedStringsCache_sAttributedStringsCache_0 = v0;
}

- (MFMailComposeNavigationBarTitleView)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = MFMailComposeNavigationBarTitleView;
  v3 = [(_UINavigationBarTitleView *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MFMailComposeNavigationBarTitleView *)v3 setAutoresizingMask:2];
    [(MFMailComposeNavigationBarTitleView *)v4 setInsetsLayoutMarginsFromSafeArea:0];
    [(_UINavigationBarTitleView *)v4 setPreferredContentAlignment:2];
    [(_UINavigationBarTitleView *)v4 setHideStandardTitle:1];
    v4->_style = 0;
    v5 = objc_alloc(MEMORY[0x1E69DCC10]);
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x1E695F058], v7, v8, v9}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v10;

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v4->_titleLabel setBackgroundColor:clearColor];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v4->_titleLabel setTextColor:labelColor];

    [(UILabel *)v4->_titleLabel setTextAlignment:1];
    [(UILabel *)v4->_titleLabel setAlpha:0.0];
    [(MFMailComposeNavigationBarTitleView *)v4 addSubview:v4->_titleLabel];
    v14 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v14;

    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v4->_subtitleLabel setBackgroundColor:clearColor2];

    _subtitleTextColor = [(MFMailComposeNavigationBarTitleView *)v4 _subtitleTextColor];
    [(UILabel *)v4->_subtitleLabel setTextColor:_subtitleTextColor];

    [(UILabel *)v4->_subtitleLabel setTextAlignment:1];
    [(MFMailComposeNavigationBarTitleView *)v4 addSubview:v4->_subtitleLabel];
  }

  return v4;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  text = [(UILabel *)self->_titleLabel text];
  v5 = [text isEqualToString:titleCopy];

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_titleLabel setText:titleCopy];
    [(MFMailComposeNavigationBarTitleView *)self setNeedsLayout];
  }
}

- (void)setSubtitle:(id)subtitle withStyle:(unint64_t)style
{
  subtitleCopy = subtitle;
  text = [(UILabel *)self->_subtitleLabel text];
  v8 = [text isEqualToString:subtitleCopy];

  if ((v8 & 1) == 0)
  {
    if (_os_feature_enabled_impl())
    {
      attributedStringsCache = [objc_opt_class() attributedStringsCache];
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __61__MFMailComposeNavigationBarTitleView_setSubtitle_withStyle___block_invoke;
      v16 = &unk_1E806F7A8;
      styleCopy = style;
      v10 = subtitleCopy;
      v17 = v10;
      v11 = [attributedStringsCache objectForKey:v10 generator:&v13];

      subtitleLabel = self->_subtitleLabel;
      if (v11)
      {
        [(UILabel *)subtitleLabel setAttributedText:v11, v13, v14, v15, v16];
      }

      else
      {
        [(UILabel *)subtitleLabel setAttributedText:0, v13, v14, v15, v16];
        [(UILabel *)self->_subtitleLabel setText:v10];
      }
    }

    else
    {
      [(UILabel *)self->_subtitleLabel setText:subtitleCopy];
    }

    [(_UINavigationBarTitleView *)self setHideStandardTitle:[(MFMailComposeNavigationBarTitleView *)self _needsToLayoutTitleLabel]];
    [(MFMailComposeNavigationBarTitleView *)self setNeedsLayout];
  }

  if (self->_style != style)
  {
    self->_style = style;
    [(MFMailComposeNavigationBarTitleView *)self setNeedsLayout];
  }
}

id __61__MFMailComposeNavigationBarTitleView_setSubtitle_withStyle___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == 1)
  {
    v3 = MFImageGlyphLock;
  }

  else
  {
    if (v2 != 3)
    {
      goto LABEL_7;
    }

    v3 = MFImageGlyphSigned;
  }

  v4 = *v3;
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x1E69DB7F0];
    v7 = [MEMORY[0x1E69DCAB8] mf_systemImageNamed:v4 forView:14];
    v8 = [v6 textAttachmentWithImage:v7];

    v9 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:*(a1 + 32)];
    v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v9 insertAttributedString:v10 atIndex:0];

    v11 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v8];
    [v9 insertAttributedString:v11 atIndex:0];

    goto LABEL_8;
  }

LABEL_7:
  v9 = 0;
LABEL_8:

  return v9;
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = MFMailComposeNavigationBarTitleView;
  [(MFMailComposeNavigationBarTitleView *)&v3 layoutMarginsDidChange];
  [(MFMailComposeNavigationBarTitleView *)self setNeedsLayout];
}

- (void)contentDidChange
{
  v3.receiver = self;
  v3.super_class = MFMailComposeNavigationBarTitleView;
  [(_UINavigationBarTitleView *)&v3 contentDidChange];
  [(_UINavigationBarTitleView *)self setHideStandardTitle:[(MFMailComposeNavigationBarTitleView *)self _needsToLayoutTitleLabel]];
  [(MFMailComposeNavigationBarTitleView *)self _updateTrailingBarButtonItemsAlpha];
  [(MFMailComposeNavigationBarTitleView *)self setNeedsLayout];
}

- (UIEdgeInsets)_contentInsetsWithExclusionRects:(id)rects wantsUniformHorizontalInsets:(BOOL)insets
{
  insetsCopy = insets;
  v43 = *MEMORY[0x1E69E9840];
  rectsCopy = rects;
  [(MFMailComposeNavigationBarTitleView *)self bounds];
  MaxX = CGRectGetMaxX(v44);
  [(MFMailComposeNavigationBarTitleView *)self bounds];
  MidX = CGRectGetMidX(v45);
  v37 = MaxX;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = rectsCopy;
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v42 count:16];
  v10 = *MEMORY[0x1E695F058];
  v11 = *(MEMORY[0x1E695F058] + 8);
  v13 = *(MEMORY[0x1E695F058] + 16);
  v12 = *(MEMORY[0x1E695F058] + 24);
  if (v9)
  {
    v14 = *v39;
    v35 = 0.0;
    v36 = 0.0;
    v34 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v38 + 1) + 8 * i) CGRectValue];
        x = v46.origin.x;
        y = v46.origin.y;
        width = v46.size.width;
        height = v46.size.height;
        if (CGRectGetMaxX(v46) >= MidX)
        {
          v49.origin.y = v36;
          v49.origin.x = v37;
          v49.size.height = v34;
          v49.size.width = v35;
          v56.origin.x = x;
          v56.origin.y = y;
          v56.size.width = width;
          v56.size.height = height;
          v50 = CGRectUnion(v49, v56);
          v36 = v50.origin.y;
          v37 = v50.origin.x;
          v34 = v50.size.height;
          v35 = v50.size.width;
        }

        else
        {
          v47.origin.x = v10;
          v47.origin.y = v11;
          v47.size.width = v13;
          v47.size.height = v12;
          v55.origin.x = x;
          v55.origin.y = y;
          v55.size.width = width;
          v55.size.height = height;
          v48 = CGRectUnion(v47, v55);
          v10 = v48.origin.x;
          v11 = v48.origin.y;
          v13 = v48.size.width;
          v12 = v48.size.height;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v9);
  }

  else
  {
    v35 = 0.0;
    v36 = 0.0;
    v34 = 0.0;
  }

  v51.origin.x = v10;
  v51.origin.y = v11;
  v51.size.width = v13;
  v51.size.height = v12;
  v20 = CGRectGetMaxX(v51);
  [(MFMailComposeNavigationBarTitleView *)self bounds];
  v21 = CGRectGetWidth(v52);
  v53.origin.y = v36;
  v53.origin.x = v37;
  v53.size.height = v34;
  v53.size.width = v35;
  MinX = CGRectGetMinX(v53);
  v23 = MEMORY[0x1E69DDCE0];
  v24 = *(MEMORY[0x1E69DDCE0] + 8);
  if (v24 < v20)
  {
    v24 = v20;
  }

  v25 = v21 - MinX;
  if (*(MEMORY[0x1E69DDCE0] + 24) >= v25)
  {
    v25 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  if (v24 >= v25)
  {
    v26 = v24;
  }

  else
  {
    v26 = v25;
  }

  if (insetsCopy)
  {
    v27 = v26;
  }

  else
  {
    v27 = v24;
  }

  if (insetsCopy)
  {
    v28 = v26;
  }

  else
  {
    v28 = v25;
  }

  v29 = *v23;
  v30 = v23[2];
  v31 = v27;
  v32 = v28;
  result.right = v32;
  result.bottom = v30;
  result.left = v31;
  result.top = v29;
  return result;
}

- (void)layoutSubviews
{
  v57.receiver = self;
  v57.super_class = MFMailComposeNavigationBarTitleView;
  [(MFMailComposeNavigationBarTitleView *)&v57 layoutSubviews];
  _needsToLayoutTitleLabel = [(MFMailComposeNavigationBarTitleView *)self _needsToLayoutTitleLabel];
  contentOverlayRects = [(_UINavigationBarTitleView *)self contentOverlayRects];
  [(MFMailComposeNavigationBarTitleView *)self _contentInsetsWithExclusionRects:contentOverlayRects wantsUniformHorizontalInsets:0];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(UILabel *)self->_titleLabel setLayoutMargins:v6, v8, v10, v12];
  [(UILabel *)self->_subtitleLabel setLayoutMargins:v6, v8, v10, v12];
  [(MFMailComposeNavigationBarTitleView *)self bounds];
  v15 = v14;
  v16 = v13;
  if (_needsToLayoutTitleLabel)
  {
    v17 = MEMORY[0x1E69DB878];
    [(MFMailComposeNavigationBarTitleView *)self _titleFontSizeWhenMini:v13 <= 32.0];
    v18 = [v17 boldSystemFontOfSize:?];
    [(UILabel *)self->_titleLabel setFont:v18];

    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __53__MFMailComposeNavigationBarTitleView_layoutSubviews__block_invoke;
    v56[3] = &unk_1E806C570;
    v56[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v56];
  }

  v19 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:{*MEMORY[0x1E69DDD08], 32.0}];
  [(MFMailComposeNavigationBarTitleView *)self _subtitleFontSizeWhenMini:v16 <= 32.0];
  v20 = [v19 fontWithSize:?];
  [(UILabel *)self->_subtitleLabel setFont:v20];

  _subtitleTextColor = [(MFMailComposeNavigationBarTitleView *)self _subtitleTextColor];
  [(UILabel *)self->_subtitleLabel setTextColor:_subtitleTextColor];

  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __53__MFMailComposeNavigationBarTitleView_layoutSubviews__block_invoke_2;
  v55[3] = &unk_1E806C570;
  v55[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v55];
  [(UILabel *)self->_titleLabel layoutMargins];
  v23 = v22;
  [(UILabel *)self->_titleLabel layoutMargins];
  v25 = 0.0;
  if (_needsToLayoutTitleLabel)
  {
    v26 = v24;
    v27 = v15;
    [(UILabel *)self->_titleLabel frame];
    v53 = v28;
    [(MFMailComposeNavigationBarTitleView *)self _verticalOffsetForSubtitleWhenMini:v16 <= 32.0];
    v30 = v29;
    [(UILabel *)self->_subtitleLabel frame];
    v32 = v31;
    [(UILabel *)self->_titleLabel frame];
    v35 = v34;
    v36 = v27 - (v23 + v26 + 5.0 + 6.0);
    if (v33 >= v36)
    {
      [(UILabel *)self->_titleLabel layoutMargins];
      v38 = v39 + 5.0;
    }

    else
    {
      v37 = (v27 - v33) * 0.5;
      v38 = floorf(v37);
      v36 = v33;
    }

    [(MFMailComposeNavigationBarTitleView *)self _topPaddingForTitleWhenMini:v16 <= 32.0];
    v40 = (v16 - (v53 + v30 + v32)) * 0.5;
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __53__MFMailComposeNavigationBarTitleView_layoutSubviews__block_invoke_3;
    v54[3] = &unk_1E806F7D0;
    v54[4] = self;
    *&v54[5] = v38;
    *&v54[6] = v41 + floorf(v40);
    *&v54[7] = v36;
    v54[8] = v35;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v54];
    v25 = 1.0;
    v15 = v27;
  }

  [(UILabel *)self->_titleLabel setAlpha:v25];
  [(UILabel *)self->_subtitleLabel frame];
  v43 = v42;
  v45 = v44;
  if (_needsToLayoutTitleLabel)
  {
    [(UILabel *)self->_titleLabel frame];
    MaxY = CGRectGetMaxY(v58);
    [(MFMailComposeNavigationBarTitleView *)self _verticalOffsetForSubtitleWhenMini:v16 <= 32.0];
    v48 = MaxY + v47;
  }

  else
  {
    [(UILabel *)self->_subtitleLabel frame];
    v50 = (v16 - v49) * 0.5;
    v48 = floorf(v50);
  }

  [(UILabel *)self->_subtitleLabel frame];
  v51 = CGRectEqualToRect(v59, *MEMORY[0x1E695F058]);
  if (v51)
  {
    [MEMORY[0x1E69DD250] setAnimationsEnabled:0];
  }

  v52 = (v15 - v43) * 0.5;
  [(UILabel *)self->_subtitleLabel setFrame:floorf(v52), v48, v43, v45];
  if (v51)
  {
    [MEMORY[0x1E69DD250] setAnimationsEnabled:1];
  }
}

- (void)_updateTrailingBarButtonItemsAlpha
{
  if ((MFSolariumFeatureEnabled() & 1) == 0)
  {
    [(_UINavigationBarTitleView *)self largeTitleHeight];
    if (v3 <= 16.0 && ([(_UINavigationBarTitleView *)self trailingBarAlpha], v4 == 0.0))
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __73__MFMailComposeNavigationBarTitleView__updateTrailingBarButtonItemsAlpha__block_invoke;
      v8[3] = &unk_1E806C570;
      v8[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v8 options:0 animations:0.2 completion:0.0];
    }

    else
    {
      [(_UINavigationBarTitleView *)self largeTitleHeight];
      if (v5 > 16.0)
      {
        [(_UINavigationBarTitleView *)self trailingBarAlpha];
        if (v6 == 1.0)
        {
          v7[0] = MEMORY[0x1E69E9820];
          v7[1] = 3221225472;
          v7[2] = __73__MFMailComposeNavigationBarTitleView__updateTrailingBarButtonItemsAlpha__block_invoke_2;
          v7[3] = &unk_1E806C570;
          v7[4] = self;
          [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v7 options:0 animations:0.2 completion:0.0];
        }
      }
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v5.receiver = self;
  v5.super_class = MFMailComposeNavigationBarTitleView;
  [(MFMailComposeNavigationBarTitleView *)&v5 traitCollectionDidChange:changeCopy];
  [(MFMailComposeNavigationBarTitleView *)self _updateHeightForCurrentTraits];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = MFMailComposeNavigationBarTitleView;
  [(MFMailComposeNavigationBarTitleView *)&v4 didMoveToWindow];
  window = [(MFMailComposeNavigationBarTitleView *)self window];

  if (window)
  {
    [(MFMailComposeNavigationBarTitleView *)self _updateHeightForCurrentTraits];
  }
}

- (void)_updateHeightForCurrentTraits
{
  traitCollection = [(MFMailComposeNavigationBarTitleView *)self traitCollection];
  if ([traitCollection verticalSizeClass] == 1)
  {
    horizontalSizeClass = [traitCollection horizontalSizeClass];
    v4 = 56.0;
    if (horizontalSizeClass == 1)
    {
      v4 = 32.0;
    }
  }

  else
  {
    v4 = 56.0;
  }

  [(_UINavigationBarTitleView *)self setHeight:v4];
}

- (double)_verticalOffsetForSubtitleWhenMini:(BOOL)mini
{
  miniCopy = mini;
  subtitle = [(MFMailComposeNavigationBarTitleView *)self subtitle];
  v5 = [subtitle length];

  result = 2.0;
  if (miniCopy)
  {
    result = 1.0;
  }

  if (!v5)
  {
    return 0.0;
  }

  return result;
}

- (double)_topPaddingForTitleWhenMini:(BOOL)mini
{
  v3 = 1.0;
  if (mini)
  {
    subtitle = [(MFMailComposeNavigationBarTitleView *)self subtitle];
    if ([subtitle length])
    {
      v3 = -1.0;
    }

    else
    {
      v3 = 0.0;
    }
  }

  return v3;
}

- (double)_titleFontSizeWhenMini:(BOOL)mini
{
  v3 = 17.0;
  if (mini)
  {
    subtitle = [(MFMailComposeNavigationBarTitleView *)self subtitle];
    if ([subtitle length])
    {
      v3 = 14.0;
    }

    else
    {
      v3 = 17.0;
    }
  }

  return v3;
}

- (double)_subtitleFontSizeWhenMini:(BOOL)mini
{
  result = 12.0;
  if (mini)
  {
    return 9.0;
  }

  return result;
}

- (id)_subtitleTextColor
{
  style = self->_style;
  if (style > 4)
  {
    v5 = 0;
  }

  else
  {
    if (((1 << style) & 0xB) != 0)
    {
      [(MFMailComposeNavigationBarTitleView *)self tintColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] colorWithRed:0.81 green:0.0 blue:0.06 alpha:{1.0, v2}];
    }
    v5 = ;
  }

  return v5;
}

- (BOOL)_needsToLayoutTitleLabel
{
  [(_UINavigationBarTitleView *)self largeTitleHeight];
  if (v3 > 16.0)
  {
    return 0;
  }

  subtitle = [(MFMailComposeNavigationBarTitleView *)self subtitle];
  v4 = [subtitle length] != 0;

  return v4;
}

@end