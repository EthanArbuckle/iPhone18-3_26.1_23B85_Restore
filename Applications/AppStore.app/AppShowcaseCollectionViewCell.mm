@interface AppShowcaseCollectionViewCell
- (_TtC8AppStore29AppShowcaseCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation AppShowcaseCollectionViewCell

- (_TtC8AppStore29AppShowcaseCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8AppStore29AppShowcaseCollectionViewCell_itemLayoutContext;
  v5 = type metadata accessor for ItemLayoutContext();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC8AppStore29AppShowcaseCollectionViewCell_lockupView;
  *(&self->super.super.super.super.super.isa + v6) = [objc_allocWithZone(type metadata accessor for AppShowcaseLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC8AppStore29AppShowcaseCollectionViewCell_showcaseType;
  v8 = enum case for AppShowcaseType.large(_:);
  v9 = type metadata accessor for AppShowcaseType();
  (*(*(v9 - 8) + 104))(self + v7, v8, v9);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_10010343C();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1001035A4();
}

@end