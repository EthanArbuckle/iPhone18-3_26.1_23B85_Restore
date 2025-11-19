@interface FolderComposerParticipantCell
- (_TtC11MobileNotes29FolderComposerParticipantCell)initWithFrame:(CGRect)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
@end

@implementation FolderComposerParticipantCell

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_1003923D4();

  (*(v5 + 8))(v7, v4);
}

- (_TtC11MobileNotes29FolderComposerParticipantCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes29FolderComposerParticipantCell_participant) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes29FolderComposerParticipantCell_unknownParticipant) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes29FolderComposerParticipantCell_showCheckmark) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes29FolderComposerParticipantCell_avatarSize) = 0x403C000000000000;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes29FolderComposerParticipantCell____lazy_storage___emptyAvatarImage) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FolderComposerParticipantCell();
  return [(FolderComposerParticipantCell *)&v8 initWithFrame:x, y, width, height];
}

@end