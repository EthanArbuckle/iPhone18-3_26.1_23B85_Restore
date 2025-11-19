@interface NTKPoodleBackgroundView
- (CGRect)faceBounds;
- (NTKPoodleBackgroundView)initWithDevice:(id)a3;
- (void)layoutSubviews;
- (void)setPalette:(id)a3;
@end

@implementation NTKPoodleBackgroundView

- (NTKPoodleBackgroundView)initWithDevice:(id)a3
{
  v5 = a3;
  sub_16F44(v5, v37);
  v36.receiver = self;
  v36.super_class = NTKPoodleBackgroundView;
  v6 = [(NTKPoodleBackgroundView *)&v36 initWithFrame:v38, v39, v40, v41];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    [(NTKPoodleBackgroundView *)v7 dialWidth];
    v9 = v8;
    v10 = sub_16AD8();
    v11 = +[CALayer layer];
    dialInnerLayer = v7->_dialInnerLayer;
    v7->_dialInnerLayer = v11;

    [(CALayer *)v7->_dialInnerLayer setCornerCurve:kCACornerCurveCircular];
    [(CALayer *)v7->_dialInnerLayer setMasksToBounds:1];
    v13 = v7->_dialInnerLayer;
    v14 = +[UIColor grayColor];
    -[CALayer setBackgroundColor:](v13, "setBackgroundColor:", [v14 CGColor]);

    [(CALayer *)v7->_dialInnerLayer setActions:v10];
    v15 = [(NTKPoodleBackgroundView *)v7 layer];
    [v15 addSublayer:v7->_dialInnerLayer];

    v16 = +[CALayer layer];
    dialOuterLayer = v7->_dialOuterLayer;
    v7->_dialOuterLayer = v16;

    [(CALayer *)v7->_dialOuterLayer setBorderWidth:v9 + 1.0];
    [(CALayer *)v7->_dialOuterLayer setCornerCurve:kCACornerCurveCircular];
    [(CALayer *)v7->_dialOuterLayer setMasksToBounds:1];
    v18 = v7->_dialOuterLayer;
    v19 = +[UIColor darkGrayColor];
    -[CALayer setBorderColor:](v18, "setBorderColor:", [v19 CGColor]);

    [(CALayer *)v7->_dialOuterLayer setActions:v10];
    v20 = [(NTKPoodleBackgroundView *)v7 layer];
    [v20 addSublayer:v7->_dialOuterLayer];

    v21 = +[CALayer layer];
    dialInnerBorderLayer = v7->_dialInnerBorderLayer;
    v7->_dialInnerBorderLayer = v21;

    [(CALayer *)v7->_dialInnerBorderLayer setCornerCurve:kCACornerCurveCircular];
    [(CALayer *)v7->_dialInnerBorderLayer setMasksToBounds:1];
    [(CALayer *)v7->_dialInnerBorderLayer setBorderWidth:0.0];
    v23 = v7->_dialInnerBorderLayer;
    v24 = +[UIColor orangeColor];
    -[CALayer setBorderColor:](v23, "setBorderColor:", [v24 CGColor]);

    [(CALayer *)v7->_dialInnerBorderLayer setActions:v10];
    v25 = [(NTKPoodleBackgroundView *)v7 layer];
    [v25 addSublayer:v7->_dialInnerBorderLayer];

    v26 = +[CALayer layer];
    dialOuterBorderLayer = v7->_dialOuterBorderLayer;
    v7->_dialOuterBorderLayer = v26;

    [(CALayer *)v7->_dialOuterBorderLayer setCornerCurve:kCACornerCurveCircular];
    [(CALayer *)v7->_dialOuterBorderLayer setMasksToBounds:1];
    [(CALayer *)v7->_dialOuterBorderLayer setBorderWidth:0.0];
    v28 = v7->_dialOuterBorderLayer;
    v29 = +[UIColor orangeColor];
    -[CALayer setBorderColor:](v28, "setBorderColor:", [v29 CGColor]);

    [(CALayer *)v7->_dialOuterBorderLayer setActions:v10];
    v30 = [(NTKPoodleBackgroundView *)v7 layer];
    [v30 addSublayer:v7->_dialOuterBorderLayer];

    v31 = [(NTKPoodleBackgroundView *)v7 layer];
    [v31 setMasksToBounds:1];

    v32 = [(NTKPoodleBackgroundView *)v7 layer];
    v33 = sub_16AD8();
    [v32 setActions:v33];

    v34 = v7;
  }

  return v7;
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = NTKPoodleBackgroundView;
  [(NTKPoodleBackgroundView *)&v17 layoutSubviews];
  [(NTKPoodleBackgroundView *)self dialWidth];
  v4 = v3;
  [(NTKPoodleBackgroundView *)self bounds];
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  v19 = CGRectInset(v18, v4, v4);
  v9 = v19.origin.x;
  v10 = v19.origin.y;
  v11 = v19.size.width;
  v13 = v19.size.height;
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v20 = CGRectInset(v19, v4, v4);
  v15 = v20.origin.y;
  v16 = v20.origin.x;
  v12 = v20.size.width;
  v14 = v20.size.height;
  [(CALayer *)self->_dialInnerLayer setFrame:v9, v10, v11, v13];
  [(CALayer *)self->_dialInnerLayer setCornerRadius:v11 * 0.5];
  [(CALayer *)self->_dialOuterLayer setFrame:x, y, width, height];
  [(CALayer *)self->_dialOuterLayer setCornerRadius:width * 0.5];
  [(CALayer *)self->_dialInnerBorderLayer setFrame:v16, v15, v12, v14];
  [(CALayer *)self->_dialInnerBorderLayer setCornerRadius:v12 * 0.5];
  [(CALayer *)self->_dialOuterBorderLayer setFrame:x, y, width, height];
  [(CALayer *)self->_dialOuterBorderLayer setCornerRadius:width * 0.5];
}

- (void)setPalette:(id)a3
{
  objc_storeStrong(&self->_palette, a3);
  v5 = a3;
  dialInnerLayer = self->_dialInnerLayer;
  v7 = [v5 innerDialBackground];
  -[CALayer setBackgroundColor:](dialInnerLayer, "setBackgroundColor:", [v7 CGColor]);

  dialInnerBorderLayer = self->_dialInnerBorderLayer;
  v9 = [v5 innerDialBackgroundBorder];
  -[CALayer setBorderColor:](dialInnerBorderLayer, "setBorderColor:", [v9 CGColor]);

  v10 = self->_dialInnerBorderLayer;
  v11 = [v5 innerDialBorderWidth];
  [v11 floatValue];
  [(CALayer *)v10 setBorderWidth:v12];

  dialOuterLayer = self->_dialOuterLayer;
  v14 = [v5 outerDialBackground];
  -[CALayer setBorderColor:](dialOuterLayer, "setBorderColor:", [v14 CGColor]);

  dialOuterBorderLayer = self->_dialOuterBorderLayer;
  v16 = [v5 outerDialBackgroundBorder];
  -[CALayer setBorderColor:](dialOuterBorderLayer, "setBorderColor:", [v16 CGColor]);

  v17 = self->_dialOuterBorderLayer;
  v19 = [v5 outerDialBorderWidth];
  [v19 floatValue];
  [(CALayer *)v17 setBorderWidth:v18];
}

- (CGRect)faceBounds
{
  sub_16F44(self->_device, v6);
  v2 = v7;
  v3 = v8;
  v4 = v9;
  v5 = v10;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end