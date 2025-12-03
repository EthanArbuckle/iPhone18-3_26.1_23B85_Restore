@interface PrivacyDefinitionCollectionViewCell
- (_TtC22SubscribePageExtension35PrivacyDefinitionCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation PrivacyDefinitionCollectionViewCell

- (_TtC22SubscribePageExtension35PrivacyDefinitionCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension35PrivacyDefinitionCollectionViewCell_itemLayoutContext;
  v5 = sub_1007469A4();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10014A1E4();
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(PrivacyDefinitionCollectionViewCell *)&v3 prepareForReuse];
  sub_10014A088(0, 0, &OBJC_IVAR____TtC22SubscribePageExtension35PrivacyDefinitionCollectionViewCell_titleLabel);
  sub_10014A088(0, 0, &OBJC_IVAR____TtC22SubscribePageExtension35PrivacyDefinitionCollectionViewCell_definitionLabel);
}

@end