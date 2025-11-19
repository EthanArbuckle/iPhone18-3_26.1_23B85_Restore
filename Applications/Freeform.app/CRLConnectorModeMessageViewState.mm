@interface CRLConnectorModeMessageViewState
- (_TtC8Freeform32CRLConnectorModeMessageViewState)init;
@end

@implementation CRLConnectorModeMessageViewState

- (_TtC8Freeform32CRLConnectorModeMessageViewState)init
{
  v3 = sub_1005B981C(&unk_101A08DC0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - v5;
  v7 = OBJC_IVAR____TtC8Freeform32CRLConnectorModeMessageViewState__isConnectorModeEnabled;
  v14 = 0;
  Published.init(initialValue:)();
  v8 = *(v4 + 32);
  v8(self + v7, v6, v3);
  v9 = OBJC_IVAR____TtC8Freeform32CRLConnectorModeMessageViewState__isMessageVisible;
  v14 = 0;
  Published.init(initialValue:)();
  v8(self + v9, v6, v3);
  v10 = type metadata accessor for CRLConnectorModeMessageViewState();
  v13.receiver = self;
  v13.super_class = v10;
  return [(CRLConnectorModeMessageViewState *)&v13 init];
}

@end