@interface BKTOCTableViewCell
+ (CGRect)pageLabelFrameForString:(id)string font:(id)font bounds:(CGRect)bounds layoutDirection:(int64_t)direction;
+ (CGRect)pageLabelFrameForString:(id)string font:(id)font bounds:(CGRect)bounds topMargin:(double)margin layoutDirection:(int64_t)direction;
+ (CGSize)sizeForText:(id)text indentation:(int64_t)indentation font:(id)font width:(double)width;
+ (CGSize)titleSizeForText:(id)text indentation:(int64_t)indentation font:(id)font width:(double)width;
+ (double)cellHeightForCellWidth:(double)width pageLabelWidth:(double)labelWidth text:(id)text indentationLevel:(unint64_t)level indentationWidth:(double)indentationWidth font:(id)font usesPopoverStyle:(BOOL)style;
+ (double)maxSpanForTextWithIndentation:(int64_t)indentation font:(id)font width:(double)width;
+ (id)tocWebTemplate;
- (BKTOCTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UIEdgeInsets)contentInsets;
- (UILabel)pageLabel;
- (id)makeSelectedBackgroundView;
- (void)_adjustLabelTextAlignment;
- (void)_setHighlightedPopoverAppearance:(BOOL)appearance;
- (void)_setSelectedBackgroundViewFrame:(CGRect)frame;
- (void)_syncVerticalLabel;
- (void)configureFocusRing;
- (void)configureSelectedBackgroundView;
- (void)dealloc;
- (void)displayHTMLWithContents:(id)contents fontFamily:(id)family fontSize:(double)size maxSpan:(double)span baseURL:(id)l;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setVertical:(BOOL)vertical;
- (void)setupSelectedBackgroundNil;
@end

@implementation BKTOCTableViewCell

+ (id)tocWebTemplate
{
  if (qword_22D0D0 != -1)
  {
    sub_1384A4();
  }

  v3 = qword_22D0C8;

  return v3;
}

- (BKTOCTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = BKTOCTableViewCell;
  v4 = [(BKTOCTableViewCell *)&v11 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    textLabel = [(BKTOCTableViewCell *)v4 textLabel];
    [textLabel setHighlightedTextColor:0];

    textLabel2 = [(BKTOCTableViewCell *)v5 textLabel];
    [textLabel2 setNumberOfLines:0];

    textLabel3 = [(BKTOCTableViewCell *)v5 textLabel];
    [textLabel3 setContentMode:5];

    textLabel4 = [(BKTOCTableViewCell *)v5 textLabel];
    [textLabel4 setOpaque:0];
  }

  return v5;
}

- (void)dealloc
{
  cacheKey = self->_cacheKey;
  self->_cacheKey = 0;

  selectedCacheKey = self->_selectedCacheKey;
  self->_selectedCacheKey = 0;

  v5.receiver = self;
  v5.super_class = BKTOCTableViewCell;
  [(BKTOCTableViewCell *)&v5 dealloc];
}

+ (CGRect)pageLabelFrameForString:(id)string font:(id)font bounds:(CGRect)bounds layoutDirection:(int64_t)direction
{
  [self pageLabelFrameForString:string font:font bounds:direction topMargin:bounds.origin.x layoutDirection:{bounds.origin.y, bounds.size.width, bounds.size.height, 16.0}];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

+ (CGRect)pageLabelFrameForString:(id)string font:(id)font bounds:(CGRect)bounds topMargin:(double)margin layoutDirection:(int64_t)direction
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  stringCopy = string;
  fontCopy = font;
  v15 = CGRectZero.origin.y;
  if (![(__CFString *)stringCopy length])
  {

    stringCopy = @" ";
  }

  [UILabel bkSizeForString:stringCopy font:fontCopy];
  v32.size.width = v16;
  v18 = v17;
  v32.origin.x = CGRectZero.origin.x;
  v32.origin.y = v15;
  v32.size.height = v18;
  v19 = ceil(CGRectGetWidth(v32));
  v33.origin.x = CGRectZero.origin.x;
  v33.origin.y = v15;
  v33.size.width = v19;
  v33.size.height = v18;
  v20 = ceil(CGRectGetHeight(v33));
  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  if (direction == 1)
  {
    MinX = CGRectGetMinX(*&v21);
  }

  else
  {
    MaxX = CGRectGetMaxX(*&v21);
    v34.origin.x = CGRectZero.origin.x;
    v34.origin.y = v15;
    v34.size.width = v19;
    v34.size.height = v20;
    MinX = MaxX - CGRectGetWidth(v34);
  }

  v27 = MinX;
  marginCopy = margin;
  v29 = v19;
  v30 = v20;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = marginCopy;
  result.origin.x = v27;
  return result;
}

