@interface CarouselItemLockupCollectionView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC20ProductPageExtension32CarouselItemLockupCollectionView)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension32CarouselItemLockupCollectionView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation CarouselItemLockupCollectionView

- (_TtC20ProductPageExtension32CarouselItemLockupCollectionView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_artworkViews) = _swiftEmptyArrayStorage;
  v4 = OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  v5 = sub_10000A5D4(&unk_10094B8B0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_numberOfArtworks) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(CarouselItemLockupCollectionView *)&v5 layoutSubviews];
  sub_1005A3394(v4);
  sub_10000CF78(v4, v4[3]);
  sub_10076422C();
  traitCollection = [v2 traitCollection];
  sub_10076E0EC();

  sub_10000CD74(v4);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  traitCollection = [(CarouselItemLockupCollectionView *)selfCopy traitCollection];
  sub_1005A3394(v11);
  sub_10000CF78(v11, v11[3]);
  sub_10076E0FC();
  v6 = v5;
  v8 = v7;

  sub_10000CD74(v11);
  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (_TtC20ProductPageExtension32CarouselItemLockupCollectionView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end