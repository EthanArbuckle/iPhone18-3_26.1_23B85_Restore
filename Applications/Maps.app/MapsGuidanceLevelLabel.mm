@interface MapsGuidanceLevelLabel
- (MapsGuidanceLevelLabel)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)sizeToFit;
@end

@implementation MapsGuidanceLevelLabel

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = MapsGuidanceLevelLabel;
  [(MapsGuidanceLevelLabel *)&v8 layoutSubviews];
  [(UILabel *)self->_label bounds];
  v4 = v3;
  [(UILabel *)self->_label bounds];
  [(UILabel *)self->_label setFrame:0.0, 0.0, v4];
  [(UILabel *)self->_label frame];
  MaxX = CGRectGetMaxX(v9);
  [(CAShapeLayer *)self->_roundedCorner bounds];
  v7 = v6;
  [(CAShapeLayer *)self->_roundedCorner bounds];
  [(CAShapeLayer *)self->_roundedCorner setFrame:MaxX, 0.0, v7];
}

- (void)sizeToFit
{
  [(UILabel *)self->_label sizeToFit];
  [(UILabel *)self->_label bounds];
  v4 = v3 * 0.5;
  [(UILabel *)self->_label bounds];
  [(CAShapeLayer *)self->_roundedCorner setBounds:0.0, 0.0, v4];
  [(CAShapeLayer *)self->_roundedCorner bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(CAShapeLayer *)self->_roundedCorner bounds];
  v14 = v13;
  [(CAShapeLayer *)self->_roundedCorner bounds];
  v21 = [UIBezierPath bezierPathWithRoundedRect:8 byRoundingCorners:v6 cornerRadii:v8, v10, v12, v14, v15];
  v16 = v21;
  -[CAShapeLayer setPath:](self->_roundedCorner, "setPath:", [v21 CGPath]);
  [(UILabel *)self->_label bounds];
  [(UILabel *)self->_label setBounds:?];
  [(CAShapeLayer *)self->_roundedCorner bounds];
  v18 = v17;
  [(UILabel *)self->_label bounds];
  v20 = v19 + v18;
  [(UILabel *)self->_label bounds];
  [(MapsGuidanceLevelLabel *)self setBounds:0.0, 0.0, v20];
}

- (MapsGuidanceLevelLabel)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = MapsGuidanceLevelLabel;
  v3 = [(MapsGuidanceLevelLabel *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    label = v3->_label;
    v3->_label = v4;

    v6 = +[UIColor whiteColor];
    [(UILabel *)v3->_label setTextColor:v6];

    v7 = [UIColor colorWithWhite:0.0 alpha:0.5];
    [(UILabel *)v3->_label setBackgroundColor:v7];

    v8 = [UIFont systemFontOfSize:12.0];
    [(UILabel *)v3->_label setFont:v8];

    [(UILabel *)v3->_label setTextAlignment:2];
    [(MapsGuidanceLevelLabel *)v3 addSubview:v3->_label];
    v9 = +[CAShapeLayer layer];
    roundedCorner = v3->_roundedCorner;
    v3->_roundedCorner = v9;

    backgroundColor = [(UILabel *)v3->_label backgroundColor];
    -[CAShapeLayer setFillColor:](v3->_roundedCorner, "setFillColor:", [backgroundColor CGColor]);

    layer = [(MapsGuidanceLevelLabel *)v3 layer];
    [layer addSublayer:v3->_roundedCorner];

    v13 = v3;
  }

  return v3;
}

@end