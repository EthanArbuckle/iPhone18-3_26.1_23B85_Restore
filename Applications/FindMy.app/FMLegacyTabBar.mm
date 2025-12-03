@interface FMLegacyTabBar
- (UITraitCollection)traitCollection;
- (_TtC6FindMy14FMLegacyTabBar)initWithFrame:(CGRect)frame;
- (id)largeContentViewerInteraction:(id)interaction itemAtPoint:(CGPoint)point;
- (void)largeContentViewerInteraction:(id)interaction didEndOnItem:(id)item atPoint:(CGPoint)point;
- (void)layoutSubviews;
- (void)tabBar:(id)bar didSelectItem:(id)item;
@end

@implementation FMLegacyTabBar

- (UITraitCollection)traitCollection
{
  selfCopy = self;
  v3 = sub_100222414();

  return v3;
}

- (void)tabBar:(id)bar didSelectItem:(id)item
{
  barCopy = bar;
  itemCopy = item;
  selfCopy = self;
  sub_100225F18();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100224024();
}

- (id)largeContentViewerInteraction:(id)interaction itemAtPoint:(CGPoint)point
{
  selfCopy = self;
  v5 = sub_10022433C();

  return v5;
}

- (void)largeContentViewerInteraction:(id)interaction didEndOnItem:(id)item atPoint:(CGPoint)point
{
  selfCopy = self;
  v5 = sub_10022433C();
  if (v5)
  {
    v6 = v5;
    [(FMLegacyTabBar *)selfCopy setSelectedItem:v5];
    sub_100225F18();
  }
}

- (_TtC6FindMy14FMLegacyTabBar)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end