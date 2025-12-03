@interface DiscoveryArticleViewController
- (_TtC15ProximityReader30DiscoveryArticleViewController)initWithArticleLayout:(id)layout referrerIdentifier:(id)identifier cardSize:(int64_t)size;
- (_TtC15ProximityReader30DiscoveryArticleViewController)initWithItemIdentifier:(id)identifier referrerIdentifier:(id)referrerIdentifier;
- (_TtC15ProximityReader30DiscoveryArticleViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setArticleLayout:(id)layout animated:(BOOL)animated;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation DiscoveryArticleViewController

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  selfCopy = self;
  sub_23A68E348(disappearCopy);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_23A68E834(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)setArticleLayout:(id)layout animated:(BOOL)animated
{
  layoutCopy = layout;
  selfCopy = self;
  sub_23A689A08(layoutCopy, animated);
}

- (_TtC15ProximityReader30DiscoveryArticleViewController)initWithItemIdentifier:(id)identifier referrerIdentifier:(id)referrerIdentifier
{
  if (!identifier)
  {
    v5 = 0;
    v7 = 0;
    if (referrerIdentifier)
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
  if (!referrerIdentifier)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_23A6DF624();
  v10 = v9;
  return sub_23A68F87C(v5, v7, v8, v10);
}

- (_TtC15ProximityReader30DiscoveryArticleViewController)initWithArticleLayout:(id)layout referrerIdentifier:(id)identifier cardSize:(int64_t)size
{
  if (identifier)
  {
    v7 = sub_23A6DF624();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  layoutCopy = layout;
  return sub_23A68FA60(layout, v7, v9, size);
}

- (_TtC15ProximityReader30DiscoveryArticleViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_23A6DF624();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_23A68FC20(v5, v7, bundle);
}

@end