+ (double)cellHeightForCellWidth:(double)width pageLabelWidth:(double)labelWidth text:(id)text indentationLevel:(unint64_t)level indentationWidth:(double)indentationWidth font:(id)font usesPopoverStyle:(BOOL)style
{
  styleCopy = style;
  v11 = level * indentationWidth;
  v12 = labelWidth + 20.0;
  v13 = labelWidth == 0.0;
  v14 = 0.0;
  if (!v13)
  {
    v14 = v12;
  }

  v15 = width - v14 - v11;
  v23 = NSFontAttributeName;
  fontCopy = font;
  fontCopy2 = font;
  textCopy = text;
  v18 = [NSDictionary dictionaryWithObjects:&fontCopy forKeys:&v23 count:1];

  [textCopy boundingRectWithSize:1 options:v18 attributes:0 context:{v15, 1.79769313e308}];
  v20 = v19;

  if (styleCopy)
  {
    v21 = 16.0;
  }

  else
  {
    v21 = 28.0;
  }

  return v21 + ceil(v20);
}

- (void)layoutSubviews
{
  *&recta.size.height = self;
  v101 = BKTOCTableViewCell;
  [(CGFloat *)&recta.size.height layoutSubviews];
  isVertical = [(BKTOCTableViewCell *)self isVertical];
  hasHTMLTitle = self->_hasHTMLTitle;
  vertical = self->_vertical;
  textLabel = [(BKTOCTableViewCell *)self textLabel];
  [textLabel setHidden:vertical | hasHTMLTitle];

  [(BKVerticalLabel *)self->_verticalLabel setHidden:!self->_vertical];
  contentView = [(BKTOCTableViewCell *)self contentView];
  [contentView bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(BKTOCTableViewCell *)self contentInsets];
  v17 = v9 + v16;
  v19 = v11 + v18;
  v21 = v13 - (v16 + v20);
  v23 = v15 - (v18 + v22);

  pageLabel = [(BKTOCTableViewCell *)self pageLabel];
  [pageLabel sizeToFit];

  [(UILabel *)self->_pageLabel frame];
  v29 = v26;
  v30 = v27;
  v31 = v28;
  recta.origin.y = v21;
  recta.size.width = v23;
  if (isVertical)
  {
    v99 = v27;
    Height = CGRectGetHeight(*&v25);
    v102.origin.x = v17;
    v102.origin.y = v19;
    v102.size.width = v21;
    v102.size.height = v23;
    v33 = v17;
    v34 = v19;
    v35 = v21;
    recta.origin.x = Height;
    if (Height > CGRectGetHeight(v102) + -4.0)
    {
      [(UILabel *)self->_pageLabel setAdjustsFontSizeToFitWidth:1];
      [(UILabel *)self->_pageLabel setMinimumScaleFactor:0.5];
      v103.origin.x = v33;
      v103.origin.y = v34;
      v103.size.width = v21;
      v103.size.height = v23;
      v31 = CGRectGetHeight(v103) + -4.0;
      recta.origin.x = v31;
    }

    v36 = [(BKTOCTableViewCell *)self effectiveUserInterfaceLayoutDirection]== &dword_0 + 1;
    v104.origin.x = v33;
    v104.origin.y = v34;
    v104.size.width = v21;
    v104.size.height = v23;
    MinX = CGRectGetMinX(v104);
    v105.origin.x = v33;
    v105.origin.y = v34;
    v105.size.width = v35;
    v105.size.height = v23;
    v38 = CGRectGetHeight(v105);
    v106.origin.x = MinX;
    v106.origin.y = v29;
    v30 = v98;
    v106.size.width = v98;
    v106.size.height = v31;
    v39 = floor((v38 - CGRectGetHeight(v106)) * 0.5);
    v19 = v34;
    v17 = v33;
    x = recta.origin.x;
  }

  else
  {
    x = CGRectGetWidth(*&v25);
    effectiveUserInterfaceLayoutDirection = [(BKTOCTableViewCell *)self effectiveUserInterfaceLayoutDirection];
    v36 = effectiveUserInterfaceLayoutDirection == &dword_0 + 1;
    v42 = v17;
    v43 = v19;
    v44 = v21;
    v45 = v23;
    if (effectiveUserInterfaceLayoutDirection == &dword_0 + 1)
    {
      MinX = CGRectGetMinX(*&v42);
    }

    else
    {
      MinX = CGRectGetMaxX(*&v42) - (x + 8.0);
    }

    if ([(BKTOCTableViewCell *)self usesPopoverStyle])
    {
      v39 = 8.0;
    }

    else
    {
      v39 = 15.0;
    }
  }

  [(UILabel *)self->_pageLabel setFrame:MinX, v39, v30, v31];
  v46 = MinX;
  v47 = v39;
  v48 = v30;
  v49 = v31;
  if (isVertical)
  {
    MaxX = CGRectGetMaxX(*&v46);
  }

  else
  {
    MaxX = CGRectGetMinX(*&v46);
  }

  v51 = MaxX;
  if (self->_cachedImageView)
  {
    indentationLevel = [(BKTOCTableViewCell *)self indentationLevel];
    [(BKTOCTableViewCell *)self indentationWidth];
    v54 = v53 * indentationLevel;
    if (isVertical)
    {
      v107.origin.x = v17;
      v107.origin.y = v19;
      v107.size.width = recta.origin.y;
      v107.size.height = recta.size.width;
      v55 = CGRectGetWidth(v107) - x - v54 + -10.0;
      v108.origin.x = v17;
      v108.origin.y = v19;
      v108.size.width = recta.origin.y;
      v108.size.height = recta.size.width;
      v56 = CGRectGetHeight(v108);
      v57 = v51 + 10.0;
      v58 = 0.0;
    }

    else
    {
      [(UIImageView *)self->_cachedImageView frame];
      v55 = v76;
      v56 = v77;
      width = recta.size.width;
      if (v36)
      {
        v79 = v74;
        v112.origin.x = v17;
        recta.origin.x = v75;
        v112.origin.y = v19;
        v80 = v19;
        y = recta.origin.y;
        v112.size.width = recta.origin.y;
        v112.size.height = recta.size.width;
        v82 = CGRectGetMaxX(v112);
        v113.origin.x = v79;
        v113.origin.y = recta.origin.x;
        v113.size.width = v55;
        v113.size.height = v56;
        v83 = v82 - CGRectGetWidth(v113);
        width = recta.size.width;
        v57 = v83 - v54;
      }

      else
      {
        v118.origin.x = v17;
        v118.origin.y = v19;
        v80 = v19;
        y = recta.origin.y;
        v118.size.width = recta.origin.y;
        v118.size.height = recta.size.width;
        v57 = v54 + CGRectGetMinX(v118);
      }

      v119.origin.x = v17;
      v119.origin.y = v80;
      v119.size.width = y;
      v119.size.height = width;
      v92 = ceil((CGRectGetHeight(v119) - v56) * 0.5);
      v93 = isPad();
      v94 = 1.0;
      if (v93)
      {
        v94 = 0.0;
      }

      v58 = v94 + v92;
    }

    [(UIImageView *)self->_cachedImageView setFrame:v57, v58, v55, v56];
    [(BKTOCTableViewCell *)self bounds];
    [(BKTOCTableViewCell *)self _setSelectedBackgroundViewFrame:?];
    goto LABEL_39;
  }

  textLabel2 = [(BKTOCTableViewCell *)self textLabel];
  indentationLevel2 = [(BKTOCTableViewCell *)self indentationLevel];
  [(BKTOCTableViewCell *)self indentationWidth];
  v62 = v61 * indentationLevel2;
  if (x == 0.0)
  {
    v63 = 0.0;
  }

  else
  {
    v63 = x + 20.0;
  }

  [textLabel2 frame];
  recta.origin.x = v64;
  v66 = v65;
  if ([(BKTOCTableViewCell *)self usesPopoverStyle])
  {
    v67 = 8.0;
  }

  else
  {
    v67 = 14.0;
  }

  v109.origin.x = v17;
  v109.origin.y = v19;
  v109.size.width = recta.origin.y;
  v109.size.height = recta.size.width;
  v68 = CGRectGetWidth(v109) - v63;
  v69 = v62;
  v70 = v68 - v62;
  if (v36)
  {
    v110.origin.x = v17;
    v110.origin.y = v19;
    v110.size.width = recta.origin.y;
    v110.size.height = recta.size.width;
    v71 = v69;
    v72 = CGRectGetMaxX(v110);
    v111.origin.x = recta.origin.x;
    v111.origin.y = v67;
    v111.size.width = v70;
    v111.size.height = v66;
    v73 = v72 - CGRectGetWidth(v111) - v71;
LABEL_35:
    [textLabel2 sizeThatFits:{v70, v66, *&v98}];
    v90 = v97;
    goto LABEL_36;
  }

  v98 = v67;
  v84 = v17;
  v85 = recta.size.width;
  if ((isVertical & 1) == 0)
  {
    v95 = v19;
    v96 = recta.origin.y;
    v73 = v69 + CGRectGetMinX(*&v84);
    goto LABEL_35;
  }

  v86 = v19;
  v87 = recta.origin.y;
  v88 = v69;
  v89 = CGRectGetMaxX(*&v84);
  [(UILabel *)self->_pageLabel frame];
  v70 = v89 - CGRectGetMaxX(v114) + -10.0 - v69;
  v115.origin.x = v17;
  v115.origin.y = v19;
  v115.size.width = recta.origin.y;
  v115.size.height = recta.size.width;
  v90 = CGRectGetHeight(v115);
  v116.origin.x = v17;
  v116.origin.y = v19;
  v116.size.width = recta.origin.y;
  v116.size.height = recta.size.width;
  v91 = CGRectGetMaxX(v116);
  v117.origin.y = v67;
  v117.origin.x = recta.origin.x;
  v117.size.width = v70;
  v117.size.height = v90;
  v73 = v91 - CGRectGetWidth(v117) - v88;
  v67 = 0.0;
LABEL_36:
  [textLabel2 setFrame:{v73, v67, v70, v90, *&v98}];
  if (isVertical)
  {
    [(BKTOCTableViewCell *)self _syncVerticalLabel];
  }

  [(BKTOCTableViewCell *)self bounds];
  [(BKTOCTableViewCell *)self _setSelectedBackgroundViewFrame:?];

LABEL_39:
  [(BKTOCTableViewCell *)self configureFocusRing];
}

