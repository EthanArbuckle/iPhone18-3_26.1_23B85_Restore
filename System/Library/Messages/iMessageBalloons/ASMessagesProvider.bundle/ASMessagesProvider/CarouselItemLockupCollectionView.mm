@interface CarouselItemLockupCollectionView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC18ASMessagesProvider32CarouselItemLockupCollectionView)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider32CarouselItemLockupCollectionView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation CarouselItemLockupCollectionView

- (_TtC18ASMessagesProvider32CarouselItemLockupCollectionView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView_artworkViews) = _swiftEmptyArrayStorage;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  v5 = sub_BD88(&qword_94F910);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView_numberOfArtworks) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(CarouselItemLockupCollectionView *)&v5 layoutSubviews];
  sub_3C1FEC(v4);
  sub_B170(v4, v4[3]);
  sub_75D650();
  traitCollection = [v2 traitCollection];
  sub_7673E0();

  sub_BEB8(v4);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  traitCollection = [(CarouselItemLockupCollectionView *)selfCopy traitCollection];
  sub_3C1FEC(v11);
  sub_B170(v11, v11[3]);
  sub_7673F0();
  v6 = v5;
  v8 = v7;

  sub_BEB8(v11);
  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (_TtC18ASMessagesProvider32CarouselItemLockupCollectionView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end