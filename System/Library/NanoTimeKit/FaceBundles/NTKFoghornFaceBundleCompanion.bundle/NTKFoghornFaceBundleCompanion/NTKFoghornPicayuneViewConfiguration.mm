@interface NTKFoghornPicayuneViewConfiguration
- (CGAffineTransform)transform;
- (void)setTransform:(CGAffineTransform *)transform;
@end

@implementation NTKFoghornPicayuneViewConfiguration

- (CGAffineTransform)transform
{
  v3 = *&self[1].b;
  *&retstr->a = *&self->ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].d;
  return self;
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_transform.a = *&transform->a;
  *&self->_transform.c = v4;
  *&self->_transform.tx = v3;
}

@end