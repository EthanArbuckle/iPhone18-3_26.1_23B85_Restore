@interface IMGridViewCell
+ (CGRect)imageRectForBounds:(CGRect)a3 image:(id)a4 gravity:(int)a5;
+ (CGSize)scaledImageSizeForBounds:(CGRect)a3 image:(id)a4;
+ (id)_jitterPositionAnimation;
+ (id)_jitterTransformAnimation;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)imageRectForBounds:(CGRect)a3;
- (CGRect)selectionFrame;
- (CGRect)titleRectForBounds:(CGRect)a3;
- (CGSize)scaledImageSizeForBounds:(CGRect)a3;
- (IMGridView)gridView;
- (IMGridViewCell)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)snapshotEdgeInsets;
- (UIImageView)badgeView;
- (UIImageView)imageView;
- (UIImageView)selectedBadgeView;
- (UILabel)badgeLabel;
- (UILabel)textLabel;
- (UIView)contentView;
- (UIView)selectedWhitewashView;
- (id)_gridView;
- (id)closeBox;
- (id)description;
- (id)highlightView;
- (id)workingView;
- (void)_removeCloseBox;
- (void)_removeHighlightView;
- (void)_removeSelectedBadgeView;
- (void)_removeWorkingView;
- (void)dealloc;
- (void)deleteConfirmationControlWasClicked:(id)a3;
- (void)layoutSubviews;
- (void)loadImageView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)prepareForReuse;
- (void)setBadgeLabelNumber:(id)a3;
- (void)setBadgeText:(id)a3;
- (void)setCanDelete:(BOOL)a3;
- (void)setEditing:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setGrabbed:(BOOL)a3;
- (void)setHidden:(BOOL)a3;
- (void)setHidesWhitewash:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setJiggleWhenEditing:(BOOL)a3;
- (void)setJiggling:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setShowCloseBox:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setUseMaskForHighlightView:(BOOL)a3;
- (void)setWorking:(BOOL)a3;
@end

@implementation IMGridViewCell

- (IMGridViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = IMGridViewCell;
  v3 = [(IMGridViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(IMGridViewCell *)v3 prepareForReuse];
    [(IMGridViewCell *)v4 setHidden:0];
  }

  return v4;
}

- (void)dealloc
{
  [(UIImageView *)self->_imageView removeObserver:self forKeyPath:@"image"];
  self->_showSelectionView = 1;
  v3.receiver = self;
  v3.super_class = IMGridViewCell;
  [(IMGridViewCell *)&v3 dealloc];
}

