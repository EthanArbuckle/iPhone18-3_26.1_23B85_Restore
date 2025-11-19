@interface PersonalHotspotStateProvider
- (_TtC31PersonalHotspotControlExtension28PersonalHotspotStateProvider)init;
@end

@implementation PersonalHotspotStateProvider

- (_TtC31PersonalHotspotControlExtension28PersonalHotspotStateProvider)init
{
  v2 = self + OBJC_IVAR____TtC31PersonalHotspotControlExtension28PersonalHotspotStateProvider____lazy_storage___misClient;
  *v2 = 0;
  v2[8] = 1;
  v3 = self + OBJC_IVAR____TtC31PersonalHotspotControlExtension28PersonalHotspotStateProvider____lazy_storage___wifiClient;
  *v3 = 0;
  v3[8] = 1;
  v4 = self + OBJC_IVAR____TtC31PersonalHotspotControlExtension28PersonalHotspotStateProvider____lazy_storage___cellularClient;
  *v4 = 0;
  v4[8] = 1;
  v6.receiver = self;
  v6.super_class = type metadata accessor for PersonalHotspotStateProvider();
  return [(PersonalHotspotStateProvider *)&v6 init];
}

@end