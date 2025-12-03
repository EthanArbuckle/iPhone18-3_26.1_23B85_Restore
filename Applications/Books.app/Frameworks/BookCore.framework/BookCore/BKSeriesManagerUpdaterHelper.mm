@interface BKSeriesManagerUpdaterHelper
+ (void)gatherAllAssetAdamIDsInSeries:(NSDictionary *)series completion:(id)completion;
+ (void)updateSeries:(id)series withResource:(id)resource inMoc:(id)moc;
- (BKSeriesManagerUpdaterHelper)init;
@end

@implementation BKSeriesManagerUpdaterHelper

+ (void)gatherAllAssetAdamIDsInSeries:(NSDictionary *)series completion:(id)completion
{
  v7 = sub_18AFC0(&unk_341460);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = series;
  v11[3] = v10;
  v11[4] = self;
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
  seriesCopy = series;
  sub_1CE02C(0, 0, v9, &unk_2A6880, v14);
}

+ (void)updateSeries:(id)series withResource:(id)resource inMoc:(id)moc
{
  seriesCopy = series;
  swift_unknownObjectRetain();
  mocCopy = moc;
  _s8BookCore26SeriesManagerUpdaterHelperC6update_4with2inySo12BKSeriesItemC_So9BFMSeries_pSo0J28DatabaseManagedObjectContextCtFZ_0(seriesCopy, resource);

  swift_unknownObjectRelease();
}

- (BKSeriesManagerUpdaterHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SeriesManagerUpdaterHelper();
  return [(BKSeriesManagerUpdaterHelper *)&v3 init];
}

@end