@interface CRLMediaReplaceKnob
- (BOOL)isHitByUnscaledPoint:(CGPoint)a3 inputType:(int64_t)a4 returningDistance:(double *)a5;
- (CRLMediaReplaceKnob)initWithImage:(id)a3 radius:(double)a4 backgroundColor:(id)a5 onRep:(id)a6;
- (CRLMediaReplaceKnob)initWithImage:(id)a3 size:(CGSize)a4 backgroundColor:(id)a5 cornerRadius:(double)a6 onRep:(id)a7;
- (id)createKnobRenderable;
- (void)setBackgroundCircleColor:(id)a3;
- (void)setHidden:(BOOL)a3;
- (void)updateHitRegionPath;
@end

@implementation CRLMediaReplaceKnob

- (CRLMediaReplaceKnob)initWithImage:(id)a3 radius:(double)a4 backgroundColor:(id)a5 onRep:(id)a6
{
  v11 = a5;
  objc_storeStrong(&self->_backgroundColor, a5);
  v12 = a6;
  v13 = a3;
  v28.receiver = self;
  v28.super_class = CRLMediaReplaceKnob;
  v14 = [(CRLCanvasButtonKnob *)&v28 initWithImage:0 radius:5 tag:v12 onRep:a4];

  [(CRLCanvasKnob *)v14 setShouldDisplayDirectlyOverRep:1];
  [(CRLCanvasKnob *)v14 setRadius:a4];
  [(CRLCanvasButtonKnob *)v14 setImage:v13];

  v15 = [(CRLCanvasKnob *)v14 renderable];
  [v15 bounds];
  v17 = v16;

  if (v17 != 0.0)
  {
    v18 = [(CRLCanvasKnob *)v14 renderable];
    [v18 bounds];
    v23 = sub_100120414(v19, v20, v21, v22);
    v25 = v24;
    v26 = [(CRLCanvasButtonKnob *)v14 imageRenderable];
    [v26 setPosition:{v23, v25}];
  }

  [(CRLMediaReplaceKnob *)v14 setHidden:0];

  return v14;
}

- (CRLMediaReplaceKnob)initWithImage:(id)a3 size:(CGSize)a4 backgroundColor:(id)a5 cornerRadius:(double)a6 onRep:(id)a7
{
  self->_size = a4;
  self->_cornerRadius = a6;
  return [(CRLMediaReplaceKnob *)self initWithImage:a3 radius:a5 backgroundColor:a7 onRep:0.0];
}

- (void)updateHitRegionPath
{
  [(CRLCanvasKnob *)self radius];
  v4 = [CRLBezierPath bezierPathWithOvalInRect:-v3, -v3, v3 + v3, v3 + v3];
  [(CRLCanvasKnob *)self setHitRegionPath:v4];
}

- (void)setBackgroundCircleColor:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(CRLCanvasKnob *)self renderable];
  v9 = sub_100014370(v5, v6);

  v7 = [v4 CGColor];
  [v9 setFillColor:v7];
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

- (BOOL)isHitByUnscaledPoint:(CGPoint)a3 inputType:(int64_t)a4 returningDistance:(double *)a5
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = CRLMediaReplaceKnob;
  if (![(CRLCanvasButtonKnob *)&v13 isHitByUnscaledPoint:a4 inputType:a5 returningDistance:?])
  {
    return 0;
  }

  v8 = [(CRLCanvasKnob *)self rep];
  v9 = [v8 interactiveCanvasController];
  v10 = [v9 hitRep:{x, y}];

  v11 = v10 == v8;
  return v11;
}

- (void)setHidden:(BOOL)a3
{
  if (self->_hidden != a3)
  {
    v4 = a3;
    self->_hidden = a3;
    v5 = [(CRLCanvasKnob *)self renderable];
    [v5 setHidden:v4];
  }
}

@end