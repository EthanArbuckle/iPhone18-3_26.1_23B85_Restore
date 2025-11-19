@interface CommunicationManager
- (_TtC13SharedWithYou20CommunicationManager)init;
- (void)serviceProxyDidConnect:(id)a3;
@end

@implementation CommunicationManager

- (void)serviceProxyDidConnect:(id)a3
{
  v3 = self;
  sub_1BBC36218();
}

- (_TtC13SharedWithYou20CommunicationManager)init
{
  *(&self->super.isa + OBJC_IVAR____TtC13SharedWithYou20CommunicationManager____lazy_storage___facetimeServiceProxy) = 0;
  v2 = (&self->super.isa + OBJC_IVAR____TtC13SharedWithYou20CommunicationManager_attributionIdentifier);
  *v2 = 0;
  v2[1] = 0;
  *(&self->super.isa + OBJC_IVAR____TtC13SharedWithYou20CommunicationManager_videoEnabled) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC13SharedWithYou20CommunicationManager_presentingViewController) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for CommunicationManager();
  return [(CommunicationManager *)&v4 init];
}

@end