@interface CellularNotificationRelay
- (void)carrierBundleChange:(id)change;
@end

@implementation CellularNotificationRelay

- (void)carrierBundleChange:(id)change
{
  defaultCenter = [objc_opt_self() defaultCenter];
  v4 = defaultCenter;
  if (qword_10015AA08 != -1)
  {
    swift_once();
    defaultCenter = v4;
  }

  [defaultCenter postNotificationName:qword_100169568 object:0];
}

@end