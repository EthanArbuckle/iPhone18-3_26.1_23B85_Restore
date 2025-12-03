@interface PlaceSummaryAsyncDataManager
- (_TtC4Maps28PlaceSummaryAsyncDataManager)init;
- (void)loadWith:(id)with containerWidth:(double)width desiredScale:(double)scale;
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

- (void)loadWith:(id)with containerWidth:(double)width desiredScale:(double)scale
{
  withCopy = with;
  selfCopy = self;
  sub_100305A18(width, scale);
}

@end