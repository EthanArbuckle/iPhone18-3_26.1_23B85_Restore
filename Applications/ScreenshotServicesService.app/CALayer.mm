@interface CALayer
- (void)setCornerRadius:(double)a3 animated:(BOOL)a4;
- (void)setTransform:(CATransform3D *)a3 animated:(BOOL)a4;
@end

@implementation CALayer

- (void)setCornerRadius:(double)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_100073768(a4, a3);
}

- (void)setTransform:(CATransform3D *)a3 animated:(BOOL)a4
{
  v5 = *&a3->m13;
  v10[0] = *&a3->m11;
  v10[1] = v5;
  v6 = *&a3->m23;
  v10[2] = *&a3->m21;
  v10[3] = v6;
  v7 = *&a3->m33;
  v10[4] = *&a3->m31;
  v10[5] = v7;
  v8 = *&a3->m43;
  v10[6] = *&a3->m41;
  v10[7] = v8;
  v9 = self;
  sub_100073A30(v10, a4);
}

@end