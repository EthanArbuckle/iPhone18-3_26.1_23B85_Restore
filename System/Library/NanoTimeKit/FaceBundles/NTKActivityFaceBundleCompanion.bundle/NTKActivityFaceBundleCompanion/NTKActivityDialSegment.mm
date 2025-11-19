@interface NTKActivityDialSegment
- (CGRect)_computeArcFrame;
- (NTKActivityDialSegment)initWithHourIndex:(int64_t)a3 LayoutConstants:(id *)a4 dialRadius:(double)a5 device:(id)a6;
- (id)_createArcImageWithFrame:(CGRect)a3 insetAngle:(double)a4;
- (void)_updateTransform;
- (void)setAlpha:(double)a3;
- (void)setColorScheme:(id)a3;
- (void)setTickScale:(double)a3;
@end

@implementation NTKActivityDialSegment

- (NTKActivityDialSegment)initWithHourIndex:(int64_t)a3 LayoutConstants:(id *)a4 dialRadius:(double)a5 device:(id)a6
{
  v11 = a6;
  v47.receiver = self;
  v47.super_class = NTKActivityDialSegment;
  v12 = [(NTKActivityDialSegment *)&v47 init];
  v13 = v12;
  if (v12)
  {
    var1 = a4->var1;
    var0 = a4->var0;
    v14 = a4->var0;
    v12->_dialCenter.x = a5;
    v12->_dialCenter.y = a5;
    v16 = v14 * 0.5;
    v12->_midRadius = a5 - v16;
    v12->_outerRadius = a5;
    v12->_innerRadius = a5 - v16 - v16;
    v17 = 6.28318531 / a4->var2;
    v18 = v17 * a3;
    v12->_tickRotation = v18;
    v12->_startAngle = v18 + -1.57079633;
    v12->_endAngle = v17 + v18 + -1.57079633;
    [(NTKActivityDialSegment *)v12 _computeArcFrame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    x = v13->_dialCenter.x;
    midRadius = v13->_midRadius;
    v29 = __sincos_stret(v13->_tickRotation + -1.57079633);
    v30 = x + midRadius * v29.__cosval;
    v31 = v13->_dialCenter.y + midRadius * v29.__sinval;
    v32 = var1 * 0.5 / v13->_outerRadius;
    v33 = [(NTKActivityDialSegment *)v13 _createArcImageWithFrame:v20 insetAngle:v22, v24, v26, asinf(v32)];
    v34 = objc_opt_new();
    tickLayer = v13->_tickLayer;
    v13->_tickLayer = v34;

    v36 = +[NSNull null];
    v37 = v13->_tickLayer;
    v38 = +[UIColor whiteColor];
    -[CALayer setBackgroundColor:](v37, "setBackgroundColor:", [v38 CGColor]);

    v39 = v13->_tickLayer;
    v50[0] = @"transform";
    v50[1] = @"contentsMultiplyColor";
    v51[0] = v36;
    v51[1] = v36;
    v40 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:2];
    [(CALayer *)v39 setActions:v40];

    [(CALayer *)v13->_tickLayer setBounds:CGPointZero.x, CGPointZero.y, var1, var0];
    [(CALayer *)v13->_tickLayer setPosition:v30, v31];
    v13->_tickScale = 1.0;
    v41 = objc_opt_new();
    arcLayer = v13->_arcLayer;
    v13->_arcLayer = v41;

    v43 = v13->_arcLayer;
    v48 = @"contentsMultiplyColor";
    v49 = v36;
    v44 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    [(CALayer *)v43 setActions:v44];

    -[CALayer setContents:](v13->_arcLayer, "setContents:", [v33 CGImage]);
    [(CALayer *)v13->_arcLayer setFrame:v20, v22, v24, v26];
    [(NTKActivityDialSegment *)v13 _updateTransform];
    objc_storeStrong(&v13->_device, a6);
  }

  return v13;
}

