@interface APUIRemoteAlertPresentationManager
- (_TtC18ActivityProgressUI34APUIRemoteAlertPresentationManager)init;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
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

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v4 = a3;
  v5 = self;
  APUIRemoteAlertPresentationManager.remoteAlertHandleDidActivate(_:)();
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  v5 = self;
  APUIRemoteAlertPresentationManager.remoteAlertHandleDidDeactivate(_:)(v4);
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  APUIRemoteAlertPresentationManager.remoteAlertHandle(_:didInvalidateWithError:)(v6, a4);
}

@end