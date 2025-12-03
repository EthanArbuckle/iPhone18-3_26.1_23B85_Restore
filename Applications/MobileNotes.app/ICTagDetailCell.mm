@interface ICTagDetailCell
- (NSString)text;
- (id)selectionOperatorChangeHandler;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)setAttributedText:(id)text;
- (void)setSelectionOperatorChangeHandler:(id)handler;
- (void)setShowOperatorMenuButton:(BOOL)button;
- (void)setTagSelection:(id)selection;
- (void)setText:(id)text;
- (void)updateForTagSelection:(id)selection animated:(BOOL)animated;
@end

@implementation ICTagDetailCell

- (id)selectionOperatorChangeHandler
{
  if (*(self + OBJC_IVAR___ICTagDetailCell_selectionOperatorChangeHandler))
  {
    v2 = *(self + OBJC_IVAR___ICTagDetailCell_selectionOperatorChangeHandler + 8);
    v5[4] = *(self + OBJC_IVAR___ICTagDetailCell_selectionOperatorChangeHandler);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_1003F958C;
    v5[3] = &unk_10065D158;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSelectionOperatorChangeHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1001C57D4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___ICTagDetailCell_selectionOperatorChangeHandler);
  v8 = *(self + OBJC_IVAR___ICTagDetailCell_selectionOperatorChangeHandler);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_10000C840(v8);
}

- (NSString)text
{
  if (*(self + OBJC_IVAR___ICTagDetailCell_text + 8))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setText:(id)text
{
  if (text)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1003F9450(v4, v6);
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  selfCopy = self;
  sub_1003FB458(text);
}

- (void)setTagSelection:(id)selection
{
  selectionCopy = selection;
  selfCopy = self;
  sub_1003F987C(selection);
}

- (void)setShowOperatorMenuButton:(BOOL)button
{
  *(self + OBJC_IVAR___ICTagDetailCell_showOperatorMenuButton) = button;
  selfCopy = self;
  sub_1003F9B08();
}

- (void)updateForTagSelection:(id)selection animated:(BOOL)animated
{
  selectionCopy = selection;
  selfCopy = self;
  sub_1003F9F54(selectionCopy, animated);
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1003FA48C(v7);

  (*(v5 + 8))(v7, v4);
}

@end