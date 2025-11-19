@interface TagEditingCell
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldBeginEditing:(id)a3;
- (BOOL)textFieldShouldEndEditing:(id)a3;
- (BOOL)textFieldShouldReturn:(id)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)textChanged:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation TagEditingCell

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_1003668CC(v7);

  (*(v5 + 8))(v7, v4);
}

- (BOOL)textFieldShouldEndEditing:(id)a3
{
  v3 = self;
  v4 = [(TagEditingCell *)v3 ic_viewControllerManager];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 isSplitViewExpandingOrCollapsing];

    if (v6)
    {
      return 0;
    }
  }

  else
  {
  }

  return 1;
}

- (BOOL)textFieldShouldBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_100367B9C();

  return self & 1;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = a3;
  v11 = self;
  LOBYTE(v7) = sub_100367CCC(v7, v9);

  return v7 & 1;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes14TagEditingCell_textField);
  v5 = a3;
  v6 = self;
  v7 = [v4 text];
  if (v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = String._bridgeToObjectiveC()();

    [v4 resignFirstResponder];
  }

  return v7 != 0;
}

- (void)textChanged:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_10036710C();

  sub_1000073B4(v6, &qword_1006BE7A0);
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100367E20();
}

@end