@interface IMExpandingLabel
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (IMExpandingLabel)init;
- (IMExpandingLabel)initWithCoder:(id)a3;
- (IMExpandingLabel)initWithFrame:(CGRect)a3;
- (NSAttributedString)attributedText;
- (void)_IMExpandingLabelComonInit;
- (void)_expand;
- (void)_setTextExclusionPath;
- (void)_updateTextAttributes;
- (void)layoutSubviews;
- (void)setAttributedText:(id)a3;
- (void)setExpanded:(BOOL)a3;
- (void)setFont:(id)a3;
- (void)setLineBreakMode:(int64_t)a3;
- (void)setNumberOfLinesWhenCollapsed:(unint64_t)a3;
- (void)setShowMoreAttributedText:(id)a3;
- (void)setShowMoreFont:(id)a3;
- (void)setShowMoreTextColor:(id)a3;
- (void)setText:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)setTextColor:(id)a3;
@end

@implementation IMExpandingLabel

- (void)_IMExpandingLabelComonInit
{
  self->_numberOfLinesWhenCollapsed = 3;
  self->_textAlignment = 4;
  v3 = [UIFont systemFontOfSize:12.0];
  font = self->_font;
  self->_font = v3;

  v5 = +[UIColor blackColor];
  textColor = self->_textColor;
  self->_textColor = v5;

  v7 = +[UIColor grayColor];
  showMoreTextColor = self->_showMoreTextColor;
  self->_showMoreTextColor = v7;

  v9 = objc_alloc_init(NSTextStorage);
  textStorage = self->_textStorage;
  self->_textStorage = v9;

  v11 = objc_alloc_init(NSLayoutManager);
  textLayoutManager = self->_textLayoutManager;
  self->_textLayoutManager = v11;

  [(NSTextStorage *)self->_textStorage addLayoutManager:self->_textLayoutManager];
  v13 = [[NSTextContainer alloc] initWithSize:{CGSizeZero.width, CGSizeZero.height}];
  textContainer = self->_textContainer;
  self->_textContainer = v13;

  [(NSTextContainer *)self->_textContainer setLineBreakMode:4];
  [(NSTextContainer *)self->_textContainer setLineFragmentPadding:0.0];
  [(NSTextContainer *)self->_textContainer setMaximumNumberOfLines:self->_numberOfLinesWhenCollapsed];
  [(NSTextContainer *)self->_textContainer setHeightTracksTextView:1];
  [(NSTextContainer *)self->_textContainer setWidthTracksTextView:1];
  [(NSLayoutManager *)self->_textLayoutManager addTextContainer:self->_textContainer];
  v15 = [UITextView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v19 = [v15 initWithFrame:self->_textContainer textContainer:{CGRectZero.origin.x, y, width, height}];
  textView = self->_textView;
  self->_textView = v19;

  [(UITextView *)self->_textView setScrollEnabled:0];
  [(UITextView *)self->_textView setEditable:0];
  [(UITextView *)self->_textView setTextContainerInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  v21 = +[UIColor clearColor];
  [(UITextView *)self->_textView setBackgroundColor:v21];

  [(UITextView *)self->_textView setShowsVerticalScrollIndicator:0];
  [(UITextView *)self->_textView setShowsHorizontalScrollIndicator:0];
  [(IMExpandingLabel *)self addSubview:self->_textView];
  v22 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  showMoreLabel = self->_showMoreLabel;
  self->_showMoreLabel = v22;

  v24 = [(IMExpandingLabel *)self showMoreTextColor];
  [(UILabel *)self->_showMoreLabel setTextColor:v24];

  v25 = +[UIColor clearColor];
  [(UILabel *)self->_showMoreLabel setBackgroundColor:v25];

  [(IMExpandingLabel *)self setShowMoreAttributedText:0];
  [(IMExpandingLabel *)self setShowMoreFont:0];
  [(IMExpandingLabel *)self addSubview:self->_showMoreLabel];
  [(UILabel *)self->_showMoreLabel setUserInteractionEnabled:1];
  v26 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_expand"];
  showMoreTapRecognizer = self->_showMoreTapRecognizer;
  self->_showMoreTapRecognizer = v26;

  [(UITapGestureRecognizer *)self->_showMoreTapRecognizer setDelegate:self];
  v28 = self->_showMoreTapRecognizer;

  [(IMExpandingLabel *)self addGestureRecognizer:v28];
}

- (IMExpandingLabel)init
{
  v5.receiver = self;
  v5.super_class = IMExpandingLabel;
  v2 = [(IMExpandingLabel *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IMExpandingLabel *)v2 _IMExpandingLabelComonInit];
  }

  return v3;
}

- (IMExpandingLabel)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = IMExpandingLabel;
  v3 = [(IMExpandingLabel *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(IMExpandingLabel *)v3 _IMExpandingLabelComonInit];
  }

  return v4;
}

