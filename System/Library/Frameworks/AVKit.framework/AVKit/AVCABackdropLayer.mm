@interface AVCABackdropLayer
- (void)setScale:(double)scale;
@end

@implementation AVCABackdropLayer

- (void)setScale:(double)scale
{
  if (*(&self->super._disablesOccludedBackdropBlurs + 1))
  {
    scale = 0.25;
  }

  v3.receiver = self;
  v3.super_class = AVCABackdropLayer;
  [(AVCABackdropLayer *)&v3 setScale:scale];
}

@end