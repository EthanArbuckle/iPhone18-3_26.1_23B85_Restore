@interface CarouselItemLockupCollectionView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC22SubscribePageExtension32CarouselItemLockupCollectionView)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension32CarouselItemLockupCollectionView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation CarouselItemLockupCollectionView

- (_TtC22SubscribePageExtension32CarouselItemLockupCollectionView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension32CarouselItemLockupCollectionView_artworkViews) = _swiftEmptyArrayStorage;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  v5 = sub_10000C518(&qword_10092A198);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension32CarouselItemLockupCollectionView_numberOfArtworks) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(CarouselItemLockupCollectionView *)&v5 layoutSubviews];
  sub_100382578(v4);
  sub_10000C888(v4, v4[3]);
  sub_1007477B4();
  traitCollection = [v2 traitCollection];
  sub_100751244();

  sub_10000C620(v4);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  traitCollection = [(CarouselItemLockupCollectionView *)selfCopy traitCollection];
  sub_100382578(v11);
  sub_10000C888(v11, v11[3]);
  sub_100751254();
  v6 = v5;
  v8 = v7;

  sub_10000C620(v11);
  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (_TtC22SubscribePageExtension32CarouselItemLockupCollectionView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end