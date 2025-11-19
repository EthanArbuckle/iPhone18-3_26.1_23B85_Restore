@interface MTLabelStackView
+ (double)distanceBetweenLabelFrames;
+ (double)distanceBetweenLabelFramesWithTitleFont:(id)a3 subtitleFont:(id)a4 multilineTitle:(BOOL)a5;
+ (double)maxHeight;
+ (double)maxHeightForTitleNumberOfLines:(unint64_t)a3 subtitleNumberOfLines:(unint64_t)a4;
+ (id)defaultSubtitleFont;
+ (id)defaultTitleFont;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MTLabelStackView)initWithFrame:(CGRect)a3;
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
- (double)heightForWidth:(double)a3;
- (double)subtitleHeightForWidth:(double)a3;
- (double)titleHeightForWidth:(double)a3;
- (unint64_t)subtitleNumberOfLines;
- (unint64_t)titleNumberOfLines;
- (void)_notifyDelegateIfHeightChanged;
- (void)_updateSubtitleFont;
- (void)_updateTitleFont;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
- (void)setSubtitle:(id)a3;
- (void)setSubtitleMaxWidth:(double)a3;
- (void)setSubtitleNumberOfLines:(unint64_t)a3;
- (void)setSubtitleTextColor:(id)a3;
- (void)setSubtitleTextStyle:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTitleNumberOfLines:(unint64_t)a3;
- (void)setTitleTextColor:(id)a3;
- (void)setTitleTextStyle:(id)a3;
- (void)updateFonts;
@end

@implementation MTLabelStackView

+ (double)maxHeight
{
  v3 = [objc_opt_class() defaultTitleNumberOfLines];
  v4 = [objc_opt_class() defaultSubtitleNumberOfLines];

  [a1 maxHeightForTitleNumberOfLines:v3 subtitleNumberOfLines:v4];
  return result;
}

+ (double)maxHeightForTitleNumberOfLines:(unint64_t)a3 subtitleNumberOfLines:(unint64_t)a4
{
  v7 = [objc_opt_class() defaultTitleFont];
  v8 = [objc_opt_class() defaultSubtitleFont];
  [v7 lineHeight];
  v10 = v9 * a3 + 0.0;
  [a1 distanceBetweenLabelFramesWithTitleFont:v7 subtitleFont:v8 multilineTitle:a3 != 1];
  v12 = v10 + v11;
  [v8 lineHeight];
  v14 = v12 + v13 * a4;

  return v14;
}

+ (double)distanceBetweenLabelFrames
{
  v3 = [objc_opt_class() defaultTitleFont];
  v4 = [objc_opt_class() defaultSubtitleFont];
  [a1 distanceBetweenLabelFramesWithTitleFont:v3 subtitleFont:v4 multilineTitle:{objc_msgSend(objc_opt_class(), "defaultTitleNumberOfLines") != 1}];
  v6 = v5;

  return v6;
}

+ (double)distanceBetweenLabelFramesWithTitleFont:(id)a3 subtitleFont:(id)a4 multilineTitle:(BOOL)a5
{
  if (a5)
  {
    v6 = 19.0;
  }

  else
  {
    v6 = 16.0;
  }

  v7 = a4;
  v8 = a3;
  [v7 _scaledValueForValue:v6];
  v10 = v9;
  [v8 mt_offsetFromLastBaselineToBottom];
  v12 = v11;

  v13 = v10 - v12;
  [v7 mt_offsetFromFirstBaselineToTop];
  v15 = v14;

  return v13 - v15;
}

+ (id)defaultTitleFont
{
  v2 = [a1 defaultTitleTextStyle];
  v3 = [UIFont mt_preferredFontForTextStyle:v2];

  return v3;
}

+ (id)defaultSubtitleFont
{
  v2 = [a1 defaultSubtitleTextStyle];
  v3 = [UIFont mt_preferredFontForTextStyle:v2];

  return v3;
}

