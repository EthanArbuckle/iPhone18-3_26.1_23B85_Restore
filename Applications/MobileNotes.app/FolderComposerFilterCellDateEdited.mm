@interface FolderComposerFilterCellDateEdited
- (_TtC11MobileNotes34FolderComposerFilterCellDateEdited)initWithCoder:(id)coder;
- (_TtC11MobileNotes34FolderComposerFilterCellDateEdited)initWithFrame:(CGRect)frame;
@end

@implementation FolderComposerFilterCellDateEdited

- (_TtC11MobileNotes34FolderComposerFilterCellDateEdited)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(FolderComposerFilterCellDate *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC11MobileNotes34FolderComposerFilterCellDateEdited)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(FolderComposerFilterCellDate *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end