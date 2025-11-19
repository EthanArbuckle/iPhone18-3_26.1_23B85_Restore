@interface THHighlightContentLayer
+ (id)layer;
- (void)dealloc;
- (void)drawInContext:(CGContext *)a3;
- (void)setHighlightColor:(CGColor *)a3;
@end

@implementation THHighlightContentLayer

+ (id)layer
{
  v4.receiver = a1;
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

- (void)setHighlightColor:(CGColor *)a3
{
  highlightColor = self->_highlightColor;
  if (highlightColor != a3)
  {
    CGColorRelease(highlightColor);
    self->_highlightColor = CGColorRetain(a3);
  }
}

- (void)drawInContext:(CGContext *)a3
{
  CGContextSaveGState(a3);
  CGContextSetFillColorWithColor(a3, [(THHighlightContentLayer *)self backgroundColor]);
  [(THHighlightContentLayer *)self bounds];
  CGContextFillRect(a3, v6);
  CGContextSetBlendMode(a3, self->_blendMode);
  CGContextSetFillColorWithColor(a3, [(THHighlightContentLayer *)self highlightColor]);
  [(THHighlightContentLayer *)self bounds];
  CGContextFillRect(a3, v7);

  CGContextRestoreGState(a3);
}

@end