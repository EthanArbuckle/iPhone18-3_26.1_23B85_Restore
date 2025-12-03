@interface MTLabelStackView
+ (double)distanceBetweenLabelFrames;
+ (double)distanceBetweenLabelFramesWithTitleFont:(id)font subtitleFont:(id)subtitleFont multilineTitle:(BOOL)title;
+ (double)maxHeight;
+ (double)maxHeightForTitleNumberOfLines:(unint64_t)lines subtitleNumberOfLines:(unint64_t)ofLines;
+ (id)defaultSubtitleFont;
+ (id)defaultTitleFont;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MTLabelStackView)initWithFrame:(CGRect)frame;
- (MTLabelStackViewDelegate)delegate;
- (NSString)subtitle;
- (NSString)subtitleTextStyle;
- (NSString)title;
- (NSString)titleTextStyle;
- (UIColor)subtitleTextColor;
- (UIColor)titleTextColor;
- (UILabel)subtitleLabel;
- (UILabel)titleLabel;
- (double)distanceBetweenLabelFrames;
- (double)heightForWidth:(double)width;
- (double)subtitleHeightForWidth:(double)width;
- (double)titleHeightForWidth:(double)width;
- (unint64_t)subtitleNumberOfLines;
- (unint64_t)titleNumberOfLines;
- (void)_notifyDelegateIfHeightChanged;
- (void)_updateSubtitleFont;
- (void)_updateTitleFont;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setSubtitle:(id)subtitle;
- (void)setSubtitleMaxWidth:(double)width;
- (void)setSubtitleNumberOfLines:(unint64_t)lines;
- (void)setSubtitleTextColor:(id)color;
- (void)setSubtitleTextStyle:(id)style;
- (void)setTitle:(id)title;
- (void)setTitleNumberOfLines:(unint64_t)lines;
- (void)setTitleTextColor:(id)color;
- (void)setTitleTextStyle:(id)style;
- (void)updateFonts;
@end

@implementation MTLabelStackView

+ (double)maxHeight
{
  defaultTitleNumberOfLines = [objc_opt_class() defaultTitleNumberOfLines];
  defaultSubtitleNumberOfLines = [objc_opt_class() defaultSubtitleNumberOfLines];

  [self maxHeightForTitleNumberOfLines:defaultTitleNumberOfLines subtitleNumberOfLines:defaultSubtitleNumberOfLines];
  return result;
}

+ (double)maxHeightForTitleNumberOfLines:(unint64_t)lines subtitleNumberOfLines:(unint64_t)ofLines
{
  defaultTitleFont = [objc_opt_class() defaultTitleFont];
  defaultSubtitleFont = [objc_opt_class() defaultSubtitleFont];
  [defaultTitleFont lineHeight];
  v10 = v9 * lines + 0.0;
  [self distanceBetweenLabelFramesWithTitleFont:defaultTitleFont subtitleFont:defaultSubtitleFont multilineTitle:lines != 1];
  v12 = v10 + v11;
  [defaultSubtitleFont lineHeight];
  v14 = v12 + v13 * ofLines;

  return v14;
}

+ (double)distanceBetweenLabelFrames
{
  defaultTitleFont = [objc_opt_class() defaultTitleFont];
  defaultSubtitleFont = [objc_opt_class() defaultSubtitleFont];
  [self distanceBetweenLabelFramesWithTitleFont:defaultTitleFont subtitleFont:defaultSubtitleFont multilineTitle:{objc_msgSend(objc_opt_class(), "defaultTitleNumberOfLines") != 1}];
  v6 = v5;

  return v6;
}

+ (double)distanceBetweenLabelFramesWithTitleFont:(id)font subtitleFont:(id)subtitleFont multilineTitle:(BOOL)title
{
  if (title)
  {
    v6 = 19.0;
  }

  else
  {
    v6 = 16.0;
  }

  subtitleFontCopy = subtitleFont;
  fontCopy = font;
  [subtitleFontCopy _scaledValueForValue:v6];
  v10 = v9;
  [fontCopy mt_offsetFromLastBaselineToBottom];
  v12 = v11;

  v13 = v10 - v12;
  [subtitleFontCopy mt_offsetFromFirstBaselineToTop];
  v15 = v14;

  return v13 - v15;
}

+ (id)defaultTitleFont
{
  defaultTitleTextStyle = [self defaultTitleTextStyle];
  v3 = [UIFont mt_preferredFontForTextStyle:defaultTitleTextStyle];

  return v3;
}

+ (id)defaultSubtitleFont
{
  defaultSubtitleTextStyle = [self defaultSubtitleTextStyle];
  v3 = [UIFont mt_preferredFontForTextStyle:defaultSubtitleTextStyle];

  return v3;
}