- (IMExpandingLabel)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = IMExpandingLabel;
  v3 = [(IMExpandingLabel *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(IMExpandingLabel *)v3 _IMExpandingLabelComonInit];
  }

  return v4;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  [a3 locationInView:self->_showMoreLabel];
  v5 = v4;
  v7 = v6;
  [(UILabel *)self->_showMoreLabel bounds];
  v13 = CGRectInset(v12, -20.0, -20.0);
  v8 = v5;
  v9 = v7;

  return CGRectContainsPoint(v13, *&v8);
}

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = [(NSTextStorage *)self->_textStorage string];
  if ([v5 isEqualToString:v4])
  {
    goto LABEL_4;
  }

  v6 = [v4 length];

  if (v6)
  {
    v7 = +[NSParagraphStyle defaultParagraphStyle];
    v5 = [v7 mutableCopy];

    [v5 setAlignment:self->_textAlignment];
    v12[0] = NSFontAttributeName;
    v8 = [(IMExpandingLabel *)self font];
    v13[0] = v8;
    v12[1] = NSForegroundColorAttributeName;
    v9 = [(IMExpandingLabel *)self textColor];
    v12[2] = NSParagraphStyleAttributeName;
    v13[1] = v9;
    v13[2] = v5;
    v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

    v11 = [[NSAttributedString alloc] initWithString:v4 attributes:v10];
    [(NSTextStorage *)self->_textStorage setAttributedString:v11];
    [(IMExpandingLabel *)self setNeedsLayout];

LABEL_4:
  }
}

- (void)setAttributedText:(id)a3
{
  v4 = a3;
  self->_useAttributedText = [v4 length] != 0;
  if ([v4 length])
  {
    [(NSTextStorage *)self->_textStorage setAttributedString:v4];
  }

  else
  {
    [(NSTextStorage *)self->_textStorage deleteCharactersInRange:0, [(NSTextStorage *)self->_textStorage length]];
  }

  [(IMExpandingLabel *)self setNeedsLayout];
}

