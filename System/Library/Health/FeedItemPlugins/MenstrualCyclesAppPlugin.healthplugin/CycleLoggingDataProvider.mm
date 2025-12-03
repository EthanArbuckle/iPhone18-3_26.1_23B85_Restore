@interface CycleLoggingDataProvider
- (void)viewModelProviderDidUpdate:(id)update;
@end

@implementation CycleLoggingDataProvider

- (void)viewModelProviderDidUpdate:(id)update
{
  updateCopy = update;

  sub_29E264654();
}

@end