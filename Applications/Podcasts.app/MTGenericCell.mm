@interface MTGenericCell
+ (CGSize)artworkSizeForViewWidth:(double)width;
+ (Class)textStackViewClass;
+ (double)heightForWidth:(double)width;
- (CGRect)artworkFrameForContentViewSize:(CGSize)size;
- (CGRect)sideViewFrameForContentViewSize:(CGSize)size;
- (CGRect)textStackFrameForContentViewSize:(CGSize)size artworkFrame:(CGRect)frame sideViewFrame:(CGRect)viewFrame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MTArtworkView)artworkView;
- (MTGenericCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (MTLabelStackView)textStackView;
- (NSString)artworkKey;
- (NSString)subtitle;
- (NSString)title;
- (double)textViewMaxXForArtworkFrame:(CGRect)frame sideViewFrame:(CGRect)viewFrame;
- (double)textViewMinXForArtworkFrame:(CGRect)frame sideViewFrame:(CGRect)viewFrame;
- (void)_setSideViewHidden:(BOOL)hidden;
- (void)_updateSideViewHiddenForCurrentState;
- (void)_updateSideViewHiddenForState:(unint64_t)state;
- (void)configureSubviews;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setArtworkKey:(id)key;
- (void)setEnabled:(BOOL)enabled;
- (void)setHidesSideViewWhenEditing:(BOOL)editing;
- (void)setShowsArtwork:(BOOL)artwork;
- (void)setSideView:(id)view;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)updateFonts;
- (void)willTransitionToState:(unint64_t)state;
@end

@implementation MTGenericCell

+ (double)heightForWidth:(double)width
{
  if ([self showsArtwork])
  {
    [self artworkSizeForViewWidth:width];
    return v5 + 13.0 + 13.0;
  }

  else
  {
    textStackViewClass = [self textStackViewClass];
    defaultTitleFont = [textStackViewClass defaultTitleFont];
    defaultSubtitleFont = [textStackViewClass defaultSubtitleFont];
    v10 = [textStackViewClass defaultTitleNumberOfLines] != 1;
    [defaultTitleFont lineHeight];
    v12 = v11;
    [defaultTitleFont mt_offsetFromCapHeightToAscent];
    v14 = v12 - v13 + 10.0;
    [textStackViewClass distanceBetweenLabelFramesWithTitleFont:defaultTitleFont subtitleFont:defaultSubtitleFont multilineTitle:v10];
    v16 = v15 + v14;
    [defaultSubtitleFont lineHeight];
    v18 = v17;
    [defaultSubtitleFont mt_offsetFromLastBaselineToBottom];
    v6 = v16 + v18 - v19 + 10.0;
  }

  return v6;
}

