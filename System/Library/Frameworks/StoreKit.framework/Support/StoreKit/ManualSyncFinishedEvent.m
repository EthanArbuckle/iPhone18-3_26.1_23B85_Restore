@interface ManualSyncFinishedEvent
- (void)configureWithError:(id)a3;
@end

@implementation ManualSyncFinishedEvent

- (void)configureWithError:(id)a3
{
  v4 = self;
  v5 = a3;
  sub_100173A14(a3);
}

@end