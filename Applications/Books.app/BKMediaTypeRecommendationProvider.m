@interface BKMediaTypeRecommendationProvider
- (BKMediaTypeRecommendationProvider)init;
- (void)recommendedMediaTypeWith:(id)a3;
@end

@implementation BKMediaTypeRecommendationProvider

- (void)recommendedMediaTypeWith:(id)a3
{
  v5 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_1007A2744();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = self;
  v9[5] = a3;
  v10 = a3;
  v11 = self;
  v12 = v10;
  sub_1005E3DA4(0, 0, v7, &unk_100834BE0, v9);

  sub_100007840(v7, &qword_100AD67D0);
}

- (BKMediaTypeRecommendationProvider)init
{
  v3 = self + OBJC_IVAR___BKMediaTypeRecommendationProvider____lazy_storage___recommendationService;
  v4 = type metadata accessor for MediaTypeRecommendationProvider();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(BKMediaTypeRecommendationProvider *)&v6 init];
}

@end