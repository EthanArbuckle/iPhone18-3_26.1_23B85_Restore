@interface ICSMessageStoreClient
- (void)urlForVideoMessageWithUUID:(id)a3 completionHandler:(id)a4;
@end

@implementation ICSMessageStoreClient

- (void)urlForVideoMessageWithUUID:(id)a3 completionHandler:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = self;
  sub_100154C28(v10, sub_100155C2C, v12);

  (*(v7 + 8))(v10, v6);
}

@end