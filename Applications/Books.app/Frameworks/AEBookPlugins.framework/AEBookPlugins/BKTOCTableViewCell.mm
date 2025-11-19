@interface BKTOCTableViewCell
+ (CGRect)pageLabelFrameForString:(id)a3 font:(id)a4 bounds:(CGRect)a5 layoutDirection:(int64_t)a6;
+ (CGRect)pageLabelFrameForString:(id)a3 font:(id)a4 bounds:(CGRect)a5 topMargin:(double)a6 layoutDirection:(int64_t)a7;
+ (CGSize)sizeForText:(id)a3 indentation:(int64_t)a4 font:(id)a5 width:(double)a6;
+ (CGSize)titleSizeForText:(id)a3 indentation:(int64_t)a4 font:(id)a5 width:(double)a6;
+ (double)cellHeightForCellWidth:(double)a3 pageLabelWidth:(double)a4 text:(id)a5 indentationLevel:(unint64_t)a6 indentationWidth:(double)a7 font:(id)a8 usesPopoverStyle:(BOOL)a9;
+ (double)maxSpanForTextWithIndentation:(int64_t)a3 font:(id)a4 width:(double)a5;
+ (id)tocWebTemplate;
- (BKTOCTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UIEdgeInsets)contentInsets;
- (UILabel)pageLabel;
- (id)makeSelectedBackgroundView;
- (void)_adjustLabelTextAlignment;
- (void)_setHighlightedPopoverAppearance:(BOOL)a3;
- (void)_setSelectedBackgroundViewFrame:(CGRect)a3;
- (void)_syncVerticalLabel;
- (void)configureFocusRing;
- (void)configureSelectedBackgroundView;
- (void)dealloc;
- (void)displayHTMLWithContents:(id)a3 fontFamily:(id)a4 fontSize:(double)a5 maxSpan:(double)a6 baseURL:(id)a7;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setVertical:(BOOL)a3;
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

