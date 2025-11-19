@interface FMLegacyTabBar
- (UITraitCollection)traitCollection;
- (_TtC6FindMy14FMLegacyTabBar)initWithFrame:(CGRect)a3;
- (id)largeContentViewerInteraction:(id)a3 itemAtPoint:(CGPoint)a4;
- (void)largeContentViewerInteraction:(id)a3 didEndOnItem:(id)a4 atPoint:(CGPoint)a5;
- (void)layoutSubviews;
- (void)tabBar:(id)a3 didSelectItem:(id)a4;
@end

@implementation FMLegacyTabBar

- (UITraitCollection)traitCollection
{
  v2 = self;
  v3 = sub_100222414();

  return v3;
}

- (void)tabBar:(id)a3 didSelectItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100225F18();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100224024();
}

- (id)largeContentViewerInteraction:(id)a3 itemAtPoint:(CGPoint)a4
{
  v4 = self;
  v5 = sub_10022433C();

  return v5;
}

- (void)largeContentViewerInteraction:(id)a3 didEndOnItem:(id)a4 atPoint:(CGPoint)a5
{
  v7 = self;
  v5 = sub_10022433C();
  if (v5)
  {
    v6 = v5;
    [(FMLegacyTabBar *)v7 setSelectedItem:v5];
    sub_100225F18();
  }
}

- (_TtC6FindMy14FMLegacyTabBar)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end