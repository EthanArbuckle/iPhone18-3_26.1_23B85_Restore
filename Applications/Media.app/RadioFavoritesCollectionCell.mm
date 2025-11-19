@interface RadioFavoritesCollectionCell
- (_TtC5Media28RadioFavoritesCollectionCell)initWithCoder:(id)a3;
- (_TtC5Media28RadioFavoritesCollectionCell)initWithFrame:(CGRect)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
@end

@implementation RadioFavoritesCollectionCell

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10005A7C0(v6, v7);
}

- (_TtC5Media28RadioFavoritesCollectionCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self + OBJC_IVAR____TtC5Media28RadioFavoritesCollectionCell_config;
  *v7 = 0;
  v7[10] = 0;
  *(v7 + 4) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for RadioFavoritesCollectionCell();
  return [(RadioFavoritesCollectionCell *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC5Media28RadioFavoritesCollectionCell)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC5Media28RadioFavoritesCollectionCell_config;
  *v4 = 0;
  v4[10] = 0;
  *(v4 + 4) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for RadioFavoritesCollectionCell();
  v5 = a3;
  v6 = [(RadioFavoritesCollectionCell *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end