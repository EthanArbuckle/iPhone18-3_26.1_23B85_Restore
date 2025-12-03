@interface NTKLeghornPicayuneViewConfiguration
- (CGAffineTransform)transform;
- (void)setTransform:(CGAffineTransform *)transform;
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

- (void)setTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_transform.a = *&transform->a;
  *&self->_transform.c = v4;
  *&self->_transform.tx = v3;
}

@end