- (BKTOCTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v11.receiver = self;
  v11.super_class = BKTOCTableViewCell;
  v4 = [(BKTOCTableViewCell *)&v11 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(BKTOCTableViewCell *)v4 textLabel];
    [v6 setHighlightedTextColor:0];

    v7 = [(BKTOCTableViewCell *)v5 textLabel];
    [v7 setNumberOfLines:0];

    v8 = [(BKTOCTableViewCell *)v5 textLabel];
    [v8 setContentMode:5];

    v9 = [(BKTOCTableViewCell *)v5 textLabel];
    [v9 setOpaque:0];
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

+ (CGRect)pageLabelFrameForString:(id)a3 font:(id)a4 bounds:(CGRect)a5 layoutDirection:(int64_t)a6
{
  [a1 pageLabelFrameForString:a3 font:a4 bounds:a6 topMargin:a5.origin.x layoutDirection:{a5.origin.y, a5.size.width, a5.size.height, 16.0}];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

+ (CGRect)pageLabelFrameForString:(id)a3 font:(id)a4 bounds:(CGRect)a5 topMargin:(double)a6 layoutDirection:(int64_t)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = a3;
  v14 = a4;
  v15 = CGRectZero.origin.y;
  if (![(__CFString *)v13 length])
  {

    v13 = @" ";
  }

  [UILabel bkSizeForString:v13 font:v14];
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
  if (a7 == 1)
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
  v28 = a6;
  v29 = v19;
  v30 = v20;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

+ (double)cellHeightForCellWidth:(double)a3 pageLabelWidth:(double)a4 text:(id)a5 indentationLevel:(unint64_t)a6 indentationWidth:(double)a7 font:(id)a8 usesPopoverStyle:(BOOL)a9
{
  v9 = a9;
  v11 = a6 * a7;
  v12 = a4 + 20.0;
  v13 = a4 == 0.0;
  v14 = 0.0;
  if (!v13)
  {
    v14 = v12;
  }

  v15 = a3 - v14 - v11;
  v23 = NSFontAttributeName;
  v24 = a8;
  v16 = a8;
  v17 = a5;
  v18 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];

  [v17 boundingRectWithSize:1 options:v18 attributes:0 context:{v15, 1.79769313e308}];
  v20 = v19;

  if (v9)
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
  v3 = [(BKTOCTableViewCell *)self isVertical];
  hasHTMLTitle = self->_hasHTMLTitle;
  vertical = self->_vertical;
  v6 = [(BKTOCTableViewCell *)self textLabel];
  [v6 setHidden:vertical | hasHTMLTitle];

  [(BKVerticalLabel *)self->_verticalLabel setHidden:!self->_vertical];
  v7 = [(BKTOCTableViewCell *)self contentView];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(BKTOCTableViewCell *)self contentInsets];
  v17 = v9 + v16;
  v19 = v11 + v18;
  v21 = v13 - (v16 + v20);
  v23 = v15 - (v18 + v22);

  v24 = [(BKTOCTableViewCell *)self pageLabel];
  [v24 sizeToFit];

  [(UILabel *)self->_pageLabel frame];
  v29 = v26;
  v30 = v27;
  v31 = v28;
  recta.origin.y = v21;
  recta.size.width = v23;
  if (v3)
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
    v41 = [(BKTOCTableViewCell *)self effectiveUserInterfaceLayoutDirection];
    v36 = v41 == &dword_0 + 1;
    v42 = v17;
    v43 = v19;
    v44 = v21;
    v45 = v23;
    if (v41 == &dword_0 + 1)
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
  if (v3)
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
    v52 = [(BKTOCTableViewCell *)self indentationLevel];
    [(BKTOCTableViewCell *)self indentationWidth];
    v54 = v53 * v52;
    if (v3)
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

  v59 = [(BKTOCTableViewCell *)self textLabel];
  v60 = [(BKTOCTableViewCell *)self indentationLevel];
  [(BKTOCTableViewCell *)self indentationWidth];
  v62 = v61 * v60;
  if (x == 0.0)
  {
    v63 = 0.0;
  }

  else
  {
    v63 = x + 20.0;
  }

  [v59 frame];
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
    [v59 sizeThatFits:{v70, v66, *&v98}];
    v90 = v97;
    goto LABEL_36;
  }

  v98 = v67;
  v84 = v17;
  v85 = recta.size.width;
  if ((v3 & 1) == 0)
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
  [v59 setFrame:{v73, v67, v70, v90, *&v98}];
  if (v3)
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

- (void)_setSelectedBackgroundViewFrame:(CGRect)a3
{
  v10 = CGRectInset(a3, 7.0, 1.0);
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  v8 = [(BKTOCTableViewCell *)self selectedBackgroundView];
  [v8 setFrame:{x, y, width, height}];
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

- (void)_setHighlightedPopoverAppearance:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKTOCTableViewCell *)self highlightedBackgroundView];
  v6 = v5;
  if (v3)
  {

    if (!v6)
    {
      v7 = [(BKTOCTableViewCell *)self selectedBackgroundView];
      v8 = [(BKTOCTableViewCell *)self traitCollection];
      v9 = dbl_193280[[v8 userInterfaceStyle] == &dword_0 + 2];

      v10 = +[UIColor tintColor];
      v11 = [v10 colorWithAlphaComponent:v9];
      [v7 setBackgroundColor:v11];

      [(BKTOCTableViewCell *)self setHighlightedBackgroundView:v7];
    }

    v14 = [(BKTOCTableViewCell *)self contentView];
    v12 = [(BKTOCTableViewCell *)self highlightedBackgroundView];
    v13 = [(BKTOCTableViewCell *)self textLabel];
    [v14 insertSubview:v12 belowSubview:v13];
  }

  else
  {
    [v5 removeFromSuperview];

    [(BKTOCTableViewCell *)self setHighlightedBackgroundView:0];
  }
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = BKTOCTableViewCell;
  [(BKTOCTableViewCell *)&v6 setSelected:a3 animated:a4];
  [(BKTOCTableViewCell *)self _setSelectedAppearance:v4];
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = BKTOCTableViewCell;
  [(BKTOCTableViewCell *)&v6 setHighlighted:a3 animated:a4];
  if ([(BKTOCTableViewCell *)self usesPopoverStyle])
  {
    [(BKTOCTableViewCell *)self _setHighlightedPopoverAppearance:v4];
  }

  [(BKTOCTableViewCell *)self _setSelectedAppearance:v4];
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
    v7 = [(BKTOCTableViewCell *)self contentView];
    [v7 addSubview:self->_pageLabel];

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
  v3 = [(BKTOCTableViewCell *)self makeSelectedBackgroundView];
  [(BKTOCTableViewCell *)self setSelectedBackgroundView:v3];
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

  v5 = [v3 layer];
  [v5 setCornerRadius:v4];

  v6 = [v3 layer];
  [v6 setCornerCurve:kCACornerCurveContinuous];

  v7 = [(BKTOCTableViewCell *)self traitCollection];
  v8 = dbl_193280[[v7 userInterfaceStyle] == &dword_0 + 2];

  v9 = +[UIColor tintColor];
  v10 = [v9 colorWithAlphaComponent:v8];
  [v3 setBackgroundColor:v10];

  return v3;
}

