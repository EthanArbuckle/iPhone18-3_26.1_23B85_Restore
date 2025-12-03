@interface MTGenericCollectionCell
+ (CGSize)artworkSizeForViewWidth:(double)width;
+ (Class)textStackViewClass;
+ (double)heightForWidth:(double)width;
+ (double)preferredContentWidth;
- (CGRect)artworkFrameForContentViewSize:(CGSize)size;
- (CGRect)sideViewFrameForContentViewSize:(CGSize)size;
- (CGRect)textStackFrameForContentViewSize:(CGSize)size artworkFrame:(CGRect)frame sideViewFrame:(CGRect)viewFrame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MTArtworkView)artworkView;
- (MTLabelStackView)textStackView;
- (NSString)artworkKey;
- (NSString)subtitle;
- (NSString)title;
- (double)textViewMaxXForArtworkFrame:(CGRect)frame sideViewFrame:(CGRect)viewFrame;
- (double)textViewMinXForArtworkFrame:(CGRect)frame sideViewFrame:(CGRect)viewFrame;
- (void)configureSubviews;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setArtworkKey:(id)key;
- (void)setShowsArtwork:(BOOL)artwork;
- (void)setSideView:(id)view;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)updateColors;
@end

@implementation MTGenericCollectionCell

+ (double)heightForWidth:(double)width
{
  if ([self showsArtwork])
  {
    [self artworkSizeForViewWidth:width];
    return v5 + 5.0 + 5.0;
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

+ (double)preferredContentWidth
{
  v2 = [objc_msgSend(self "textStackViewClass")];
  v3 = [UIFont mt_preferredFontForTextStyle:v2];
  [v3 _scaledValueForValue:384.0];
  v5 = v4;

  return v5;
}

- (NSString)title
{
  textStackView = [(MTGenericCollectionCell *)self textStackView];
  title = [textStackView title];

  return title;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  textStackView = [(MTGenericCollectionCell *)self textStackView];
  [textStackView setTitle:titleCopy];
}

- (NSString)subtitle
{
  textStackView = [(MTGenericCollectionCell *)self textStackView];
  subtitle = [textStackView subtitle];

  return subtitle;
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  textStackView = [(MTGenericCollectionCell *)self textStackView];
  [textStackView setSubtitle:subtitleCopy];
}

- (NSString)artworkKey
{
  if ([(MTGenericCollectionCell *)self showsArtwork])
  {
    artworkView = [(MTGenericCollectionCell *)self artworkView];
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
  if ([(MTGenericCollectionCell *)self showsArtwork])
  {
    artworkView = [(MTGenericCollectionCell *)self artworkView];
    [artworkView setArtworkKey:keyCopy];
  }
}

- (void)configureSubviews
{
  v7.receiver = self;
  v7.super_class = MTGenericCollectionCell;
  [(MTCollectionViewCell *)&v7 configureSubviews];
  [(MTGenericCollectionCell *)self setPreservesSuperviewLayoutMargins:1];
  [(MTCollectionViewCell *)self setShowsMoreButton:0];
  self->_showsArtwork = [objc_opt_class() showsArtwork];
  if ([(MTGenericCollectionCell *)self showsArtwork])
  {
    contentView = [(MTCollectionViewCell *)self contentView];
    artworkView = [(MTGenericCollectionCell *)self artworkView];
    [contentView addSubview:artworkView];
  }

  contentView2 = [(MTCollectionViewCell *)self contentView];
  textStackView = [(MTGenericCollectionCell *)self textStackView];
  [contentView2 addSubview:textStackView];

  [(MTGenericCollectionCell *)self updateFonts];
  [(MTGenericCollectionCell *)self updateColors];
  [(MTGenericCollectionCell *)self setNeedsLayout];
}

- (void)updateColors
{
  contentView = [(MTCollectionViewCell *)self contentView];
  [contentView setOpaque:1];

  v5 = +[UIColor backgroundColor];
  contentView2 = [(MTCollectionViewCell *)self contentView];
  [contentView2 setBackgroundColor:v5];
}

- (void)setShowsArtwork:(BOOL)artwork
{
  if (self->_showsArtwork != artwork)
  {
    self->_showsArtwork = artwork;
    if (artwork)
    {
      contentView = [(MTCollectionViewCell *)self contentView];
      artworkView = [(MTGenericCollectionCell *)self artworkView];
      [contentView addSubview:artworkView];
    }

    else
    {
      contentView = [(MTGenericCollectionCell *)self artworkView];
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
        contentView = [(MTCollectionViewCell *)self contentView];
        [contentView addSubview:v9];
      }

      [(MTGenericCollectionCell *)self setNeedsLayout];
      viewCopy = v9;
    }
  }
}

- (void)layoutSubviews
{
  v37.receiver = self;
  v37.super_class = MTGenericCollectionCell;
  [(MTCollectionViewCell *)&v37 layoutSubviews];
  contentView = [(MTCollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;

  [(MTGenericCollectionCell *)self artworkFrameForContentViewSize:v5, v7];
  v9 = v8;
  v35 = v10;
  v36 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  artworkView = [(MTGenericCollectionCell *)self artworkView];
  [artworkView setFrame:{v9, v11, v13, v15}];

  [(MTGenericCollectionCell *)self sideViewFrameForContentViewSize:v5, v7];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sideView = [(MTGenericCollectionCell *)self sideView];
  [sideView setFrame:{v18, v20, v22, v24}];

  [(MTGenericCollectionCell *)self textStackFrameForContentViewSize:v5 artworkFrame:v7 sideViewFrame:v36, v35, v13, v15, *&v18, *&v20, *&v22, *&v24];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  textStackView = [(MTGenericCollectionCell *)self textStackView];
  [textStackView setFrame:{v27, v29, v31, v33}];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = MTGenericCollectionCell;
  [(MTCollectionViewCell *)&v3 prepareForReuse];
  if ([(MTGenericCollectionCell *)self showsArtwork])
  {
    [(MTGenericCollectionCell *)self setArtworkKey:0];
  }
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

- (CGRect)artworkFrameForContentViewSize:(CGSize)size
{
  width = size.width;
  [objc_opt_class() artworkSizeForViewWidth:size.width];
  v6 = v5;
  v8 = v7;
  [(MTGenericCollectionCell *)self layoutMargins];
  v10 = v9;
  if ([(MTGenericCollectionCell *)self mt_isRTL])
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
  [(MTGenericCollectionCell *)self layoutMargins];
  v6 = v5;
  sideView = [(MTGenericCollectionCell *)self sideView];
  [sideView frame];
  v9 = v8;
  v11 = v10;

  IMRoundToPixel();
  v13 = v12;
  mt_isRTL = [(MTGenericCollectionCell *)self mt_isRTL];
  v15 = width - v6 - v9;
  if (mt_isRTL)
  {
    v15 = v6;
  }

  v16 = v13;
  v17 = v9;
  v18 = v11;
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
  [(MTGenericCollectionCell *)self textViewMinXForArtworkFrame:frame.origin.x sideViewFrame:frame.origin.y, frame.size.width, frame.size.height, viewFrame.origin.x, viewFrame.origin.y, viewFrame.size.width, viewFrame.size.height];
  v10 = v9;
  [(MTGenericCollectionCell *)self textViewMaxXForArtworkFrame:x sideViewFrame:y, width, height, viewFrame.origin.x, viewFrame.origin.y, viewFrame.size.width, viewFrame.size.height];
  v12 = v11 - v10;
  textStackView = [(MTGenericCollectionCell *)self textStackView];
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
  if (![(MTGenericCollectionCell *)self mt_isRTL])
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
  if ([(MTGenericCollectionCell *)self mt_isRTL])
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