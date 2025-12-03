@interface CRLCanvasTextRenderable
+ (id)renderable;
+ (id)renderableFromTextLayer:(id)layer;
- (CGColor)foregroundColor;
- (CRLCanvasTextRenderable)initWithTextLayer:(id)layer;
- (NSString)alignmentMode;
- (NSString)truncationMode;
- (double)fontSize;
- (id)p_textLayer;
- (id)string;
- (void)font;
- (void)setAlignmentMode:(id)mode;
- (void)setFont:(void *)font;
- (void)setFontSize:(double)size;
- (void)setForegroundColor:(CGColor *)color;
- (void)setString:(id)string;
- (void)setTruncationMode:(id)mode;
@end

@implementation CRLCanvasTextRenderable

- (CRLCanvasTextRenderable)initWithTextLayer:(id)layer
{
  v4.receiver = self;
  v4.super_class = CRLCanvasTextRenderable;
  return [(CRLCanvasRenderable *)&v4 initWithCALayer:layer];
}

+ (id)renderableFromTextLayer:(id)layer
{
  layerCopy = layer;
  v5 = [[self alloc] initWithTextLayer:layerCopy];

  return v5;
}

+ (id)renderable
{
  v2 = [self alloc];
  v3 = +[CATextLayer layer];
  v4 = [v2 initWithTextLayer:v3];

  return v4;
}

- (id)p_textLayer
{
  v3 = objc_opt_class();
  layer = [(CRLCanvasRenderable *)self layer];
  v5 = sub_100014370(v3, layer);

  return v5;
}

- (id)string
{
  p_textLayer = [(CRLCanvasTextRenderable *)self p_textLayer];
  string = [p_textLayer string];

  return string;
}

- (void)setString:(id)string
{
  stringCopy = string;
  p_textLayer = [(CRLCanvasTextRenderable *)self p_textLayer];
  [p_textLayer setString:stringCopy];
}

- (double)fontSize
{
  p_textLayer = [(CRLCanvasTextRenderable *)self p_textLayer];
  [p_textLayer fontSize];
  v4 = v3;

  return v4;
}

- (void)setFontSize:(double)size
{
  p_textLayer = [(CRLCanvasTextRenderable *)self p_textLayer];
  [p_textLayer setFontSize:size];
}

- (NSString)truncationMode
{
  p_textLayer = [(CRLCanvasTextRenderable *)self p_textLayer];
  truncationMode = [p_textLayer truncationMode];

  return truncationMode;
}

- (void)setTruncationMode:(id)mode
{
  modeCopy = mode;
  p_textLayer = [(CRLCanvasTextRenderable *)self p_textLayer];
  [p_textLayer setTruncationMode:modeCopy];
}

- (void)setFont:(void *)font
{
  p_textLayer = [(CRLCanvasTextRenderable *)self p_textLayer];
  [p_textLayer setFont:font];
}

- (void)font
{
  p_textLayer = [(CRLCanvasTextRenderable *)self p_textLayer];
  font = [p_textLayer font];

  return font;
}

- (void)setForegroundColor:(CGColor *)color
{
  p_textLayer = [(CRLCanvasTextRenderable *)self p_textLayer];
  [p_textLayer setForegroundColor:color];
}

- (CGColor)foregroundColor
{
  p_textLayer = [(CRLCanvasTextRenderable *)self p_textLayer];
  foregroundColor = [p_textLayer foregroundColor];

  return foregroundColor;
}

- (NSString)alignmentMode
{
  p_textLayer = [(CRLCanvasTextRenderable *)self p_textLayer];
  alignmentMode = [p_textLayer alignmentMode];

  return alignmentMode;
}

- (void)setAlignmentMode:(id)mode
{
  modeCopy = mode;
  p_textLayer = [(CRLCanvasTextRenderable *)self p_textLayer];
  [p_textLayer setAlignmentMode:modeCopy];
}

@end