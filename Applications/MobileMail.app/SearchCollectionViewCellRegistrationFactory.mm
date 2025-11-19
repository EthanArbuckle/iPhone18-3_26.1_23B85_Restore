@interface SearchCollectionViewCellRegistrationFactory
- (void)getRichLinkMetadataForRichLinkID:(id)a3 messageID:(id)a4 handler:(id)a5;
@end

@implementation SearchCollectionViewCellRegistrationFactory

- (void)getRichLinkMetadataForRichLinkID:(id)a3 messageID:(id)a4 handler:(id)a5
{
  _objc_retain(a3);
  _objc_retain(a4);
  v9 = _Block_copy(a5);
  _objc_retain(self);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v6;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v7;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  sub_100408508(v11, v15, v10, v13, sub_1003F7888, v12);

  _objc_release(a4);

  _objc_release(a3);
  _objc_release(self);
}

@end