+ (CGSize)artworkSizeForViewWidth:(double)width
{
  v3 = +[MTEpisodeLockup styleForWidth:showsArtwork:](MTEpisodeLockup, "styleForWidth:showsArtwork:", [self showsArtwork], width);

  [MTEpisodeLockup artworkSizeForStyle:v3];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (Class)textStackViewClass
{
  [self showsArtwork];
  v2 = objc_opt_class();

  return v2;
}

- (MTGenericCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = MTGenericCell;
  v4 = [(MTTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
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
  textStackView = [(MTGenericCell *)self textStackView];
  title = [textStackView title];

  return title;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  textStackView = [(MTGenericCell *)self textStackView];
  [textStackView setTitle:titleCopy];
}

- (NSString)subtitle
{
  textStackView = [(MTGenericCell *)self textStackView];
  subtitle = [textStackView subtitle];

  return subtitle;
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  textStackView = [(MTGenericCell *)self textStackView];
  [textStackView setSubtitle:subtitleCopy];
}

- (NSString)artworkKey
{
  if ([(MTGenericCell *)self showsArtwork])
  {
    artworkView = [(MTGenericCell *)self artworkView];
    artworkKey = [artworkView artworkKey];
  }

  else
  {
    artworkKey = 0;
  }

  return artworkKey;
}

- (void)setArtworkKey:(id)key
{
  keyCopy = key;
  if ([(MTGenericCell *)self showsArtwork])
  {
    artworkView = [(MTGenericCell *)self artworkView];
    [artworkView setArtworkKey:keyCopy];
  }
}

- (void)setHidesSideViewWhenEditing:(BOOL)editing
{
  if ([(MTGenericCell *)self hidesSideViewWhenEditing]!= editing)
  {
    self->_hidesSideViewWhenEditing = editing;

    [(MTGenericCell *)self _updateSideViewHiddenForCurrentState];
  }
}

- (void)configureSubviews
{
  self->_showsArtwork = [objc_opt_class() showsArtwork];
  if ([(MTGenericCell *)self showsArtwork])
  {
    contentView = [(MTGenericCell *)self contentView];
    artworkView = [(MTGenericCell *)self artworkView];
    [contentView addSubview:artworkView];
  }

  contentView2 = [(MTGenericCell *)self contentView];
  textStackView = [(MTGenericCell *)self textStackView];
  [contentView2 addSubview:textStackView];

  [(MTGenericCell *)self updateFonts];
  [(MTGenericCell *)self updateColors];

  [(MTGenericCell *)self setNeedsLayout];
}

- (void)updateFonts
{
  textStackView = [(MTGenericCell *)self textStackView];
  [textStackView updateFonts];

  [(MTGenericCell *)self setNeedsLayout];
}

- (void)setShowsArtwork:(BOOL)artwork
{
  if (self->_showsArtwork != artwork)
  {
    self->_showsArtwork = artwork;
    if (artwork)
    {
      contentView = [(MTGenericCell *)self contentView];
      artworkView = [(MTGenericCell *)self artworkView];
      [contentView addSubview:artworkView];
    }

    else
    {
      contentView = [(MTGenericCell *)self artworkView];
      [contentView removeFromSuperview];
    }
  }
}

- (void)setSideView:(id)view
{
  viewCopy = view;
  sideView = self->_sideView;
  if (sideView != viewCopy)
  {
    v9 = viewCopy;
    v7 = [(UIView *)sideView isEqual:viewCopy];
    viewCopy = v9;
    if ((v7 & 1) == 0)
    {
      [(UIView *)self->_sideView removeFromSuperview];
      objc_storeStrong(&self->_sideView, view);
      if (v9)
      {
        contentView = [(MTGenericCell *)self contentView];
        [contentView addSubview:v9];
      }

      [(MTGenericCell *)self setNeedsLayout];
      viewCopy = v9;
    }
  }
}

- (void)layoutSubviews
{
  v40.receiver = self;
  v40.super_class = MTGenericCell;
  [(MTTableViewCell *)&v40 layoutSubviews];
  contentView = [(MTGenericCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;

  [(MTGenericCell *)self artworkFrameForContentViewSize:v5, v7];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  artworkView = [(MTGenericCell *)self artworkView];
  v38 = v11;
  v39 = v9;
  [artworkView setFrame:{v9, v11, v13, v15}];

  [(MTGenericCell *)self sideViewFrameForContentViewSize:v5, v7];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  _isSideViewHidden = [(MTGenericCell *)self _isSideViewHidden];
  sideView = [(MTGenericCell *)self sideView];
  v27 = sideView;
  if (_isSideViewHidden)
  {
    v28 = 0.0;
  }

  else
  {
    [sideView setFrame:{v18, v20, v22, v24}];

    sideView = [(MTGenericCell *)self sideView];
    v27 = sideView;
    v28 = 1.0;
  }

  [sideView setAlpha:v28];

  [(MTGenericCell *)self textStackFrameForContentViewSize:v5 artworkFrame:v7 sideViewFrame:v39, v38, v13, v15, *&v18, *&v20, *&v22, *&v24];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  textStackView = [(MTGenericCell *)self textStackView];
  [textStackView setFrame:{v30, v32, v34, v36}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [objc_opt_class() heightForWidth:fits.width];
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

- (void)willTransitionToState:(unint64_t)state
{
  [(MTGenericCell *)self _updateSideViewHiddenForState:?];
  v5.receiver = self;
  v5.super_class = MTGenericCell;
  [(MTGenericCell *)&v5 willTransitionToState:state];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7.receiver = self;
  v7.super_class = MTGenericCell;
  [(MTTableViewCell *)&v7 setEnabled:?];
  [(MTGenericCell *)self setUserInteractionEnabled:enabledCopy];
  textStackView = [(MTGenericCell *)self textStackView];
  [textStackView setEnabled:enabledCopy];

  artworkView = [(MTGenericCell *)self artworkView];
  [artworkView setEnabled:enabledCopy];
}

- (CGRect)artworkFrameForContentViewSize:(CGSize)size
{
  width = size.width;
  [objc_opt_class() artworkSizeForViewWidth:size.width];
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

- (CGRect)sideViewFrameForContentViewSize:(CGSize)size
{
  width = size.width;
  [(MTGenericCell *)self layoutMargins];
  v6 = v5;
  if ([(MTGenericCell *)self _isSideViewHidden])
  {
    v7 = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    sideView = [(MTGenericCell *)self sideView];
    [sideView frame];
    v7 = v10;
    height = v11;
  }

  IMRoundToPixel();
  v13 = v12;
  mt_isRTL = [(MTGenericCell *)self mt_isRTL];
  v15 = width - v6 - v7;
  if (mt_isRTL)
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

- (CGRect)textStackFrameForContentViewSize:(CGSize)size artworkFrame:(CGRect)frame sideViewFrame:(CGRect)viewFrame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(MTGenericCell *)self textViewMinXForArtworkFrame:frame.origin.x sideViewFrame:frame.origin.y, frame.size.width, frame.size.height, viewFrame.origin.x, viewFrame.origin.y, viewFrame.size.width, viewFrame.size.height];
  v10 = v9;
  [(MTGenericCell *)self textViewMaxXForArtworkFrame:x sideViewFrame:y, width, height, viewFrame.origin.x, viewFrame.origin.y, viewFrame.size.width, viewFrame.size.height];
  v12 = v11 - v10;
  textStackView = [(MTGenericCell *)self textStackView];
  [textStackView sizeThatFits:{v12, 1.79769313e308}];
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

- (double)textViewMinXForArtworkFrame:(CGRect)frame sideViewFrame:(CGRect)viewFrame
{
  height = viewFrame.size.height;
  width = viewFrame.size.width;
  y = viewFrame.origin.y;
  x = viewFrame.origin.x;
  v8 = frame.size.height;
  v9 = frame.size.width;
  v10 = frame.origin.y;
  v11 = frame.origin.x;
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

- (double)textViewMaxXForArtworkFrame:(CGRect)frame sideViewFrame:(CGRect)viewFrame
{
  height = viewFrame.size.height;
  width = viewFrame.size.width;
  y = viewFrame.origin.y;
  x = viewFrame.origin.x;
  v8 = frame.size.height;
  v9 = frame.size.width;
  v10 = frame.origin.y;
  v11 = frame.origin.x;
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
  currentStateMask = [(MTGenericCell *)self currentStateMask];

  [(MTGenericCell *)self _updateSideViewHiddenForState:currentStateMask];
}

- (void)_updateSideViewHiddenForState:(unint64_t)state
{
  v4 = (state & 1) != 0 && [(MTGenericCell *)self hidesSideViewWhenEditing];

  [(MTGenericCell *)self _setSideViewHidden:v4];
}

- (void)_setSideViewHidden:(BOOL)hidden
{
  if ([(MTGenericCell *)self _isSideViewHidden]!= hidden)
  {
    self->_sideViewHidden = hidden;

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