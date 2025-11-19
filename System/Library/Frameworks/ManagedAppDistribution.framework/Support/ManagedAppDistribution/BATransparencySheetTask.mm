@interface BATransparencySheetTask
- (_TtC28ManagedAppDistributionDaemon23BATransparencySheetTask)init;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation BATransparencySheetTask

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10047FA70();
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10047FC14();
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_10047FDEC(a4);
}

- (_TtC28ManagedAppDistributionDaemon23BATransparencySheetTask)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end