@interface CRLiOSFolderGridViewController.Item.ViewController.SelectionStateBadge
- (CGSize)intrinsicContentSize;
- (_TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)updateConstraints;
@end

@implementation CRLiOSFolderGridViewController.Item.ViewController.SelectionStateBadge

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_100EE4A2C();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_100EE4B60(x, y, width, height);
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = _s4ItemC14ViewControllerC19SelectionStateBadgeCMa();
  v2 = v3.receiver;
  [(CRLiOSFolderGridViewController.Item.ViewController.SelectionStateBadge *)&v3 updateConstraints];
  sub_100EE52BC();
}

- (_TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end