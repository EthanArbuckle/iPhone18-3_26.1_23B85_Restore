@interface CarouselItemLockupCollectionView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC8AppStore32CarouselItemLockupCollectionView)initWithCoder:(id)a3;
- (_TtC8AppStore32CarouselItemLockupCollectionView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation CarouselItemLockupCollectionView

- (_TtC8AppStore32CarouselItemLockupCollectionView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_artworkViews) = _swiftEmptyArrayStorage;
  v4 = OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  v5 = sub_10002849C(&qword_100977078);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_numberOfArtworks) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(CarouselItemLockupCollectionView *)&v5 layoutSubviews];
  sub_10059CCC0(v4);
  sub_10002A400(v4, v4[3]);
  LayoutMarginsAware<>.layoutFrame.getter();
  v3 = [v2 traitCollection];
  dispatch thunk of Placeable.place(at:with:)();

  sub_100007000(v4);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = [(CarouselItemLockupCollectionView *)v3 traitCollection];
  sub_10059CCC0(v11);
  sub_10002A400(v11, v11[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v6 = v5;
  v8 = v7;

  sub_100007000(v11);
  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (_TtC8AppStore32CarouselItemLockupCollectionView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end