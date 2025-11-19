@interface MDLPhysicallyPlausibleLight
- (MDLPhysicallyPlausibleLight)init;
- (void)setColor:(CGColorRef)color;
@end

@implementation MDLPhysicallyPlausibleLight

- (MDLPhysicallyPlausibleLight)init
{
  v5.receiver = self;
  v5.super_class = MDLPhysicallyPlausibleLight;
  v2 = [(MDLLight *)&v5 init];
  if (v2)
  {
    light = v2->super._light;
    if (light)
    {
      (*(light->var0 + 1))(light);
    }

    operator new();
  }

  return 0;
}

- (void)setColor:(CGColorRef)color
{
  light = self->super._light;
  if (color)
  {
    v6 = self->super._light;
    v7 = color;
  }

  else
  {
    v3.i32[0] = 1170939904;
    v7 = sub_239E8494C(v3, v4);
    v6 = light;
  }

  sub_239EE95E8(v6, v7);
}

@end