- (NSAttributedString)attributedText
{
  if (self->_useAttributedText)
  {
    v3 = [(NSTextStorage *)self->_textStorage attributedSubstringFromRange:0, [(NSTextStorage *)self->_textStorage length]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFont:(id)a3
{
  v6 = a3;
  v5 = [(IMExpandingLabel *)self font];

  if (v5 != v6)
  {
    objc_storeStrong(&self->_font, a3);
    [(IMExpandingLabel *)self _updateTextAttributes];
    [(UITextView *)self->_textView setNeedsDisplay];
  }
}

- (void)setTextColor:(id)a3
{
  v5 = a3;
  if (self->_textColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_textColor, a3);
    [(IMExpandingLabel *)self _updateTextAttributes];
    [(UITextView *)self->_textView setNeedsDisplay];
    v5 = v6;
  }
}

- (void)setTextAlignment:(int64_t)a3
{
  if (self->_textAlignment != a3)
  {
    self->_textAlignment = a3;
    [(IMExpandingLabel *)self _updateTextAttributes];
    textView = self->_textView;

    [(UITextView *)textView setNeedsDisplay];
  }
}

- (void)setLineBreakMode:(int64_t)a3
{
  if ([(NSTextContainer *)self->_textContainer lineBreakMode]!= a3)
  {
    [(NSTextContainer *)self->_textContainer setLineBreakMode:a3];
    textView = self->_textView;

    [(UITextView *)textView setNeedsDisplay];
  }
}

- (void)setNumberOfLinesWhenCollapsed:(unint64_t)a3
{
  if (self->_numberOfLinesWhenCollapsed != a3)
  {
    v4 = 3;
    if (a3)
    {
      v4 = a3;
    }

    self->_numberOfLinesWhenCollapsed = v4;
    if ([(IMExpandingLabel *)self isExpanded])
    {
      numberOfLinesWhenCollapsed = 0;
    }

    else
    {
      numberOfLinesWhenCollapsed = self->_numberOfLinesWhenCollapsed;
    }

    [(NSTextContainer *)self->_textContainer setMaximumNumberOfLines:numberOfLinesWhenCollapsed];
    textView = self->_textView;

    [(UITextView *)textView setNeedsDisplay];
  }
}

- (void)_updateTextAttributes
{
  if (!self->_useAttributedText)
  {
    v3 = +[NSParagraphStyle defaultParagraphStyle];
    v4 = [v3 mutableCopy];

    [v4 setAlignment:self->_textAlignment];
    textStorage = self->_textStorage;
    v9[0] = NSFontAttributeName;
    v6 = [(IMExpandingLabel *)self font];
    v10[0] = v6;
    v9[1] = NSForegroundColorAttributeName;
    v7 = [(IMExpandingLabel *)self textColor];
    v9[2] = NSParagraphStyleAttributeName;
    v10[1] = v7;
    v10[2] = v4;
    v8 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
    [(NSTextStorage *)textStorage setAttributes:v8 range:0, [(NSTextStorage *)self->_textStorage length]];
  }
}

- (void)setShowMoreAttributedText:(id)a3
{
  v7 = a3;
  v4 = [(UILabel *)self->_showMoreLabel attributedText];
  if (v4 == v7)
  {
    v5 = [(UILabel *)self->_showMoreLabel attributedText];
    v6 = [v7 isEqualToAttributedString:v5];

    if (v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  [(UILabel *)self->_showMoreLabel setAttributedText:v7];
  [(IMExpandingLabel *)self setNeedsLayout];
LABEL_5:
}

- (void)setShowMoreFont:(id)a3
{
  v6 = a3;
  v4 = [(UILabel *)self->_showMoreLabel font];

  v5 = v6;
  if (v4 != v6)
  {
    [(UILabel *)self->_showMoreLabel setFont:v6];
    [(IMExpandingLabel *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setShowMoreTextColor:(id)a3
{
  v5 = a3;
  if (self->_showMoreTextColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_showMoreTextColor, a3);
    v6 = [(IMExpandingLabel *)self showMoreTextColor];
    [(UILabel *)self->_showMoreLabel setTextColor:v6];

    v5 = v7;
  }
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = IMExpandingLabel;
  [(IMExpandingLabel *)&v23 layoutSubviews];
  [(IMExpandingLabel *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(IMExpandingLabel *)self textView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(NSTextContainer *)self->_textContainer maximumNumberOfLines];
  if (v12)
  {
    v13 = v12;
    [(NSTextContainer *)self->_textContainer setMaximumNumberOfLines:0];
    v14 = [(IMExpandingLabel *)self textView];
    [v14 sizeThatFits:{v8, 3.40282347e38}];
    v16 = v15;

    v17 = v16 <= v10;
    [(NSTextContainer *)self->_textContainer setMaximumNumberOfLines:v13];
  }

  else
  {
    v17 = 1;
  }

  [(UILabel *)self->_showMoreLabel setHidden:self->_expanded || v17];
  if (([(UILabel *)self->_showMoreLabel isHidden]& 1) == 0)
  {
    [(UILabel *)self->_showMoreLabel sizeThatFits:1.79769313e308, 1.79769313e308];
    v19 = v18;
    v21 = v20;
    v24.origin.x = v4;
    v24.origin.y = v6;
    v24.size.width = v8;
    v24.size.height = v10;
    v22 = CGRectGetMaxX(v24) - v19;
    v25.origin.x = v4;
    v25.origin.y = v6;
    v25.size.width = v8;
    v25.size.height = v10;
    [(UILabel *)self->_showMoreLabel setFrame:v22, CGRectGetMaxY(v25) - v21, v19, v21];
  }

  [(IMExpandingLabel *)self _setTextExclusionPath];
  [(UITextView *)self->_textView setNeedsDisplay];
}

- (void)_setTextExclusionPath
{
  if ([(IMExpandingLabel *)self isExpanded]|| ([(UILabel *)self->_showMoreLabel isHidden]& 1) != 0)
  {
    textContainer = self->_textContainer;

    [(NSTextContainer *)textContainer setExclusionPaths:&__NSArray0__struct];
  }

  else
  {
    [(UILabel *)self->_showMoreLabel frame];
    v9 = CGRectInset(v8, -5.0, 0.0);
    v10 = CGRectIntegral(v9);
    v4 = [UIBezierPath bezierPathWithRect:v10.origin.x, v10.origin.y, v10.size.width, v10.size.height];
    v6 = v4;
    v5 = [NSArray arrayWithObjects:&v6 count:1];
    [(NSTextContainer *)self->_textContainer setExclusionPaths:v5];
  }
}

- (void)_expand
{
  labelResizedBlock = self->_labelResizedBlock;
  if (labelResizedBlock)
  {
    labelResizedBlock[2]();
  }
}

- (void)setExpanded:(BOOL)a3
{
  self->_expanded = a3;
  if (a3)
  {
    numberOfLinesWhenCollapsed = 0;
  }

  else
  {
    numberOfLinesWhenCollapsed = self->_numberOfLinesWhenCollapsed;
  }

  [(NSTextContainer *)self->_textContainer setMaximumNumberOfLines:numberOfLinesWhenCollapsed];
  [(UILabel *)self->_showMoreLabel setHidden:self->_expanded];

  [(IMExpandingLabel *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(IMExpandingLabel *)self textView];
  [v5 sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end