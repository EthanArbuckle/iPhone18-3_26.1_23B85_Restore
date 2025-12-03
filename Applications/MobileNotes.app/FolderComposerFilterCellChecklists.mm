@interface FolderComposerFilterCellChecklists
- (_TtC11MobileNotes34FolderComposerFilterCellChecklists)initWithFrame:(CGRect)frame;
@end

@implementation FolderComposerFilterCellChecklists

- (_TtC11MobileNotes34FolderComposerFilterCellChecklists)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellChecklists____lazy_storage___menu) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellChecklists____lazy_storage___menuActionOff) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellChecklists____lazy_storage___menuActionAny) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellChecklists____lazy_storage___menuActionIncomplete) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellChecklists____lazy_storage___menuActionComplete) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellChecklists____lazy_storage___menuActionNone) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FolderComposerFilterCellChecklists();
  return [(FolderComposerFilterCell *)&v8 initWithFrame:x, y, width, height];
}

@end