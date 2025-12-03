@interface CRLiOSFolderGridViewController.GridItem
- (_TtCC8Freeform30CRLiOSFolderGridViewController8GridItem)initWithCoder:(id)coder;
- (_TtCC8Freeform30CRLiOSFolderGridViewController8GridItem)initWithFrame:(CGRect)frame;
@end

@implementation CRLiOSFolderGridViewController.GridItem

- (_TtCC8Freeform30CRLiOSFolderGridViewController8GridItem)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController8GridItem____lazy_storage___gridViewController) = 0;
  v8.receiver = self;
  v8.super_class = _s8GridItemCMa();
  return [(CRLiOSFolderGridViewController.Item *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC8Freeform30CRLiOSFolderGridViewController8GridItem)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController8GridItem____lazy_storage___gridViewController) = 0;
  v7.receiver = self;
  v7.super_class = _s8GridItemCMa();
  coderCopy = coder;
  v5 = [(CRLiOSFolderGridViewController.Item *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end