- (void)setVertical:(BOOL)a3
{
  if ([(BKTOCTableViewCell *)self isVertical]!= a3)
  {
    self->_vertical = a3;

    [(BKTOCTableViewCell *)self _adjustLabelTextAlignment];
  }
}

- (void)displayHTMLWithContents:(id)a3 fontFamily:(id)a4 fontSize:(double)a5 maxSpan:(double)a6 baseURL:(id)a7
{
  v10 = a4;
  v11 = a3;
  v12 = [(BKTOCTableViewCell *)self contentView];
  [v12 bounds];
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
  v30 = [(BKTOCTableViewCell *)self pageLabel];
  [v30 frame];
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
  v39 = [(BKTOCTableViewCell *)self indentationLevel];
  [(BKTOCTableViewCell *)self indentationWidth];
  v41 = v40;
  self->_hasHTMLTitle = 1;
  v42 = [NSString alloc];
  v43 = [NSNumber numberWithBool:self->_vertical];
  v44 = [v42 initWithFormat:@"%@-%f.0-%@-%@", v10, *&a5, v43, v11];

  cacheKey = self->_cacheKey;
  self->_cacheKey = v44;

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

    v49 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, Width - v48 - v39 * v41, v37}];
    cachedImageView = self->_cachedImageView;
    self->_cachedImageView = v49;

    [(UIImageView *)self->_cachedImageView setAutoresizingMask:2];
    [(UIImageView *)self->_cachedImageView setUserInteractionEnabled:0];
    [(UIImageView *)self->_cachedImageView setContentMode:8];
    v51 = &dword_0 + 1;
    [(UIImageView *)self->_cachedImageView setClipsToBounds:1];
    v52 = [(BKTOCTableViewCell *)self contentView];
    [v52 addSubview:self->_cachedImageView];

    if (([(BKTOCTableViewCell *)self isSelected]& 1) == 0)
    {
      v51 = [(BKTOCTableViewCell *)self isHighlighted];
    }

    [(BKTOCTableViewCell *)self _setSelectedAppearance:v51];
  }
}

