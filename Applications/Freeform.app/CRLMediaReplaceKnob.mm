@interface CRLMediaReplaceKnob
- (BOOL)isHitByUnscaledPoint:(CGPoint)point inputType:(int64_t)type returningDistance:(double *)distance;
- (CRLMediaReplaceKnob)initWithImage:(id)image radius:(double)radius backgroundColor:(id)color onRep:(id)rep;
- (CRLMediaReplaceKnob)initWithImage:(id)image size:(CGSize)size backgroundColor:(id)color cornerRadius:(double)radius onRep:(id)rep;
- (id)createKnobRenderable;
- (void)setBackgroundCircleColor:(id)color;
- (void)setHidden:(BOOL)hidden;
- (void)updateHitRegionPath;
@end

@implementation CRLMediaReplaceKnob

- (CRLMediaReplaceKnob)initWithImage:(id)image radius:(double)radius backgroundColor:(id)color onRep:(id)rep
{
  colorCopy = color;
  objc_storeStrong(&self->_backgroundColor, color);
  repCopy = rep;
  imageCopy = image;
  v28.receiver = self;
  v28.super_class = CRLMediaReplaceKnob;
  v14 = [(CRLCanvasButtonKnob *)&v28 initWithImage:0 radius:5 tag:repCopy onRep:radius];

  [(CRLCanvasKnob *)v14 setShouldDisplayDirectlyOverRep:1];
  [(CRLCanvasKnob *)v14 setRadius:radius];
  [(CRLCanvasButtonKnob *)v14 setImage:imageCopy];

  renderable = [(CRLCanvasKnob *)v14 renderable];
  [renderable bounds];
  v17 = v16;

  if (v17 != 0.0)
  {
    renderable2 = [(CRLCanvasKnob *)v14 renderable];
    [renderable2 bounds];
    v23 = sub_100120414(v19, v20, v21, v22);
    v25 = v24;
    imageRenderable = [(CRLCanvasButtonKnob *)v14 imageRenderable];
    [imageRenderable setPosition:{v23, v25}];
  }

  [(CRLMediaReplaceKnob *)v14 setHidden:0];

  return v14;
}

- (CRLMediaReplaceKnob)initWithImage:(id)image size:(CGSize)size backgroundColor:(id)color cornerRadius:(double)radius onRep:(id)rep
{
  self->_size = size;
  self->_cornerRadius = radius;
  return [(CRLMediaReplaceKnob *)self initWithImage:image radius:color backgroundColor:rep onRep:0.0];
}

- (void)updateHitRegionPath
{
  [(CRLCanvasKnob *)self radius];
  v4 = [CRLBezierPath bezierPathWithOvalInRect:-v3, -v3, v3 + v3, v3 + v3];
  [(CRLCanvasKnob *)self setHitRegionPath:v4];
}

- (void)setBackgroundCircleColor:(id)color
{
  colorCopy = color;
  v5 = objc_opt_class();
  renderable = [(CRLCanvasKnob *)self renderable];
  v9 = sub_100014370(v5, renderable);

  cGColor = [colorCopy CGColor];
  [v9 setFillColor:cGColor];
  v8 = +[CRLColor clearColor];
  [v9 setStrokeColor:{objc_msgSend(v8, "CGColor")}];
}

- (id)createKnobRenderable
{
  v3 = +[CRLCanvasShapeRenderable renderable];
  [(CRLCanvasKnob *)self radius];
  if (v4 == 0.0)
  {
    [v3 setBounds:sub_10011ECB4()];
    [v3 setCornerRadius:self->_cornerRadius];
    [v3 setBackgroundColor:{-[CRLColor CGColor](self->_backgroundColor, "CGColor")}];
  }

  else
  {
    Mutable = CGPathCreateMutable();
    [(CRLCanvasKnob *)self radius];
    v7 = v6 + v6;
    y = CGPointZero.y;
    [v3 setBounds:{CGPointZero.x, y, v7, v7}];
    v11.origin.x = CGPointZero.x;
    v11.origin.y = y;
    v11.size.width = v7;
    v11.size.height = v7;
    CGPathAddEllipseInRect(Mutable, 0, v11);
    [v3 setPath:Mutable];
    CGPathRelease(Mutable);
    [v3 setFillColor:{-[CRLColor CGColor](self->_backgroundColor, "CGColor")}];
  }

  return v3;
}

- (BOOL)isHitByUnscaledPoint:(CGPoint)point inputType:(int64_t)type returningDistance:(double *)distance
{
  y = point.y;
  x = point.x;
  v13.receiver = self;
  v13.super_class = CRLMediaReplaceKnob;
  if (![(CRLCanvasButtonKnob *)&v13 isHitByUnscaledPoint:type inputType:distance returningDistance:?])
  {
    return 0;
  }

  v8 = [(CRLCanvasKnob *)self rep];
  interactiveCanvasController = [v8 interactiveCanvasController];
  v10 = [interactiveCanvasController hitRep:{x, y}];

  v11 = v10 == v8;
  return v11;
}

- (void)setHidden:(BOOL)hidden
{
  if (self->_hidden != hidden)
  {
    hiddenCopy = hidden;
    self->_hidden = hidden;
    renderable = [(CRLCanvasKnob *)self renderable];
    [renderable setHidden:hiddenCopy];
  }
}

@end