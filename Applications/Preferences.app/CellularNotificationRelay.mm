@interface CellularNotificationRelay
- (void)carrierBundleChange:(id)a3;
@end

@implementation CellularNotificationRelay

- (void)carrierBundleChange:(id)a3
{
  v3 = [objc_opt_self() defaultCenter];
  v4 = v3;
  if (qword_10015AA08 != -1)
  {
    swift_once();
    v3 = v4;
  }

  [v3 postNotificationName:qword_100169568 object:0];
}

@end