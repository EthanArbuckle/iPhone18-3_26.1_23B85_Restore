@interface PlaceSummaryEVChargerDownloader
- (_TtC4Maps31PlaceSummaryEVChargerDownloader)init;
- (void)refreshResultForForTemplate:(id)template mapItem:(id)item;
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
  sharedSearchVirtualGarageManager = [v3 sharedSearchVirtualGarageManager];
  virtualGarage = [sharedSearchVirtualGarageManager virtualGarage];

  v7 = *(&v4->super.isa + OBJC_IVAR____TtC4Maps31PlaceSummaryEVChargerDownloader_garage);
  *(&v4->super.isa + OBJC_IVAR____TtC4Maps31PlaceSummaryEVChargerDownloader_garage) = virtualGarage;

  return v4;
}

- (void)refreshResultForForTemplate:(id)template mapItem:(id)item
{
  templateCopy = template;
  itemCopy = item;
  selfCopy = self;
  sub_10051B9A8(templateCopy, itemCopy);
}

@end