@interface MTGenericCell
+ (CGSize)artworkSizeForViewWidth:(double)a3;
+ (Class)textStackViewClass;
+ (double)heightForWidth:(double)a3;
- (CGRect)artworkFrameForContentViewSize:(CGSize)a3;
- (CGRect)sideViewFrameForContentViewSize:(CGSize)a3;
- (CGRect)textStackFrameForContentViewSize:(CGSize)a3 artworkFrame:(CGRect)a4 sideViewFrame:(CGRect)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MTArtworkView)artworkView;
- (MTGenericCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (MTLabelStackView)textStackView;
- (NSString)artworkKey;
- (NSString)subtitle;
- (NSString)title;
- (double)textViewMaxXForArtworkFrame:(CGRect)a3 sideViewFrame:(CGRect)a4;
- (double)textViewMinXForArtworkFrame:(CGRect)a3 sideViewFrame:(CGRect)a4;
- (void)_setSideViewHidden:(BOOL)a3;
- (void)_updateSideViewHiddenForCurrentState;
- (void)_updateSideViewHiddenForState:(unint64_t)a3;
- (void)configureSubviews;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setArtworkKey:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHidesSideViewWhenEditing:(BOOL)a3;
- (void)setShowsArtwork:(BOOL)a3;
- (void)setSideView:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)updateFonts;
- (void)willTransitionToState:(unint64_t)a3;
@end

@implementation MTGenericCell

+ (double)heightForWidth:(double)a3
{
  if ([a1 showsArtwork])
  {
    [a1 artworkSizeForViewWidth:a3];
    return v5 + 13.0 + 13.0;
  }

  else
  {
    v7 = [a1 textStackViewClass];
    v8 = [v7 defaultTitleFont];
    v9 = [v7 defaultSubtitleFont];
    v10 = [v7 defaultTitleNumberOfLines] != 1;
    [v8 lineHeight];
    v12 = v11;
    [v8 mt_offsetFromCapHeightToAscent];
    v14 = v12 - v13 + 10.0;
    [v7 distanceBetweenLabelFramesWithTitleFont:v8 subtitleFont:v9 multilineTitle:v10];
    v16 = v15 + v14;
    [v9 lineHeight];
    v18 = v17;
    [v9 mt_offsetFromLastBaselineToBottom];
    v6 = v16 + v18 - v19 + 10.0;
  }

  return v6;
}

