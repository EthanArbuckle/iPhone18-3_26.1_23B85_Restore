@interface BKSeriesManagerUpdaterHelper
+ (void)gatherAllAssetAdamIDsInSeries:(NSDictionary *)a3 completion:(id)a4;
+ (void)updateSeries:(id)a3 withResource:(id)a4 inMoc:(id)a5;
- (BKSeriesManagerUpdaterHelper)init;
@end

@implementation BKSeriesManagerUpdaterHelper

+ (void)gatherAllAssetAdamIDsInSeries:(NSDictionary *)a3 completion:(id)a4
{
  v7 = sub_18AFC0(&unk_341460);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_1EF014();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2A6870;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2A65D0;
  v14[5] = v13;
  v15 = a3;
  sub_1CE02C(0, 0, v9, &unk_2A6880, v14);
}

+ (void)updateSeries:(id)a3 withResource:(id)a4 inMoc:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a5;
  _s8BookCore26SeriesManagerUpdaterHelperC6update_4with2inySo12BKSeriesItemC_So9BFMSeries_pSo0J28DatabaseManagedObjectContextCtFZ_0(v7, a4);

  swift_unknownObjectRelease();
}

- (BKSeriesManagerUpdaterHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SeriesManagerUpdaterHelper();
  return [(BKSeriesManagerUpdaterHelper *)&v3 init];
}

@end