- (void)setHidden:(BOOL)a3
{
  if (!self->_ignoreChangesToHidden)
  {
    v6 = v3;
    v7 = v4;
    v5.receiver = self;
    v5.super_class = IMGridViewCell;
    [(IMGridViewCell *)&v5 setHidden:a3];
  }
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = IMGridViewCell;
  v3 = [(IMGridViewCell *)&v7 description];
  v4 = [(IMGridViewCell *)self title];
  v5 = [NSString stringWithFormat:@"%@ Title:%@", v3, v4];

  return v5;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (self->_imageView == a6)
  {

    [(IMGridViewCell *)self setNeedsLayout:a3];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = IMGridViewCell;
    [(IMGridViewCell *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (UIImageView)badgeView
{
  badgeView = self->_badgeView;
  if (!badgeView)
  {
    v4 = [UIImageView alloc];
    v5 = IMCommonCoreBundle();
    v6 = [(IMGridViewCell *)self traitCollection];
    v7 = [UIImage imageNamed:@"TVBadge" inBundle:v5 compatibleWithTraitCollection:v6];
    v8 = [v7 stretchableImageWithLeftCapWidth:15 topCapHeight:0];
    v9 = [v4 initWithImage:v8];
    v10 = self->_badgeView;
    self->_badgeView = v9;

    [(UIImageView *)self->_badgeView setFrame:0.0, 0.0, 31.0, 31.0];
    v11 = [(IMGridViewCell *)self contentView];
    [v11 addSubview:self->_badgeView];

    badgeView = self->_badgeView;
  }

  return badgeView;
}

- (UILabel)badgeLabel
{
  badgeLabel = self->_badgeLabel;
  if (!badgeLabel)
  {
    v4 = [(IMGridViewCell *)self badgeView];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [[UILabel alloc] initWithFrame:{v6, v8, v10, v12}];
    v14 = self->_badgeLabel;
    self->_badgeLabel = v13;

    [(UILabel *)self->_badgeLabel setTextAlignment:1];
    v15 = [UIFont boldSystemFontOfSize:17.0];
    [(UILabel *)self->_badgeLabel setFont:v15];

    v16 = +[UIColor whiteColor];
    [(UILabel *)self->_badgeLabel setTextColor:v16];

    v17 = +[UIColor clearColor];
    [(UILabel *)self->_badgeLabel setBackgroundColor:v17];

    [(UILabel *)self->_badgeLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_badgeLabel setMinimumScaleFactor:0.47];
    v18 = [(IMGridViewCell *)self badgeView];
    [v18 addSubview:self->_badgeLabel];

    badgeLabel = self->_badgeLabel;
  }

  return badgeLabel;
}

- (void)setBadgeLabelNumber:(id)a3
{
  v8 = a3;
  if ([v8 intValue])
  {
    v4 = [NSString alloc];
    v5 = IMCommonCoreBundle();
    v6 = [v5 localizedStringForKey:@"%@" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
    v7 = [v4 initWithFormat:v6, v8];
  }

  else
  {
    v7 = 0;
  }

  [(IMGridViewCell *)self setBadgeText:v7];
}

- (void)setBadgeText:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [(IMGridViewCell *)self badgeLabel];
    [v6 setText:v5];

    [(IMGridViewCell *)self badgeView];
    [(IMGridViewCell *)self setNeedsLayout];
  }

  v7 = a3 == 0;
  [(UIImageView *)self->_badgeView setHidden:v7];
  badgeLabel = self->_badgeLabel;

  [(UILabel *)badgeLabel setHidden:v7];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  closeBox = self->_closeBox;
  [(UIButton *)closeBox convertPoint:self fromView:x, y];
  if (([(UIButton *)closeBox pointInside:v7 withEvent:?]& 1) != 0)
  {
    v9 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = IMGridViewCell;
    v9 = [(IMGridViewCell *)&v11 pointInside:v7 withEvent:x, y];
  }

  return v9;
}

- (UIView)contentView
{
  contentView = self->_contentView;
  if (!contentView)
  {
    v4 = [UIView alloc];
    [(IMGridViewCell *)self bounds];
    v5 = [v4 initWithFrame:?];
    v6 = self->_contentView;
    self->_contentView = v5;

    [(UIView *)self->_contentView setAccessibilityIgnoresInvertColors:1];
    [(UIView *)self->_contentView setAutoresizingMask:18];
    [(IMGridViewCell *)self addSubview:self->_contentView];
    contentView = self->_contentView;
  }

  return contentView;
}

- (void)setUseMaskForHighlightView:(BOOL)a3
{
  if ([(IMGridViewCell *)self useMaskForHighlightView]!= a3)
  {
    self->_useMaskForHighlightView = a3;

    [(IMGridViewCell *)self _removeHighlightView];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  self->_highlighted = a3;
  [(UIImageView *)self->_imageView setHighlighted:?];
  if (v3)
  {
    if (self->_showSelectionView)
    {
      v5 = [(IMGridViewCell *)self highlightView];
      [v5 setHidden:0];
    }
  }

  else
  {
    [(IMGridViewCell *)self _removeHighlightView];
  }

  [(IMGridViewCell *)self setNeedsLayout];
}

- (void)setWorking:(BOOL)a3
{
  self->_working = a3;
  if (a3)
  {
    v4 = [(IMGridViewCell *)self workingView];
    [v4 startAnimating];
  }

  else
  {
    workingView = self->_workingView;
    if (workingView)
    {
      [(UIActivityIndicatorView *)workingView stopAnimating];
      [(IMGridViewCell *)self _removeWorkingView];
    }
  }

  [(IMGridViewCell *)self setNeedsLayout];
}

- (void)setTitle:(id)a3
{
  if (self->_title != a3)
  {
    v6 = a3;
    v4 = [v6 copy];
    title = self->_title;
    self->_title = v4;

    [(UILabel *)self->_textLabel setText:v6];
  }
}

- (UIImageView)imageView
{
  imageView = self->_imageView;
  if (!imageView)
  {
    [(IMGridViewCell *)self loadImageView];
    imageView = self->_imageView;
  }

  return imageView;
}

- (void)loadImageView
{
  v3 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  imageView = self->_imageView;
  self->_imageView = v3;

  if ([(IMGridViewCell *)self imageGravity]== 1)
  {
    v5 = 4;
  }

  else
  {
    v5 = 1;
  }

  [(UIImageView *)self->_imageView setContentMode:v5];
  [(UIImageView *)self->_imageView setClipsToBounds:0];
  [(UIImageView *)self->_imageView setOpaque:1];
  [(UIImageView *)self->_imageView setClearsContextBeforeDrawing:0];
  v6 = [(IMGridViewCell *)self contentView];
  [v6 insertSubview:self->_imageView atIndex:0];

  v7 = self->_imageView;

  [(UIImageView *)v7 addObserver:self forKeyPath:@"image" options:4 context:v7];
}

- (id)highlightView
{
  if (!self->_highlightView)
  {
    if ([(IMGridViewCell *)self useMaskForHighlightView]&& ([(UIImageView *)self->_imageView image], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
    {
      v4 = [(UIImageView *)self->_imageView image];
      v5 = [UIColor colorWithWhite:0.0 alpha:0.3];
      v6 = [v4 imageMaskWithColor:v5];

      v7 = [[UIImageView alloc] initWithImage:v6];
      highlightView = self->_highlightView;
      self->_highlightView = v7;

      if ([(IMGridViewCell *)self imageGravity]== 1)
      {
        [(UIView *)self->_highlightView setContentMode:[(UIImageView *)self->_imageView contentMode]];
      }
    }

    else
    {
      v9 = [UIView alloc];
      [(IMGridViewCell *)self selectionFrame];
      v10 = [v9 initWithFrame:?];
      v11 = self->_highlightView;
      self->_highlightView = v10;

      [(UIView *)self->_highlightView setOpaque:0];
      v6 = [UIColor colorWithWhite:0.0 alpha:0.3];
      [(UIView *)self->_highlightView setBackgroundColor:v6];
    }

    v12 = [(IMGridViewCell *)self contentView];
    [v12 addSubview:self->_highlightView];

    if (self->_badgeView)
    {
      v13 = [(IMGridViewCell *)self contentView];
      v14 = [(IMGridViewCell *)self badgeView];
      [v13 bringSubviewToFront:v14];
    }
  }

  v15 = self->_highlightView;

  return v15;
}

- (id)workingView
{
  workingView = self->_workingView;
  if (!workingView)
  {
    v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    v5 = self->_workingView;
    self->_workingView = v4;

    [(UIActivityIndicatorView *)self->_workingView setHidesWhenStopped:1];
    v6 = [(IMGridViewCell *)self contentView];
    [v6 addSubview:self->_workingView];

    workingView = self->_workingView;
  }

  return workingView;
}

- (UILabel)textLabel
{
  textLabel = self->_textLabel;
  if (!textLabel)
  {
    v4 = objc_alloc_init(UILabel);
    v5 = self->_textLabel;
    self->_textLabel = v4;

    [(UILabel *)self->_textLabel setContentMode:2];
    [(UILabel *)self->_textLabel setClipsToBounds:1];
    v6 = [UIFont systemFontOfSize:11.0];
    [(UILabel *)self->_textLabel setFont:v6];

    v7 = +[UIColor clearColor];
    [(UILabel *)self->_textLabel setBackgroundColor:v7];

    [(UILabel *)self->_textLabel setTextAlignment:1];
    v8 = [(IMGridViewCell *)self title];
    [(UILabel *)self->_textLabel setText:v8];

    v9 = [(IMGridViewCell *)self contentView];
    [v9 addSubview:self->_textLabel];

    textLabel = self->_textLabel;
  }

  return textLabel;
}

- (void)prepareForReuse
{
  [(IMGridViewCell *)self setHidden:1];
  self->_showSelectionView = 0;
  [(UIImageView *)self->_imageView setImage:0];
  [(UILabel *)self->_textLabel setText:0];
  [(IMGridViewCell *)self setHighlighted:0];
  [(IMGridViewCell *)self setWorking:0];
  [(IMGridViewCell *)self setEditing:0];
  v3 = *&CGAffineTransformIdentity.c;
  v4[0] = *&CGAffineTransformIdentity.a;
  v4[1] = v3;
  v4[2] = *&CGAffineTransformIdentity.tx;
  [(IMGridViewCell *)self setTransform:v4];
  [(IMGridViewCell *)self setBadgeLabelNumber:0];
  [(IMGridViewCell *)self setSelected:0];
  [(IMGridViewCell *)self _removeSelectedBadgeView];
  [(IMGridViewCell *)self _removeHighlightView];
  [(IMGridViewCell *)self _removeCloseBox];
}

+ (CGSize)scaledImageSizeForBounds:(CGRect)a3 image:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    [v6 size];
    v10 = v8 / v9;
    v11 = width / height;
    if (v10 <= width / height)
    {
      if (v10 < width / height)
      {
        v13 = width * (v10 / v11);
        width = roundf(v13);
      }
    }

    else
    {
      v12 = height * (v11 / v10);
      height = roundf(v12);
    }
  }

  v14 = width;
  v15 = height;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)scaledImageSizeForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_opt_class();
  v9 = [(UIImageView *)self->_imageView image];
  [v8 scaledImageSizeForBounds:v9 image:{x, y, width, height}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

+ (CGRect)imageRectForBounds:(CGRect)a3 image:(id)a4 gravity:(int)a5
{
  height = a3.size.height;
  width = a3.size.width;
  [a1 scaledImageSizeForBounds:a4 image:{a3.origin.x, a3.origin.y}];
  v10 = CGRectZero.size.width;
  v11 = CGRectZero.size.height;
  v12 = ceil((width - v8) * 0.5);
  y = height - v9;
  v14 = ceil((height - v9) * 0.5);
  if (a5)
  {
    y = CGRectZero.origin.y;
    x = CGRectZero.origin.x;
  }

  else
  {
    v11 = v9;
    v10 = v8;
    x = v12;
  }

  if (a5 == 1)
  {
    v16 = v9;
  }

  else
  {
    v16 = v11;
  }

  if (a5 == 1)
  {
    v17 = v8;
  }

  else
  {
    v17 = v10;
  }

  if (a5 == 1)
  {
    v18 = v14;
  }

  else
  {
    v18 = y;
  }

  if (a5 == 1)
  {
    v19 = v12;
  }

  else
  {
    v19 = x;
  }

  result.size.height = v16;
  result.size.width = v17;
  result.origin.y = v18;
  result.origin.x = v19;
  return result;
}

- (CGRect)imageRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_opt_class();
  v9 = [(UIImageView *)self->_imageView image];
  [v8 imageRectForBounds:v9 image:self->_imageGravity gravity:{x, y, width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)titleRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(IMGridViewCell *)self contentRectForBounds:?];
  v8 = CGRectGetMaxY(v17) + 5.0;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v9 = CGRectGetWidth(v18);
  v10 = [(UILabel *)self->_textLabel font];
  [v10 leading];
  v12 = ceil(v11);

  v13 = 0.0;
  v14 = v8;
  v15 = v9;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)layoutSubviews
{
  [(IMGridViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(UILabel *)self->_textLabel text];
  v12 = [v11 length];

  if (v12)
  {
    [(IMGridViewCell *)self titleRectForBounds:v4, v6, v8, v10];
    [(UILabel *)self->_textLabel setFrame:?];
  }

  [(IMGridViewCell *)self imageRectForBounds:v4, v6, v8, v10];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(UIImageView *)self->_imageView setFrame:?];
  [(IMGridViewCell *)self contentRectForBounds:v4, v6, v8, v10];
  v22 = v21;
  v24 = v23;
  if (self->_highlightView && self->_showSelectionView)
  {
    [(IMGridViewCell *)self selectionFrame];
    [(UIView *)self->_highlightView setFrame:?];
    [(IMGridViewCell *)self bringSubviewToFront:self->_highlightView];
  }

  closeBox = self->_closeBox;
  if (closeBox && (*(self + 132) & 4) != 0 && (*(self + 132) & 2) != 0)
  {
    [(UIButton *)closeBox setCenter:v22 + 1.0, v24 + 1.5];
    [(IMGridViewCell *)self bringSubviewToFront:self->_closeBox];
  }

  if (self->_badgeView)
  {
    v26 = [(IMGridViewCell *)self badgeView];
    [v26 bounds];
    v28 = v27;
    v30 = v29;

    v71.origin.x = v14;
    v71.origin.y = v16;
    v71.size.width = v18;
    v71.size.height = v20;
    [(UIImageView *)self->_badgeView setFrame:CGRectGetMaxX(v71) - round(v28) + 10.0, v16 - round(v30 * 0.5) + 4.0, v28, v30];
    v31 = +[UIScreen mainScreen];
    [v31 scale];
    v33 = v32;

    [(UIImageView *)self->_badgeView bounds];
    if (v33 <= 1.0)
    {
      *&v34 = CGRectOffset(*&v34, 0.0, -1.0);
    }

    [(UILabel *)self->_badgeLabel setFrame:v34, v35, v36, v37];
    v38 = [(IMGridViewCell *)self contentView];
    v39 = [(IMGridViewCell *)self badgeView];
    [v38 bringSubviewToFront:v39];
  }

  if ([(IMGridViewCell *)self isSelected])
  {
    if ((*(self + 132) & 0x20) == 0)
    {
      imageView = self->_imageView;
      if (imageView)
      {
        [(UIImageView *)imageView frame];
        v42 = v41;
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v49 = [(IMGridViewCell *)self selectedWhitewashView];
        [v49 setFrame:{v42, v44, v46, v48}];

        v50 = [(IMGridViewCell *)self contentView];
        v51 = [(IMGridViewCell *)self selectedWhitewashView];
        [v50 addSubview:v51];
      }
    }

    v52 = [(IMGridViewCell *)self selectedBadgeView];
    [v52 bounds];
    v54 = v53;
    v56 = v55;

    v72.origin.x = v14;
    v72.origin.y = v16;
    v72.size.width = v18;
    v72.size.height = v20;
    v57 = CGRectGetMaxX(v72) - v54 + -3.0;
    v73.origin.x = v14;
    v73.origin.y = v16;
    v73.size.width = v18;
    v73.size.height = v20;
    v58 = CGRectGetMaxY(v73) - v56 + -2.0;
    v59 = [(IMGridViewCell *)self selectedBadgeView];
    [v59 setFrame:{v57, v58, v54, v56}];

    v60 = [(IMGridViewCell *)self contentView];
    v61 = [(IMGridViewCell *)self selectedBadgeView];
    [v60 bringSubviewToFront:v61];
  }

  if ([(IMGridViewCell *)self isWorking])
  {
    v62 = [(IMGridViewCell *)self workingView];
    [v62 bounds];
    v64 = v63;
    v66 = v65;

    v74.origin.x = v14;
    v74.origin.y = v16;
    v74.size.width = v18;
    v74.size.height = v20;
    v67 = CGRectGetMaxY(v74) - round(v20 * 0.5) - round(v66 * 0.5);
    v75.origin.x = v14;
    v75.origin.y = v16;
    v75.size.width = v18;
    v75.size.height = v20;
    [(UIActivityIndicatorView *)self->_workingView setFrame:CGRectGetMaxX(v75) - round(v18 * 0.5) - round(v64 * 0.5), v67, v64, v66];
    [(UIActivityIndicatorView *)self->_workingView startAnimating];
    workingView = self->_workingView;

    [(IMGridViewCell *)self bringSubviewToFront:workingView];
  }

  else
  {
    v69 = self->_workingView;

    [(UIActivityIndicatorView *)v69 stopAnimating];
  }
}

- (CGRect)selectionFrame
{
  [(IMGridViewCell *)self bounds];

  [(IMGridViewCell *)self contentRectForBounds:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)_gridView
{
  v2 = [(IMGridViewCell *)self superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)setGrabbed:(BOOL)a3
{
  v3 = *(self + 132);
  if ((v3 & 1) != a3)
  {
    *(self + 132) = v3 & 0xFE | a3;
    highlightView = self->_highlightView;
    v5 = 1.0;
    if (a3)
    {
      v5 = 0.0;
    }

    [(UIView *)highlightView setAlpha:v5];
  }
}

- (void)setEditing:(BOOL)a3
{
  v3 = *(self + 132);
  if (((((v3 & 2) == 0) ^ a3) & 1) == 0)
  {
    v4 = a3;
    if ((*(self + 132) & 1) == 0 || !a3)
    {
      if (a3)
      {
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }

      *(self + 132) = v3 & 0xFD | v6;
      v7 = *(self + 132);
      v8 = (v7 >> 2) & 1;
      if ((v7 & 4) != 0 && !v4)
      {
        v8 = *(self + 132) & 1;
      }

      [(IMGridViewCell *)self setShowCloseBox:v8];
      if (v4)
      {
        [(IMGridViewCell *)self setHighlighted:0];
      }

      [(IMGridViewCell *)self setJiggling:[(IMGridViewCell *)self jiggleWhenEditing]& v4];

      [(IMGridViewCell *)self setNeedsLayout];
    }
  }
}

- (void)setCanDelete:(BOOL)a3
{
  v3 = *(self + 132);
  if (((((v3 & 4) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    *(self + 132) = v3 & 0xFB | v4;
    if ((*(self + 132) & 2) != 0)
    {
      [(IMGridViewCell *)self setShowCloseBox:?];
    }
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  [(IMGridViewCell *)self transform];
  if ((*(self + 132) & 1) == 0)
  {
    v8 = *&CGAffineTransformIdentity.c;
    v13 = *&CGAffineTransformIdentity.a;
    v14 = v8;
    v15 = *&CGAffineTransformIdentity.tx;
    [(IMGridViewCell *)self setTransform:&v13];
  }

  v12.receiver = self;
  v12.super_class = IMGridViewCell;
  [(IMGridViewCell *)&v12 setFrame:x, y, width, height];
  if ((*(self + 132) & 1) == 0)
  {
    v9 = [(IMGridViewCell *)self layer];
    [v9 position];
    self->_unjitterPoint.x = v10;
    self->_unjitterPoint.y = v11;

    v13 = v16;
    v14 = v17;
    v15 = v18;
    [(IMGridViewCell *)self setTransform:&v13];
  }
}

- (void)setHidesWhitewash:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 132) = *(self + 132) & 0xDF | v3;
}

- (void)setSelected:(BOOL)a3
{
  v7 = *(self + 132);
  if (((((v7 & 0x10) == 0) ^ a3) & 1) == 0)
  {
    v11 = v4;
    v12 = v3;
    if (a3)
    {
      v10 = 16;
    }

    else
    {
      v10 = 0;
    }

    *(self + 132) = v7 & 0xEF | v10;
    if ([(IMGridViewCell *)self highlighted:v11]&& !a3)
    {
      [(IMGridViewCell *)self setHighlighted:0];
    }

    if (![(IMGridViewCell *)self isSelected])
    {
      [(IMGridViewCell *)self _removeSelectedBadgeView];
    }

    [(IMGridViewCell *)self setNeedsLayout];
  }
}

- (UIView)selectedWhitewashView
{
  selectedWhitewashView = self->_selectedWhitewashView;
  if (!selectedWhitewashView)
  {
    v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_selectedWhitewashView;
    self->_selectedWhitewashView = v4;

    v6 = [UIColor colorWithWhite:1.0 alpha:0.5];
    [(UIView *)self->_selectedWhitewashView setBackgroundColor:v6];

    [(UIView *)self->_selectedWhitewashView setOpaque:0];
    selectedWhitewashView = self->_selectedWhitewashView;
  }

  return selectedWhitewashView;
}

- (UIImageView)selectedBadgeView
{
  selectedBadgeView = self->_selectedBadgeView;
  if (!selectedBadgeView)
  {
    v4 = IMCommonCoreBundle();
    v5 = [(IMGridViewCell *)self traitCollection];
    v6 = [UIImage imageNamed:@"blue_circle_checkmark" inBundle:v4 compatibleWithTraitCollection:v5];

    v7 = [[UIImageView alloc] initWithImage:v6];
    v8 = self->_selectedBadgeView;
    self->_selectedBadgeView = v7;

    [(UIImageView *)self->_selectedBadgeView setFrame:0.0, 0.0, 29.0, 29.0];
    v9 = [(IMGridViewCell *)self contentView];
    [v9 addSubview:self->_selectedBadgeView];

    selectedBadgeView = self->_selectedBadgeView;
  }

  return selectedBadgeView;
}

- (void)setJiggleWhenEditing:(BOOL)a3
{
  v4 = *(self + 132);
  if (((((v4 & 8) == 0) ^ a3) & 1) == 0)
  {
    v6 = 0;
    if (a3)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    *(self + 132) = v4 & 0xF7 | v7;
    if (a3)
    {
      v6 = [(IMGridViewCell *)self isEditing];
    }

    [(IMGridViewCell *)self setJiggling:v6];
  }
}

- (void)setJiggling:(BOOL)a3
{
  v3 = a3;
  v5 = [(IMGridViewCell *)self layer];
  v14 = [v5 animationForKey:@"JitterPosition"];

  v6 = [(IMGridViewCell *)self layer];
  v7 = [v6 animationForKey:@"JitterTransform"];

  if (v3)
  {
    if (v14)
    {
      if (v7)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = [(IMGridViewCell *)self layer];
      v12 = [objc_opt_class() _jitterPositionAnimation];
      [v11 addAnimation:v12 forKey:@"JitterPosition"];

      if (v7)
      {
        goto LABEL_10;
      }
    }

    v10 = [(IMGridViewCell *)self layer];
    v13 = [objc_opt_class() _jitterTransformAnimation];
    [v10 addAnimation:v13 forKey:@"JitterTransform"];
  }

  else
  {
    if (!(v14 | v7))
    {
      goto LABEL_10;
    }

    v8 = [(IMGridViewCell *)self layer];
    [v8 removeAnimationForKey:@"JitterPosition"];

    v9 = [(IMGridViewCell *)self layer];
    [v9 removeAnimationForKey:@"JitterTransform"];

    v10 = [(IMGridViewCell *)self layer];
    [v10 setPosition:{self->_unjitterPoint.x, self->_unjitterPoint.y}];
  }

LABEL_10:
}

+ (id)_jitterPositionAnimation
{
  v2 = +[CAKeyframeAnimation animation];
  [v2 setKeyPath:@"position"];
  [v2 setDuration:0.25];
  [v2 setAdditive:1];
  LODWORD(v3) = 2139095039;
  [v2 setRepeatCount:v3];
  v4 = objc_alloc_init(NSMutableArray);
  v5 = random();
  v6 = ((v5 % 1000) / 1000.0 + (v5 % 1000) / 1000.0) * 0.25 + -0.25;
  v7 = floorf(v6);
  v8 = random();
  v9 = ((v8 % 1000) / 1000.0 + (v8 % 1000) / 1000.0) * 0.25 + -0.25;
  v10 = [NSValue valueWithCGPoint:v7, floorf(v9)];
  [v4 addObject:v10];
  v11 = random();
  v12 = ((v11 % 1000) / 1000.0 + (v11 % 1000) / 1000.0) * 0.25 + -0.25;
  v13 = floorf(v12);
  v14 = random();
  v15 = ((v14 % 1000) / 1000.0 + (v14 % 1000) / 1000.0) * 0.25 + -0.25;
  v16 = [NSValue valueWithCGPoint:v13, floorf(v15)];
  [v4 addObject:v16];

  v17 = random();
  v18 = ((v17 % 1000) / 1000.0 + (v17 % 1000) / 1000.0) * 0.25 + -0.25;
  v19 = floorf(v18);
  v20 = random();
  v21 = ((v20 % 1000) / 1000.0 + (v20 % 1000) / 1000.0) * 0.25 + -0.25;
  v22 = [NSValue valueWithCGPoint:v19, floorf(v21)];
  [v4 addObject:v22];

  v23 = random();
  v24 = ((v23 % 1000) / 1000.0 + (v23 % 1000) / 1000.0) * 0.25 + -0.25;
  v25 = floorf(v24);
  v26 = random();
  v27 = ((v26 % 1000) / 1000.0 + (v26 % 1000) / 1000.0) * 0.25 + -0.25;
  v28 = [NSValue valueWithCGPoint:v25, floorf(v27)];
  [v4 addObject:v28];

  [v4 addObject:v10];
  v29 = [NSNumber alloc];
  LODWORD(v30) = 1028443341;
  v31 = [v29 initWithFloat:v30];
  v32 = [[NSMutableArray alloc] initWithObjects:{v31, v31, v31, v31, v31, 0}];
  [v2 setBeginTime:ceilf((random() % 1000 + 1) * 0.2) * 0.05];
  [v2 setValues:v4];
  [v2 setKeyTimes:v32];

  return v2;
}

+ (id)_jitterTransformAnimation
{
  v2 = +[CAKeyframeAnimation animation];
  [v2 setKeyPath:@"transform"];
  [v2 setDuration:0.25];
  v3 = [CAValueFunction functionWithName:kCAValueFunctionRotateZ];
  [v2 setValueFunction:v3];

  [v2 setAdditive:1];
  LODWORD(v4) = 2139095039;
  [v2 setRepeatCount:v4];
  v5 = objc_alloc_init(NSMutableArray);
  LODWORD(v6) = -1129606490;
  v7 = [NSNumber numberWithFloat:v6];
  [v5 addObject:v7];

  LODWORD(v8) = 1017877158;
  v9 = [NSNumber numberWithFloat:v8];
  [v5 addObject:v9];

  LODWORD(v10) = -1129606490;
  v11 = [NSNumber numberWithFloat:v10];
  [v5 addObject:v11];

  v12 = [NSNumber alloc];
  LODWORD(v13) = 1028443341;
  v14 = [v12 initWithFloat:v13];
  v15 = [[NSMutableArray alloc] initWithObjects:{v14, v14, v14, 0}];
  [v2 setBeginTime:ceilf((random() % 1000 + 1) * 0.2) * 0.05];
  [v2 setValues:v5];
  [v2 setKeyTimes:v15];

  return v2;
}

- (void)deleteConfirmationControlWasClicked:(id)a3
{
  v4 = [(IMGridViewCell *)self _gridView];
  [v4 animateDeletionOfCell:self];
}

- (id)closeBox
{
  closeBox = self->_closeBox;
  if (!closeBox)
  {
    v4 = [UIImage imageNamed:@"closebox"];
    v5 = [UIButton buttonWithType:0];
    v6 = self->_closeBox;
    self->_closeBox = v5;

    [(UIButton *)self->_closeBox setImage:v4 forState:0];
    [(UIButton *)self->_closeBox sizeToFit];
    [(UIButton *)self->_closeBox setAlpha:0.0];
    [(UIButton *)self->_closeBox addTarget:self action:"deleteConfirmationControlWasClicked:" forControlEvents:64];
    v7 = [(IMGridViewCell *)self contentView];
    [v7 addSubview:self->_closeBox];

    closeBox = self->_closeBox;
  }

  return closeBox;
}

- (void)_removeSelectedBadgeView
{
  [(UIImageView *)self->_selectedBadgeView removeFromSuperview];
  selectedBadgeView = self->_selectedBadgeView;
  self->_selectedBadgeView = 0;

  [(UIView *)self->_selectedWhitewashView removeFromSuperview];
  selectedWhitewashView = self->_selectedWhitewashView;
  self->_selectedWhitewashView = 0;
}

- (void)_removeHighlightView
{
  [(UIView *)self->_highlightView removeFromSuperview];
  highlightView = self->_highlightView;
  self->_highlightView = 0;
}

- (void)_removeWorkingView
{
  workingView = self->_workingView;
  if (workingView)
  {
    [(UIActivityIndicatorView *)workingView removeFromSuperview];
    v4 = self->_workingView;
    self->_workingView = 0;
  }
}

- (void)_removeCloseBox
{
  [(UIButton *)self->_closeBox removeFromSuperview];
  closeBox = self->_closeBox;
  self->_closeBox = 0;
}

- (void)setShowCloseBox:(BOOL)a3
{
  if (a3)
  {
    v4 = [(IMGridViewCell *)self closeBox];
  }

  else
  {
    v4 = self->_closeBox;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_BF2C8;
  v6[3] = &unk_2C9330;
  v7 = v4;
  v8 = a3;
  v5 = v4;
  [UIView animateWithDuration:v6 animations:0 completion:0.2];
}

- (UIEdgeInsets)snapshotEdgeInsets
{
  [(IMGridViewCell *)self bounds];
  x = v3;
  y = v5;
  width = v7;
  v10 = v9;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = [(IMGridViewCell *)self subviews];
  v12 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
  v32 = y;
  v33 = x;
  rect1 = width;
  height = v10;
  if (v12)
  {
    v14 = v12;
    v15 = *v36;
    height = v10;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v35 + 1) + 8 * i) frame];
        v52.origin.x = v17;
        v52.origin.y = v18;
        v52.size.width = v19;
        v52.size.height = v20;
        v40.origin.x = x;
        v40.origin.y = y;
        v40.size.width = width;
        v40.size.height = height;
        v41 = CGRectUnion(v40, v52);
        x = v41.origin.x;
        y = v41.origin.y;
        width = v41.size.width;
        height = v41.size.height;
      }

      v14 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v14);
  }

  v42.origin.y = v32;
  v42.origin.x = v33;
  v42.size.width = rect1;
  v42.size.height = v10;
  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = width;
  v53.size.height = height;
  if (CGRectEqualToRect(v42, v53))
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  else
  {
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    MinY = CGRectGetMinY(v43);
    v44.origin.x = v33;
    v44.origin.y = v32;
    v44.size.width = rect1;
    v44.size.height = v10;
    v31 = MinY - CGRectGetMinY(v44);
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    MinX = CGRectGetMinX(v45);
    v46.origin.x = v33;
    v46.origin.y = v32;
    v46.size.width = rect1;
    v46.size.height = v10;
    v29 = MinX - CGRectGetMinX(v46);
    v47.origin.x = v33;
    v47.origin.y = v32;
    v47.size.width = rect1;
    v47.size.height = v10;
    MaxY = CGRectGetMaxY(v47);
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    bottom = MaxY - CGRectGetMaxY(v48);
    v49.origin.x = v33;
    v49.origin.y = v32;
    v49.size.width = rect1;
    v49.size.height = v10;
    MaxX = CGRectGetMaxX(v49);
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    right = MaxX - CGRectGetMaxX(v50);
    left = v29;
    top = v31;
  }

  v27 = bottom;
  result.right = right;
  result.bottom = v27;
  result.left = left;
  result.top = top;
  return result;
}

- (IMGridView)gridView
{
  WeakRetained = objc_loadWeakRetained(&self->_gridView);

  return WeakRetained;
}

@end