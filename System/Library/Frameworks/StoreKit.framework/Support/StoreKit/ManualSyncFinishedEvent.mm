@interface ManualSyncFinishedEvent
- (void)configureWithError:(id)error;
@end

@implementation ManualSyncFinishedEvent

- (void)configureWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  sub_100173A14(error);
}

@end