- (void)configureFocusRing
{
  [(BKTOCTableViewCell *)self bounds];
  v6 = CGRectInset(v5, 7.0, 1.0);
  v3 = [UIFocusHaloEffect effectWithRoundedRect:kCACornerCurveContinuous cornerRadius:v6.origin.x curve:v6.origin.y, v6.size.width, v6.size.height, 4.0];
  [(BKTOCTableViewCell *)self setFocusEffect:v3];
}

- (void)_setSelectedBackgroundViewFrame:(CGRect)frame
{
  v10 = CGRectInset(frame, 7.0, 1.0);
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  selectedBackgroundView = [(BKTOCTableViewCell *)self selectedBackgroundView];
  [selectedBackgroundView setFrame:{x, y, width, height}];
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = BKTOCTableViewCell;
  [(BKTOCTableViewCell *)&v7 prepareForReuse];
  [(UILabel *)self->_pageLabel setAlpha:1.0];
  [(UILabel *)self->_pageLabel setAdjustsFontSizeToFitWidth:0];
  cachedImageView = self->_cachedImageView;
  if (cachedImageView)
  {
    [(UIImageView *)cachedImageView removeFromSuperview];
    v4 = self->_cachedImageView;
  }

  else
  {
    v4 = 0;
  }

  self->_cachedImageView = 0;

  cacheKey = self->_cacheKey;
  self->_cacheKey = 0;

  selectedCacheKey = self->_selectedCacheKey;
  self->_selectedCacheKey = 0;

  self->_hasHTMLTitle = 0;
  [(BKTOCTableViewCell *)self setBkaxIsExcludedFromSample:0];
}

