@interface AMSMetricsActivity
- (OS_nw_activity)nwActivity;
- (void)activate;
- (void)completeAfter:(id)after;
@end

@implementation AMSMetricsActivity

- (void)completeAfter:(id)after
{
  afterCopy = after;
  selfCopy = self;
  sub_1928FE360(afterCopy);
}

- (void)activate
{
  selfCopy = self;
  sub_19287C4A0();
}

- (OS_nw_activity)nwActivity
{
  v2 = sub_19290F8B8();

  return v2;
}

@end