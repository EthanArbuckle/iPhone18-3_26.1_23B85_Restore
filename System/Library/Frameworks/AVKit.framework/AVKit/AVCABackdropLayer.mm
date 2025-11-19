@interface AVCABackdropLayer
- (void)setScale:(double)a3;
@end

@implementation AVCABackdropLayer

- (void)setScale:(double)a3
{
  if (*(&self->super._disablesOccludedBackdropBlurs + 1))
  {
    a3 = 0.25;
  }

  v3.receiver = self;
  v3.super_class = AVCABackdropLayer;
  [(AVCABackdropLayer *)&v3 setScale:a3];
}

@end