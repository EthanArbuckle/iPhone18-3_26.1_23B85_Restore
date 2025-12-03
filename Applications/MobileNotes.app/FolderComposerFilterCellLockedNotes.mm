@interface FolderComposerFilterCellLockedNotes
- (_TtC11MobileNotes35FolderComposerFilterCellLockedNotes)initWithCoder:(id)coder;
- (_TtC11MobileNotes35FolderComposerFilterCellLockedNotes)initWithFrame:(CGRect)frame;
@end

@implementation FolderComposerFilterCellLockedNotes

- (_TtC11MobileNotes35FolderComposerFilterCellLockedNotes)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(FolderComposerFilterCellInclusion *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC11MobileNotes35FolderComposerFilterCellLockedNotes)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(FolderComposerFilterCellInclusion *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end