- (MTLabelStackView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = MTLabelStackView;
  v3 = [(MTLabelStackView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    textSizeCache = v3->_textSizeCache;
    v3->_textSizeCache = v4;

    v3->_subtitleMaxWidth = 1.79769313e308;
    v3->_enabled = 1;
    titleLabel = [(MTLabelStackView *)v3 titleLabel];
    [(MTLabelStackView *)v3 addSubview:titleLabel];

    subtitleLabel = [(MTLabelStackView *)v3 subtitleLabel];
    [(MTLabelStackView *)v3 addSubview:subtitleLabel];

    [(MTLabelStackView *)v3 _updateTitleFont];
    [(MTLabelStackView *)v3 _updateSubtitleFont];
  }

  return v3;
}

- (void)updateFonts
{
  [(MTLabelStackView *)self _updateTitleFont];

  [(MTLabelStackView *)self _updateSubtitleFont];
}

- (void)setSubtitleMaxWidth:(double)width
{
  if (self->_subtitleMaxWidth != width)
  {
    self->_subtitleMaxWidth = width;
    [(MTLabelStackView *)self setNeedsLayout];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_enabled = enabled;
  titleLabel = [(MTLabelStackView *)self titleLabel];
  [titleLabel setEnabled:enabledCopy];

  subtitleLabel = [(MTLabelStackView *)self subtitleLabel];
  [subtitleLabel setEnabled:enabledCopy];
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = MTLabelStackView;
  [(MTLabelStackView *)&v17 layoutSubviews];
  [(MTLabelStackView *)self bounds];
  v4 = v3;
  [(MTLabelStackView *)self titleHeightForWidth:v3];
  v6 = v5;
  titleLabel = [(MTLabelStackView *)self titleLabel];
  [titleLabel setFrame:{0.0, 0.0, v4, v6}];

  [(MTLabelStackView *)self distanceBetweenLabelFrames];
  v9 = v8;
  [(MTLabelStackView *)self subtitleMaxWidth];
  if (v4 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v4;
  }

  [(MTLabelStackView *)self subtitleHeightForWidth:v11];
  v13 = v12;
  v14 = 0.0;
  if ([(MTLabelStackView *)self mt_isRTL])
  {
    v18.origin.x = 0.0;
    v18.origin.y = 0.0;
    v18.size.width = v4;
    v18.size.height = v6;
    v14 = CGRectGetMaxX(v18) - v11;
  }

  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = v4;
  v19.size.height = v6;
  v15 = v9 + CGRectGetMaxY(v19);
  subtitleLabel = [(MTLabelStackView *)self subtitleLabel];
  [subtitleLabel setFrame:{v14, v15, v11, v13}];

  [(MTLabelStackView *)self _notifyDelegateIfHeightChanged];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(MTLabelStackView *)self heightForWidth:fits.width, fits.height];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (double)heightForWidth:(double)width
{
  [(MTLabelStackView *)self titleHeightForWidth:?];
  v6 = v5;
  [(MTLabelStackView *)self distanceBetweenLabelFrames];
  v8 = v7;
  [(MTLabelStackView *)self subtitleMaxWidth];
  if (widthCopy > width)
  {
    widthCopy = width;
  }

  [(MTLabelStackView *)self subtitleHeightForWidth:widthCopy];
  return v6 + v8 + v10;
}

- (double)distanceBetweenLabelFrames
{
  title = [(MTLabelStackView *)self title];
  if ([title length])
  {
    subtitle = [(MTLabelStackView *)self subtitle];
    v5 = [subtitle length];

    if (!v5)
    {
      return 0.0;
    }

    titleLabel = [(MTLabelStackView *)self titleLabel];
    title = [titleLabel font];

    subtitleLabel = [(MTLabelStackView *)self subtitleLabel];
    font = [subtitleLabel font];

    [objc_opt_class() distanceBetweenLabelFramesWithTitleFont:title subtitleFont:font multilineTitle:{-[MTLabelStackView titleNumberOfLines](self, "titleNumberOfLines") != 1}];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (double)titleHeightForWidth:(double)width
{
  v5 = [(MTLabelStackView *)self sizeCacheKeyForLabel:@"title" width:?];
  v6 = [(NSCache *)self->_textSizeCache objectForKey:v5];
  if (!v6)
  {
    titleLabel = [(MTLabelStackView *)self titleLabel];
    [titleLabel sizeThatFits:{width, 1.79769313e308}];
    v6 = [NSNumber numberWithDouble:v8];

    [(NSCache *)self->_textSizeCache setObject:v6 forKey:v5];
  }

  [v6 floatValue];
  v10 = v9;

  return v10;
}

- (double)subtitleHeightForWidth:(double)width
{
  v5 = [(MTLabelStackView *)self sizeCacheKeyForLabel:@"subtitle" width:?];
  v6 = [(NSCache *)self->_textSizeCache objectForKey:v5];
  if (!v6)
  {
    subtitleLabel = [(MTLabelStackView *)self subtitleLabel];
    [subtitleLabel sizeThatFits:{width, 1.79769313e308}];
    v6 = [NSNumber numberWithDouble:v8];

    [(NSCache *)self->_textSizeCache setObject:v6 forKey:v5];
  }

  [v6 floatValue];
  v10 = v9;

  return v10;
}

- (void)_updateTitleFont
{
  titleTextStyle = [(MTLabelStackView *)self titleTextStyle];
  v5 = [UIFont mt_preferredFontForTextStyle:titleTextStyle];

  titleLabel = [(MTLabelStackView *)self titleLabel];
  [titleLabel setFont:v5];

  [(MTLabelStackView *)self _heightWillChange];
}

- (void)_updateSubtitleFont
{
  subtitleTextStyle = [(MTLabelStackView *)self subtitleTextStyle];
  v5 = [UIFont mt_preferredFontForTextStyle:subtitleTextStyle];

  subtitleLabel = [(MTLabelStackView *)self subtitleLabel];
  [subtitleLabel setFont:v5];

  [(MTLabelStackView *)self _heightWillChange];
}

- (void)_notifyDelegateIfHeightChanged
{
  if (self->_heightWillChange)
  {
    self->_heightWillChange = 0;
    delegate = [(MTLabelStackView *)self delegate];
    [delegate labelStackViewDidChangeHeight:self];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = [(MTLabelStackView *)self title];
  if (title != titleCopy)
  {
    title2 = [(MTLabelStackView *)self title];
    v6 = [title2 isEqualToString:titleCopy];

    if (v6)
    {
      goto LABEL_5;
    }

    titleLabel = [(MTLabelStackView *)self titleLabel];
    [titleLabel setText:titleCopy];

    [(MTLabelStackView *)self bounds];
    title = [(MTLabelStackView *)self sizeCacheKeyForLabel:@"title" width:v8];
    [(NSCache *)self->_textSizeCache removeObjectForKey:title];
    [(MTLabelStackView *)self _heightWillChange];
  }

LABEL_5:
}

- (NSString)title
{
  titleLabel = [(MTLabelStackView *)self titleLabel];
  text = [titleLabel text];

  return text;
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  subtitle = [(MTLabelStackView *)self subtitle];
  if (subtitle != subtitleCopy)
  {
    subtitle2 = [(MTLabelStackView *)self subtitle];
    v6 = [subtitle2 isEqualToString:subtitleCopy];

    if (v6)
    {
      goto LABEL_5;
    }

    subtitleLabel = [(MTLabelStackView *)self subtitleLabel];
    [subtitleLabel setText:subtitleCopy];

    [(MTLabelStackView *)self bounds];
    subtitle = [(MTLabelStackView *)self sizeCacheKeyForLabel:@"subtitle" width:v8];
    [(NSCache *)self->_textSizeCache removeObjectForKey:subtitle];
    [(MTLabelStackView *)self _heightWillChange];
  }

LABEL_5:
}

- (NSString)subtitle
{
  subtitleLabel = [(MTLabelStackView *)self subtitleLabel];
  text = [subtitleLabel text];

  return text;
}

- (NSString)titleTextStyle
{
  titleTextStyle = self->_titleTextStyle;
  if (titleTextStyle)
  {
    defaultTitleTextStyle = titleTextStyle;
  }

  else
  {
    defaultTitleTextStyle = [objc_opt_class() defaultTitleTextStyle];
  }

  return defaultTitleTextStyle;
}

- (void)setTitleTextStyle:(id)style
{
  styleCopy = style;
  titleTextStyle = self->_titleTextStyle;
  if (titleTextStyle != styleCopy)
  {
    v8 = styleCopy;
    v7 = [(NSString *)titleTextStyle isEqualToString:styleCopy];
    styleCopy = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_titleTextStyle, style);
      [(MTLabelStackView *)self _updateTitleFont];
      styleCopy = v8;
    }
  }
}

- (NSString)subtitleTextStyle
{
  subtitleTextStyle = self->_subtitleTextStyle;
  if (subtitleTextStyle)
  {
    defaultSubtitleTextStyle = subtitleTextStyle;
  }

  else
  {
    defaultSubtitleTextStyle = [objc_opt_class() defaultSubtitleTextStyle];
  }

  return defaultSubtitleTextStyle;
}

- (void)setSubtitleTextStyle:(id)style
{
  styleCopy = style;
  subtitleTextStyle = self->_subtitleTextStyle;
  if (subtitleTextStyle != styleCopy)
  {
    v8 = styleCopy;
    v7 = [(NSString *)subtitleTextStyle isEqualToString:styleCopy];
    styleCopy = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_subtitleTextStyle, style);
      [(MTLabelStackView *)self _updateSubtitleFont];
      styleCopy = v8;
    }
  }
}

- (UIColor)titleTextColor
{
  titleTextColor = self->_titleTextColor;
  if (titleTextColor)
  {
    v3 = titleTextColor;
  }

  else
  {
    v3 = +[UIColor cellTextColor];
  }

  return v3;
}

- (void)setTitleTextColor:(id)color
{
  colorCopy = color;
  titleTextColor = self->_titleTextColor;
  if (titleTextColor != colorCopy)
  {
    v10 = colorCopy;
    v7 = [(UIColor *)titleTextColor isEqual:colorCopy];
    colorCopy = v10;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_titleTextColor, color);
      titleTextColor = [(MTLabelStackView *)self titleTextColor];
      titleLabel = [(MTLabelStackView *)self titleLabel];
      [titleLabel setTextColor:titleTextColor];

      colorCopy = v10;
    }
  }
}

