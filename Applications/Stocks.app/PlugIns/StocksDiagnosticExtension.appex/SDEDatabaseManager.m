@interface SDEDatabaseManager
- (SDEDatabaseManager)init;
@end

@implementation SDEDatabaseManager

- (SDEDatabaseManager)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SDEDatabaseManager *)&v3 init];
}

@end