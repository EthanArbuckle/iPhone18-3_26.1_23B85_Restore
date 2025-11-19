@interface NTKLeghornPicayuneViewConfiguration
- (CGAffineTransform)transform;
- (void)setTransform:(CGAffineTransform *)a3;
@end

@implementation NTKLeghornPicayuneViewConfiguration

- (CGAffineTransform)transform
{
  v3 = *&self[1].c;
  *&retstr->a = *&self[1].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].tx;
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