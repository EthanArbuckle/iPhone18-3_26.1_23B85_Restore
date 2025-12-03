@interface SmartFolderComposerTextFieldCell
- (_TtC11MobileNotes32SmartFolderComposerTextFieldCell)initWithCoder:(id)coder;
- (_TtC11MobileNotes32SmartFolderComposerTextFieldCell)initWithFrame:(CGRect)frame;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)textFieldDidChange:(id)change;
@end

@implementation SmartFolderComposerTextFieldCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10043616C();

  (*(v5 + 8))(v7, v4);
}

- (void)textFieldDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100435DF4(changeCopy);
}

- (_TtC11MobileNotes32SmartFolderComposerTextFieldCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerTextFieldCell_textDidChange);
  *v7 = 0;
  v7[1] = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerTextFieldCell____lazy_storage___textField) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for SmartFolderComposerTextFieldCell();
  return [(SmartFolderComposerTextFieldCell *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC11MobileNotes32SmartFolderComposerTextFieldCell)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerTextFieldCell_textDidChange);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes32SmartFolderComposerTextFieldCell____lazy_storage___textField) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SmartFolderComposerTextFieldCell();
  coderCopy = coder;
  v6 = [(SmartFolderComposerTextFieldCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end