+ (CGSize)artworkSizeForViewWidth:(double)a3
{
  v3 = +[MTEpisodeLockup styleForWidth:showsArtwork:](MTEpisodeLockup, "styleForWidth:showsArtwork:", [a1 showsArtwork], a3);

  [MTEpisodeLockup artworkSizeForStyle:v3];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (Class)textStackViewClass
{
  [a1 showsArtwork];
  v2 = objc_opt_class();

  return v2;
}

- (MTGenericCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = MTGenericCell;
  v4 = [(MTTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v4->_hidesSideViewWhenEditing = 1;
    [(MTGenericCell *)v4 configureSubviews];
  }

  return v5;
}

- (NSString)title
{
  v2 = [(MTGenericCell *)self textStackView];
  v3 = [v2 title];

  return v3;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(MTGenericCell *)self textStackView];
  [v5 setTitle:v4];
}

- (NSString)subtitle
{
  v2 = [(MTGenericCell *)self textStackView];
  v3 = [v2 subtitle];

  return v3;
}

- (void)setSubtitle:(id)a3
{
  v4 = a3;
  v5 = [(MTGenericCell *)self textStackView];
  [v5 setSubtitle:v4];
}

- (NSString)artworkKey
{
  if ([(MTGenericCell *)self showsArtwork])
  {
    v3 = [(MTGenericCell *)self artworkView];
    v4 = [v3 artworkKey];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setArtworkKey:(id)a3
{
  v5 = a3;
  if ([(MTGenericCell *)self showsArtwork])
  {
    v4 = [(MTGenericCell *)self artworkView];
    [v4 setArtworkKey:v5];
  }
}

- (void)setHidesSideViewWhenEditing:(BOOL)a3
{
  if ([(MTGenericCell *)self hidesSideViewWhenEditing]!= a3)
  {
    self->_hidesSideViewWhenEditing = a3;

    [(MTGenericCell *)self _updateSideViewHiddenForCurrentState];
  }
}

- (void)configureSubviews
{
  self->_showsArtwork = [objc_opt_class() showsArtwork];
  if ([(MTGenericCell *)self showsArtwork])
  {
    v3 = [(MTGenericCell *)self contentView];
    v4 = [(MTGenericCell *)self artworkView];
    [v3 addSubview:v4];
  }

  v5 = [(MTGenericCell *)self contentView];
  v6 = [(MTGenericCell *)self textStackView];
  [v5 addSubview:v6];

  [(MTGenericCell *)self updateFonts];
  [(MTGenericCell *)self updateColors];

  [(MTGenericCell *)self setNeedsLayout];
}

- (void)updateFonts
{
  v3 = [(MTGenericCell *)self textStackView];
  [v3 updateFonts];

  [(MTGenericCell *)self setNeedsLayout];
}

- (void)setShowsArtwork:(BOOL)a3
{
  if (self->_showsArtwork != a3)
  {
    self->_showsArtwork = a3;
    if (a3)
    {
      v6 = [(MTGenericCell *)self contentView];
      v5 = [(MTGenericCell *)self artworkView];
      [v6 addSubview:v5];
    }

    else
    {
      v6 = [(MTGenericCell *)self artworkView];
      [v6 removeFromSuperview];
    }
  }
}

- (void)setSideView:(id)a3
{
  v5 = a3;
  sideView = self->_sideView;
  if (sideView != v5)
  {
    v9 = v5;
    v7 = [(UIView *)sideView isEqual:v5];
    v5 = v9;
    if ((v7 & 1) == 0)
    {
      [(UIView *)self->_sideView removeFromSuperview];
      objc_storeStrong(&self->_sideView, a3);
      if (v9)
      {
        v8 = [(MTGenericCell *)self contentView];
        [v8 addSubview:v9];
      }

      [(MTGenericCell *)self setNeedsLayout];
      v5 = v9;
    }
  }
}

- (void)layoutSubviews
{
  v40.receiver = self;
  v40.super_class = MTGenericCell;
  [(MTTableViewCell *)&v40 layoutSubviews];
  v3 = [(MTGenericCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  [(MTGenericCell *)self artworkFrameForContentViewSize:v5, v7];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(MTGenericCell *)self artworkView];
  v38 = v11;
  v39 = v9;
  [v16 setFrame:{v9, v11, v13, v15}];

  [(MTGenericCell *)self sideViewFrameForContentViewSize:v5, v7];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [(MTGenericCell *)self _isSideViewHidden];
  v26 = [(MTGenericCell *)self sideView];
  v27 = v26;
  if (v25)
  {
    v28 = 0.0;
  }

  else
  {
    [v26 setFrame:{v18, v20, v22, v24}];

    v26 = [(MTGenericCell *)self sideView];
    v27 = v26;
    v28 = 1.0;
  }

  [v26 setAlpha:v28];

  [(MTGenericCell *)self textStackFrameForContentViewSize:v5 artworkFrame:v7 sideViewFrame:v39, v38, v13, v15, *&v18, *&v20, *&v22, *&v24];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = [(MTGenericCell *)self textStackView];
  [v37 setFrame:{v30, v32, v34, v36}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [objc_opt_class() heightForWidth:a3.width];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = MTGenericCell;
  [(MTTableViewCell *)&v3 prepareForReuse];
  if ([(MTGenericCell *)self showsArtwork])
  {
    [(MTGenericCell *)self setArtworkKey:0];
  }

  [(MTGenericCell *)self _updateSideViewHiddenForCurrentState];
  [(MTGenericCell *)self updateFonts];
}

- (void)willTransitionToState:(unint64_t)a3
{
  [(MTGenericCell *)self _updateSideViewHiddenForState:?];
  v5.receiver = self;
  v5.super_class = MTGenericCell;
  [(MTGenericCell *)&v5 willTransitionToState:a3];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = MTGenericCell;
  [(MTTableViewCell *)&v7 setEnabled:?];
  [(MTGenericCell *)self setUserInteractionEnabled:v3];
  v5 = [(MTGenericCell *)self textStackView];
  [v5 setEnabled:v3];

  v6 = [(MTGenericCell *)self artworkView];
  [v6 setEnabled:v3];
}

- (CGRect)artworkFrameForContentViewSize:(CGSize)a3
{
  width = a3.width;
  [objc_opt_class() artworkSizeForViewWidth:a3.width];
  v6 = v5;
  v8 = v7;
  [(MTGenericCell *)self layoutMargins];
  v10 = v9;
  if ([(MTGenericCell *)self mt_isRTL])
  {
    v11 = width - v10 - v6;
  }

  else
  {
    v11 = v10;
  }

  IMRoundToPixel();
  v13 = v12;
  v14 = v11;
  v15 = v6;
  v16 = v8;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v13;
  result.origin.x = v14;
  return result;
}

- (CGRect)sideViewFrameForContentViewSize:(CGSize)a3
{
  width = a3.width;
  [(MTGenericCell *)self layoutMargins];
  v6 = v5;
  if ([(MTGenericCell *)self _isSideViewHidden])
  {
    v7 = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    v9 = [(MTGenericCell *)self sideView];
    [v9 frame];
    v7 = v10;
    height = v11;
  }

  IMRoundToPixel();
  v13 = v12;
  v14 = [(MTGenericCell *)self mt_isRTL];
  v15 = width - v6 - v7;
  if (v14)
  {
    v15 = v6;
  }

  v16 = v13;
  v17 = v7;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)textStackFrameForContentViewSize:(CGSize)a3 artworkFrame:(CGRect)a4 sideViewFrame:(CGRect)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [(MTGenericCell *)self textViewMinXForArtworkFrame:a4.origin.x sideViewFrame:a4.origin.y, a4.size.width, a4.size.height, a5.origin.x, a5.origin.y, a5.size.width, a5.size.height];
  v10 = v9;
  [(MTGenericCell *)self textViewMaxXForArtworkFrame:x sideViewFrame:y, width, height, a5.origin.x, a5.origin.y, a5.size.width, a5.size.height];
  v12 = v11 - v10;
  v13 = [(MTGenericCell *)self textStackView];
  [v13 sizeThatFits:{v12, 1.79769313e308}];
  v15 = v14;

  IMRoundToPixel();
  v17 = v16;
  v18 = v10;
  v19 = v12;
  v20 = v15;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v17;
  result.origin.x = v18;
  return result;
}

- (double)textViewMinXForArtworkFrame:(CGRect)a3 sideViewFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  if (![(MTGenericCell *)self mt_isRTL])
  {
    x = v11;
    y = v10;
    width = v9;
    height = v8;
  }

  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MaxX = CGRectGetMaxX(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  IsEmpty = CGRectIsEmpty(v17);
  v14 = 10.0;
  if (IsEmpty)
  {
    v14 = 0.0;
  }

  return MaxX + v14;
}

- (double)textViewMaxXForArtworkFrame:(CGRect)a3 sideViewFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  if ([(MTGenericCell *)self mt_isRTL])
  {
    x = v11;
    y = v10;
    width = v9;
    height = v8;
  }

  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MinX = CGRectGetMinX(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  IsEmpty = CGRectIsEmpty(v17);
  v14 = 10.0;
  if (IsEmpty)
  {
    v14 = 0.0;
  }

  return MinX - v14;
}

- (void)_updateSideViewHiddenForCurrentState
{
  v3 = [(MTGenericCell *)self currentStateMask];

  [(MTGenericCell *)self _updateSideViewHiddenForState:v3];
}

- (void)_updateSideViewHiddenForState:(unint64_t)a3
{
  v4 = (a3 & 1) != 0 && [(MTGenericCell *)self hidesSideViewWhenEditing];

  [(MTGenericCell *)self _setSideViewHidden:v4];
}

- (void)_setSideViewHidden:(BOOL)a3
{
  if ([(MTGenericCell *)self _isSideViewHidden]!= a3)
  {
    self->_sideViewHidden = a3;

    [(MTGenericCell *)self setNeedsLayout];
  }
}

- (MTArtworkView)artworkView
{
  artworkView = self->_artworkView;
  if (!artworkView)
  {
    v4 = objc_opt_new();
    v5 = self->_artworkView;
    self->_artworkView = v4;

    artworkView = self->_artworkView;
  }

  return artworkView;
}

- (MTLabelStackView)textStackView
{
  textStackView = self->_textStackView;
  if (!textStackView)
  {
    [objc_opt_class() textStackViewClass];
    v4 = objc_opt_new();
    v5 = self->_textStackView;
    self->_textStackView = v4;

    textStackView = self->_textStackView;
  }

  return textStackView;
}

@end