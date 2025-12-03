@interface SmartFolderComposerSwitchCell
- (_TtC11MobileNotes29SmartFolderComposerSwitchCell)initWithFrame:(CGRect)frame;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)onDidChangeWithSender:(id)sender;
@end

@implementation SmartFolderComposerSwitchCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1004BEE9C();

  (*(v5 + 8))(v7, v4);
}

- (void)onDidChangeWithSender:(id)sender
{
  selfCopy = self;
  v7 = selfCopy;
  if (sender)
  {
    isOn = [sender isOn];
    selfCopy = v7;
  }

  else
  {
    isOn = 0;
  }

  v6 = *(&selfCopy->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes29SmartFolderComposerSwitchCell_onDidChange);
  if (v6)
  {

    v6(isOn);

    sub_1002B5F48(v6);
  }

  else
  {
  }
}

- (_TtC11MobileNotes29SmartFolderComposerSwitchCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes29SmartFolderComposerSwitchCell_onDidChange);
  *v9 = 0;
  v9[1] = 0;
  v10 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes29SmartFolderComposerSwitchCell_text);
  *v10 = 0;
  v10[1] = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes29SmartFolderComposerSwitchCell____lazy_storage___switchView) = 0;
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(SmartFolderComposerSwitchCell *)&v12 initWithFrame:x, y, width, height];
}

@end