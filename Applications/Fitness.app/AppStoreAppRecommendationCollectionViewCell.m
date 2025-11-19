@interface AppStoreAppRecommendationCollectionViewCell
- (void)prepareForReuse;
@end

@implementation AppStoreAppRecommendationCollectionViewCell

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for AppStoreAppRecommendationCollectionViewCell();
  v2 = v5.receiver;
  [(AppStoreAppRecommendationCollectionViewCell *)&v5 prepareForReuse];
  v3 = sub_1003A0AA4();
  [v3 setConstant:{46.0, v5.receiver, v5.super_class}];

  v4 = sub_1003A0AB8();
  [v4 setConstant:46.0];

  [*&v2[OBJC_IVAR____TtC10FitnessApp43AppStoreAppRecommendationCollectionViewCell_iconImageView] setImage:0];
}

@end