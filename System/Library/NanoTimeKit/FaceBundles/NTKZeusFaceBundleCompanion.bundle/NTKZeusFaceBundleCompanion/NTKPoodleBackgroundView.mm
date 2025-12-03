@interface NTKPoodleBackgroundView
- (CGRect)faceBounds;
- (NTKPoodleBackgroundView)initWithDevice:(id)device;
- (void)layoutSubviews;
- (void)setPalette:(id)palette;
@end

@implementation NTKPoodleBackgroundView

- (NTKPoodleBackgroundView)initWithDevice:(id)device
{
  deviceCopy = device;
  sub_16F44(deviceCopy, v37);
  v36.receiver = self;
  v36.super_class = NTKPoodleBackgroundView;
  v6 = [(NTKPoodleBackgroundView *)&v36 initWithFrame:v38, v39, v40, v41];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
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
    layer = [(NTKPoodleBackgroundView *)v7 layer];
    [layer addSublayer:v7->_dialInnerLayer];

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
    layer2 = [(NTKPoodleBackgroundView *)v7 layer];
    [layer2 addSublayer:v7->_dialOuterLayer];

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
    layer3 = [(NTKPoodleBackgroundView *)v7 layer];
    [layer3 addSublayer:v7->_dialInnerBorderLayer];

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
    layer4 = [(NTKPoodleBackgroundView *)v7 layer];
    [layer4 addSublayer:v7->_dialOuterBorderLayer];

    layer5 = [(NTKPoodleBackgroundView *)v7 layer];
    [layer5 setMasksToBounds:1];

    layer6 = [(NTKPoodleBackgroundView *)v7 layer];
    v33 = sub_16AD8();
    [layer6 setActions:v33];

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

- (void)setPalette:(id)palette
{
  objc_storeStrong(&self->_palette, palette);
  paletteCopy = palette;
  dialInnerLayer = self->_dialInnerLayer;
  innerDialBackground = [paletteCopy innerDialBackground];
  -[CALayer setBackgroundColor:](dialInnerLayer, "setBackgroundColor:", [innerDialBackground CGColor]);

  dialInnerBorderLayer = self->_dialInnerBorderLayer;
  innerDialBackgroundBorder = [paletteCopy innerDialBackgroundBorder];
  -[CALayer setBorderColor:](dialInnerBorderLayer, "setBorderColor:", [innerDialBackgroundBorder CGColor]);

  v10 = self->_dialInnerBorderLayer;
  innerDialBorderWidth = [paletteCopy innerDialBorderWidth];
  [innerDialBorderWidth floatValue];
  [(CALayer *)v10 setBorderWidth:v12];

  dialOuterLayer = self->_dialOuterLayer;
  outerDialBackground = [paletteCopy outerDialBackground];
  -[CALayer setBorderColor:](dialOuterLayer, "setBorderColor:", [outerDialBackground CGColor]);

  dialOuterBorderLayer = self->_dialOuterBorderLayer;
  outerDialBackgroundBorder = [paletteCopy outerDialBackgroundBorder];
  -[CALayer setBorderColor:](dialOuterBorderLayer, "setBorderColor:", [outerDialBackgroundBorder CGColor]);

  v17 = self->_dialOuterBorderLayer;
  outerDialBorderWidth = [paletteCopy outerDialBorderWidth];
  [outerDialBorderWidth floatValue];
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