@interface ConversationHeaderContentView
- (ConversationHeaderContentView)initWithFrame:(CGRect)a3;
- (int64_t)_automaticTextAlignmentForText:(id)a3;
- (unint64_t)numberOfLines;
- (void)_createPrimaryViews;
- (void)_updateAnchorPoint;
- (void)_updateTextAlignmentForText:(id)a3;
- (void)layoutMarginsDidChange;
- (void)reflow;
- (void)setBounds:(CGRect)a3;
- (void)setContentWidth:(double)a3;
- (void)setFont:(id)a3;
- (void)setNumberOfLines:(unint64_t)a3;
- (void)setText:(id)a3;
@end

@implementation ConversationHeaderContentView

- (ConversationHeaderContentView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ConversationHeaderContentView;
  v3 = [(ConversationHeaderContentView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(ConversationHeaderContentView *)self textLabel];
  [v3 setBackgroundColor:v7];

  v8 = [(ConversationHeaderContentView *)self textLabel];
  [v8 setLineBreakMode:4];

  v9 = [(ConversationHeaderContentView *)self textLabel];
  [v9 setNumberOfLines:1];

  v10 = +[UIColor labelColor];
  v4 = [(ConversationHeaderContentView *)self textLabel];
  [v4 setTextColor:v10];

  v5 = MSAccessibilityIdentifierMailMessageViewSubjectLabel;
  v11 = [(ConversationHeaderContentView *)self textLabel];
  [v11 setAccessibilityIdentifier:v5];

  v12 = [(ConversationHeaderContentView *)self textLabel];
  [(ConversationHeaderContentView *)self addSubview:?];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = CGRectGetWidth(a3);
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
    v11 = [(ConversationHeaderContentView *)self textLabel];
    v12 = [v11 text];
    [(ConversationHeaderContentView *)self _updateTextAlignmentForText:v12];

    [(ConversationHeaderContentView *)self reflow];
  }
}

- (void)layoutMarginsDidChange
{
  v5.receiver = self;
  v5.super_class = ConversationHeaderContentView;
  [(ConversationHeaderContentView *)&v5 layoutMarginsDidChange];
  v3 = [(ConversationHeaderContentView *)self textLabel];
  v4 = [v3 text];
  [(ConversationHeaderContentView *)self _updateTextAlignmentForText:v4];

  [(ConversationHeaderContentView *)self reflow];
}

- (void)_updateTextAlignmentForText:(id)a3
{
  v9 = a3;
  if ([v9 length])
  {
    v4 = [(ConversationHeaderContentView *)self textAlignment]- 1;
    v5 = v4 >= 4 ? [(ConversationHeaderContentView *)self _automaticTextAlignmentForText:v9]: qword_1004FBFA0[v4];
    v6 = [(ConversationHeaderContentView *)self textLabel];
    v7 = [v6 textAlignment];

    if (v7 != v5)
    {
      v8 = [(ConversationHeaderContentView *)self textLabel];
      [v8 setTextAlignment:v5];
    }
  }
}

- (int64_t)_automaticTextAlignmentForText:(id)a3
{
  v4 = a3;
  v26 = NSFontAttributeName;
  v5 = [(ConversationHeaderContentView *)self textLabel];
  v6 = [v5 font];
  v27 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];

  [v4 sizeWithAttributes:v7];
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
    if ([v4 _isNaturallyRTL])
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

- (void)setText:(id)a3
{
  v5 = a3;
  [(ConversationHeaderContentView *)self _updateTextAlignmentForText:?];
  v4 = [(ConversationHeaderContentView *)self textLabel];
  [v4 setText:v5];

  [(ConversationHeaderContentView *)self reflow];
}

- (void)setContentWidth:(double)a3
{
  if (self->_contentWidth != a3)
  {
    self->_contentWidth = a3;
    [(ConversationHeaderContentView *)self reflow];
  }
}

- (void)reflow
{
  v3 = [(ConversationHeaderContentView *)self textLabel];
  v4 = [v3 text];
  v5 = [v4 length];

  if (v5)
  {
    [(ConversationHeaderContentView *)self contentWidth];
    v7 = v6;
    [(ConversationHeaderContentView *)self layoutMargins];
    v9 = v8;
    [(ConversationHeaderContentView *)self layoutMargins];
    v11 = v7 - (v9 + v10);
    v12 = [(ConversationHeaderContentView *)self textLabel];
    [v12 sizeThatFits:{v11, 0.0}];
    v14 = v13;

    [(ConversationHeaderContentView *)self topToFirstBaseline];
    v15 = [(ConversationHeaderContentView *)self textLabel];
    [v15 _firstLineBaseline];

    UIRoundToViewScale();
    v17 = v16;
    [(ConversationHeaderContentView *)self layoutMargins];
    v19 = v18;
    v20 = [(ConversationHeaderContentView *)self textLabel];
    [v20 setFrame:{v19, v17, v11, v14}];

    [(ConversationHeaderContentView *)self lastBaselineToBottom];
    v21 = [(ConversationHeaderContentView *)self textLabel];
    [v21 _lastLineBaseline];

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

- (void)setFont:(id)a3
{
  v7 = a3;
  v4 = [(ConversationHeaderContentView *)self textLabel];
  [v4 setFont:v7];

  v5 = [(ConversationHeaderContentView *)self textLabel];
  v6 = [v5 text];
  [(ConversationHeaderContentView *)self _updateTextAlignmentForText:v6];

  [(ConversationHeaderContentView *)self reflow];
}

- (void)setNumberOfLines:(unint64_t)a3
{
  v4 = [(ConversationHeaderContentView *)self textLabel];
  [v4 setNumberOfLines:a3];
}

- (unint64_t)numberOfLines
{
  v2 = [(ConversationHeaderContentView *)self textLabel];
  v3 = [v2 numberOfLines];

  return v3;
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
  v14 = [(ConversationHeaderContentView *)self layer];
  [v14 setAnchorPoint:{CGPointZero.x, v13}];

  [(ConversationHeaderContentView *)self topToFirstBaseline];
  UIRoundToViewScale();

  [(ConversationHeaderContentView *)self setCenter:0.0, v15];
}

@end