@interface AEAnnotationMarker
+ (CGSize)fillSizeForScale:(double)a3;
+ (CGSize)imageSizeForScale:(double)a3;
+ (double)borderWidthForScale:(double)a3;
- (AEAnnotationMarker)initWithAnnotationStyle:(int)a3 contentScale:(double)a4 cornerRadius:(double)a5;
- (AEAnnotationMarker)initWithAnnotationStyle:(int)a3 contentScale:(double)a4 cornerRadius:(double)a5 hasBorder:(BOOL)a6;
- (BOOL)p_hasBorder;
- (CGSize)imageSize;
- (CGSize)p_fillSize;
- (UIEdgeInsets)edgeInsets;
- (id)p_markerColor:(id)a3 withEffect:(int)a4;
- (void)dealloc;
- (void)p_updateLayerColors;
- (void)p_updateLayerDimensions;
- (void)setContentScale:(double)a3;
- (void)setEffect:(int)a3;
- (void)setPageTheme:(int64_t)a3;
- (void)setStrikethrough:(BOOL)a3;
- (void)setStyle:(int)a3;
- (void)setViewScale:(double)a3;
@end

@implementation AEAnnotationMarker

- (AEAnnotationMarker)initWithAnnotationStyle:(int)a3 contentScale:(double)a4 cornerRadius:(double)a5 hasBorder:(BOOL)a6
{
  v6 = a6;
  v7 = [(AEAnnotationMarker *)self initWithAnnotationStyle:*&a3 contentScale:a4 cornerRadius:a5];
  if (v7)
  {
    v8 = [NSNumber numberWithBool:v6];
    overrideHasBorder = v7->_overrideHasBorder;
    v7->_overrideHasBorder = v8;
  }

  return v7;
}

- (AEAnnotationMarker)initWithAnnotationStyle:(int)a3 contentScale:(double)a4 cornerRadius:(double)a5
{
  v13.receiver = self;
  v13.super_class = AEAnnotationMarker;
  v8 = [(AEAnnotationMarker *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_contentScale = a4;
    v8->_viewScale = 1.0;
    v8->_pageTheme = 4;
    v8->_effect = 0;
    v8->_style = a3;
    v8->_strikethrough = 0;
    v10 = objc_alloc_init(AEAnnotationMarkerLayer);
    layer = v9->_layer;
    v9->_layer = &v10->super;

    [(CALayer *)v9->_layer setDelegate:v9];
    if (a5 > 0.0)
    {
      [(CALayer *)v9->_layer setCornerRadius:a5];
      [(CALayer *)v9->_layer setCornerCurve:kCACornerCurveContinuous];
    }

    [(AEAnnotationMarker *)v9 p_updateLayerDimensions];
    [(AEAnnotationMarker *)v9 p_updateLayerColors];
  }

  return v9;
}

- (void)dealloc
{
  [(CALayer *)self->_layer setDelegate:0];
  [(CAShapeLayer *)self->_strikethroughLayer setDelegate:0];
  v3.receiver = self;
  v3.super_class = AEAnnotationMarker;
  [(AEAnnotationMarker *)&v3 dealloc];
}

+ (CGSize)fillSizeForScale:(double)a3
{
  v3 = 21.0;
  v4 = 21.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)p_fillSize
{
  [AEAnnotationMarker fillSizeForScale:self->_contentScale];
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)imageSizeForScale:(double)a3
{
  [a1 borderWidthForScale:?];
  v6 = v5 + v5;
  [a1 fillSizeForScale:a3];
  v8 = v6 + v7;
  v10 = v6 + v9;
  result.height = v10;
  result.width = v8;
  return result;
}

- (CGSize)imageSize
{
  [AEAnnotationMarker imageSizeForScale:self->_contentScale];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setStyle:(int)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    [(AEAnnotationMarker *)self p_updateLayerColors];
  }
}

- (void)setPageTheme:(int64_t)a3
{
  if (self->_pageTheme != a3)
  {
    self->_pageTheme = a3;
    [(AEAnnotationMarker *)self p_updateLayerColors];
  }
}

- (void)setStrikethrough:(BOOL)a3
{
  if (self->_strikethrough != a3)
  {
    v12 = v4;
    v13 = v3;
    v7 = a3;
    self->_strikethrough = a3;
    if (a3)
    {
      if (!self->_strikethroughLayer)
      {
        v9 = objc_alloc_init(CAShapeLayer);
        strikethroughLayer = self->_strikethroughLayer;
        self->_strikethroughLayer = v9;

        [(CAShapeLayer *)self->_strikethroughLayer setDelegate:self];
        [(CALayer *)self->_layer addSublayer:self->_strikethroughLayer];
      }

      [(AEAnnotationMarker *)self p_updateLayerDimensions:v12];
      [(AEAnnotationMarker *)self p_updateLayerColors];
    }

    v11 = self->_strikethroughLayer;

    [(CAShapeLayer *)v11 setHidden:!v7];
  }
}

- (void)setEffect:(int)a3
{
  if (self->_effect != a3)
  {
    self->_effect = a3;
    [(AEAnnotationMarker *)self p_updateLayerColors];
  }
}

- (void)setContentScale:(double)a3
{
  if (self->_contentScale != a3)
  {
    self->_contentScale = a3;
    [(AEAnnotationMarker *)self p_updateLayerDimensions];
  }
}

