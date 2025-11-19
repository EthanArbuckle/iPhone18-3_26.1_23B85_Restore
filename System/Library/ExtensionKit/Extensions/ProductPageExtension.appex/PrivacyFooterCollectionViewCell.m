@interface PrivacyFooterCollectionViewCell
- (_TtC20ProductPageExtension31PrivacyFooterCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation PrivacyFooterCollectionViewCell

- (_TtC20ProductPageExtension31PrivacyFooterCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyFooterCollectionViewCell_itemLayoutContext;
  v5 = sub_10076341C();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyFooterCollectionViewCell_bodyText;
  v7 = sub_10000A5D4(&qword_1009459B8);
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1006DB814();
}

@end