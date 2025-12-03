@interface InstantAnswerHotelCell
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation InstantAnswerHotelCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  selfCopy = self;
  stateCopy = state;
  v10 = type metadata accessor for UICellConfigurationState();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(stateCopy);
  v9 = &v5 - v6;
  _objc_retain(v4);
  _objc_retain(self);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100301700(v9);
  (*(v7 + 8))(v9, v10);
  _objc_release(stateCopy);
  _objc_release(selfCopy);
}

@end