- (MTLabelStackView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = MTLabelStackView;
  v3 = [(MTLabelStackView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    textSizeCache = v3->_textSizeCache;
    v3->_textSizeCache = v4;

    v3->_subtitleMaxWidth = 1.79769313e308;
    v3->_enabled = 1;
    v6 = [(MTLabelStackView *)v3 titleLabel];
    [(MTLabelStackView *)v3 addSubview:v6];

    v7 = [(MTLabelStackView *)v3 subtitleLabel];
    [(MTLabelStackView *)v3 addSubview:v7];

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

- (void)setSubtitleMaxWidth:(double)a3
{
  if (self->_subtitleMaxWidth != a3)
  {
    self->_subtitleMaxWidth = a3;
    [(MTLabelStackView *)self setNeedsLayout];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  self->_enabled = a3;
  v5 = [(MTLabelStackView *)self titleLabel];
  [v5 setEnabled:v3];

  v6 = [(MTLabelStackView *)self subtitleLabel];
  [v6 setEnabled:v3];
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
  v7 = [(MTLabelStackView *)self titleLabel];
  [v7 setFrame:{0.0, 0.0, v4, v6}];

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
  v16 = [(MTLabelStackView *)self subtitleLabel];
  [v16 setFrame:{v14, v15, v11, v13}];

  [(MTLabelStackView *)self _notifyDelegateIfHeightChanged];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(MTLabelStackView *)self heightForWidth:a3.width, a3.height];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (double)heightForWidth:(double)a3
{
  [(MTLabelStackView *)self titleHeightForWidth:?];
  v6 = v5;
  [(MTLabelStackView *)self distanceBetweenLabelFrames];
  v8 = v7;
  [(MTLabelStackView *)self subtitleMaxWidth];
  if (v9 > a3)
  {
    v9 = a3;
  }

  [(MTLabelStackView *)self subtitleHeightForWidth:v9];
  return v6 + v8 + v10;
}

- (double)distanceBetweenLabelFrames
{
  v3 = [(MTLabelStackView *)self title];
  if ([v3 length])
  {
    v4 = [(MTLabelStackView *)self subtitle];
    v5 = [v4 length];

    if (!v5)
    {
      return 0.0;
    }

    v6 = [(MTLabelStackView *)self titleLabel];
    v3 = [v6 font];

    v7 = [(MTLabelStackView *)self subtitleLabel];
    v8 = [v7 font];

    [objc_opt_class() distanceBetweenLabelFramesWithTitleFont:v3 subtitleFont:v8 multilineTitle:{-[MTLabelStackView titleNumberOfLines](self, "titleNumberOfLines") != 1}];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (double)titleHeightForWidth:(double)a3
{
  v5 = [(MTLabelStackView *)self sizeCacheKeyForLabel:@"title" width:?];
  v6 = [(NSCache *)self->_textSizeCache objectForKey:v5];
  if (!v6)
  {
    v7 = [(MTLabelStackView *)self titleLabel];
    [v7 sizeThatFits:{a3, 1.79769313e308}];
    v6 = [NSNumber numberWithDouble:v8];

    [(NSCache *)self->_textSizeCache setObject:v6 forKey:v5];
  }

  [v6 floatValue];
  v10 = v9;

  return v10;
}

- (double)subtitleHeightForWidth:(double)a3
{
  v5 = [(MTLabelStackView *)self sizeCacheKeyForLabel:@"subtitle" width:?];
  v6 = [(NSCache *)self->_textSizeCache objectForKey:v5];
  if (!v6)
  {
    v7 = [(MTLabelStackView *)self subtitleLabel];
    [v7 sizeThatFits:{a3, 1.79769313e308}];
    v6 = [NSNumber numberWithDouble:v8];

    [(NSCache *)self->_textSizeCache setObject:v6 forKey:v5];
  }

  [v6 floatValue];
  v10 = v9;

  return v10;
}

- (void)_updateTitleFont
{
  v3 = [(MTLabelStackView *)self titleTextStyle];
  v5 = [UIFont mt_preferredFontForTextStyle:v3];

  v4 = [(MTLabelStackView *)self titleLabel];
  [v4 setFont:v5];

  [(MTLabelStackView *)self _heightWillChange];
}

- (void)_updateSubtitleFont
{
  v3 = [(MTLabelStackView *)self subtitleTextStyle];
  v5 = [UIFont mt_preferredFontForTextStyle:v3];

  v4 = [(MTLabelStackView *)self subtitleLabel];
  [v4 setFont:v5];

  [(MTLabelStackView *)self _heightWillChange];
}

- (void)_notifyDelegateIfHeightChanged
{
  if (self->_heightWillChange)
  {
    self->_heightWillChange = 0;
    v4 = [(MTLabelStackView *)self delegate];
    [v4 labelStackViewDidChangeHeight:self];
  }
}

- (void)setTitle:(id)a3
{
  v9 = a3;
  v4 = [(MTLabelStackView *)self title];
  if (v4 != v9)
  {
    v5 = [(MTLabelStackView *)self title];
    v6 = [v5 isEqualToString:v9];

    if (v6)
    {
      goto LABEL_5;
    }

    v7 = [(MTLabelStackView *)self titleLabel];
    [v7 setText:v9];

    [(MTLabelStackView *)self bounds];
    v4 = [(MTLabelStackView *)self sizeCacheKeyForLabel:@"title" width:v8];
    [(NSCache *)self->_textSizeCache removeObjectForKey:v4];
    [(MTLabelStackView *)self _heightWillChange];
  }

LABEL_5:
}

- (NSString)title
{
  v2 = [(MTLabelStackView *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setSubtitle:(id)a3
{
  v9 = a3;
  v4 = [(MTLabelStackView *)self subtitle];
  if (v4 != v9)
  {
    v5 = [(MTLabelStackView *)self subtitle];
    v6 = [v5 isEqualToString:v9];

    if (v6)
    {
      goto LABEL_5;
    }

    v7 = [(MTLabelStackView *)self subtitleLabel];
    [v7 setText:v9];

    [(MTLabelStackView *)self bounds];
    v4 = [(MTLabelStackView *)self sizeCacheKeyForLabel:@"subtitle" width:v8];
    [(NSCache *)self->_textSizeCache removeObjectForKey:v4];
    [(MTLabelStackView *)self _heightWillChange];
  }

LABEL_5:
}

- (NSString)subtitle
{
  v2 = [(MTLabelStackView *)self subtitleLabel];
  v3 = [v2 text];

  return v3;
}

- (NSString)titleTextStyle
{
  titleTextStyle = self->_titleTextStyle;
  if (titleTextStyle)
  {
    v3 = titleTextStyle;
  }

  else
  {
    v3 = [objc_opt_class() defaultTitleTextStyle];
  }

  return v3;
}

- (void)setTitleTextStyle:(id)a3
{
  v5 = a3;
  titleTextStyle = self->_titleTextStyle;
  if (titleTextStyle != v5)
  {
    v8 = v5;
    v7 = [(NSString *)titleTextStyle isEqualToString:v5];
    v5 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_titleTextStyle, a3);
      [(MTLabelStackView *)self _updateTitleFont];
      v5 = v8;
    }
  }
}

- (NSString)subtitleTextStyle
{
  subtitleTextStyle = self->_subtitleTextStyle;
  if (subtitleTextStyle)
  {
    v3 = subtitleTextStyle;
  }

  else
  {
    v3 = [objc_opt_class() defaultSubtitleTextStyle];
  }

  return v3;
}

- (void)setSubtitleTextStyle:(id)a3
{
  v5 = a3;
  subtitleTextStyle = self->_subtitleTextStyle;
  if (subtitleTextStyle != v5)
  {
    v8 = v5;
    v7 = [(NSString *)subtitleTextStyle isEqualToString:v5];
    v5 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_subtitleTextStyle, a3);
      [(MTLabelStackView *)self _updateSubtitleFont];
      v5 = v8;
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

- (void)setTitleTextColor:(id)a3
{
  v5 = a3;
  titleTextColor = self->_titleTextColor;
  if (titleTextColor != v5)
  {
    v10 = v5;
    v7 = [(UIColor *)titleTextColor isEqual:v5];
    v5 = v10;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_titleTextColor, a3);
      v8 = [(MTLabelStackView *)self titleTextColor];
      v9 = [(MTLabelStackView *)self titleLabel];
      [v9 setTextColor:v8];

      v5 = v10;
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

- (void)setSubtitleTextColor:(id)a3
{
  v5 = a3;
  subtitleTextColor = self->_subtitleTextColor;
  if (subtitleTextColor != v5)
  {
    v10 = v5;
    v7 = [(UIColor *)subtitleTextColor isEqual:v5];
    v5 = v10;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_subtitleTextColor, a3);
      v8 = [(MTLabelStackView *)self subtitleTextColor];
      v9 = [(MTLabelStackView *)self subtitleLabel];
      [v9 setTextColor:v8];

      v5 = v10;
    }
  }
}

- (unint64_t)titleNumberOfLines
{
  v2 = [(MTLabelStackView *)self titleLabel];
  v3 = [v2 numberOfLines];

  return v3;
}

- (void)setTitleNumberOfLines:(unint64_t)a3
{
  if ([(MTLabelStackView *)self titleNumberOfLines]!= a3)
  {
    v5 = [(MTLabelStackView *)self titleLabel];
    [v5 setNumberOfLines:a3];

    [(MTLabelStackView *)self _heightWillChange];
  }
}

- (unint64_t)subtitleNumberOfLines
{
  v2 = [(MTLabelStackView *)self subtitleLabel];
  v3 = [v2 numberOfLines];

  return v3;
}

- (void)setSubtitleNumberOfLines:(unint64_t)a3
{
  if ([(MTLabelStackView *)self subtitleNumberOfLines]!= a3)
  {
    v5 = [(MTLabelStackView *)self subtitleLabel];
    [v5 setNumberOfLines:a3];

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
    v6 = [(MTLabelStackView *)self titleTextColor];
    [(UILabel *)self->_titleLabel setTextColor:v6];

    v7 = [(MTLabelStackView *)self titleTextStyle];
    v8 = [UIFont mt_preferredFontForTextStyle:v7];
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
    v6 = [(MTLabelStackView *)self subtitleTextColor];
    [(UILabel *)self->_subtitleLabel setTextColor:v6];

    v7 = [(MTLabelStackView *)self subtitleTextStyle];
    v8 = [UIFont mt_preferredFontForTextStyle:v7];
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