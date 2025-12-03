@interface AppShowcaseCollectionViewCell
- (_TtC22SubscribePageExtension29AppShowcaseCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation AppShowcaseCollectionViewCell

- (_TtC22SubscribePageExtension29AppShowcaseCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension29AppShowcaseCollectionViewCell_itemLayoutContext;
  v5 = sub_1007469A4();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension29AppShowcaseCollectionViewCell_lockupView;
  *(&self->super.super.super.super.super.isa + v6) = [objc_allocWithZone(type metadata accessor for AppShowcaseLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC22SubscribePageExtension29AppShowcaseCollectionViewCell_showcaseType;
  v8 = enum case for AppShowcaseType.large(_:);
  v9 = sub_100742384();
  (*(*(v9 - 8) + 104))(self + v7, v8, v9);
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1004AA510();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1004AA678();
}

@end