- (UIColor)subtitleTextColor
{
  subtitleTextColor = self->_subtitleTextColor;
  if (subtitleTextColor)
  {
    v3 = subtitleTextColor;
  }

  else
  {
    v3 = +[UIColor cellSecondaryTextColor];
  }

  return v3;
}

- (void)setSubtitleTextColor:(id)color
{
  colorCopy = color;
  subtitleTextColor = self->_subtitleTextColor;
  if (subtitleTextColor != colorCopy)
  {
    v10 = colorCopy;
    v7 = [(UIColor *)subtitleTextColor isEqual:colorCopy];
    colorCopy = v10;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_subtitleTextColor, color);
      subtitleTextColor = [(MTLabelStackView *)self subtitleTextColor];
      subtitleLabel = [(MTLabelStackView *)self subtitleLabel];
      [subtitleLabel setTextColor:subtitleTextColor];

      colorCopy = v10;
    }
  }
}

- (unint64_t)titleNumberOfLines
{
  titleLabel = [(MTLabelStackView *)self titleLabel];
  numberOfLines = [titleLabel numberOfLines];

  return numberOfLines;
}

- (void)setTitleNumberOfLines:(unint64_t)lines
{
  if ([(MTLabelStackView *)self titleNumberOfLines]!= lines)
  {
    titleLabel = [(MTLabelStackView *)self titleLabel];
    [titleLabel setNumberOfLines:lines];

    [(MTLabelStackView *)self _heightWillChange];
  }
}

