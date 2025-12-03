@interface FolderComposerFilterCellTagsExpandCollapse
- (_TtC11MobileNotes42FolderComposerFilterCellTagsExpandCollapse)initWithCoder:(id)coder;
- (_TtC11MobileNotes42FolderComposerFilterCellTagsExpandCollapse)initWithFrame:(CGRect)frame;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation FolderComposerFilterCellTagsExpandCollapse

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10027BE70(v7);

  (*(v5 + 8))(v7, v4);
}

- (_TtC11MobileNotes42FolderComposerFilterCellTagsExpandCollapse)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes42FolderComposerFilterCellTagsExpandCollapse_hiddenTagCount) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FolderComposerFilterCellTagsExpandCollapse();
  return [(FolderComposerFilterCellTagsExpandCollapse *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC11MobileNotes42FolderComposerFilterCellTagsExpandCollapse)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes42FolderComposerFilterCellTagsExpandCollapse_hiddenTagCount) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FolderComposerFilterCellTagsExpandCollapse();
  coderCopy = coder;
  v5 = [(FolderComposerFilterCellTagsExpandCollapse *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end