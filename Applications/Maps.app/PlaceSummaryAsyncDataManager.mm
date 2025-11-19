@interface PlaceSummaryAsyncDataManager
- (_TtC4Maps28PlaceSummaryAsyncDataManager)init;
- (void)loadWith:(id)a3 containerWidth:(double)a4 desiredScale:(double)a5;
@end

@implementation PlaceSummaryAsyncDataManager

- (_TtC4Maps28PlaceSummaryAsyncDataManager)init
{
  *(&self->super.isa + OBJC_IVAR____TtC4Maps28PlaceSummaryAsyncDataManager_imageDownloader) = [objc_allocWithZone(type metadata accessor for PlaceSummaryImageDownloader()) init];
  *(&self->super.isa + OBJC_IVAR____TtC4Maps28PlaceSummaryAsyncDataManager_etaDownloader) = [objc_allocWithZone(type metadata accessor for PlaceSummaryETADownloader()) init];
  *(&self->super.isa + OBJC_IVAR____TtC4Maps28PlaceSummaryAsyncDataManager_mapItemDownloader) = [objc_allocWithZone(type metadata accessor for PlaceSummaryMapItemDownloader()) init];
  v4.receiver = self;
  v4.super_class = type metadata accessor for PlaceSummaryAsyncDataManager();
  return [(PlaceSummaryAsyncDataManager *)&v4 init];
}

- (void)loadWith:(id)a3 containerWidth:(double)a4 desiredScale:(double)a5
{
  v8 = a3;
  v9 = self;
  sub_100305A18(a4, a5);
}

@end