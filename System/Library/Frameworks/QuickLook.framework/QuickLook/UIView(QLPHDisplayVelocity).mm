@interface UIView(QLPHDisplayVelocity)
+ (uint64_t)qlph_animateView:()QLPHDisplayVelocity toCenter:bounds:transform:withDuration:delay:usingSpringWithDamping:initialVelocity:options:completion:;
@end

@implementation UIView(QLPHDisplayVelocity)

+ (uint64_t)qlph_animateView:()QLPHDisplayVelocity toCenter:bounds:transform:withDuration:delay:usingSpringWithDamping:initialVelocity:options:completion:
{
  v11 = a4[1];
  v13[0] = *a4;
  v13[1] = v11;
  v13[2] = a4[2];
  return [self qlpu_animateView:a3 toCenter:v13 bounds:a9 transform:a10 withDuration:a11 delay:? usingSpringWithDamping:? initialVelocity:? options:? completion:?];
}

@end