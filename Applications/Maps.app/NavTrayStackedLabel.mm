@interface NavTrayStackedLabel
- (CGSize)intrinsicContentSize;
- (NavTrayStackedLabel)init;
- (NavTrayStackedLabel)initWithFrame:(CGRect)a3;
- (void)_setup;
- (void)setInterLabelPadding:(double)a3;
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

- (void)setInterLabelPadding:(double)a3
{
  if (vabdd_f64(self->_interLabelPadding, a3) > 2.22044605e-16)
  {
    self->_interLabelPadding = a3;
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
  v7 = [(UILabel *)self->_bottomLabel topAnchor];
  v8 = [(UILabel *)self->_topLabel bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  interLabelConstraint = self->_interLabelConstraint;
  self->_interLabelConstraint = v9;

  v30 = [(UILabel *)self->_topLabel leadingAnchor];
  v29 = [(NavTrayStackedLabel *)self leadingAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v31[0] = v28;
  v27 = [(UILabel *)self->_topLabel trailingAnchor];
  v26 = [(NavTrayStackedLabel *)self trailingAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v31[1] = v25;
  v24 = [(UILabel *)self->_topLabel topAnchor];
  v23 = [(NavTrayStackedLabel *)self topAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v31[2] = v22;
  v11 = [(UILabel *)self->_bottomLabel leadingAnchor];
  v12 = [(NavTrayStackedLabel *)self leadingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v31[3] = v13;
  v14 = [(UILabel *)self->_bottomLabel trailingAnchor];
  v15 = [(NavTrayStackedLabel *)self trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  v17 = self->_interLabelConstraint;
  v31[4] = v16;
  v31[5] = v17;
  v18 = [(UILabel *)self->_bottomLabel bottomAnchor];
  v19 = [(NavTrayStackedLabel *)self bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
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

- (NavTrayStackedLabel)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = NavTrayStackedLabel;
  v3 = [(NavTrayStackedLabel *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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