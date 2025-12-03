@interface MFSafetyCheckWhenBlocking
+ (_TtC10MobileMail25MFSafetyCheckWhenBlocking)shared;
- (void)prefetchSharing;
- (void)presentSafetyCheckIfNeededForContact:(id)contact completion:(id)completion;
- (void)presentSafetyCheckIfNeededForEmailAddresses:(id)addresses completion:(id)completion;
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

- (void)presentSafetyCheckIfNeededForContact:(id)contact completion:(id)completion
{
  _objc_retain(contact);
  v6 = _Block_copy(completion);
  _objc_retain(self);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  MFSafetyCheckWhenBlocking.presentSafetyCheckIfNeeded(for:completion:)(contact, sub_1003D3E5C, v7);

  _objc_release(self);
  _objc_release(contact);
}

- (void)presentSafetyCheckIfNeededForEmailAddresses:(id)addresses completion:(id)completion
{
  _objc_retain(addresses);
  v6 = _Block_copy(completion);
  _objc_retain(self);
  sub_1002644F0();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  MFSafetyCheckWhenBlocking.presentSafetyCheckIfNeeded(for:completion:)(v8, sub_1003D3E5C, v7);

  _objc_release(addresses);
  _objc_release(self);
}

@end