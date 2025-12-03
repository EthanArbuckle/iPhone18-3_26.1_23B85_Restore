@interface CycleChartDayProvider
- (void)viewModelProviderDidUpdate:(id)update;
@end

@implementation CycleChartDayProvider

- (void)viewModelProviderDidUpdate:(id)update
{
  updateCopy = update;

  sub_29E1AF718(updateCopy);
}

@end