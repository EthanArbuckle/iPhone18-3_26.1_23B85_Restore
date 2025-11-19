@interface BKBookRecommendationProvider
- (BKBookRecommendationProvider)init;
- (void)postHydrationFilteredListWithPicks:(id)a3 collectionType:(id)a4 completion:(id)a5;
- (void)postHydrationFilteredListWithPicks:(id)a3 completion:(id)a4;
@end

@implementation BKBookRecommendationProvider

- (void)postHydrationFilteredListWithPicks:(id)a3 completion:(id)a4
{
  v6 = sub_1007A25E4();
  v7 = a4;
  v8 = self;
  sub_1006304E8(v6, 0, 0, v7);
}

- (void)postHydrationFilteredListWithPicks:(id)a3 collectionType:(id)a4 completion:(id)a5
{
  v7 = sub_1007A25E4();
  v8 = sub_1007A2254();
  v10 = v9;
  v11 = a5;
  v12 = self;
  sub_1006304E8(v7, v8, v10, v11);
}

- (BKBookRecommendationProvider)init
{
  v3 = self + OBJC_IVAR___BKBookRecommendationProvider____lazy_storage___recommendationService;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = self + OBJC_IVAR___BKBookRecommendationProvider____lazy_storage___collectionRecommendationService;
  *(v4 + 4) = 0;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v5 = self + OBJC_IVAR___BKBookRecommendationProvider____lazy_storage___postHydrationFilteringService;
  v6 = type metadata accessor for BookRecommendationProvider();
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v8.receiver = self;
  v8.super_class = v6;
  return [(BKBookRecommendationProvider *)&v8 init];
}

@end