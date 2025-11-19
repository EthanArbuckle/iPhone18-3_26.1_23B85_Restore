@interface SearchFieldHeaderView
- (_TtC23ShelfKitCollectionViews21SearchFieldHeaderView)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews21SearchFieldHeaderView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SearchFieldHeaderView

- (_TtC23ShelfKitCollectionViews21SearchFieldHeaderView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = (self + OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchFieldHeaderView_margins);
  *v7 = xmmword_3297F0;
  v7[1] = xmmword_329800;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchFieldHeaderView_contentView) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for SearchFieldHeaderView();
  return [(SearchFieldHeaderView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC23ShelfKitCollectionViews21SearchFieldHeaderView)initWithCoder:(id)a3
{
  v3 = (self + OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchFieldHeaderView_margins);
  *v3 = xmmword_3297F0;
  v3[1] = xmmword_329800;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews21SearchFieldHeaderView_contentView) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_19F028();
}

@end