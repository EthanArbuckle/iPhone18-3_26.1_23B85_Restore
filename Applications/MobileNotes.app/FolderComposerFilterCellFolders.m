@interface FolderComposerFilterCellFolders
- (_TtC11MobileNotes31FolderComposerFilterCellFolders)initWithFrame:(CGRect)a3;
@end

@implementation FolderComposerFilterCellFolders

- (_TtC11MobileNotes31FolderComposerFilterCellFolders)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes31FolderComposerFilterCellFolders____lazy_storage___menu) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes31FolderComposerFilterCellFolders____lazy_storage___menuActionOff) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes31FolderComposerFilterCellFolders____lazy_storage___menuActionInclude) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes31FolderComposerFilterCellFolders____lazy_storage___menuActionExclude) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FolderComposerFilterCellFolders();
  return [(FolderComposerFilterCell *)&v8 initWithFrame:x, y, width, height];
}

@end