@interface FolderComposerFilterCellEntry
- (_TtC11MobileNotes29FolderComposerFilterCellEntry)initWithCoder:(id)a3;
- (_TtC11MobileNotes29FolderComposerFilterCellEntry)initWithFrame:(CGRect)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)layoutSubviews;
@end

@implementation FolderComposerFilterCellEntry

- (void)layoutSubviews
{
  v2 = self;
  sub_1002824A8();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_1002827C4(v7);

  (*(v5 + 8))(v7, v4);
}

- (_TtC11MobileNotes29FolderComposerFilterCellEntry)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes29FolderComposerFilterCellEntry_leadingText);
  *v7 = 0;
  v7[1] = 0;
  v8 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes29FolderComposerFilterCellEntry_trailingText);
  *v8 = 0;
  v8[1] = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes29FolderComposerFilterCellEntry_showDisclosure) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for FolderComposerFilterCellEntry();
  return [(FolderComposerFilterCellEntry *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC11MobileNotes29FolderComposerFilterCellEntry)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes29FolderComposerFilterCellEntry_leadingText);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes29FolderComposerFilterCellEntry_trailingText);
  *v5 = 0;
  v5[1] = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes29FolderComposerFilterCellEntry_showDisclosure) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for FolderComposerFilterCellEntry();
  v6 = a3;
  v7 = [(FolderComposerFilterCellEntry *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end