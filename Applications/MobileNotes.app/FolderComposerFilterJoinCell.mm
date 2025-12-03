@interface FolderComposerFilterJoinCell
- (_TtC11MobileNotes28FolderComposerFilterJoinCell)initWithFrame:(CGRect)frame;
@end

@implementation FolderComposerFilterJoinCell

- (_TtC11MobileNotes28FolderComposerFilterJoinCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterJoinCell_filterSelection) = 0;
  v9 = (&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterJoinCell_joinOperatorChanged);
  *v9 = 0;
  v9[1] = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterJoinCell____lazy_storage___allAction) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes28FolderComposerFilterJoinCell____lazy_storage___anyAction) = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(FolderComposerJoinCell *)&v11 initWithFrame:x, y, width, height];
}

@end