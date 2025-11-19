@interface FolderComposerFilterCellShared
- (_TtC11MobileNotes30FolderComposerFilterCellShared)initWithFrame:(CGRect)a3;
@end

@implementation FolderComposerFilterCellShared

- (_TtC11MobileNotes30FolderComposerFilterCellShared)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterCellShared____lazy_storage___menu) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterCellShared____lazy_storage___menuActionOff) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterCellShared____lazy_storage___menuActionAnyone) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterCellShared____lazy_storage___menuActionSpecificUsers) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterCellShared____lazy_storage___menuActionNotShared) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FolderComposerFilterCellShared();
  return [(FolderComposerFilterCell *)&v8 initWithFrame:x, y, width, height];
}

@end