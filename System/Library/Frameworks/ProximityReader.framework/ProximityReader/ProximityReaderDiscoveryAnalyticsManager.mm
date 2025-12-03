@interface ProximityReaderDiscoveryAnalyticsManager
- (_TtC15ProximityReader40ProximityReaderDiscoveryAnalyticsManager)init;
- (void)discoveryItemWithIdentifier:(id)identifier position:(double)position;
@end

@implementation ProximityReaderDiscoveryAnalyticsManager

- (_TtC15ProximityReader40ProximityReaderDiscoveryAnalyticsManager)init
{
  *(&self->super.isa + OBJC_IVAR____TtC15ProximityReader40ProximityReaderDiscoveryAnalyticsManager_discoveryService) = 0;
  v2 = (self + OBJC_IVAR____TtC15ProximityReader40ProximityReaderDiscoveryAnalyticsManager_sessionData);
  *v2 = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  v2[3] = 0u;
  v2[4] = 0u;
  *(&self->super.isa + OBJC_IVAR____TtC15ProximityReader40ProximityReaderDiscoveryAnalyticsManager_lastQuantile) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for ProximityReaderDiscoveryAnalyticsManager();
  return [(ProximityReaderDiscoveryAnalyticsManager *)&v4 init];
}

- (void)discoveryItemWithIdentifier:(id)identifier position:(double)position
{
  v5 = *((*MEMORY[0x277D85000] & self->super.isa) + 0xB8);
  selfCopy = self;
  v5(position);
}

@end