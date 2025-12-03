@interface RadioFavoritesCollectionCell
- (_TtC5Media28RadioFavoritesCollectionCell)initWithCoder:(id)coder;
- (_TtC5Media28RadioFavoritesCollectionCell)initWithFrame:(CGRect)frame;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
@end

@implementation RadioFavoritesCollectionCell

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_10005A7C0(contextCopy, coordinatorCopy);
}

- (_TtC5Media28RadioFavoritesCollectionCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = self + OBJC_IVAR____TtC5Media28RadioFavoritesCollectionCell_config;
  *v7 = 0;
  v7[10] = 0;
  *(v7 + 4) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for RadioFavoritesCollectionCell();
  return [(RadioFavoritesCollectionCell *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC5Media28RadioFavoritesCollectionCell)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC5Media28RadioFavoritesCollectionCell_config;
  *v4 = 0;
  v4[10] = 0;
  *(v4 + 4) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for RadioFavoritesCollectionCell();
  coderCopy = coder;
  v6 = [(RadioFavoritesCollectionCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end