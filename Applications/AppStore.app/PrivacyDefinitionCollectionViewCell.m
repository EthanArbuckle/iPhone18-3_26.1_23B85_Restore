@interface PrivacyDefinitionCollectionViewCell
- (_TtC8AppStore35PrivacyDefinitionCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation PrivacyDefinitionCollectionViewCell

- (_TtC8AppStore35PrivacyDefinitionCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8AppStore35PrivacyDefinitionCollectionViewCell_itemLayoutContext;
  v5 = type metadata accessor for ItemLayoutContext();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100027A20();
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(PrivacyDefinitionCollectionViewCell *)&v3 prepareForReuse];
  sub_1000278C4(0, 0, &OBJC_IVAR____TtC8AppStore35PrivacyDefinitionCollectionViewCell_titleLabel);
  sub_1000278C4(0, 0, &OBJC_IVAR____TtC8AppStore35PrivacyDefinitionCollectionViewCell_definitionLabel);
}

@end