- (void)_setHighlightedPopoverAppearance:(BOOL)appearance
{
  appearanceCopy = appearance;
  highlightedBackgroundView = [(BKTOCTableViewCell *)self highlightedBackgroundView];
  v6 = highlightedBackgroundView;
  if (appearanceCopy)
  {

    if (!v6)
    {
      selectedBackgroundView = [(BKTOCTableViewCell *)self selectedBackgroundView];
      traitCollection = [(BKTOCTableViewCell *)self traitCollection];
      v9 = dbl_193280[[traitCollection userInterfaceStyle] == &dword_0 + 2];

      v10 = +[UIColor tintColor];
      v11 = [v10 colorWithAlphaComponent:v9];
      [selectedBackgroundView setBackgroundColor:v11];

      [(BKTOCTableViewCell *)self setHighlightedBackgroundView:selectedBackgroundView];
    }

    contentView = [(BKTOCTableViewCell *)self contentView];
    highlightedBackgroundView2 = [(BKTOCTableViewCell *)self highlightedBackgroundView];
    textLabel = [(BKTOCTableViewCell *)self textLabel];
    [contentView insertSubview:highlightedBackgroundView2 belowSubview:textLabel];
  }

  else
  {
    [highlightedBackgroundView removeFromSuperview];

    [(BKTOCTableViewCell *)self setHighlightedBackgroundView:0];
  }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  selectedCopy = selected;
  v6.receiver = self;
  v6.super_class = BKTOCTableViewCell;
  [(BKTOCTableViewCell *)&v6 setSelected:selected animated:animated];
  [(BKTOCTableViewCell *)self _setSelectedAppearance:selectedCopy];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = BKTOCTableViewCell;
  [(BKTOCTableViewCell *)&v6 setHighlighted:highlighted animated:animated];
  if ([(BKTOCTableViewCell *)self usesPopoverStyle])
  {
    [(BKTOCTableViewCell *)self _setHighlightedPopoverAppearance:highlightedCopy];
  }

  [(BKTOCTableViewCell *)self _setSelectedAppearance:highlightedCopy];
}

