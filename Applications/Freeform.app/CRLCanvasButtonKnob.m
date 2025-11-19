@interface CRLCanvasButtonKnob
+ (double)p_radiusFromImage:(id)a3;
- (BOOL)isHitByUnscaledPoint:(CGPoint)a3 inputType:(int64_t)a4 returningDistance:(double *)a5;
- (CRLCanvasButtonKnob)initWithImage:(id)a3 highlightedImage:(id)a4 radius:(double)a5 tag:(unint64_t)a6 onRep:(id)a7;
- (id)knobImage;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setHighlightedImage:(id)a3;
- (void)setImage:(id)a3;
- (void)updateRenderableImage;
@end

@implementation CRLCanvasButtonKnob

- (CRLCanvasButtonKnob)initWithImage:(id)a3 highlightedImage:(id)a4 radius:(double)a5 tag:(unint64_t)a6 onRep:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  if (a5 == 0.0)
  {
    [objc_opt_class() p_radiusFromImage:v13];
    a5 = v16;
  }

  v23.receiver = self;
  v23.super_class = CRLCanvasButtonKnob;
  v17 = [(CRLCanvasKnob *)&v23 initWithType:0 position:a6 radius:v15 tag:CGPointZero.x onRep:CGPointZero.y, a5];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_image, a3);
    objc_storeStrong(&v18->_highlightedImage, a4);
    v18->_enabled = 1;
    v19 = +[CRLCanvasRenderable renderable];
    imageRenderable = v18->_imageRenderable;
    v18->_imageRenderable = v19;

    v21 = [(CRLCanvasKnob *)v18 renderable];
    [v21 addSubrenderable:v18->_imageRenderable];
  }

  return v18;
}

+ (double)p_radiusFromImage:(id)a3
{
  if (a3)
  {
    [a3 size];
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  return fmax(width, height) * 0.5;
}

- (BOOL)isHitByUnscaledPoint:(CGPoint)a3 inputType:(int64_t)a4 returningDistance:(double *)a5
{
  y = a3.y;
  x = a3.x;
  v10 = [(CRLCanvasKnob *)self renderable];
  if (([v10 isHidden] & 1) != 0 || (objc_msgSend(v10, "opacity"), v11 <= 0.0))
  {
    v12 = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = CRLCanvasButtonKnob;
    v12 = [(CRLCanvasKnob *)&v14 isHitByUnscaledPoint:a4 inputType:a5 returningDistance:x, y];
  }

  return v12;
}

- (id)knobImage
{
  if (![(CRLCanvasButtonKnob *)self isEnabled])
  {
    v4 = +[CRLColor lightGrayColor];
    v5 = [(CRLImage *)self->_image compositedImageWithColor:v4 alpha:23 blendMode:0.5];
    goto LABEL_6;
  }

  if ([(CRLCanvasButtonKnob *)self isHighlighted])
  {
    v3 = [(CRLCanvasButtonKnob *)self highlightedImage];
    v4 = v3;
    if (!v3)
    {
      v8 = +[CRLColor blackColor];
      v6 = [(CRLImage *)self->_image compositedImageWithColor:v8 alpha:20 blendMode:0.466666669];

      goto LABEL_7;
    }

    v5 = v3;
LABEL_6:
    v6 = v5;
LABEL_7:

    goto LABEL_9;
  }

  v6 = self->_image;
LABEL_9:

  return v6;
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_image, a3);
    [(CRLCanvasKnob *)self radius];
    if (v7 && v6 == 0.0)
    {
      [objc_opt_class() p_radiusFromImage:v7];
      [(CRLCanvasKnob *)self setRadius:?];
      [(CRLCanvasKnob *)self updateHitRegionPath];
    }

    [(CRLCanvasButtonKnob *)self updateRenderableImage];
    v5 = v7;
  }
}

- (void)setHighlightedImage:(id)a3
{
  v5 = a3;
  if (self->_highlightedImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_highlightedImage, a3);
    [(CRLCanvasButtonKnob *)self updateRenderableImage];
    v5 = v6;
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    [(CRLCanvasButtonKnob *)self updateRenderableImage];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    self->_highlighted = a3;
    [(CRLCanvasButtonKnob *)self updateRenderableImage];
  }
}

- (void)updateRenderableImage
{
  v3 = [(CRLCanvasButtonKnob *)self knobImage];
  v4 = [(CRLCanvasKnob *)self rep];
  v5 = [v4 canvas];
  [v5 contentsScale];
  v6 = [v3 CGImageForContentsScale:?];

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v8 = [(CRLCanvasButtonKnob *)self imageRenderable];
  v7 = [(CRLCanvasButtonKnob *)self knobImage];
  [v7 size];
  [v8 setBounds:sub_10011ECB4()];

  [v8 setContents:v6];
  +[CATransaction commit];
}

@end