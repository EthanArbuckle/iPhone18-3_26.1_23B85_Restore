@interface BKHUDTrack
- (BKHUDTrack)initWithCoder:(id)coder;
- (BKHUDTrack)initWithFrame:(CGRect)frame;
- (BOOL)hudWidthChangeRequired;
- (CGSize)textSize;
- (UIColor)textColor;
- (UIFont)font;
- (double)_centerX;
- (id)title;
- (void)_setupCommon;
- (void)_updateBubblePosition;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setFont:(id)font;
- (void)setTextColor:(id)color;
- (void)setTitle:(id)title;
- (void)setValue:(float)value;
@end

@implementation BKHUDTrack

- (id)title
{
  textLabel = [(BKHUDTrack *)self textLabel];
  text = [textLabel text];

  return text;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (!titleCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    textLabel = [(BKHUDTrack *)self textLabel];
    text = [textLabel text];
    if (text == titleCopy)
    {
    }

    else
    {
      textLabel2 = [(BKHUDTrack *)self textLabel];
      text2 = [textLabel2 text];
      v8 = [text2 isEqualToString:titleCopy];

      if ((v8 & 1) == 0)
      {
        textLabel3 = [(BKHUDTrack *)self textLabel];
        [textLabel3 setText:titleCopy];

        [(BKHUDTrack *)self _invalidateTextSize];
        [(BKHUDTrack *)self setNeedsLayout];
      }
    }
  }

  else
  {
    BCReportAssertionFailureWithMessage();
  }
}

- (UIFont)font
{
  objc_opt_class();
  textLabel = [(BKHUDTrack *)self textLabel];
  font = [textLabel font];
  v5 = BUDynamicCast();

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = [UIFont systemFontOfSize:17.0];
  }

  v7 = v6;

  return v7;
}

- (void)setFont:(id)font
{
  fontCopy = font;
  textLabel = [(BKHUDTrack *)self textLabel];
  [textLabel setFont:fontCopy];

  [(BKHUDTrack *)self _invalidateTextSize];
}

- (UIColor)textColor
{
  textLabel = [(BKHUDTrack *)self textLabel];
  textColor = [textLabel textColor];

  return textColor;
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  textLabel = [(BKHUDTrack *)self textLabel];
  [textLabel setTextColor:colorCopy];
}

- (void)setValue:(float)value
{
  if (self->_value != value)
  {
    self->_value = value;
    [(BKHUDTrack *)self setNeedsLayout];
  }
}

- (CGSize)textSize
{
  if (![(BKHUDTrack *)self textSizeValid])
  {
    textLabel = self->_textLabel;
    [(BKHUDTrack *)self bounds];
    [(UILabel *)textLabel sizeThatFits:v4, v5];
    self->_textSize.width = v6;
    self->_textSize.height = v7;
    [(BKHUDTrack *)self setTextSizeValid:1];
  }

  width = self->_textSize.width;
  height = self->_textSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BKHUDTrack)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = BKHUDTrack;
  v3 = [(BKHUDTrack *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(BKHUDTrack *)v3 _setupCommon];
  }

  return v4;
}

- (BKHUDTrack)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = BKHUDTrack;
  v3 = [(BKHUDTrack *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(BKHUDTrack *)v3 _setupCommon];
  }

  return v4;
}

- (void)dealloc
{
  [(UILabel *)self->_textLabel removeFromSuperview];
  [(UIVisualEffectView *)self->_visualEffectView removeFromSuperview];
  v3.receiver = self;
  v3.super_class = BKHUDTrack;
  [(BKHUDTrack *)&v3 dealloc];
}

- (void)layoutSubviews
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(BKHUDTrack *)self textSize];
  CGRectMakeWithSize();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  textLabel = [(BKHUDTrack *)self textLabel];
  [textLabel setBounds:{v4, v6, v8, v10}];

  if ([(BKHUDTrack *)self hudWidthChangeRequired])
  {
    [(BKHUDTrack *)self horizontalMargin];
    v13 = v8 + v12 * 2.0;
    [(BKHUDTrack *)self verticalMargin];
    v15 = v10 + v14 * 2.0;
    visualEffectView = [(BKHUDTrack *)self visualEffectView];
    [visualEffectView setBounds:{0.0, 0.0, v13, v15}];

    [(BKHUDTrack *)self cornerRadius];
    v18 = v17;
    visualEffectView2 = [(BKHUDTrack *)self visualEffectView];
    [visualEffectView2 _setContinuousCornerRadius:v18];
  }

  [(BKHUDTrack *)self _updateBubblePosition];

  +[CATransaction commit];
}