- (UILabel)pageLabel
{
  pageLabel = self->_pageLabel;
  if (!pageLabel)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_pageLabel;
    self->_pageLabel = v4;

    if (self->_vertical)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2 * ([(BKTOCTableViewCell *)self effectiveUserInterfaceLayoutDirection]!= &dword_0 + 1);
    }

    [(UILabel *)self->_pageLabel setTextAlignment:v6];
    [(UILabel *)self->_pageLabel setLineBreakMode:2];
    [(UILabel *)self->_pageLabel setOpaque:0];
    contentView = [(BKTOCTableViewCell *)self contentView];
    [contentView addSubview:self->_pageLabel];

    pageLabel = self->_pageLabel;
  }

  return pageLabel;
}

- (void)setupSelectedBackgroundNil
{
  v3 = [[UIImageView alloc] initWithImage:0];
  [(BKTOCTableViewCell *)self setSelectedBackgroundView:v3];
}

- (void)configureSelectedBackgroundView
{
  makeSelectedBackgroundView = [(BKTOCTableViewCell *)self makeSelectedBackgroundView];
  [(BKTOCTableViewCell *)self setSelectedBackgroundView:makeSelectedBackgroundView];
}

- (id)makeSelectedBackgroundView
{
  [(BKTOCTableViewCell *)self bounds];
  v14 = CGRectInset(v13, 7.0, 1.0);
  v3 = [[UIView alloc] initWithFrame:{v14.origin.x, v14.origin.y, v14.size.width, v14.size.height}];
  if (_UISolariumEnabled())
  {
    v4 = 16.0;
  }

  else
  {
    v4 = 4.0;
  }

  layer = [v3 layer];
  [layer setCornerRadius:v4];

  layer2 = [v3 layer];
  [layer2 setCornerCurve:kCACornerCurveContinuous];

  traitCollection = [(BKTOCTableViewCell *)self traitCollection];
  v8 = dbl_193280[[traitCollection userInterfaceStyle] == &dword_0 + 2];

  v9 = +[UIColor tintColor];
  v10 = [v9 colorWithAlphaComponent:v8];
  [v3 setBackgroundColor:v10];

  return v3;
}

- (void)setVertical:(BOOL)vertical
{
  if ([(BKTOCTableViewCell *)self isVertical]!= vertical)
  {
    self->_vertical = vertical;

    [(BKTOCTableViewCell *)self _adjustLabelTextAlignment];
  }
}

