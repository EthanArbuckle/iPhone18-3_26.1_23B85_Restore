@interface InstantAnswerCollectionViewCell
- (EMInstantAnswer)instantAnswer;
- (EMMessageListItem)messageListItem;
- (_TtP10MobileMail39InstantAnswerCollectionViewCellDelegate_)actionDelegate;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)setActionDelegate:(id)delegate;
- (void)setInstantAnswer:(id)answer;
- (void)setMessageListItem:(id)item;
@end

@implementation InstantAnswerCollectionViewCell

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
  sub_1002F0FC0(v9);
  (*(v7 + 8))(v9, v10);
  _objc_release(stateCopy);
  _objc_release(selfCopy);
}

- (_TtP10MobileMail39InstantAnswerCollectionViewCellDelegate_)actionDelegate
{
  _objc_retain(self);
  v4 = sub_1002F1F28();
  _objc_release(self);

  return v4;
}

- (void)setActionDelegate:(id)delegate
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

- (void)setInstantAnswer:(id)answer
{
  _objc_retain(answer);
  _objc_retain(self);
  sub_1002F2260(answer);
  _objc_release(self);
}

- (EMMessageListItem)messageListItem
{
  _objc_retain(self);
  v4 = sub_1002F2524();
  _objc_release(self);

  return v4;
}

- (void)setMessageListItem:(id)item
{
  swift_unknownObjectRetain();
  _objc_retain(self);
  sub_1002F25EC(item);
  _objc_release(self);
}

@end