@interface NTKFoghornPicayuneViewConfiguration
- (CGAffineTransform)transform;
- (void)setTransform:(CGAffineTransform *)a3;
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

- (void)setTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_transform.a = *&a3->a;
  *&self->_transform.c = v4;
  *&self->_transform.tx = v3;
}

@end