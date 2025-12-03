@interface CRLiOSFolderGridViewController.ListItem
- (_TtCC8Freeform30CRLiOSFolderGridViewController8ListItem)initWithCoder:(id)coder;
- (_TtCC8Freeform30CRLiOSFolderGridViewController8ListItem)initWithFrame:(CGRect)frame;
@end

@implementation CRLiOSFolderGridViewController.ListItem

- (_TtCC8Freeform30CRLiOSFolderGridViewController8ListItem)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController8ListItem____lazy_storage___listViewController) = 0;
  v8.receiver = self;
  v8.super_class = _s8ListItemCMa();
  return [(CRLiOSFolderGridViewController.Item *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC8Freeform30CRLiOSFolderGridViewController8ListItem)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController8ListItem____lazy_storage___listViewController) = 0;
  v7.receiver = self;
  v7.super_class = _s8ListItemCMa();
  coderCopy = coder;
  v5 = [(CRLiOSFolderGridViewController.Item *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end