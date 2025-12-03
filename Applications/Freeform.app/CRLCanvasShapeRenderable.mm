@interface CRLCanvasShapeRenderable
+ (id)renderable;
+ (id)renderableFromShapeLayer:(id)layer;
- (CAShapeLayer)shapeLayer;
- (CGColor)fillColor;
- (CGColor)strokeColor;
- (CGPath)path;
- (CRLCanvasShapeRenderable)initWithShapeLayer:(id)layer;
- (NSArray)lineDashPattern;
- (NSString)lineCap;
- (NSString)lineJoin;
- (double)lineDashPhase;
- (double)lineWidth;
- (double)miterLimit;
- (double)strokeEnd;
- (void)setCGLineCap:(int)cap;
- (void)setCGLineJoin:(int)join;
- (void)setFillColor:(CGColor *)color;
- (void)setLineCap:(id)cap;
- (void)setLineDashPattern:(id)pattern;
- (void)setLineDashPhase:(double)phase;
- (void)setLineJoin:(id)join;
- (void)setLineWidth:(double)width;
- (void)setMiterLimit:(double)limit;
- (void)setPath:(CGPath *)path;
- (void)setStrokeColor:(CGColor *)color;
- (void)setStrokeEnd:(double)end;
@end

@implementation CRLCanvasShapeRenderable

- (CRLCanvasShapeRenderable)initWithShapeLayer:(id)layer
{
  v4.receiver = self;
  v4.super_class = CRLCanvasShapeRenderable;
  return [(CRLCanvasRenderable *)&v4 initWithCALayer:layer];
}

+ (id)renderableFromShapeLayer:(id)layer
{
  layerCopy = layer;
  v5 = [[self alloc] initWithShapeLayer:layerCopy];

  return v5;
}

+ (id)renderable
{
  v2 = [self alloc];
  v3 = +[CAShapeLayer layer];
  v4 = [v2 initWithShapeLayer:v3];

  return v4;
}

- (CAShapeLayer)shapeLayer
{
  v4.receiver = self;
  v4.super_class = CRLCanvasShapeRenderable;
  layer = [(CRLCanvasRenderable *)&v4 layer];

  return layer;
}

- (CGPath)path
{
  shapeLayer = [(CRLCanvasShapeRenderable *)self shapeLayer];
  path = [shapeLayer path];

  return path;
}

- (void)setPath:(CGPath *)path
{
  shapeLayer = [(CRLCanvasShapeRenderable *)self shapeLayer];
  [shapeLayer setPath:path];
}

- (CGColor)strokeColor
{
  shapeLayer = [(CRLCanvasShapeRenderable *)self shapeLayer];
  strokeColor = [shapeLayer strokeColor];

  return strokeColor;
}

- (void)setStrokeColor:(CGColor *)color
{
  shapeLayer = [(CRLCanvasShapeRenderable *)self shapeLayer];
  [shapeLayer setStrokeColor:color];
}

- (CGColor)fillColor
{
  shapeLayer = [(CRLCanvasShapeRenderable *)self shapeLayer];
  fillColor = [shapeLayer fillColor];

  return fillColor;
}

- (void)setFillColor:(CGColor *)color
{
  shapeLayer = [(CRLCanvasShapeRenderable *)self shapeLayer];
  [shapeLayer setFillColor:color];
}

- (double)lineWidth
{
  shapeLayer = [(CRLCanvasShapeRenderable *)self shapeLayer];
  [shapeLayer lineWidth];
  v4 = v3;

  return v4;
}

- (void)setLineWidth:(double)width
{
  shapeLayer = [(CRLCanvasShapeRenderable *)self shapeLayer];
  [shapeLayer setLineWidth:width];
}

- (NSArray)lineDashPattern
{
  shapeLayer = [(CRLCanvasShapeRenderable *)self shapeLayer];
  lineDashPattern = [shapeLayer lineDashPattern];

  return lineDashPattern;
}

- (void)setLineDashPattern:(id)pattern
{
  patternCopy = pattern;
  shapeLayer = [(CRLCanvasShapeRenderable *)self shapeLayer];
  [shapeLayer setLineDashPattern:patternCopy];
}

- (NSString)lineCap
{
  shapeLayer = [(CRLCanvasShapeRenderable *)self shapeLayer];
  lineCap = [shapeLayer lineCap];

  return lineCap;
}

- (void)setLineCap:(id)cap
{
  capCopy = cap;
  shapeLayer = [(CRLCanvasShapeRenderable *)self shapeLayer];
  [shapeLayer setLineCap:capCopy];
}

- (double)lineDashPhase
{
  shapeLayer = [(CRLCanvasShapeRenderable *)self shapeLayer];
  [shapeLayer lineDashPhase];
  v4 = v3;

  return v4;
}

- (void)setLineDashPhase:(double)phase
{
  shapeLayer = [(CRLCanvasShapeRenderable *)self shapeLayer];
  [shapeLayer setLineDashPhase:phase];
}

- (NSString)lineJoin
{
  shapeLayer = [(CRLCanvasShapeRenderable *)self shapeLayer];
  lineJoin = [shapeLayer lineJoin];

  return lineJoin;
}

- (void)setLineJoin:(id)join
{
  joinCopy = join;
  shapeLayer = [(CRLCanvasShapeRenderable *)self shapeLayer];
  [shapeLayer setLineJoin:joinCopy];
}

- (double)miterLimit
{
  shapeLayer = [(CRLCanvasShapeRenderable *)self shapeLayer];
  [shapeLayer miterLimit];
  v4 = v3;

  return v4;
}

- (void)setMiterLimit:(double)limit
{
  shapeLayer = [(CRLCanvasShapeRenderable *)self shapeLayer];
  [shapeLayer setMiterLimit:limit];
}

- (double)strokeEnd
{
  shapeLayer = [(CRLCanvasShapeRenderable *)self shapeLayer];
  [shapeLayer strokeEnd];
  v4 = v3;

  return v4;
}

- (void)setStrokeEnd:(double)end
{
  shapeLayer = [(CRLCanvasShapeRenderable *)self shapeLayer];
  [shapeLayer setStrokeEnd:end];
}

- (void)setCGLineCap:(int)cap
{
  v3 = @"butt";
  if (cap == 1)
  {
    v3 = @"round";
  }

  if (cap == 2)
  {
    v4 = @"square";
  }

  else
  {
    v4 = v3;
  }

  [(CRLCanvasShapeRenderable *)self setLineCap:v4];
}

- (void)setCGLineJoin:(int)join
{
  v3 = @"miter";
  if (join == 1)
  {
    v3 = @"round";
  }

  if (join == 2)
  {
    v4 = @"bevel";
  }

  else
  {
    v4 = v3;
  }

  [(CRLCanvasShapeRenderable *)self setLineJoin:v4];
}

@end