@interface PlaceSummaryEVChargerDownloader
- (_TtC4Maps31PlaceSummaryEVChargerDownloader)init;
- (void)refreshResultForForTemplate:(id)a3 mapItem:(id)a4;
@end

@implementation PlaceSummaryEVChargerDownloader

- (_TtC4Maps31PlaceSummaryEVChargerDownloader)init
{
  *(&self->super.isa + OBJC_IVAR____TtC4Maps31PlaceSummaryEVChargerDownloader_garage) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for PlaceSummaryEVChargerDownloader();
  v2 = [(PlaceSummaryEVChargerDownloader *)&v9 init];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 sharedSearchVirtualGarageManager];
  v6 = [v5 virtualGarage];

  v7 = *(&v4->super.isa + OBJC_IVAR____TtC4Maps31PlaceSummaryEVChargerDownloader_garage);
  *(&v4->super.isa + OBJC_IVAR____TtC4Maps31PlaceSummaryEVChargerDownloader_garage) = v6;

  return v4;
}

- (void)refreshResultForForTemplate:(id)a3 mapItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10051B9A8(v6, v7);
}

@end