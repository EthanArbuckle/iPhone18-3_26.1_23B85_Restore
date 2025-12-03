@interface TagEditingCell
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (BOOL)textFieldShouldEndEditing:(id)editing;
- (BOOL)textFieldShouldReturn:(id)return;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)textChanged:(id)changed;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation TagEditingCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1003668CC(v7);

  (*(v5 + 8))(v7, v4);
}

- (BOOL)textFieldShouldEndEditing:(id)editing
{
  selfCopy = self;
  ic_viewControllerManager = [(TagEditingCell *)selfCopy ic_viewControllerManager];
  if (ic_viewControllerManager)
  {
    v5 = ic_viewControllerManager;
    isSplitViewExpandingOrCollapsing = [ic_viewControllerManager isSplitViewExpandingOrCollapsing];

    if (isSplitViewExpandingOrCollapsing)
    {
      return 0;
    }
  }

  else
  {
  }

  return 1;
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  LOBYTE(self) = sub_100367B9C();

  return self & 1;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  fieldCopy = field;
  selfCopy = self;
  LOBYTE(v7) = sub_100367CCC(v7, v9);

  return v7 & 1;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes14TagEditingCell_textField);
  returnCopy = return;
  selfCopy = self;
  text = [v4 text];
  if (text)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = String._bridgeToObjectiveC()();

    [v4 resignFirstResponder];
  }

  return text != 0;
}

- (void)textChanged:(id)changed
{
  if (changed)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_10036710C();

  sub_1000073B4(v6, &qword_1006BE7A0);
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_100367E20();
}

@end