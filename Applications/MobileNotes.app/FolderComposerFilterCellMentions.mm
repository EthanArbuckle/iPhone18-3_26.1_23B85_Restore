@interface FolderComposerFilterCellMentions
- (_TtC11MobileNotes32FolderComposerFilterCellMentions)initWithFrame:(CGRect)frame;
@end

@implementation FolderComposerFilterCellMentions

- (_TtC11MobileNotes32FolderComposerFilterCellMentions)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menu) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menuActionOff) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menuActionAnyone) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menuActionMe) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menuActionSpecificUsers) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes32FolderComposerFilterCellMentions____lazy_storage___menuActionNone) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FolderComposerFilterCellMentions();
  return [(FolderComposerFilterCell *)&v8 initWithFrame:x, y, width, height];
}

@end