- (BOOL)hudWidthChangeRequired
{
  [(BKHUDTrack *)self horizontalMargin];
  v4 = v3 * 2.5;
  [(BKHUDTrack *)self horizontalMargin];
  v6 = v5 * 1.5;
  visualEffectView = [(BKHUDTrack *)self visualEffectView];
  [visualEffectView bounds];
  Width = CGRectGetWidth(v12);
  textLabel = [(BKHUDTrack *)self textLabel];
  [textLabel bounds];
  v10 = Width - CGRectGetWidth(v13);

  return v10 > v4 || v10 < v6;
}

- (double)_centerX
{
  [(BKHUDTrack *)self value];
  if (*&v3 >= self->_maximumValue)
  {
    *&v3 = self->_maximumValue;
  }

  [(BKHUDTrack *)self setValue:v3];
  [(BKHUDTrack *)self value];
  if (*&v4 < self->_minimumValue)
  {
    *&v4 = self->_minimumValue;
  }

  [(BKHUDTrack *)self setValue:v4];
  v5 = 0.0;
  if (self->_maximumValue > self->_minimumValue)
  {
    [(BKHUDTrack *)self value];
    v5 = ((v6 - self->_minimumValue) / (self->_maximumValue - self->_minimumValue));
  }

  [(BKHUDTrack *)self bounds];
  return round(v7 + v5 * v8);
}

- (void)_updateBubblePosition
{
  visualEffectView = [(BKHUDTrack *)self visualEffectView];
  [visualEffectView bounds];
  if (CGRectIsEmpty(v34))
  {
    [(BKHUDTrack *)self horizontalMargin];
    v5 = v4;
  }

  else
  {
    visualEffectView2 = [(BKHUDTrack *)self visualEffectView];
    [visualEffectView2 bounds];
    Width = CGRectGetWidth(v35);
    textLabel = [(BKHUDTrack *)self textLabel];
    [textLabel bounds];
    v5 = (Width - CGRectGetWidth(v36)) * 0.5;
  }

  [(BKHUDTrack *)self _centerX];
  [(BKHUDTrack *)self bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  visualEffectView3 = [(BKHUDTrack *)self visualEffectView];
  [visualEffectView3 bounds];

  traitCollection = [(BKHUDTrack *)self traitCollection];
  [traitCollection displayScale];
  if (v19 == 0.0)
  {
    v20 = +[UIScreen mainScreen];
    [v20 scale];
  }

  v37.origin.x = v10;
  v37.origin.y = v12;
  v37.size.width = v14;
  v37.size.height = v16;
  CGRectGetMidY(v37);
  [(BKHUDTrack *)self verticalOffset];
  CGPointRoundForScale();
  v22 = v21;
  v24 = v23;
  [(BKHUDTrack *)self textSize];
  v26 = v25;
  v28 = v27;
  [(BKHUDTrack *)self verticalMargin];
  v30 = round(v29 + -1.0);
  visualEffectView4 = [(BKHUDTrack *)self visualEffectView];
  [visualEffectView4 setPosition:{v22, v24}];

  textLabel2 = [(BKHUDTrack *)self textLabel];
  [textLabel2 setFrame:{round(v5), v30, v26, v28}];
}

- (void)_setupCommon
{
  self->_maximumValue = 1.0;
  v3 = +[UIColor clearColor];
  [(BKHUDTrack *)self setBackgroundColor:v3];

  [(BKHUDTrack *)self setOpaque:0];
  v4 = [UIVisualEffectView alloc];
  v5 = [UIBlurEffect effectWithStyle:2];
  v6 = [v4 initWithEffect:v5];
  visualEffectView = self->_visualEffectView;
  self->_visualEffectView = v6;

  [(UIVisualEffectView *)self->_visualEffectView setUserInteractionEnabled:0];
  [(UIVisualEffectView *)self->_visualEffectView setClipsToBounds:1];
  v8 = objc_alloc_init(UILabel);
  textLabel = self->_textLabel;
  self->_textLabel = v8;

  v10 = +[UIColor whiteColor];
  [(UILabel *)self->_textLabel setTextColor:v10];

  v11 = [UIFont systemFontOfSize:17.0];
  [(UILabel *)self->_textLabel setFont:v11];

  [(UILabel *)self->_textLabel setUserInteractionEnabled:0];
  contentView = [(UIVisualEffectView *)self->_visualEffectView contentView];
  [contentView addSubview:self->_textLabel];

  [(BKHUDTrack *)self addSubview:self->_visualEffectView];
  self->_horizontalMargin = 20.0;
  self->_verticalMargin = 6.0;
  self->_cornerRadius = 10.0;

  [(BKHUDTrack *)self _updateBubblePosition];
}

@end