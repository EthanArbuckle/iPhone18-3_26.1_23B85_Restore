@interface FolderComposerFilterCellDateCreated
- (_TtC11MobileNotes35FolderComposerFilterCellDateCreated)initWithCoder:(id)a3;
- (_TtC11MobileNotes35FolderComposerFilterCellDateCreated)initWithFrame:(CGRect)a3;
@end

@implementation FolderComposerFilterCellDateCreated

- (_TtC11MobileNotes35FolderComposerFilterCellDateCreated)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(FolderComposerFilterCellDate *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC11MobileNotes35FolderComposerFilterCellDateCreated)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(FolderComposerFilterCellDate *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end