- (void)setViewScale:(double)a3
{
  if (self->_viewScale != a3)
  {
    self->_viewScale = a3;
    [(AEAnnotationMarker *)self p_updateLayerDimensions];
  }
}

+ (double)borderWidthForScale:(double)a3
{
  if (a3 == 0.0)
  {
    return 1.0;
  }

  else
  {
    return 1.0 / a3;
  }
}

- (BOOL)p_hasBorder
{
  v3 = [(AEAnnotationMarker *)self overrideHasBorder];

  if (v3)
  {
    v4 = [(AEAnnotationMarker *)self overrideHasBorder];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v4 = [AEAnnotationTheme themeForAnnotationStyle:"themeForAnnotationStyle:pageTheme:isUnderline:" pageTheme:? isUnderline:?];
    v5 = [v4 noteMarkerHasBorder];
  }

  v6 = v5;

  return v6;
}

- (id)p_markerColor:(id)a3 withEffect:(int)a4
{
  v5 = a3;
  v6 = v5;
  v7 = v5;
  if (a4 == 1)
  {
    v7 = [v5 bc_darkenedColorByFactor:0.2];
  }

  return v7;
}

- (void)p_updateLayerDimensions
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(AEAnnotationMarker *)self imageSize];
  v4 = v3;
  v6 = v5;
  [(AEAnnotationMarker *)self p_borderWidth];
  v8 = v7;
  viewScale = self->_viewScale;
  if (viewScale > 0.0 && viewScale != 1.0)
  {
    memset(&v19, 0, sizeof(v19));
    CGAffineTransformMakeScale(&v19, viewScale, viewScale);
    v11 = v6 * v19.d + v19.b * v4;
    v4 = round(v6 * v19.c + v19.a * v4);
    v6 = round(v11);
  }

  [(CALayer *)self->_layer setBounds:0.0, 0.0, v4, v6];
  [(CALayer *)self->_layer setBorderWidth:v8];
  if (self->_strikethrough)
  {
    v12 = v4 - (v8 + v8);
    v13 = v6 - (v8 + v8);
    Mutable = CGPathCreateMutable();
    v20.origin.x = v8;
    v20.origin.y = v8;
    v20.size.width = v12;
    v20.size.height = v13;
    MaxX = CGRectGetMaxX(v20);
    v21.origin.x = v8;
    v21.origin.y = v8;
    v21.size.width = v12;
    v21.size.height = v13;
    MinY = CGRectGetMinY(v21);
    CGPathMoveToPoint(Mutable, 0, MaxX, MinY);
    v22.origin.x = v8;
    v22.origin.y = v8;
    v22.size.width = v12;
    v22.size.height = v13;
    MinX = CGRectGetMinX(v22);
    v23.origin.x = v8;
    v23.origin.y = v8;
    v23.size.width = v12;
    v23.size.height = v13;
    MaxY = CGRectGetMaxY(v23);
    CGPathAddLineToPoint(Mutable, 0, MinX, MaxY);
    [(CAShapeLayer *)self->_strikethroughLayer setPath:Mutable];
    [(CAShapeLayer *)self->_strikethroughLayer setLineWidth:1.0];
    CGPathRelease(Mutable);
  }

  +[CATransaction commit];
}

- (void)p_updateLayerColors
{
  v3 = [(AEAnnotationMarker *)self effect];
  v4 = [AEAnnotationTheme themeForAnnotationStyle:"themeForAnnotationStyle:pageTheme:isUnderline:" pageTheme:? isUnderline:?];
  if (v4)
  {
    v14 = v4;
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    pageTheme = self->_pageTheme;
    v6 = [v14 noteMarkerFillColor];
    v7 = [v6 bkaxAdjustedForIncreaseContrastAdjustingDarker:pageTheme < 2];
    v8 = [(AEAnnotationMarker *)self p_markerColor:v7 withEffect:v3];
    -[CALayer setBackgroundColor:](self->_layer, "setBackgroundColor:", [v8 CGColor]);

    if ([(AEAnnotationMarker *)self p_hasBorder])
    {
      v9 = [v14 noteMarkerBorderColor];
      v10 = [v9 bkaxAdjustedForIncreaseContrastAdjustingDarker:pageTheme < 2];
      v11 = [(AEAnnotationMarker *)self p_markerColor:v10 withEffect:v3];
      -[CALayer setBorderColor:](self->_layer, "setBorderColor:", [v11 CGColor]);
    }

    else
    {
      v9 = +[UIColor clearColor];
      -[CALayer setBorderColor:](self->_layer, "setBorderColor:", [v9 CGColor]);
    }

    [(CALayer *)self->_layer setCornerRadius:4.0];
    [(CALayer *)self->_layer setCornerCurve:kCACornerCurveContinuous];
    if (self->_strikethrough)
    {
      v12 = [v14 noteMarkerStrikethroughColor];
      v13 = [(AEAnnotationMarker *)self p_markerColor:v12 withEffect:v3];
      -[CAShapeLayer setStrokeColor:](self->_strikethroughLayer, "setStrokeColor:", [v13 CGColor]);
    }

    +[CATransaction commit];
    v4 = v14;
  }
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end