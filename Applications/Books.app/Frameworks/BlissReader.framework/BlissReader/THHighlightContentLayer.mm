@interface THHighlightContentLayer
+ (id)layer;
- (void)dealloc;
- (void)drawInContext:(CGContext *)context;
- (void)setHighlightColor:(CGColor *)color;
@end

@implementation THHighlightContentLayer

+ (id)layer
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___THHighlightContentLayer;
  v2 = objc_msgSendSuper2(&v4, "layer");
  [v2 setBlendMode:0];
  return v2;
}

- (void)dealloc
{
  CGColorRelease(self->_highlightColor);
  v3.receiver = self;
  v3.super_class = THHighlightContentLayer;
  [(THHighlightContentLayer *)&v3 dealloc];
}

- (void)setHighlightColor:(CGColor *)color
{
  highlightColor = self->_highlightColor;
  if (highlightColor != color)
  {
    CGColorRelease(highlightColor);
    self->_highlightColor = CGColorRetain(color);
  }
}

- (void)drawInContext:(CGContext *)context
{
  CGContextSaveGState(context);
  CGContextSetFillColorWithColor(context, [(THHighlightContentLayer *)self backgroundColor]);
  [(THHighlightContentLayer *)self bounds];
  CGContextFillRect(context, v6);
  CGContextSetBlendMode(context, self->_blendMode);
  CGContextSetFillColorWithColor(context, [(THHighlightContentLayer *)self highlightColor]);
  [(THHighlightContentLayer *)self bounds];
  CGContextFillRect(context, v7);

  CGContextRestoreGState(context);
}

@end