@interface AMSMetricsActivity
- (OS_nw_activity)nwActivity;
- (void)activate;
- (void)completeAfter:(id)a3;
@end

@implementation AMSMetricsActivity

- (void)completeAfter:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1928FE360(v4);
}

- (void)activate
{
  v2 = self;
  sub_19287C4A0();
}

- (OS_nw_activity)nwActivity
{
  v2 = sub_19290F8B8();

  return v2;
}

@end