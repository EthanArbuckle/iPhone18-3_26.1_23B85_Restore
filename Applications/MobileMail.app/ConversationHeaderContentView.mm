@interface ConversationHeaderContentView
- (ConversationHeaderContentView)initWithFrame:(CGRect)frame;
- (int64_t)_automaticTextAlignmentForText:(id)text;
- (unint64_t)numberOfLines;
- (void)_createPrimaryViews;
- (void)_updateAnchorPoint;
- (void)_updateTextAlignmentForText:(id)text;
- (void)layoutMarginsDidChange;
- (void)reflow;
- (void)setBounds:(CGRect)bounds;
- (void)setContentWidth:(double)width;
- (void)setFont:(id)font;
- (void)setNumberOfLines:(unint64_t)lines;
- (void)setText:(id)text;
@end

@implementation ConversationHeaderContentView

- (ConversationHeaderContentView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ConversationHeaderContentView;
  v3 = [(ConversationHeaderContentView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ConversationHeaderContentView *)v3 setInsetsLayoutMarginsFromSafeArea:0];
    [(ConversationHeaderContentView *)v4 _createPrimaryViews];
  }

  return v4;
}

- (void)_createPrimaryViews
{
  v6 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(ConversationHeaderContentView *)self setTextLabel:?];

  v7 = +[UIColor clearColor];
  textLabel = [(ConversationHeaderContentView *)self textLabel];
  [textLabel setBackgroundColor:v7];

  textLabel2 = [(ConversationHeaderContentView *)self textLabel];
  [textLabel2 setLineBreakMode:4];

  textLabel3 = [(ConversationHeaderContentView *)self textLabel];
  [textLabel3 setNumberOfLines:1];

  v10 = +[UIColor labelColor];
  textLabel4 = [(ConversationHeaderContentView *)self textLabel];
  [textLabel4 setTextColor:v10];

  v5 = MSAccessibilityIdentifierMailMessageViewSubjectLabel;
  textLabel5 = [(ConversationHeaderContentView *)self textLabel];
  [textLabel5 setAccessibilityIdentifier:v5];

  textLabel6 = [(ConversationHeaderContentView *)self textLabel];
  [(ConversationHeaderContentView *)self addSubview:?];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = CGRectGetWidth(bounds);
  [(ConversationHeaderContentView *)self bounds];
  v9 = v8 - CGRectGetWidth(v14);
  if (v9 >= 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = -v9;
  }

  v13.receiver = self;
  v13.super_class = ConversationHeaderContentView;
  [(ConversationHeaderContentView *)&v13 setBounds:x, y, width, height];
  if (v10 > 0.00000011920929)
  {
    textLabel = [(ConversationHeaderContentView *)self textLabel];
    text = [textLabel text];
    [(ConversationHeaderContentView *)self _updateTextAlignmentForText:text];

    [(ConversationHeaderContentView *)self reflow];
  }
}

- (void)layoutMarginsDidChange
{
  v5.receiver = self;
  v5.super_class = ConversationHeaderContentView;
  [(ConversationHeaderContentView *)&v5 layoutMarginsDidChange];
  textLabel = [(ConversationHeaderContentView *)self textLabel];
  text = [textLabel text];
  [(ConversationHeaderContentView *)self _updateTextAlignmentForText:text];

  [(ConversationHeaderContentView *)self reflow];
}

- (void)_updateTextAlignmentForText:(id)text
{
  textCopy = text;
  if ([textCopy length])
  {
    v4 = [(ConversationHeaderContentView *)self textAlignment]- 1;
    v5 = v4 >= 4 ? [(ConversationHeaderContentView *)self _automaticTextAlignmentForText:textCopy]: qword_1004FBFA0[v4];
    textLabel = [(ConversationHeaderContentView *)self textLabel];
    textAlignment = [textLabel textAlignment];

    if (textAlignment != v5)
    {
      textLabel2 = [(ConversationHeaderContentView *)self textLabel];
      [textLabel2 setTextAlignment:v5];
    }
  }
}

