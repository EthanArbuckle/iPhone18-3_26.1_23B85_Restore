@interface JSFeatureFlagsObject
- (id)isEnabled:(id)enabled;
@end

@implementation JSFeatureFlagsObject

- (id)isEnabled:(id)enabled
{
  sub_2226B7C58();
  enabledCopy = enabled;
  selfCopy = self;
  v7 = sub_2227396EC();
  v8 = sub_2227396FC();

  return v8;
}

@end