@interface FolderComposerParticipantJoinCell
- (_TtC11MobileNotes33FolderComposerParticipantJoinCell)initWithFrame:(CGRect)a3;
@end

@implementation FolderComposerParticipantJoinCell

- (_TtC11MobileNotes33FolderComposerParticipantJoinCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = (&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes33FolderComposerParticipantJoinCell_joinOperatorChanged);
  *v9 = 0;
  v9[1] = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes33FolderComposerParticipantJoinCell_participantSelection) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes33FolderComposerParticipantJoinCell____lazy_storage___allAction) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes33FolderComposerParticipantJoinCell____lazy_storage___anyAction) = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(FolderComposerJoinCell *)&v11 initWithFrame:x, y, width, height];
}

@end