- (void)displayHTMLWithContents:(id)contents fontFamily:(id)family fontSize:(double)size maxSpan:(double)span baseURL:(id)l
{
  familyCopy = family;
  contentsCopy = contents;
  contentView = [(BKTOCTableViewCell *)self contentView];
  [contentView bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(BKTOCTableViewCell *)self contentInsets];
  v22 = v14 + v21;
  v24 = v16 + v23;
  v26 = v18 - (v21 + v25);
  v28 = v20 - (v23 + v27);

  vertical = self->_vertical;
  pageLabel = [(BKTOCTableViewCell *)self pageLabel];
  [pageLabel frame];
  if (vertical)
  {
    Height = CGRectGetHeight(*&v31);
  }

  else
  {
    Height = CGRectGetWidth(*&v31);
  }

  v36 = Height;

  v54.origin.x = v22;
  v54.origin.y = v24;
  v54.size.width = v26;
  v54.size.height = v28;
  v37 = CGRectGetHeight(v54);
  v55.origin.x = v22;
  v55.origin.y = v24;
  v55.size.width = v26;
  v55.size.height = v28;
  Width = CGRectGetWidth(v55);
  indentationLevel = [(BKTOCTableViewCell *)self indentationLevel];
  [(BKTOCTableViewCell *)self indentationWidth];
  v41 = v40;
  self->_hasHTMLTitle = 1;
  v42 = [NSString alloc];
  v43 = [NSNumber numberWithBool:self->_vertical];
  contentsCopy = [v42 initWithFormat:@"%@-%f.0-%@-%@", familyCopy, *&size, v43, contentsCopy];

  cacheKey = self->_cacheKey;
  self->_cacheKey = contentsCopy;

  v46 = [[NSString alloc] initWithFormat:@"%@-selected", self->_cacheKey];
  selectedCacheKey = self->_selectedCacheKey;
  self->_selectedCacheKey = v46;

  if (!self->_cachedImageView)
  {
    v48 = v36 + 10.0;
    if (v36 == 0.0)
    {
      v48 = 0.0;
    }

    v49 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, Width - v48 - indentationLevel * v41, v37}];
    cachedImageView = self->_cachedImageView;
    self->_cachedImageView = v49;

    [(UIImageView *)self->_cachedImageView setAutoresizingMask:2];
    [(UIImageView *)self->_cachedImageView setUserInteractionEnabled:0];
    [(UIImageView *)self->_cachedImageView setContentMode:8];
    isHighlighted = &dword_0 + 1;
    [(UIImageView *)self->_cachedImageView setClipsToBounds:1];
    contentView2 = [(BKTOCTableViewCell *)self contentView];
    [contentView2 addSubview:self->_cachedImageView];

    if (([(BKTOCTableViewCell *)self isSelected]& 1) == 0)
    {
      isHighlighted = [(BKTOCTableViewCell *)self isHighlighted];
    }

    [(BKTOCTableViewCell *)self _setSelectedAppearance:isHighlighted];
  }
}

- (void)_syncVerticalLabel
{
  textLabel = [(BKTOCTableViewCell *)self textLabel];
  [textLabel frame];
  [(BKVerticalLabel *)self->_verticalLabel setFrame:?];

  textLabel2 = [(BKTOCTableViewCell *)self textLabel];
  backgroundColor = [textLabel2 backgroundColor];
  [(BKVerticalLabel *)self->_verticalLabel setBackgroundColor:backgroundColor];

  textLabel3 = [(BKTOCTableViewCell *)self textLabel];
  -[BKVerticalLabel setAutoresizingMask:](self->_verticalLabel, "setAutoresizingMask:", [textLabel3 autoresizingMask]);

  textLabel4 = [(BKTOCTableViewCell *)self textLabel];
  text = [textLabel4 text];
  [(BKVerticalLabel *)self->_verticalLabel setText:text];

  textLabel5 = [(BKTOCTableViewCell *)self textLabel];
  font = [textLabel5 font];
  [(BKVerticalLabel *)self->_verticalLabel setFont:font];

  textLabel6 = [(BKTOCTableViewCell *)self textLabel];
  textColor = [textLabel6 textColor];
  [(BKVerticalLabel *)self->_verticalLabel setTextColor:textColor];

  textLabel7 = [(BKTOCTableViewCell *)self textLabel];
  shadowColor = [textLabel7 shadowColor];
  [(BKVerticalLabel *)self->_verticalLabel setShadowColor:shadowColor];

  text2 = [(BKVerticalLabel *)self->_verticalLabel text];
  [text2 rangeOfString:@"“"];
  v17 = v16;

  if (v17)
  {
    text3 = [(BKVerticalLabel *)self->_verticalLabel text];
    v19 = [text3 stringByReplacingOccurrencesOfString:@"“" withString:@"〝"];
    [(BKVerticalLabel *)self->_verticalLabel setText:v19];
  }

  text4 = [(BKVerticalLabel *)self->_verticalLabel text];
  [text4 rangeOfString:@"”"];
  v22 = v21;

  if (v22)
  {
    text5 = [(BKVerticalLabel *)self->_verticalLabel text];
    v23 = [text5 stringByReplacingOccurrencesOfString:@"”" withString:@"〟"];
    [(BKVerticalLabel *)self->_verticalLabel setText:v23];
  }
}

