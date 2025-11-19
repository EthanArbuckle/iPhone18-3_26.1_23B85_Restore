@interface AXCoreSettings
- (AXCoreSettings)init;
@end

@implementation AXCoreSettings

- (AXCoreSettings)init
{
  v3.receiver = self;
  v3.super_class = AXCoreSettings;
  return [(AXBaseSettings *)&v3 init];
}

@end