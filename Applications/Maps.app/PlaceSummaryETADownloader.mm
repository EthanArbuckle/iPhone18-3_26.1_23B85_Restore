@interface PlaceSummaryETADownloader
- (_TtC4Maps25PlaceSummaryETADownloader)init;
- (void)ETAProviderUpdated:(id)a3;
@end

@implementation PlaceSummaryETADownloader

- (void)ETAProviderUpdated:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1003D13A0(a3);
}

- (_TtC4Maps25PlaceSummaryETADownloader)init
{
  *(&self->super.isa + OBJC_IVAR____TtC4Maps25PlaceSummaryETADownloader_etaProviders) = _swiftEmptyArrayStorage;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps25PlaceSummaryETADownloader_models) = _swiftEmptyArrayStorage;
  v3.receiver = self;
  v3.super_class = type metadata accessor for PlaceSummaryETADownloader();
  return [(PlaceSummaryETADownloader *)&v3 init];
}

@end