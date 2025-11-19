@interface CRLiOSFolderGridViewController.ListItem
- (_TtCC8Freeform30CRLiOSFolderGridViewController8ListItem)initWithCoder:(id)a3;
- (_TtCC8Freeform30CRLiOSFolderGridViewController8ListItem)initWithFrame:(CGRect)a3;
@end

@implementation CRLiOSFolderGridViewController.ListItem

- (_TtCC8Freeform30CRLiOSFolderGridViewController8ListItem)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController8ListItem____lazy_storage___listViewController) = 0;
  v8.receiver = self;
  v8.super_class = _s8ListItemCMa();
  return [(CRLiOSFolderGridViewController.Item *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC8Freeform30CRLiOSFolderGridViewController8ListItem)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController8ListItem____lazy_storage___listViewController) = 0;
  v7.receiver = self;
  v7.super_class = _s8ListItemCMa();
  v4 = a3;
  v5 = [(CRLiOSFolderGridViewController.Item *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end