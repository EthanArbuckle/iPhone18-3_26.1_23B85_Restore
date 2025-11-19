@interface _CHWorkoutSummaryTabbedLabelContainer
- (CGSize)intrinsicContentSize;
- (_CHWorkoutSummaryTabbedLabelContainer)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setAverageText:(id)a3;
- (void)setText:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setTitleText:(id)a3;
- (void)setTotalText:(id)a3;
- (void)sizeToFit;
@end

@implementation _CHWorkoutSummaryTabbedLabelContainer

- (_CHWorkoutSummaryTabbedLabelContainer)initWithFrame:(CGRect)a3
{
  v25.receiver = self;
  v25.super_class = _CHWorkoutSummaryTabbedLabelContainer;
  v3 = [(_CHWorkoutSummaryTabbedLabelContainer *)&v25 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(_CHWorkoutSummaryTabbedLabelContainer *)v3 setBackgroundColor:v4];

    v5 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v9;

    [(UILabel *)v3->_titleLabel setAdjustsFontSizeToFitWidth:1];
    v11 = [UIFont defaultFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v3->_titleLabel setFont:v11];

    v12 = +[UIColor labelColor];
    [(UILabel *)v3->_titleLabel setTextColor:v12];

    v13 = +[UIColor clearColor];
    [(UILabel *)v3->_titleLabel setBackgroundColor:v13];

    [(_CHWorkoutSummaryTabbedLabelContainer *)v3 addSubview:v3->_titleLabel];
    v14 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    totalLabel = v3->_totalLabel;
    v3->_totalLabel = v14;

    [(UILabel *)v3->_totalLabel setAdjustsFontSizeToFitWidth:1];
    v16 = [UIFont defaultFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v3->_totalLabel setFont:v16];

    v17 = +[UIColor labelColor];
    [(UILabel *)v3->_totalLabel setTextColor:v17];

    v18 = +[UIColor clearColor];
    [(UILabel *)v3->_totalLabel setBackgroundColor:v18];

    [(_CHWorkoutSummaryTabbedLabelContainer *)v3 addSubview:v3->_totalLabel];
    v19 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    averageLabel = v3->_averageLabel;
    v3->_averageLabel = v19;

    [(UILabel *)v3->_averageLabel setAdjustsFontSizeToFitWidth:1];
    v21 = [UIFont defaultFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v3->_averageLabel setFont:v21];

    v22 = +[UIColor labelColor];
    [(UILabel *)v3->_averageLabel setTextColor:v22];

    v23 = +[UIColor clearColor];
    [(UILabel *)v3->_averageLabel setBackgroundColor:v23];

    [(_CHWorkoutSummaryTabbedLabelContainer *)v3 addSubview:v3->_averageLabel];
  }

  return v3;
}

- (void)setTextColor:(id)a3
{
  objc_storeStrong(&self->_textColor, a3);
  v5 = a3;
  [(UILabel *)self->_totalLabel setTextColor:self->_textColor];
  [(UILabel *)self->_averageLabel setTextColor:self->_textColor];
}

- (void)setTitleText:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_titleText, a3);
  [(UILabel *)self->_titleLabel setText:self->_titleText];
  if ([(NSString *)self->_titleText length])
  {
    v5 = 4;
  }

  else
  {
    v5 = 1;
  }

  [(UILabel *)self->_titleLabel setTextAlignment:v5];
}

- (void)setTotalText:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_totalText, a3);
  [(UILabel *)self->_totalLabel setText:self->_totalText];
  if ([(NSString *)self->_totalText length])
  {
    v5 = 4;
  }

  else
  {
    v5 = 1;
  }

  [(UILabel *)self->_totalLabel setTextAlignment:v5];
}

- (void)setAverageText:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_averageText, a3);
  [(UILabel *)self->_averageLabel setText:self->_averageText];
  if ([(NSString *)self->_averageText length])
  {
    v5 = 4;
  }

  else
  {
    v5 = 1;
  }

  [(UILabel *)self->_averageLabel setTextAlignment:v5];
}

- (void)setText:(id)a3
{
  titleLabel = self->_titleLabel;
  v5 = a3;
  [(UILabel *)titleLabel setText:v5];
  [(UILabel *)self->_totalLabel setText:v5];
  [(UILabel *)self->_averageLabel setText:v5];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = _CHWorkoutSummaryTabbedLabelContainer;
  [(_CHWorkoutSummaryTabbedLabelContainer *)&v10 layoutSubviews];
  v3 = sub_10013A940() + -4.0;
  [(_CHWorkoutSummaryTabbedLabelContainer *)self bounds];
  [(UILabel *)self->_titleLabel setFrame:0.0, 0.0, v3, CGRectGetHeight(v12)];
  [(UILabel *)self->_titleLabel frame];
  v4 = CGRectGetMaxX(v13) + 4.0;
  v5 = sub_10013A9A8() + -4.0;
  [(_CHWorkoutSummaryTabbedLabelContainer *)self bounds];
  [(UILabel *)self->_totalLabel setFrame:v4, 0.0, v5, CGRectGetHeight(v14)];
  [(UILabel *)self->_totalLabel frame];
  v6 = CGRectGetMaxX(v15) + 4.0;
  v7 = sub_10013A9A8() + -4.0;
  [(_CHWorkoutSummaryTabbedLabelContainer *)self bounds];
  [(UILabel *)self->_averageLabel setFrame:v6, 0.0, v7, CGRectGetHeight(v16)];
  if ([UIView userInterfaceLayoutDirectionForSemanticContentAttribute:0]== 1)
  {
    totalLabel = self->_totalLabel;
    v11[0] = self->_titleLabel;
    v11[1] = totalLabel;
    v11[2] = self->_averageLabel;
    v9 = [NSArray arrayWithObjects:v11 count:3];
    [(_CHWorkoutSummaryTabbedLabelContainer *)self ch_transformViewsForRightToLeftLanguages:v9];
  }
}

- (CGSize)intrinsicContentSize
{
  v3 = +[UIScreen mainScreen];
  [v3 bounds];
  v4 = CGRectGetWidth(v10) + -16.0 + -15.0;
  [(UILabel *)self->_titleLabel intrinsicContentSize];
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)sizeToFit
{
  [(_CHWorkoutSummaryTabbedLabelContainer *)self frame];
  v4 = v3;
  v6 = v5;
  [(_CHWorkoutSummaryTabbedLabelContainer *)self intrinsicContentSize];

  [(_CHWorkoutSummaryTabbedLabelContainer *)self setFrame:v4, v6, v7, v8];
}

@end