- (unint64_t)subtitleNumberOfLines
{
  subtitleLabel = [(MTLabelStackView *)self subtitleLabel];
  numberOfLines = [subtitleLabel numberOfLines];

  return numberOfLines;
}

- (void)setSubtitleNumberOfLines:(unint64_t)lines
{
  if ([(MTLabelStackView *)self subtitleNumberOfLines]!= lines)
  {
    subtitleLabel = [(MTLabelStackView *)self subtitleLabel];
    [subtitleLabel setNumberOfLines:lines];

    [(MTLabelStackView *)self _heightWillChange];
  }
}

- (UILabel)titleLabel
{
  titleLabel = self->_titleLabel;
  if (!titleLabel)
  {
    v4 = objc_opt_new();
    v5 = self->_titleLabel;
    self->_titleLabel = v4;

    -[UILabel setNumberOfLines:](self->_titleLabel, "setNumberOfLines:", [objc_opt_class() defaultTitleNumberOfLines]);
    titleTextColor = [(MTLabelStackView *)self titleTextColor];
    [(UILabel *)self->_titleLabel setTextColor:titleTextColor];

    titleTextStyle = [(MTLabelStackView *)self titleTextStyle];
    v8 = [UIFont mt_preferredFontForTextStyle:titleTextStyle];
    [(UILabel *)self->_titleLabel setFont:v8];

    titleLabel = self->_titleLabel;
  }

  return titleLabel;
}

- (UILabel)subtitleLabel
{
  subtitleLabel = self->_subtitleLabel;
  if (!subtitleLabel)
  {
    v4 = objc_opt_new();
    v5 = self->_subtitleLabel;
    self->_subtitleLabel = v4;

    -[UILabel setNumberOfLines:](self->_subtitleLabel, "setNumberOfLines:", [objc_opt_class() defaultSubtitleNumberOfLines]);
    subtitleTextColor = [(MTLabelStackView *)self subtitleTextColor];
    [(UILabel *)self->_subtitleLabel setTextColor:subtitleTextColor];

    subtitleTextStyle = [(MTLabelStackView *)self subtitleTextStyle];
    v8 = [UIFont mt_preferredFontForTextStyle:subtitleTextStyle];
    [(UILabel *)self->_subtitleLabel setFont:v8];

    subtitleLabel = self->_subtitleLabel;
  }

  return subtitleLabel;
}

- (MTLabelStackViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end