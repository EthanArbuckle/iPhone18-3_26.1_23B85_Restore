@interface LPCircularProgressIndicator
- (LPCircularProgressIndicator)initWithHost:(id)host style:(id)style;
- (void)layoutSubviews;
- (void)updatePaths;
@end

@implementation LPCircularProgressIndicator

- (LPCircularProgressIndicator)initWithHost:(id)host style:(id)style
{
  styleCopy = style;
  v21.receiver = self;
  v21.super_class = LPCircularProgressIndicator;
  v7 = [(LPCircularProgressIndicator *)&v21 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_style, style);
    v9 = objc_alloc_init(MEMORY[0x1E69794A0]);
    borderLayer = v8->_borderLayer;
    v8->_borderLayer = v9;

    [(CAShapeLayer *)v8->_borderLayer setName:@"borderLayer"];
    [styleCopy borderWidth];
    [(CAShapeLayer *)v8->_borderLayer setLineWidth:?];
    borderColor = [styleCopy borderColor];
    -[CAShapeLayer setStrokeColor:](v8->_borderLayer, "setStrokeColor:", [borderColor CGColor]);

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    -[CAShapeLayer setFillColor:](v8->_borderLayer, "setFillColor:", [clearColor CGColor]);

    v13 = objc_alloc_init(MEMORY[0x1E69794A0]);
    progressLayer = v8->_progressLayer;
    v8->_progressLayer = v13;

    [(CAShapeLayer *)v8->_progressLayer setName:@"progressLayer"];
    fillColor = [styleCopy fillColor];
    -[CAShapeLayer setFillColor:](v8->_progressLayer, "setFillColor:", [fillColor CGColor]);

    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    -[CAShapeLayer setStrokeColor:](v8->_progressLayer, "setStrokeColor:", [clearColor2 CGColor]);

    layer = [(LPCircularProgressIndicator *)v8 layer];
    [layer addSublayer:v8->_progressLayer];

    layer2 = [(LPCircularProgressIndicator *)v8 layer];
    [layer2 addSublayer:v8->_borderLayer];

    v19 = v8;
  }

  return v8;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = LPCircularProgressIndicator;
  [(LPCircularProgressIndicator *)&v3 layoutSubviews];
  [(LPCircularProgressIndicator *)self bounds];
  [(CAShapeLayer *)self->_borderLayer setFrame:?];
  [(LPCircularProgressIndicator *)self bounds];
  [(CAShapeLayer *)self->_progressLayer setFrame:?];
  [(LPCircularProgressIndicator *)self updatePaths];
}

- (void)updatePaths
{
  v3 = MEMORY[0x1E69DC728];
  [(LPCircularProgressIndicator *)self bounds];
  v10 = [v3 bezierPathWithOvalInRect:?];
  -[CAShapeLayer setPath:](self->_borderLayer, "setPath:", [v10 CGPath]);
  [(LPCircularProgressIndicator *)self bounds];
  Width = CGRectGetWidth(v12);
  [(LPCircularProgressIndicatorStyle *)self->_style borderWidth];
  v6 = v5;
  [(LPCircularProgressIndicator *)self bounds];
  MidX = CGRectGetMidX(v13);
  [(LPCircularProgressIndicator *)self bounds];
  MidY = CGRectGetMidY(v14);
  bezierPath = [MEMORY[0x1E69DC728] bezierPath];
  [bezierPath moveToPoint:{MidX, MidY}];
  [bezierPath addArcWithCenter:1 radius:MidX startAngle:MidY endAngle:(Width - v6) * 0.5 clockwise:{-1.57079633, (self->_progress * 360.0 + -90.0) * 3.14159265 / 180.0}];
  [bezierPath addLineToPoint:{MidX, MidY}];
  -[CAShapeLayer setPath:](self->_progressLayer, "setPath:", [bezierPath CGPath]);
}

@end