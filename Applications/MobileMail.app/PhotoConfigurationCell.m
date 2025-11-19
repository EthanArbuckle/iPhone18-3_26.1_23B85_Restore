@interface PhotoConfigurationCell
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
@end

@implementation PhotoConfigurationCell

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v12 = self;
  v11 = a3;
  v10 = type metadata accessor for UICellConfigurationState();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v11);
  v9 = &v5 - v6;
  _objc_retain(v4);
  _objc_retain(self);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1003E2B00(v9);
  (*(v7 + 8))(v9, v10);
  _objc_release(v11);
  _objc_release(v12);
}

@end