- (CGRect)_computeArcFrame
{
  x = self->_dialCenter.x;
  outerRadius = self->_outerRadius;
  v5 = __sincos_stret(self->_startAngle);
  v6 = x + outerRadius * v5.__cosval;
  y = self->_dialCenter.y;
  v8 = y + outerRadius * v5.__sinval;
  v9 = __sincos_stret(self->_endAngle);
  v10 = x + outerRadius * v9.__cosval;
  v11 = y + outerRadius * v9.__sinval;
  innerRadius = self->_innerRadius;
  v13 = x + innerRadius * v5.__cosval;
  v14 = y + innerRadius * v5.__sinval;
  v15 = x + innerRadius * v9.__cosval;
  v16 = y + innerRadius * v9.__sinval;
  if (v14 >= v16)
  {
    v17 = y + innerRadius * v9.__sinval;
  }

  else
  {
    v17 = y + innerRadius * v5.__sinval;
  }

  if (v14 < v16)
  {
    v14 = v16;
  }

  if (v13 >= v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = v13;
  }

  if (v13 < v15)
  {
    v13 = v15;
  }

  if (v10 < v18)
  {
    v18 = x + outerRadius * v9.__cosval;
  }

  if (v6 < v18)
  {
    v18 = x + outerRadius * v5.__cosval;
  }

  v19 = floor(v18);
  if (v11 >= v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = y + outerRadius * v9.__sinval;
  }

  if (v8 < v20)
  {
    v20 = y + outerRadius * v5.__sinval;
  }

  v21 = floor(v20);
  if (v10 < v13)
  {
    v10 = v13;
  }

  if (v6 >= v10)
  {
    v10 = x + outerRadius * v5.__cosval;
  }

  v22 = ceil(v10);
  if (v11 < v14)
  {
    v11 = v14;
  }

  if (v8 >= v11)
  {
    v11 = y + outerRadius * v5.__sinval;
  }

  v23 = v22 - v19;
  v24 = ceil(v11) - v21;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v21;
  result.origin.x = v19;
  return result;
}

- (id)_createArcImageWithFrame:(CGRect)a3 insetAngle:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  v8 = self->_dialCenter.x - a3.origin.x;
  v9 = self->_dialCenter.y - a3.origin.y;
  v10 = objc_alloc_init(UIBezierPath);
  [v10 addArcWithCenter:1 radius:v8 startAngle:v9 endAngle:self->_outerRadius clockwise:{self->_startAngle + a4, self->_endAngle - a4}];
  [v10 addArcWithCenter:0 radius:v8 startAngle:v9 endAngle:self->_innerRadius clockwise:{self->_endAngle - a4, self->_startAngle + a4}];
  [v10 closePath];
  v16.width = width;
  v16.height = height;
  UIGraphicsBeginImageContextWithOptions(v16, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = width;
  v17.size.height = height;
  CGContextClearRect(CurrentContext, v17);
  v12 = +[UIColor whiteColor];
  [v12 setFill];

  [v10 fill];
  v13 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v13;
}

- (void)setColorScheme:(id)a3
{
  v5 = a3;
  p_colorScheme = &self->_colorScheme;
  if (self->_colorScheme != v5)
  {
    v11 = v5;
    objc_storeStrong(p_colorScheme, a3);
    arcLayer = self->_arcLayer;
    v8 = [(NTKFaceColorScheme *)v11 shiftedBackgroundColor];
    -[CALayer setContentsMultiplyColor:](arcLayer, "setContentsMultiplyColor:", [v8 CGColor]);

    tickLayer = self->_tickLayer;
    v10 = [(NTKFaceColorScheme *)v11 activityTickColor];
    -[CALayer setBackgroundColor:](tickLayer, "setBackgroundColor:", [v10 CGColor]);

    v5 = v11;
  }

  _objc_release_x1(p_colorScheme, v5);
}

- (void)setAlpha:(double)a3
{
  alpha = self->_alpha;
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_alpha = a3;
    *&v6 = a3;
    [(CALayer *)self->_tickLayer setOpacity:v6];
    arcLayer = self->_arcLayer;
    v8 = self->_alpha;
    *&v8 = v8;

    [(CALayer *)arcLayer setOpacity:v8];
  }
}

- (void)setTickScale:(double)a3
{
  tickScale = self->_tickScale;
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_tickScale = a3;

    [(NTKActivityDialSegment *)self _updateTransform];
  }
}

- (void)_updateTransform
{
  tickLayer = self->_tickLayer;
  CATransform3DMakeScale(&a, self->_tickScale, 1.0, 1.0);
  CATransform3DMakeRotation(&v4, self->_tickRotation, 0.0, 0.0, 1.0);
  CATransform3DConcat(&v6, &a, &v4);
  [(CALayer *)tickLayer setTransform:&v6];
}

@end