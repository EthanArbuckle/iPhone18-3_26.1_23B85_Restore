@interface BundleSearchResultCollectionViewCell
- (_TtC20ProductPageExtension36BundleSearchResultCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation BundleSearchResultCollectionViewCell

- (_TtC20ProductPageExtension36BundleSearchResultCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension36BundleSearchResultCollectionViewCell_lockupView;
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC20ProductPageExtension36BundleSearchResultCollectionViewCell_bundleView;
  *(&self->super.super.super.super.super.isa + v5) = [objc_allocWithZone(type metadata accessor for BundleView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for BundleSearchResultCollectionViewCell();
  v2 = v6.receiver;
  [(BundleSearchResultCollectionViewCell *)&v6 prepareForReuse];
  sub_100522870();
  v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension36BundleSearchResultCollectionViewCell_bundleView];
  sub_10053F768();
  sub_10053F998();
  v4 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension10BundleView_backgroundArtworkView);
  v7.value.super.isa = 0;
  v7.is_nil = 0;
  sub_10075FCEC(v7, v5);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10036918C();
}

@end