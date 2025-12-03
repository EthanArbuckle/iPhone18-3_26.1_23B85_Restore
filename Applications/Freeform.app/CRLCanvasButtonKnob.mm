@interface CRLCanvasButtonKnob
+ (double)p_radiusFromImage:(id)image;
- (BOOL)isHitByUnscaledPoint:(CGPoint)point inputType:(int64_t)type returningDistance:(double *)distance;
- (CRLCanvasButtonKnob)initWithImage:(id)image highlightedImage:(id)highlightedImage radius:(double)radius tag:(unint64_t)tag onRep:(id)rep;
- (id)knobImage;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setHighlightedImage:(id)image;
- (void)setImage:(id)image;
- (void)updateRenderableImage;
@end

@implementation CRLCanvasButtonKnob

- (CRLCanvasButtonKnob)initWithImage:(id)image highlightedImage:(id)highlightedImage radius:(double)radius tag:(unint64_t)tag onRep:(id)rep
{
  imageCopy = image;
  highlightedImageCopy = highlightedImage;
  repCopy = rep;
  if (radius == 0.0)
  {
    [objc_opt_class() p_radiusFromImage:imageCopy];
    radius = v16;
  }

  v23.receiver = self;
  v23.super_class = CRLCanvasButtonKnob;
  radius = [(CRLCanvasKnob *)&v23 initWithType:0 position:tag radius:repCopy tag:CGPointZero.x onRep:CGPointZero.y, radius];
  v18 = radius;
  if (radius)
  {
    objc_storeStrong(&radius->_image, image);
    objc_storeStrong(&v18->_highlightedImage, highlightedImage);
    v18->_enabled = 1;
    v19 = +[CRLCanvasRenderable renderable];
    imageRenderable = v18->_imageRenderable;
    v18->_imageRenderable = v19;

    renderable = [(CRLCanvasKnob *)v18 renderable];
    [renderable addSubrenderable:v18->_imageRenderable];
  }

  return v18;
}

+ (double)p_radiusFromImage:(id)image
{
  if (image)
  {
    [image size];
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  return fmax(width, height) * 0.5;
}

- (BOOL)isHitByUnscaledPoint:(CGPoint)point inputType:(int64_t)type returningDistance:(double *)distance
{
  y = point.y;
  x = point.x;
  renderable = [(CRLCanvasKnob *)self renderable];
  if (([renderable isHidden] & 1) != 0 || (objc_msgSend(renderable, "opacity"), v11 <= 0.0))
  {
    v12 = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = CRLCanvasButtonKnob;
    v12 = [(CRLCanvasKnob *)&v14 isHitByUnscaledPoint:type inputType:distance returningDistance:x, y];
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
    highlightedImage = [(CRLCanvasButtonKnob *)self highlightedImage];
    v4 = highlightedImage;
    if (!highlightedImage)
    {
      v8 = +[CRLColor blackColor];
      v6 = [(CRLImage *)self->_image compositedImageWithColor:v8 alpha:20 blendMode:0.466666669];

      goto LABEL_7;
    }

    v5 = highlightedImage;
LABEL_6:
    v6 = v5;
LABEL_7:

    goto LABEL_9;
  }

  v6 = self->_image;
LABEL_9:

  return v6;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v7 = imageCopy;
    objc_storeStrong(&self->_image, image);
    [(CRLCanvasKnob *)self radius];
    if (v7 && v6 == 0.0)
    {
      [objc_opt_class() p_radiusFromImage:v7];
      [(CRLCanvasKnob *)self setRadius:?];
      [(CRLCanvasKnob *)self updateHitRegionPath];
    }

    [(CRLCanvasButtonKnob *)self updateRenderableImage];
    imageCopy = v7;
  }
}

- (void)setHighlightedImage:(id)image
{
  imageCopy = image;
  if (self->_highlightedImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_highlightedImage, image);
    [(CRLCanvasButtonKnob *)self updateRenderableImage];
    imageCopy = v6;
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(CRLCanvasButtonKnob *)self updateRenderableImage];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    [(CRLCanvasButtonKnob *)self updateRenderableImage];
  }
}

- (void)updateRenderableImage
{
  knobImage = [(CRLCanvasButtonKnob *)self knobImage];
  v4 = [(CRLCanvasKnob *)self rep];
  canvas = [v4 canvas];
  [canvas contentsScale];
  v6 = [knobImage CGImageForContentsScale:?];

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  imageRenderable = [(CRLCanvasButtonKnob *)self imageRenderable];
  knobImage2 = [(CRLCanvasButtonKnob *)self knobImage];
  [knobImage2 size];
  [imageRenderable setBounds:sub_10011ECB4()];

  [imageRenderable setContents:v6];
  +[CATransaction commit];
}

@end