@interface CRLCanvasTextRenderable
+ (id)renderable;
+ (id)renderableFromTextLayer:(id)a3;
- (CGColor)foregroundColor;
- (CRLCanvasTextRenderable)initWithTextLayer:(id)a3;
- (NSString)alignmentMode;
- (NSString)truncationMode;
- (double)fontSize;
- (id)p_textLayer;
- (id)string;
- (void)font;
- (void)setAlignmentMode:(id)a3;
- (void)setFont:(void *)a3;
- (void)setFontSize:(double)a3;
- (void)setForegroundColor:(CGColor *)a3;
- (void)setString:(id)a3;
- (void)setTruncationMode:(id)a3;
@end

@implementation CRLCanvasTextRenderable

- (CRLCanvasTextRenderable)initWithTextLayer:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRLCanvasTextRenderable;
  return [(CRLCanvasRenderable *)&v4 initWithCALayer:a3];
}

+ (id)renderableFromTextLayer:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithTextLayer:v4];

  return v5;
}

+ (id)renderable
{
  v2 = [a1 alloc];
  v3 = +[CATextLayer layer];
  v4 = [v2 initWithTextLayer:v3];

  return v4;
}

- (id)p_textLayer
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasRenderable *)self layer];
  v5 = sub_100014370(v3, v4);

  return v5;
}

- (id)string
{
  v2 = [(CRLCanvasTextRenderable *)self p_textLayer];
  v3 = [v2 string];

  return v3;
}

- (void)setString:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasTextRenderable *)self p_textLayer];
  [v5 setString:v4];
}

- (double)fontSize
{
  v2 = [(CRLCanvasTextRenderable *)self p_textLayer];
  [v2 fontSize];
  v4 = v3;

  return v4;
}

- (void)setFontSize:(double)a3
{
  v4 = [(CRLCanvasTextRenderable *)self p_textLayer];
  [v4 setFontSize:a3];
}

- (NSString)truncationMode
{
  v2 = [(CRLCanvasTextRenderable *)self p_textLayer];
  v3 = [v2 truncationMode];

  return v3;
}

- (void)setTruncationMode:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasTextRenderable *)self p_textLayer];
  [v5 setTruncationMode:v4];
}

- (void)setFont:(void *)a3
{
  v4 = [(CRLCanvasTextRenderable *)self p_textLayer];
  [v4 setFont:a3];
}

- (void)font
{
  v2 = [(CRLCanvasTextRenderable *)self p_textLayer];
  v3 = [v2 font];

  return v3;
}

- (void)setForegroundColor:(CGColor *)a3
{
  v4 = [(CRLCanvasTextRenderable *)self p_textLayer];
  [v4 setForegroundColor:a3];
}

- (CGColor)foregroundColor
{
  v2 = [(CRLCanvasTextRenderable *)self p_textLayer];
  v3 = [v2 foregroundColor];

  return v3;
}

- (NSString)alignmentMode
{
  v2 = [(CRLCanvasTextRenderable *)self p_textLayer];
  v3 = [v2 alignmentMode];

  return v3;
}

- (void)setAlignmentMode:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasTextRenderable *)self p_textLayer];
  [v5 setAlignmentMode:v4];
}

@end