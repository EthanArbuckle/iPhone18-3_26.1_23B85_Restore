@interface InstantAnswerCollectionViewCell
- (EMInstantAnswer)instantAnswer;
- (EMMessageListItem)messageListItem;
- (_TtP10MobileMail39InstantAnswerCollectionViewCellDelegate_)actionDelegate;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)setActionDelegate:(id)a3;
- (void)setInstantAnswer:(id)a3;
- (void)setMessageListItem:(id)a3;
@end

@implementation InstantAnswerCollectionViewCell

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
  sub_1002F0FC0(v9);
  (*(v7 + 8))(v9, v10);
  _objc_release(v11);
  _objc_release(v12);
}

- (_TtP10MobileMail39InstantAnswerCollectionViewCellDelegate_)actionDelegate
{
  _objc_retain(self);
  v4 = sub_1002F1F28();
  _objc_release(self);

  return v4;
}

- (void)setActionDelegate:(id)a3
{
  swift_unknownObjectRetain();
  _objc_retain(self);
  sub_1002F1FF0();
  _objc_release(self);
}

- (EMInstantAnswer)instantAnswer
{
  _objc_retain(self);
  v4 = sub_1002F2188();
  _objc_release(self);

  return v4;
}

- (void)setInstantAnswer:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_1002F2260(a3);
  _objc_release(self);
}

- (EMMessageListItem)messageListItem
{
  _objc_retain(self);
  v4 = sub_1002F2524();
  _objc_release(self);

  return v4;
}

- (void)setMessageListItem:(id)a3
{
  swift_unknownObjectRetain();
  _objc_retain(self);
  sub_1002F25EC(a3);
  _objc_release(self);
}

@end