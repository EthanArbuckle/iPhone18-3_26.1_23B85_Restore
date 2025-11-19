@interface BKHUDTrack
- (BKHUDTrack)initWithCoder:(id)a3;
- (BKHUDTrack)initWithFrame:(CGRect)a3;
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
- (void)setFont:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setTitle:(id)a3;
- (void)setValue:(float)a3;
@end

@implementation BKHUDTrack

- (id)title
{
  v2 = [(BKHUDTrack *)self textLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setTitle:(id)a3
{
  v10 = a3;
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [(BKHUDTrack *)self textLabel];
    v5 = [v4 text];
    if (v5 == v10)
    {
    }

    else
    {
      v6 = [(BKHUDTrack *)self textLabel];
      v7 = [v6 text];
      v8 = [v7 isEqualToString:v10];

      if ((v8 & 1) == 0)
      {
        v9 = [(BKHUDTrack *)self textLabel];
        [v9 setText:v10];

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
  v3 = [(BKHUDTrack *)self textLabel];
  v4 = [v3 font];
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

- (void)setFont:(id)a3
{
  v4 = a3;
  v5 = [(BKHUDTrack *)self textLabel];
  [v5 setFont:v4];

  [(BKHUDTrack *)self _invalidateTextSize];
}

- (UIColor)textColor
{
  v2 = [(BKHUDTrack *)self textLabel];
  v3 = [v2 textColor];

  return v3;
}

- (void)setTextColor:(id)a3
{
  v4 = a3;
  v5 = [(BKHUDTrack *)self textLabel];
  [v5 setTextColor:v4];
}

- (void)setValue:(float)a3
{
  if (self->_value != a3)
  {
    self->_value = a3;
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

- (BKHUDTrack)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = BKHUDTrack;
  v3 = [(BKHUDTrack *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(BKHUDTrack *)v3 _setupCommon];
  }

  return v4;
}

- (BKHUDTrack)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = BKHUDTrack;
  v3 = [(BKHUDTrack *)&v6 initWithCoder:a3];
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
  v11 = [(BKHUDTrack *)self textLabel];
  [v11 setBounds:{v4, v6, v8, v10}];

  if ([(BKHUDTrack *)self hudWidthChangeRequired])
  {
    [(BKHUDTrack *)self horizontalMargin];
    v13 = v8 + v12 * 2.0;
    [(BKHUDTrack *)self verticalMargin];
    v15 = v10 + v14 * 2.0;
    v16 = [(BKHUDTrack *)self visualEffectView];
    [v16 setBounds:{0.0, 0.0, v13, v15}];

    [(BKHUDTrack *)self cornerRadius];
    v18 = v17;
    v19 = [(BKHUDTrack *)self visualEffectView];
    [v19 _setContinuousCornerRadius:v18];
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
  v7 = [(BKHUDTrack *)self visualEffectView];
  [v7 bounds];
  Width = CGRectGetWidth(v12);
  v9 = [(BKHUDTrack *)self textLabel];
  [v9 bounds];
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
  v3 = [(BKHUDTrack *)self visualEffectView];
  [v3 bounds];
  if (CGRectIsEmpty(v34))
  {
    [(BKHUDTrack *)self horizontalMargin];
    v5 = v4;
  }

  else
  {
    v6 = [(BKHUDTrack *)self visualEffectView];
    [v6 bounds];
    Width = CGRectGetWidth(v35);
    v8 = [(BKHUDTrack *)self textLabel];
    [v8 bounds];
    v5 = (Width - CGRectGetWidth(v36)) * 0.5;
  }

  [(BKHUDTrack *)self _centerX];
  [(BKHUDTrack *)self bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(BKHUDTrack *)self visualEffectView];
  [v17 bounds];

  v18 = [(BKHUDTrack *)self traitCollection];
  [v18 displayScale];
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
  v31 = [(BKHUDTrack *)self visualEffectView];
  [v31 setPosition:{v22, v24}];

  v32 = [(BKHUDTrack *)self textLabel];
  [v32 setFrame:{round(v5), v30, v26, v28}];
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
  v12 = [(UIVisualEffectView *)self->_visualEffectView contentView];
  [v12 addSubview:self->_textLabel];

  [(BKHUDTrack *)self addSubview:self->_visualEffectView];
  self->_horizontalMargin = 20.0;
  self->_verticalMargin = 6.0;
  self->_cornerRadius = 10.0;

  [(BKHUDTrack *)self _updateBubblePosition];
}

@end