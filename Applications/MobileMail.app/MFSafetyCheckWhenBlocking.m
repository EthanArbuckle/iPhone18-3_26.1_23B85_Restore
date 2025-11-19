@interface MFSafetyCheckWhenBlocking
+ (_TtC10MobileMail25MFSafetyCheckWhenBlocking)shared;
- (void)prefetchSharing;
- (void)presentSafetyCheckIfNeededForContact:(id)a3 completion:(id)a4;
- (void)presentSafetyCheckIfNeededForEmailAddresses:(id)a3 completion:(id)a4;
@end

@implementation MFSafetyCheckWhenBlocking

+ (_TtC10MobileMail25MFSafetyCheckWhenBlocking)shared
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v2 = static MFSafetyCheckWhenBlocking.shared.getter();

  return v2;
}

- (void)prefetchSharing
{
  _objc_retain(self);
  MFSafetyCheckWhenBlocking.prefetchSharing()();
  _objc_release(self);
}

- (void)presentSafetyCheckIfNeededForContact:(id)a3 completion:(id)a4
{
  _objc_retain(a3);
  v6 = _Block_copy(a4);
  _objc_retain(self);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  MFSafetyCheckWhenBlocking.presentSafetyCheckIfNeeded(for:completion:)(a3, sub_1003D3E5C, v7);

  _objc_release(self);
  _objc_release(a3);
}

- (void)presentSafetyCheckIfNeededForEmailAddresses:(id)a3 completion:(id)a4
{
  _objc_retain(a3);
  v6 = _Block_copy(a4);
  _objc_retain(self);
  sub_1002644F0();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  MFSafetyCheckWhenBlocking.presentSafetyCheckIfNeeded(for:completion:)(v8, sub_1003D3E5C, v7);

  _objc_release(a3);
  _objc_release(self);
}

@end