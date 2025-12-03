@interface MessageListSeparatorController
- (_TtP10MobileMail38MessageListSeparatorControllerDelegate_)delegate;
- (id)updatedSeparatorConfiguration:(id)configuration atIndexPath:(id)path;
- (void)setDelegate:(id)delegate;
@end

@implementation MessageListSeparatorController

- (id)updatedSeparatorConfiguration:(id)configuration atIndexPath:(id)path
{
  selfCopy = self;
  configurationCopy = configuration;
  pathCopy = path;
  v10[1] = 0;
  v17 = type metadata accessor for IndexPath();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v11 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v16 = v10 - v11;
  v24 = type metadata accessor for UIListSeparatorConfiguration();
  v19 = *(v24 - 8);
  v20 = v24 - 8;
  v12 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(configurationCopy);
  v21 = v10 - v12;
  v13 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v5);
  v27 = v10 - v13;
  _objc_retain(v7);
  _objc_retain(pathCopy);
  _objc_retain(self);
  static UIListSeparatorConfiguration._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10001D4B8(v21, v16, v27);
  (*(v14 + 8))(v16, v17);
  _objc_release(pathCopy);
  v26 = *(v19 + 8);
  v25 = v19 + 8;
  v26(v21, v24);
  _objc_release(configurationCopy);
  _objc_release(selfCopy);
  isa = UIListSeparatorConfiguration._bridgeToObjectiveC()().super.isa;
  v26(v27, v24);
  v8 = isa;

  return v8;
}

- (_TtP10MobileMail38MessageListSeparatorControllerDelegate_)delegate
{
  _objc_retain(self);
  v4 = sub_1003BF750();
  _objc_release(self);

  return v4;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  _objc_retain(self);
  sub_1003BF818();
  _objc_release(self);
}

@end