- (void)_syncVerticalLabel
{
  v3 = [(BKTOCTableViewCell *)self textLabel];
  [v3 frame];
  [(BKVerticalLabel *)self->_verticalLabel setFrame:?];

  v4 = [(BKTOCTableViewCell *)self textLabel];
  v5 = [v4 backgroundColor];
  [(BKVerticalLabel *)self->_verticalLabel setBackgroundColor:v5];

  v6 = [(BKTOCTableViewCell *)self textLabel];
  -[BKVerticalLabel setAutoresizingMask:](self->_verticalLabel, "setAutoresizingMask:", [v6 autoresizingMask]);

  v7 = [(BKTOCTableViewCell *)self textLabel];
  v8 = [v7 text];
  [(BKVerticalLabel *)self->_verticalLabel setText:v8];

  v9 = [(BKTOCTableViewCell *)self textLabel];
  v10 = [v9 font];
  [(BKVerticalLabel *)self->_verticalLabel setFont:v10];

  v11 = [(BKTOCTableViewCell *)self textLabel];
  v12 = [v11 textColor];
  [(BKVerticalLabel *)self->_verticalLabel setTextColor:v12];

  v13 = [(BKTOCTableViewCell *)self textLabel];
  v14 = [v13 shadowColor];
  [(BKVerticalLabel *)self->_verticalLabel setShadowColor:v14];

  v15 = [(BKVerticalLabel *)self->_verticalLabel text];
  [v15 rangeOfString:@"“"];
  v17 = v16;

  if (v17)
  {
    v18 = [(BKVerticalLabel *)self->_verticalLabel text];
    v19 = [v18 stringByReplacingOccurrencesOfString:@"“" withString:@"〝"];
    [(BKVerticalLabel *)self->_verticalLabel setText:v19];
  }

  v20 = [(BKVerticalLabel *)self->_verticalLabel text];
  [v20 rangeOfString:@"”"];
  v22 = v21;

  if (v22)
  {
    v24 = [(BKVerticalLabel *)self->_verticalLabel text];
    v23 = [v24 stringByReplacingOccurrencesOfString:@"”" withString:@"〟"];
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
      v5 = [(BKTOCTableViewCell *)self textLabel];
      [v5 frame];
      v6 = [(BKVerticalLabel *)v4 initWithFrame:?];
      v7 = self->_verticalLabel;
      self->_verticalLabel = v6;

      v8 = [(BKTOCTableViewCell *)self contentView];
      [v8 addSubview:self->_verticalLabel];

      [(BKTOCTableViewCell *)self _syncVerticalLabel];
      verticalLabel = self->_verticalLabel;
    }

    [(BKVerticalLabel *)verticalLabel setHidden:0];
    v9 = 1;
  }

  else
  {
    v10 = [(BKTOCTableViewCell *)self effectiveUserInterfaceLayoutDirection];
    v11 = self->_verticalLabel;
    if (v11)
    {
      [(BKVerticalLabel *)v11 setHidden:1];
    }

    v12 = [(BKTOCTableViewCell *)self textLabel];
    [v12 setTextAlignment:2 * (v10 == &dword_0 + 1)];

    v9 = 2 * (v10 != &dword_0 + 1);
  }

  v13 = [(BKTOCTableViewCell *)self pageLabel];
  [v13 setTextAlignment:v9];
}

+ (CGSize)titleSizeForText:(id)a3 indentation:(int64_t)a4 font:(id)a5 width:(double)a6
{
  v29 = NSFontAttributeName;
  v30 = a5;
  v9 = a5;
  v10 = a3;
  v11 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
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

  v19 = a6 - v17 - v18 - (10 * a4);
  v27 = NSFontAttributeName;
  v28 = v9;
  v20 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];

  [v10 boundingRectWithSize:3 options:v20 attributes:0 context:{v19, 1000.0}];
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

+ (CGSize)sizeForText:(id)a3 indentation:(int64_t)a4 font:(id)a5 width:(double)a6
{
  [a1 titleSizeForText:a3 indentation:a4 font:a5 width:?];
  v8 = v7 + 24.0;
  v9 = a6;
  result.height = v8;
  result.width = v9;
  return result;
}

+ (double)maxSpanForTextWithIndentation:(int64_t)a3 font:(id)a4 width:(double)a5
{
  v7 = isPad();
  v8 = 0.0;
  if (v7)
  {
    v8 = 26.0;
  }

  return a5 - v8 - (10 * a3);
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