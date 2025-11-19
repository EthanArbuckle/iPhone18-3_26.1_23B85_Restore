@interface PlaceSummaryImageDownloader
- (_TtC4Maps27PlaceSummaryImageDownloader)init;
@end

@implementation PlaceSummaryImageDownloader

- (_TtC4Maps27PlaceSummaryImageDownloader)init
{
  v3 = [objc_allocWithZone(NSCache) init];
  *(&self->super.isa + OBJC_IVAR____TtC4Maps27PlaceSummaryImageDownloader_photoCarouselImageCache) = v3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for PlaceSummaryImageDownloader();
  return [(PlaceSummaryImageDownloader *)&v5 init];
}

@end