@interface ProductMediaItemCollectionViewCell
- (_TtC8AppStore34ProductMediaItemCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ProductMediaItemCollectionViewCell

- (_TtC8AppStore34ProductMediaItemCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8AppStore34ProductMediaItemCollectionViewCell_itemLayoutContext;
  v5 = type metadata accessor for ItemLayoutContext();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore34ProductMediaItemCollectionViewCell_shouldForcePortrait) = 0;
  v6 = self + OBJC_IVAR____TtC8AppStore34ProductMediaItemCollectionViewCell_artworkDisplaySize;
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  static VideoConfiguration.defaultConfiguration.getter();
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1007183B0();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1007185A4();
}

@end