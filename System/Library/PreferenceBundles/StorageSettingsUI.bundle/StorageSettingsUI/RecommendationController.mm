@interface RecommendationController
- (void)recommendationEnablementProgressDidUpdateWithRecommendationID:(id)d progress:(double)progress;
- (void)recommendationsDidUpdate;
@end

@implementation RecommendationController

- (void)recommendationsDidUpdate
{
  v3 = sub_147EC(&unk_B8240, &qword_88F50);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9 - v5;
  v7 = sub_81AB8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;

  sub_68AE4(0, 0, v6, &unk_8A650, v8);
}

- (void)recommendationEnablementProgressDidUpdateWithRecommendationID:(id)d progress:(double)progress
{
  v6 = sub_147EC(&unk_B8240, &qword_88F50);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  v10 = sub_81928();
  v12 = v11;
  v13 = sub_81AB8();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = self;
  *(v14 + 40) = v10;
  *(v14 + 48) = v12;
  *(v14 + 56) = progress;

  sub_68AE4(0, 0, v9, &unk_8A648, v14);
}

@end