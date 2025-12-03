@interface AEAnnotationMarker
+ (CGSize)fillSizeForScale:(double)scale;
+ (CGSize)imageSizeForScale:(double)scale;
+ (double)borderWidthForScale:(double)scale;
- (AEAnnotationMarker)initWithAnnotationStyle:(int)style contentScale:(double)scale cornerRadius:(double)radius;
- (AEAnnotationMarker)initWithAnnotationStyle:(int)style contentScale:(double)scale cornerRadius:(double)radius hasBorder:(BOOL)border;
- (BOOL)p_hasBorder;
- (CGSize)imageSize;
- (CGSize)p_fillSize;
- (UIEdgeInsets)edgeInsets;
- (id)p_markerColor:(id)color withEffect:(int)effect;
- (void)dealloc;
- (void)p_updateLayerColors;
- (void)p_updateLayerDimensions;
- (void)setContentScale:(double)scale;
- (void)setEffect:(int)effect;
- (void)setPageTheme:(int64_t)theme;
- (void)setStrikethrough:(BOOL)strikethrough;
- (void)setStyle:(int)style;
- (void)setViewScale:(double)scale;
@end

@implementation AEAnnotationMarker

- (AEAnnotationMarker)initWithAnnotationStyle:(int)style contentScale:(double)scale cornerRadius:(double)radius hasBorder:(BOOL)border
{
  borderCopy = border;
  v7 = [(AEAnnotationMarker *)self initWithAnnotationStyle:*&style contentScale:scale cornerRadius:radius];
  if (v7)
  {
    v8 = [NSNumber numberWithBool:borderCopy];
    overrideHasBorder = v7->_overrideHasBorder;
    v7->_overrideHasBorder = v8;
  }

  return v7;
}

- (AEAnnotationMarker)initWithAnnotationStyle:(int)style contentScale:(double)scale cornerRadius:(double)radius
{
  v13.receiver = self;
  v13.super_class = AEAnnotationMarker;
  v8 = [(AEAnnotationMarker *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_contentScale = scale;
    v8->_viewScale = 1.0;
    v8->_pageTheme = 4;
    v8->_effect = 0;
    v8->_style = style;
    v8->_strikethrough = 0;
    v10 = objc_alloc_init(AEAnnotationMarkerLayer);
    layer = v9->_layer;
    v9->_layer = &v10->super;

    [(CALayer *)v9->_layer setDelegate:v9];
    if (radius > 0.0)
    {
      [(CALayer *)v9->_layer setCornerRadius:radius];
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

+ (CGSize)fillSizeForScale:(double)scale
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

+ (CGSize)imageSizeForScale:(double)scale
{
  [self borderWidthForScale:?];
  v6 = v5 + v5;
  [self fillSizeForScale:scale];
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

- (void)setStyle:(int)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(AEAnnotationMarker *)self p_updateLayerColors];
  }
}

- (void)setPageTheme:(int64_t)theme
{
  if (self->_pageTheme != theme)
  {
    self->_pageTheme = theme;
    [(AEAnnotationMarker *)self p_updateLayerColors];
  }
}

- (void)setStrikethrough:(BOOL)strikethrough
{
  if (self->_strikethrough != strikethrough)
  {
    v12 = v4;
    v13 = v3;
    strikethroughCopy = strikethrough;
    self->_strikethrough = strikethrough;
    if (strikethrough)
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

    [(CAShapeLayer *)v11 setHidden:!strikethroughCopy];
  }
}

- (void)setEffect:(int)effect
{
  if (self->_effect != effect)
  {
    self->_effect = effect;
    [(AEAnnotationMarker *)self p_updateLayerColors];
  }
}

- (void)setContentScale:(double)scale
{
  if (self->_contentScale != scale)
  {
    self->_contentScale = scale;
    [(AEAnnotationMarker *)self p_updateLayerDimensions];
  }
}

- (void)setViewScale:(double)scale
{
  if (self->_viewScale != scale)
  {
    self->_viewScale = scale;
    [(AEAnnotationMarker *)self p_updateLayerDimensions];
  }
}

+ (double)borderWidthForScale:(double)scale
{
  if (scale == 0.0)
  {
    return 1.0;
  }

  else
  {
    return 1.0 / scale;
  }
}

- (BOOL)p_hasBorder
{
  overrideHasBorder = [(AEAnnotationMarker *)self overrideHasBorder];

  if (overrideHasBorder)
  {
    overrideHasBorder2 = [(AEAnnotationMarker *)self overrideHasBorder];
    bOOLValue = [overrideHasBorder2 BOOLValue];
  }

  else
  {
    overrideHasBorder2 = [AEAnnotationTheme themeForAnnotationStyle:"themeForAnnotationStyle:pageTheme:isUnderline:" pageTheme:? isUnderline:?];
    bOOLValue = [overrideHasBorder2 noteMarkerHasBorder];
  }

  v6 = bOOLValue;

  return v6;
}

- (id)p_markerColor:(id)color withEffect:(int)effect
{
  colorCopy = color;
  v6 = colorCopy;
  v7 = colorCopy;
  if (effect == 1)
  {
    v7 = [colorCopy bc_darkenedColorByFactor:0.2];
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
  effect = [(AEAnnotationMarker *)self effect];
  v4 = [AEAnnotationTheme themeForAnnotationStyle:"themeForAnnotationStyle:pageTheme:isUnderline:" pageTheme:? isUnderline:?];
  if (v4)
  {
    v14 = v4;
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    pageTheme = self->_pageTheme;
    noteMarkerFillColor = [v14 noteMarkerFillColor];
    v7 = [noteMarkerFillColor bkaxAdjustedForIncreaseContrastAdjustingDarker:pageTheme < 2];
    v8 = [(AEAnnotationMarker *)self p_markerColor:v7 withEffect:effect];
    -[CALayer setBackgroundColor:](self->_layer, "setBackgroundColor:", [v8 CGColor]);

    if ([(AEAnnotationMarker *)self p_hasBorder])
    {
      noteMarkerBorderColor = [v14 noteMarkerBorderColor];
      v10 = [noteMarkerBorderColor bkaxAdjustedForIncreaseContrastAdjustingDarker:pageTheme < 2];
      v11 = [(AEAnnotationMarker *)self p_markerColor:v10 withEffect:effect];
      -[CALayer setBorderColor:](self->_layer, "setBorderColor:", [v11 CGColor]);
    }

    else
    {
      noteMarkerBorderColor = +[UIColor clearColor];
      -[CALayer setBorderColor:](self->_layer, "setBorderColor:", [noteMarkerBorderColor CGColor]);
    }

    [(CALayer *)self->_layer setCornerRadius:4.0];
    [(CALayer *)self->_layer setCornerCurve:kCACornerCurveContinuous];
    if (self->_strikethrough)
    {
      noteMarkerStrikethroughColor = [v14 noteMarkerStrikethroughColor];
      v13 = [(AEAnnotationMarker *)self p_markerColor:noteMarkerStrikethroughColor withEffect:effect];
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