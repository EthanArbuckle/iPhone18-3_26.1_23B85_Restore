@interface BKServiceCenterAppConfiguration
- (BKServiceCenterAppConfiguration)init;
@end

@implementation BKServiceCenterAppConfiguration

- (BKServiceCenterAppConfiguration)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(BKServiceCenterAppConfiguration *)&v3 init];
}

@end