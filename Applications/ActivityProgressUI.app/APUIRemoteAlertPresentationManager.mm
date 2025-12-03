@interface APUIRemoteAlertPresentationManager
- (_TtC18ActivityProgressUI34APUIRemoteAlertPresentationManager)init;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation APUIRemoteAlertPresentationManager

- (_TtC18ActivityProgressUI34APUIRemoteAlertPresentationManager)init
{
  v3 = OBJC_IVAR____TtC18ActivityProgressUI34APUIRemoteAlertPresentationManager_remoteAlertPresentationHandlesByID;
  *(&self->super.isa + v3) = sub_1000048C0(&_swiftEmptyArrayStorage);
  v5.receiver = self;
  v5.super_class = type metadata accessor for APUIRemoteAlertPresentationManager();
  return [(APUIRemoteAlertPresentationManager *)&v5 init];
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  selfCopy = self;
  APUIRemoteAlertPresentationManager.remoteAlertHandleDidActivate(_:)();
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  selfCopy = self;
  APUIRemoteAlertPresentationManager.remoteAlertHandleDidDeactivate(_:)(deactivateCopy);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  selfCopy = self;
  errorCopy = error;
  APUIRemoteAlertPresentationManager.remoteAlertHandle(_:didInvalidateWithError:)(handleCopy, error);
}

@end