@interface WDEDatabaseManager
- (void)checkpoint;
@end

@implementation WDEDatabaseManager

- (void)checkpoint
{
  v2 = self;
  DatabaseManager.checkpoint()();
}

@end