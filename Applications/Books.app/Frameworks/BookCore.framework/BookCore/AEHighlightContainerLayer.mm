@interface AEHighlightContainerLayer
+ (id)layer;
- (void)renderInContext:(CGContext *)context;
- (void)setBlendMode:(int)mode;
@end

@implementation AEHighlightContainerLayer

+ (id)layer
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___AEHighlightContainerLayer;
  v2 = objc_msgSendSuper2(&v4, "layer");
  [v2 setBlendMode:0];

  return v2;
}

- (void)setBlendMode:(int)mode
{
  if (self->_blendMode != mode)
  {
    if (mode > 2)
    {
      if (mode == 3)
      {
        v5 = &kCAFilterOverlayBlendMode;
        goto LABEL_12;
      }

      if (mode == 9)
      {
        v5 = &kCAFilterHardLightBlendMode;
        goto LABEL_12;
      }
    }

    else
    {
      if (mode == 1)
      {
        v5 = &kCAFilterMultiplyBlendMode;
        goto LABEL_12;
      }

      if (mode == 2)
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
    self->_blendMode = mode;
  }
}

- (void)renderInContext:(CGContext *)context
{
  CGContextSaveGState(context);
  CGContextSetBlendMode(context, self->_blendMode);
  v5.receiver = self;
  v5.super_class = AEHighlightContainerLayer;
  [(AEHighlightContainerLayer *)&v5 renderInContext:context];
  CGContextRestoreGState(context);
}

@end