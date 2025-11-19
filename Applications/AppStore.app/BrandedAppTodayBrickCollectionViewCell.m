@interface BrandedAppTodayBrickCollectionViewCell
- (_TtC8AppStore38BrandedAppTodayBrickCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation BrandedAppTodayBrickCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_100278A64();
}

- (void)prepareForReuse
{
  v11.receiver = self;
  v11.super_class = swift_getObjectType();
  v2 = v11.receiver;
  [(BaseTodayBrickCollectionViewCell *)&v11 prepareForReuse];
  v3 = &v2[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics];
  v4 = *&v2[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics];
  v5 = *&v2[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 8];
  v6 = *&v2[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 16];
  v7 = *&v2[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 24];
  v8 = *&v2[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 32];
  v9 = *&v2[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 40];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 6) = 0;
  sub_100279A5C(v4, v5, v6, v7, v8, v9);
  [v2 setNeedsLayout];
  v10 = &v2[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_brandedTitle];
  *v10 = 0;
  *(v10 + 1) = 0;

  sub_10027857C();
}

- (_TtC8AppStore38BrandedAppTodayBrickCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = self + OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 6) = 0;
  v10 = (&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_brandedTitle);
  *v10 = 0;
  v10[1] = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView) = 0;
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(TodayBrickCollectionViewCellWithBackground *)&v12 initWithFrame:x, y, width, height];
}

@end