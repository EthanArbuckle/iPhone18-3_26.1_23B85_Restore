@interface DiscoveryArticleViewController
- (_TtC15ProximityReader30DiscoveryArticleViewController)initWithArticleLayout:(id)a3 referrerIdentifier:(id)a4 cardSize:(int64_t)a5;
- (_TtC15ProximityReader30DiscoveryArticleViewController)initWithItemIdentifier:(id)a3 referrerIdentifier:(id)a4;
- (_TtC15ProximityReader30DiscoveryArticleViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setArticleLayout:(id)a3 animated:(BOOL)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation DiscoveryArticleViewController

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_23A68E348(v3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_23A68E834(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)setArticleLayout:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_23A689A08(v6, a4);
}

- (_TtC15ProximityReader30DiscoveryArticleViewController)initWithItemIdentifier:(id)a3 referrerIdentifier:(id)a4
{
  if (!a3)
  {
    v5 = 0;
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    v10 = 0;
    return sub_23A68F87C(v5, v7, v8, v10);
  }

  v5 = sub_23A6DF624();
  v7 = v6;
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_23A6DF624();
  v10 = v9;
  return sub_23A68F87C(v5, v7, v8, v10);
}

- (_TtC15ProximityReader30DiscoveryArticleViewController)initWithArticleLayout:(id)a3 referrerIdentifier:(id)a4 cardSize:(int64_t)a5
{
  if (a4)
  {
    v7 = sub_23A6DF624();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a3;
  return sub_23A68FA60(a3, v7, v9, a5);
}

- (_TtC15ProximityReader30DiscoveryArticleViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_23A6DF624();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_23A68FC20(v5, v7, a4);
}

@end