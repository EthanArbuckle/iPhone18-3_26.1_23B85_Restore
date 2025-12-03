@interface BackgroundAssetTransparencySheetTaskHandleObserver
- (_TtC9appstoredP33_FD53C899C8A1CD94A26CE020D4F0482750BackgroundAssetTransparencySheetTaskHandleObserver)init;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation BackgroundAssetTransparencySheetTaskHandleObserver

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  selfCopy = self;
  sub_10018409C();
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  selfCopy = self;
  sub_100183510(deactivateCopy);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  selfCopy = self;
  errorCopy = error;
  sub_100183728(handleCopy, error);
}

- (_TtC9appstoredP33_FD53C899C8A1CD94A26CE020D4F0482750BackgroundAssetTransparencySheetTaskHandleObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end