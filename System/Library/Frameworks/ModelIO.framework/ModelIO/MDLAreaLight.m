@interface MDLAreaLight
- (MDLAreaLight)init;
@end

@implementation MDLAreaLight

- (MDLAreaLight)init
{
  v7.receiver = self;
  v7.super_class = MDLAreaLight;
  v2 = [(MDLPhysicallyPlausibleLight *)&v7 init];
  if (v2)
  {
    light = v2->super.super._light;
    if (light)
    {
      v3 = (*(light->var0 + 1))(light);
    }

    v3.i32[0] = 1170939904;
    sub_239E8494C(v3, v4);
    operator new();
  }

  return 0;
}

@end