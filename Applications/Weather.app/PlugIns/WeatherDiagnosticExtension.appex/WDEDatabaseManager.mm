@interface WDEDatabaseManager
- (void)checkpoint;
@end

@implementation WDEDatabaseManager

- (void)checkpoint
{
  selfCopy = self;
  DatabaseManager.checkpoint()();
}

@end