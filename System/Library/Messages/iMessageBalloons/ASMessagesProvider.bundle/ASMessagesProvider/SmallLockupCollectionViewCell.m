@interface SmallLockupCollectionViewCell
- (_TtC18ASMessagesProvider29SmallLockupCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation SmallLockupCollectionViewCell

- (_TtC18ASMessagesProvider29SmallLockupCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_itemLayoutContext;
  v5 = sub_75C840();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_lockupView;
  *(&self->super.super.super.super.super.isa + v6) = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_separatorView) = 0;
  v7 = OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_separator;
  v8 = sub_767510();
  (*(*(v8 - 8) + 56))(self + v7, 1, 1, v8);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_27718C();
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(SmallLockupCollectionViewCell *)&v5 prepareForReuse];
  v3 = *(*&v2[OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  sub_7591D0(v6, v4);
}

@end