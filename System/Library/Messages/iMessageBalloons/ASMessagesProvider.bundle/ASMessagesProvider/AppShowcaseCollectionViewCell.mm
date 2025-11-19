@interface AppShowcaseCollectionViewCell
- (_TtC18ASMessagesProvider29AppShowcaseCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation AppShowcaseCollectionViewCell

- (_TtC18ASMessagesProvider29AppShowcaseCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider29AppShowcaseCollectionViewCell_itemLayoutContext;
  v5 = sub_75C840();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider29AppShowcaseCollectionViewCell_lockupView;
  *(&self->super.super.super.super.super.isa + v6) = [objc_allocWithZone(type metadata accessor for AppShowcaseLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC18ASMessagesProvider29AppShowcaseCollectionViewCell_showcaseType;
  v8 = enum case for AppShowcaseType.large(_:);
  v9 = sub_7581D0();
  (*(*(v9 - 8) + 104))(self + v7, v8, v9);
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_42E7F4();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_42F304();
}

@end