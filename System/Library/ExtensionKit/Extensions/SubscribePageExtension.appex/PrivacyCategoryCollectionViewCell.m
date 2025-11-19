@interface PrivacyCategoryCollectionViewCell
- (_TtC22SubscribePageExtension33PrivacyCategoryCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation PrivacyCategoryCollectionViewCell

- (_TtC22SubscribePageExtension33PrivacyCategoryCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension33PrivacyCategoryCollectionViewCell_privacyCategoryView;
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for PrivacyCategoryView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC22SubscribePageExtension33PrivacyCategoryCollectionViewCell_itemLayoutContext;
  v6 = sub_1007469A4();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension33PrivacyCategoryCollectionViewCell_privacyCategory) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  v2 = v13.receiver;
  [(PrivacyCategoryCollectionViewCell *)&v13 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension33PrivacyCategoryCollectionViewCell_privacyCategoryView];
  v4 = [v2 contentView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame:{v6, v8, v10, v12}];
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1006BE75C();
}

@end