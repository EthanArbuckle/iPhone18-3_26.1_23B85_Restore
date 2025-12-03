@interface BKGenreRecommendationProvider
- (BKGenreRecommendationProvider)init;
- (void)recommendedGenreCollectionsFor:(id)for :(id)a4;
- (void)recommendedGenresWith:(id)with;
@end

@implementation BKGenreRecommendationProvider

- (void)recommendedGenresWith:(id)with
{
  ObjectType = swift_getObjectType();
  v6 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_1007A2744();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = self;
  v10[5] = with;
  v10[6] = ObjectType;
  withCopy = with;
  selfCopy = self;
  sub_1003457A0(0, 0, v8, &unk_100822EB8, v10);
}

- (void)recommendedGenreCollectionsFor:(id)for :(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_1007A2744();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = for;
  v12[5] = a4;
  v12[6] = self;
  v12[7] = ObjectType;
  forCopy = for;
  v14 = a4;
  selfCopy = self;
  sub_1003457A0(0, 0, v10, &unk_100822E90, v12);
}

- (BKGenreRecommendationProvider)init
{
  v3 = self + OBJC_IVAR___BKGenreRecommendationProvider____lazy_storage___recommendationManager;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = self + OBJC_IVAR___BKGenreRecommendationProvider____lazy_storage___collectionRecommendationService;
  v5 = type metadata accessor for GenreRecommendationProvider();
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v7.receiver = self;
  v7.super_class = v5;
  return [(BKGenreRecommendationProvider *)&v7 init];
}

@end