- (void)_adjustLabelTextAlignment
{
  if (self->_vertical)
  {
    verticalLabel = self->_verticalLabel;
    if (!verticalLabel)
    {
      v4 = [BKVerticalLabel alloc];
      textLabel = [(BKTOCTableViewCell *)self textLabel];
      [textLabel frame];
      v6 = [(BKVerticalLabel *)v4 initWithFrame:?];
      v7 = self->_verticalLabel;
      self->_verticalLabel = v6;

      contentView = [(BKTOCTableViewCell *)self contentView];
      [contentView addSubview:self->_verticalLabel];

      [(BKTOCTableViewCell *)self _syncVerticalLabel];
      verticalLabel = self->_verticalLabel;
    }

    [(BKVerticalLabel *)verticalLabel setHidden:0];
    v9 = 1;
  }

  else
  {
    effectiveUserInterfaceLayoutDirection = [(BKTOCTableViewCell *)self effectiveUserInterfaceLayoutDirection];
    v11 = self->_verticalLabel;
    if (v11)
    {
      [(BKVerticalLabel *)v11 setHidden:1];
    }

    textLabel2 = [(BKTOCTableViewCell *)self textLabel];
    [textLabel2 setTextAlignment:2 * (effectiveUserInterfaceLayoutDirection == &dword_0 + 1)];

    v9 = 2 * (effectiveUserInterfaceLayoutDirection != &dword_0 + 1);
  }

  pageLabel = [(BKTOCTableViewCell *)self pageLabel];
  [pageLabel setTextAlignment:v9];
}

+ (CGSize)titleSizeForText:(id)text indentation:(int64_t)indentation font:(id)font width:(double)width
{
  v29 = NSFontAttributeName;
  fontCopy = font;
  fontCopy2 = font;
  textCopy = text;
  v11 = [NSDictionary dictionaryWithObjects:&fontCopy forKeys:&v29 count:1];
  [@"8888" sizeWithAttributes:v11];
  v13 = v12;
  v15 = v14;

  v16 = isPad();
  v17 = 0.0;
  v18 = 26.0;
  if (!v16)
  {
    v18 = 0.0;
  }

  if (v13 > 0.0)
  {
    v17 = v13 + 10.0;
  }

  v19 = width - v17 - v18 - (10 * indentation);
  v27 = NSFontAttributeName;
  v28 = fontCopy2;
  v20 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];

  [textCopy boundingRectWithSize:3 options:v20 attributes:0 context:{v19, 1000.0}];
  v22 = v21;
  v24 = v23;

  if (v15 * 5.0 < v24)
  {
    v24 = v15 * 5.0;
  }

  v25 = v22;
  v26 = v24;
  result.height = v26;
  result.width = v25;
  return result;
}

+ (CGSize)sizeForText:(id)text indentation:(int64_t)indentation font:(id)font width:(double)width
{
  [self titleSizeForText:text indentation:indentation font:font width:?];
  v8 = v7 + 24.0;
  widthCopy = width;
  result.height = v8;
  result.width = widthCopy;
  return result;
}

+ (double)maxSpanForTextWithIndentation:(int64_t)indentation font:(id)font width:(double)width
{
  v7 = isPad();
  v8 = 0.0;
  if (v7)
  {
    v8 = 26.0;
  }

  return width - v8 - (10 * indentation);
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end