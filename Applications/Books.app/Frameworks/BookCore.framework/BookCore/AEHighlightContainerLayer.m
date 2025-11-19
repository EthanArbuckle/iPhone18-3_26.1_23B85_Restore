@interface AEHighlightContainerLayer
+ (id)layer;
- (void)renderInContext:(CGContext *)a3;
- (void)setBlendMode:(int)a3;
@end

@implementation AEHighlightContainerLayer

+ (id)layer
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___AEHighlightContainerLayer;
  v2 = objc_msgSendSuper2(&v4, "layer");
  [v2 setBlendMode:0];

  return v2;
}

- (void)setBlendMode:(int)a3
{
  if (self->_blendMode != a3)
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        v5 = &kCAFilterOverlayBlendMode;
        goto LABEL_12;
      }

      if (a3 == 9)
      {
        v5 = &kCAFilterHardLightBlendMode;
        goto LABEL_12;
      }
    }

    else
    {
      if (a3 == 1)
      {
        v5 = &kCAFilterMultiplyBlendMode;
        goto LABEL_12;
      }

      if (a3 == 2)
      {
        v5 = &kCAFilterScreenBlendMode;
LABEL_12:
        v6 = [CAFilter filterWithType:*v5];
        [(AEHighlightContainerLayer *)self setCompositingFilter:v6];

        goto LABEL_13;
      }
    }

    [(AEHighlightContainerLayer *)self setCompositingFilter:0];
LABEL_13:
    self->_blendMode = a3;
  }
}

- (void)renderInContext:(CGContext *)a3
{
  CGContextSaveGState(a3);
  CGContextSetBlendMode(a3, self->_blendMode);
  v5.receiver = self;
  v5.super_class = AEHighlightContainerLayer;
  [(AEHighlightContainerLayer *)&v5 renderInContext:a3];
  CGContextRestoreGState(a3);
}

@end