@interface SRGuideViewHeader
+ (CGSize)sizeThatFits:(CGSize)fits text:(id)text;
+ (CGSize)sizeThatFits:(CGSize)fits text:(id)text edgeInsets:(UIEdgeInsets)insets;
+ (UIEdgeInsets)_edgeInsets;
+ (double)defaultHeight;
+ (double)firstLineBaselineOffsetFromTop;
+ (id)reuseIdentifier;
- (SRGuideViewHeader)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)edgeInsets;
- (void)layoutSubviews;
- (void)setTitle:(id)title;
@end

@implementation SRGuideViewHeader

- (SRGuideViewHeader)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = SRGuideViewHeader;
  v3 = [(SRGuideViewHeader *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    contentView = v3->_contentView;
    v3->_contentView = v4;

    v6 = +[SiriSharedUIContentLabel label];
    headerLabel = v3->_headerLabel;
    v3->_headerLabel = v6;

    v8 = v3->_headerLabel;
    v9 = +[UIColor siriui_lightTextColor];
    [(UILabel *)v8 setTextColor:v9];

    v10 = v3->_headerLabel;
    _font = [objc_opt_class() _font];
    [(UILabel *)v10 setFont:_font];

    [(UILabel *)v3->_headerLabel setNumberOfLines:0];
    [objc_opt_class() _edgeInsets];
    [(SRGuideViewHeader *)v3 setEdgeInsets:?];
    [(UIView *)v3->_contentView addSubview:v3->_headerLabel];
    [(SRGuideViewHeader *)v3 addSubview:v3->_contentView];
    if (SiriLanguageIsRTL())
    {
      v12 = v3->_contentView;
      CGAffineTransformMakeScale(&v15, -1.0, 1.0);
      [(UIView *)v12 setTransform:&v15];
      v13 = v3->_headerLabel;
      CGAffineTransformMakeScale(&v15, -1.0, 1.0);
      [(UILabel *)v13 setTransform:&v15];
    }
  }

  return v3;
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = SRGuideViewHeader;
  [(SRGuideViewHeader *)&v24 layoutSubviews];
  [(SRGuideViewHeader *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SRGuideViewHeader *)self edgeInsets];
  v23 = v11;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  [(UILabel *)self->_headerLabel sizeThatFits:CGRectGetWidth(v25) - v13 - v17, 1.79769313e308];
  v19 = v18;
  v21 = v20;
  if (v15 <= 0.0)
  {
    v22 = v23;
  }

  else
  {
    v26.origin.x = v4;
    v26.origin.y = v6;
    v26.size.width = v8;
    v26.size.height = v10;
    v22 = CGRectGetMaxY(v26) - v21 - v15;
  }

  [(UIView *)self->_contentView setFrame:v4, v6, v8, v10];
  [(UILabel *)self->_headerLabel setFrame:v13, v22, v19, v21];
}

+ (double)defaultHeight
{
  if (SiriUIIsLargePhoneLayout() && !SiriUIIsCompactWidth())
  {
    return 116.0;
  }

  if (SiriUIIsCompactWidth())
  {
    return 157.0;
  }

  v3 = +[UIScreen mainScreen];
  [v3 scale];
  v5 = v4;
  v6 = +[UIScreen mainScreen];
  [v6 bounds];
  v7 = CGRectGetHeight(v10) * 0.11328125 + 57.5;
  v8 = ceil(v7);
  if (v5 < 2.0)
  {
    v2 = v8;
  }

  else
  {
    v2 = v7;
  }

  return v2;
}

+ (CGSize)sizeThatFits:(CGSize)fits text:(id)text edgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  width = fits.width;
  v26 = NSFontAttributeName;
  textCopy = text;
  _font = [self _font];
  v27 = _font;
  v13 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];

  [textCopy boundingRectWithSize:3 options:v13 attributes:0 context:{width - left - right, 1.79769313e308}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v29.origin.x = v15;
  v29.origin.y = v17;
  v29.size.width = v19;
  v29.size.height = v21;
  v22 = CGRectGetWidth(v29);
  v30.origin.x = v15;
  v30.origin.y = v17;
  v30.size.width = v19;
  v30.size.height = v21;
  MaxY = CGRectGetMaxY(v30);

  v24 = bottom + top + MaxY;
  v25 = v22;
  result.height = v24;
  result.width = v25;
  return result;
}

+ (CGSize)sizeThatFits:(CGSize)fits text:(id)text
{
  height = fits.height;
  width = fits.width;
  textCopy = text;
  [self _edgeInsets];
  [self sizeThatFits:textCopy text:width edgeInsets:{height, v8, v9, v10, v11}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

+ (double)firstLineBaselineOffsetFromTop
{
  _font = [objc_opt_class() _font];
  [_font ascender];
  v4 = v3;

  return v4;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    objc_storeStrong(&self->_title, title);
    [(UILabel *)self->_headerLabel setText:titleCopy];
  }
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 stringByAppendingString:@"ReuseIdentifier"];

  return v4;
}

+ (UIEdgeInsets)_edgeInsets
{
  if (SiriUIIsCompactWidth())
  {
    v2 = 21.5;
  }

  else if (SiriUIIsLargePhoneLayout())
  {
    v2 = 21.5;
  }

  else
  {
    v2 = 45.5;
  }

  v3 = 36.0;
  v4 = 0.0;
  v5 = 24.0;
  result.right = v3;
  result.bottom = v2;
  result.left = v5;
  result.top = v4;
  return result;
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end