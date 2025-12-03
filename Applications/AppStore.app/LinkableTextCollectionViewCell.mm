@interface LinkableTextCollectionViewCell
- (_TtC8AppStore30LinkableTextCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation LinkableTextCollectionViewCell

- (_TtC8AppStore30LinkableTextCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8AppStore30LinkableTextCollectionViewCell_itemLayoutContext;
  v5 = type metadata accessor for ItemLayoutContext();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC8AppStore30LinkableTextCollectionViewCell_bodyText;
  v7 = sub_10002849C(&unk_100993030);
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10069293C();
}

@end