- (int64_t)_automaticTextAlignmentForText:(id)text
{
  textCopy = text;
  v26 = NSFontAttributeName;
  textLabel = [(ConversationHeaderContentView *)self textLabel];
  font = [textLabel font];
  v27 = font;
  v7 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];

  [textCopy sizeWithAttributes:v7];
  v9 = v8;
  [(ConversationHeaderContentView *)self bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(ConversationHeaderContentView *)self layoutMargins];
  v19 = v13 + v18;
  v22 = v15 - (v20 + v21);
  v28.size.height = v17 - (v18 + v23);
  v28.origin.x = v11 + v20;
  v28.origin.y = v19;
  v28.size.width = v22;
  if (CGRectGetWidth(v28) - v9 <= 20.0)
  {
    if ([textCopy _isNaturallyRTL])
    {
      v24 = 2;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 1;
  }

  return v24;
}

- (void)setText:(id)text
{
  textCopy = text;
  [(ConversationHeaderContentView *)self _updateTextAlignmentForText:?];
  textLabel = [(ConversationHeaderContentView *)self textLabel];
  [textLabel setText:textCopy];

  [(ConversationHeaderContentView *)self reflow];
}

- (void)setContentWidth:(double)width
{
  if (self->_contentWidth != width)
  {
    self->_contentWidth = width;
    [(ConversationHeaderContentView *)self reflow];
  }
}

- (void)reflow
{
  textLabel = [(ConversationHeaderContentView *)self textLabel];
  text = [textLabel text];
  v5 = [text length];

  if (v5)
  {
    [(ConversationHeaderContentView *)self contentWidth];
    v7 = v6;
    [(ConversationHeaderContentView *)self layoutMargins];
    v9 = v8;
    [(ConversationHeaderContentView *)self layoutMargins];
    v11 = v7 - (v9 + v10);
    textLabel2 = [(ConversationHeaderContentView *)self textLabel];
    [textLabel2 sizeThatFits:{v11, 0.0}];
    v14 = v13;

    [(ConversationHeaderContentView *)self topToFirstBaseline];
    textLabel3 = [(ConversationHeaderContentView *)self textLabel];
    [textLabel3 _firstLineBaseline];

    UIRoundToViewScale();
    v17 = v16;
    [(ConversationHeaderContentView *)self layoutMargins];
    v19 = v18;
    textLabel4 = [(ConversationHeaderContentView *)self textLabel];
    [textLabel4 setFrame:{v19, v17, v11, v14}];

    [(ConversationHeaderContentView *)self lastBaselineToBottom];
    textLabel5 = [(ConversationHeaderContentView *)self textLabel];
    [textLabel5 _lastLineBaseline];

    UIRoundToViewScale();
    v23 = v22;
    y = CGRectZero.origin.y;
    [(ConversationHeaderContentView *)self contentWidth];
    v26 = v25;
    v28.origin.x = v19;
    v28.origin.y = v17;
    v28.size.width = v11;
    v28.size.height = v14;
    [(ConversationHeaderContentView *)self setBounds:CGRectZero.origin.x, y, v26, v23 + CGRectGetMaxY(v28)];

    [(ConversationHeaderContentView *)self _updateAnchorPoint];
  }
}

- (void)setFont:(id)font
{
  fontCopy = font;
  textLabel = [(ConversationHeaderContentView *)self textLabel];
  [textLabel setFont:fontCopy];

  textLabel2 = [(ConversationHeaderContentView *)self textLabel];
  text = [textLabel2 text];
  [(ConversationHeaderContentView *)self _updateTextAlignmentForText:text];

  [(ConversationHeaderContentView *)self reflow];
}

- (void)setNumberOfLines:(unint64_t)lines
{
  textLabel = [(ConversationHeaderContentView *)self textLabel];
  [textLabel setNumberOfLines:lines];
}

- (unint64_t)numberOfLines
{
  textLabel = [(ConversationHeaderContentView *)self textLabel];
  numberOfLines = [textLabel numberOfLines];

  return numberOfLines;
}

- (void)_updateAnchorPoint
{
  [(ConversationHeaderContentView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(ConversationHeaderContentView *)self topToFirstBaseline];
  v12 = v11;
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  v13 = v12 / CGRectGetHeight(v17);
  layer = [(ConversationHeaderContentView *)self layer];
  [layer setAnchorPoint:{CGPointZero.x, v13}];

  [(ConversationHeaderContentView *)self topToFirstBaseline];
  UIRoundToViewScale();

  [(ConversationHeaderContentView *)self setCenter:0.0, v15];
}

@end