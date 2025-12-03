@interface SmallLockupCollectionViewCell
- (_TtC22SubscribePageExtension29SmallLockupCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation SmallLockupCollectionViewCell

- (_TtC22SubscribePageExtension29SmallLockupCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_itemLayoutContext;
  v5 = sub_1007469A4();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_lockupView;
  *(&self->super.super.super.super.super.isa + v6) = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_separatorView) = 0;
  v7 = OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_separator;
  v8 = sub_100751374();
  (*(*(v8 - 8) + 56))(self + v7, 1, 1, v8);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100228F64();
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(SmallLockupCollectionViewCell *)&v5 prepareForReuse];
  v3 = *(*&v2[OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  sub_100743384(v6, v4);
}

@end