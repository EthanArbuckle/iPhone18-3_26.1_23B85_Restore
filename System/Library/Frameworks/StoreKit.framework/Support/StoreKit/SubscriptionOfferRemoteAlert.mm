@interface SubscriptionOfferRemoteAlert
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation SubscriptionOfferRemoteAlert

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001CE614();
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001CE818(v4);
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_1001CEA3C(v8, a4);
}

@end