@interface SearchCollectionViewCellRegistrationFactory
- (void)getRichLinkMetadataForRichLinkID:(id)d messageID:(id)iD handler:(id)handler;
@end

@implementation SearchCollectionViewCellRegistrationFactory

- (void)getRichLinkMetadataForRichLinkID:(id)d messageID:(id)iD handler:(id)handler
{
  _objc_retain(d);
  _objc_retain(iD);
  v9 = _Block_copy(handler);
  _objc_retain(self);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v6;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v7;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  sub_100408508(v11, v15, v10, v13, sub_1003F7888, v12);

  _objc_release(iD);

  _objc_release(d);
  _objc_release(self);
}

@end