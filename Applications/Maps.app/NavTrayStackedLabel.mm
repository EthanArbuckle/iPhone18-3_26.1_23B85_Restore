@interface NavTrayStackedLabel
- (CGSize)intrinsicContentSize;
- (NavTrayStackedLabel)init;
- (NavTrayStackedLabel)initWithFrame:(CGRect)frame;
- (void)_setup;
- (void)setInterLabelPadding:(double)padding;
@end

@implementation NavTrayStackedLabel

- (CGSize)intrinsicContentSize
{
  [(UILabel *)self->_topLabel intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  [(UILabel *)self->_bottomLabel intrinsicContentSize];
  v8 = fmax(v4, v7);
  v10 = v9 + v6;
  [(NavTrayStackedLabel *)self interLabelPadding];
  v12 = v10 + v11;
  v13 = v8;
  result.height = v12;
  result.width = v13;
  return result;
}

- (void)setInterLabelPadding:(double)padding
{
  if (vabdd_f64(self->_interLabelPadding, padding) > 2.22044605e-16)
  {
    self->_interLabelPadding = padding;
    [(NSLayoutConstraint *)self->_interLabelConstraint setConstant:?];

    [(NavTrayStackedLabel *)self invalidateIntrinsicContentSize];
  }
}

- (void)_setup
{
  v3 = objc_opt_new();
  topLabel = self->_topLabel;
  self->_topLabel = v3;

  [(UILabel *)self->_topLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_topLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_topLabel setAccessibilityIdentifier:@"TopLabel"];
  [(NavTrayStackedLabel *)self addSubview:self->_topLabel];
  v5 = objc_opt_new();
  bottomLabel = self->_bottomLabel;
  self->_bottomLabel = v5;

  [(UILabel *)self->_bottomLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_bottomLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_bottomLabel setAccessibilityIdentifier:@"BottomLabel"];
  [(NavTrayStackedLabel *)self addSubview:self->_bottomLabel];
  topAnchor = [(UILabel *)self->_bottomLabel topAnchor];
  bottomAnchor = [(UILabel *)self->_topLabel bottomAnchor];
  v9 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  interLabelConstraint = self->_interLabelConstraint;
  self->_interLabelConstraint = v9;

  leadingAnchor = [(UILabel *)self->_topLabel leadingAnchor];
  leadingAnchor2 = [(NavTrayStackedLabel *)self leadingAnchor];
  v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v31[0] = v28;
  trailingAnchor = [(UILabel *)self->_topLabel trailingAnchor];
  trailingAnchor2 = [(NavTrayStackedLabel *)self trailingAnchor];
  v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v31[1] = v25;
  topAnchor2 = [(UILabel *)self->_topLabel topAnchor];
  topAnchor3 = [(NavTrayStackedLabel *)self topAnchor];
  v22 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  v31[2] = v22;
  leadingAnchor3 = [(UILabel *)self->_bottomLabel leadingAnchor];
  leadingAnchor4 = [(NavTrayStackedLabel *)self leadingAnchor];
  v13 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v31[3] = v13;
  trailingAnchor3 = [(UILabel *)self->_bottomLabel trailingAnchor];
  trailingAnchor4 = [(NavTrayStackedLabel *)self trailingAnchor];
  v16 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v17 = self->_interLabelConstraint;
  v31[4] = v16;
  v31[5] = v17;
  bottomAnchor2 = [(UILabel *)self->_bottomLabel bottomAnchor];
  bottomAnchor3 = [(NavTrayStackedLabel *)self bottomAnchor];
  v20 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v31[6] = v20;
  v21 = [NSArray arrayWithObjects:v31 count:7];
  [NSLayoutConstraint activateConstraints:v21];
}

- (NavTrayStackedLabel)init
{
  v5.receiver = self;
  v5.super_class = NavTrayStackedLabel;
  v2 = [(NavTrayStackedLabel *)&v5 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v3 = v2;
  if (v2)
  {
    [(NavTrayStackedLabel *)v2 _setup];
  }

  return v3;
}

- (NavTrayStackedLabel)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = NavTrayStackedLabel;
  v3 = [(NavTrayStackedLabel *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(NavTrayStackedLabel *)v3 setAccessibilityIdentifier:v5];

    [(NavTrayStackedLabel *)v3 _setup];
  }

  return v3;
}

@end