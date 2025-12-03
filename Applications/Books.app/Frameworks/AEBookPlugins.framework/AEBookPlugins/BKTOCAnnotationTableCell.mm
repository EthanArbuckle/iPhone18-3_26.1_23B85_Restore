@interface BKTOCAnnotationTableCell
+ (CGSize)dateLabelSizeForString:(id)string font:(id)font bounds:(CGRect)bounds;
+ (id)dateFontForPopover;
+ (id)pageNumberFontForPopover;
- (UILabel)dateLabel;
- (UILabel)noteLabel;
- (void)configureWithPageString:(id)string dateString:(id)dateString insets:(UIEdgeInsets)insets;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation BKTOCAnnotationTableCell

+ (id)dateFontForPopover
{
  v2 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleCallout];
  v3 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
  [v3 pointSize];
  v4 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
  v5 = [UITraitCollection currentTraitCollectionLimitedToSizeCategory:UIContentSizeCategoryLarge];
  v6 = [v2 scaledFontForFont:v4 maximumPointSize:v5 compatibleWithTraitCollection:28.0];

  return v6;
}

+ (id)pageNumberFontForPopover
{
  v2 = [UITraitCollection currentTraitCollectionLimitedToSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v2];

  return v3;
}

+ (CGSize)dateLabelSizeForString:(id)string font:(id)font bounds:(CGRect)bounds
{
  width = bounds.size.width;
  fontCopy = font;
  stringCopy = string;
  [fontCopy lineHeight];
  [UILabel bkSizeForString:stringCopy constrainedToSize:fontCopy font:4 lineBreakMode:width, v9];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = width;
  v16 = fminf(ceilf(v14), ceilf(v15));
  v17 = v13;
  v18 = ceilf(v17);
  result.height = v18;
  result.width = v16;
  return result;
}

- (void)layoutSubviews
{
  pageLabel = [(BKTOCTableViewCell *)self pageLabel];
  [pageLabel frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v28.receiver = self;
  v28.super_class = BKTOCAnnotationTableCell;
  [(BKTOCTableViewCell *)&v28 layoutSubviews];
  pageLabel2 = [(BKTOCTableViewCell *)self pageLabel];
  [pageLabel2 setFrame:{v5, v7, v9, v11}];

  contentView = [(BKTOCAnnotationTableCell *)self contentView];
  [contentView bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [(BKTOCTableViewCell *)self contentInsets];
  v23 = v22;
  [(BKTOCTableViewCell *)self contentInsets];
  v25 = v19 - (v23 + v24);
  [(BKTOCTableViewCell *)self contentInsets];
  [(BKTOCAnnotationTableCell *)self layoutSubviewsNotEditingWithBounds:v15 + v26, v17, v25, v21];
  v27 = +[UIColor clearColor];
  [(BKTOCAnnotationTableCell *)self setBackgroundColor:v27];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = BKTOCAnnotationTableCell;
  [(BKTOCTableViewCell *)&v3 prepareForReuse];
  [(UILabel *)self->_dateLabel setText:0];
}

- (void)configureWithPageString:(id)string dateString:(id)dateString insets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  stringCopy = string;
  dateStringCopy = dateString;
  [(BKTOCTableViewCell *)self setupSelectedBackgroundNil];
  pageLabel = [(BKTOCTableViewCell *)self pageLabel];
  if (stringCopy)
  {
    [pageLabel setHidden:0];
    if ([(BKTOCTableViewCell *)self usesPopoverStyle])
    {
      [objc_opt_class() pageNumberFontForPopover];
    }

    else
    {
      [objc_opt_class() pageNumberFontSize];
      [UIFont systemFontOfSize:?];
    }
    v13 = ;
    [pageLabel bkSetText:stringCopy font:v13 lineBreakMode:4];
  }

  else
  {
    [pageLabel setHidden:1];
  }

  if ([dateStringCopy length])
  {
    if ([(BKTOCTableViewCell *)self usesPopoverStyle])
    {
      [objc_opt_class() dateFontForPopover];
    }

    else
    {
      [objc_opt_class() dateFontSize];
      [UIFont systemFontOfSize:?];
    }
    v14 = ;
    dateLabel = [(BKTOCAnnotationTableCell *)self dateLabel];
    [dateLabel bkSetText:dateStringCopy font:v14 lineBreakMode:4];
  }

  [(BKTOCTableViewCell *)self setContentInsets:top, left, bottom, right];
  [(BKTOCAnnotationTableCell *)self setSeparatorInset:top, left, bottom, right];
}

- (UILabel)dateLabel
{
  dateLabel = self->_dateLabel;
  if (!dateLabel)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_dateLabel;
    self->_dateLabel = v4;

    [(UILabel *)self->_dateLabel setOpaque:0];
    [(UILabel *)self->_dateLabel setNumberOfLines:1];
    [(UILabel *)self->_dateLabel setTextAlignment:2 * ([(BKTOCAnnotationTableCell *)self effectiveUserInterfaceLayoutDirection]!= &dword_0 + 1)];
    contentView = [(BKTOCAnnotationTableCell *)self contentView];
    [contentView addSubview:self->_dateLabel];

    dateLabel = self->_dateLabel;
  }

  return dateLabel;
}

- (UILabel)noteLabel
{
  noteLabel = self->_noteLabel;
  if (!noteLabel)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_noteLabel;
    self->_noteLabel = v4;

    [(UILabel *)self->_noteLabel setOpaque:0];
    [(UILabel *)self->_noteLabel setNumberOfLines:3];
    [(UILabel *)self->_noteLabel setTextAlignment:2 * ([(BKTOCAnnotationTableCell *)self effectiveUserInterfaceLayoutDirection]== &dword_0 + 1)];
    contentView = [(BKTOCAnnotationTableCell *)self contentView];
    [contentView addSubview:self->_noteLabel];

    noteLabel = self->_noteLabel;
  }

  return noteLabel;
}

@end