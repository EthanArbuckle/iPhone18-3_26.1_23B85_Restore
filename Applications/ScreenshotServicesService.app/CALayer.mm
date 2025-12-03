@interface CALayer
- (void)setCornerRadius:(double)radius animated:(BOOL)animated;
- (void)setTransform:(CATransform3D *)transform animated:(BOOL)animated;
@end

@implementation CALayer

- (void)setCornerRadius:(double)radius animated:(BOOL)animated
{
  selfCopy = self;
  sub_100073768(animated, radius);
}

- (void)setTransform:(CATransform3D *)transform animated:(BOOL)animated
{
  v5 = *&transform->m13;
  v10[0] = *&transform->m11;
  v10[1] = v5;
  v6 = *&transform->m23;
  v10[2] = *&transform->m21;
  v10[3] = v6;
  v7 = *&transform->m33;
  v10[4] = *&transform->m31;
  v10[5] = v7;
  v8 = *&transform->m43;
  v10[6] = *&transform->m41;
  v10[7] = v8;
  selfCopy = self;
  sub_100073A30(v10, animated);
}

@end