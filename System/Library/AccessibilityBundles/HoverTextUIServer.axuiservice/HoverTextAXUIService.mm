@interface HoverTextAXUIService
+ (id)requiredEntitlementForProcessingMessageWithIdentifier:(int64_t)identifier;
+ (id)sharedInstance;
- (HoverTextAXUIService)init;
- (id)processMessage:(id)message withIdentifier:(int64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error;
- (id)styleProviderForAlertWithIdentifier:(id)identifier;
- (void)externalDisplaySceneConnected:(id)connected;
- (void)externalDisplaySceneDisconnected:(id)disconnected;
@end

@implementation HoverTextAXUIService

+ (id)sharedInstance
{
  swift_getObjCClassMetadata();
  v2 = sub_17D0();

  return v2;
}

- (id)processMessage:(id)message withIdentifier:(int64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error
{
  if (message)
  {
    v8 = sub_470C();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_473C();
  v11 = v10;
  selfCopy = self;
  sub_1878(v8, identifier, v9, v11);

  v13.super.isa = sub_46FC().super.isa;

  return v13.super.isa;
}

+ (id)requiredEntitlementForProcessingMessageWithIdentifier:(int64_t)identifier
{
  v3 = sub_472C();

  return v3;
}

- (void)externalDisplaySceneConnected:(id)connected
{
  connectedCopy = connected;
  selfCopy = self;
  sub_2DBC(connected, "External display scene connected", &unk_8498, &unk_4F08);
}

- (void)externalDisplaySceneDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  selfCopy = self;
  sub_2DBC(disconnected, "External display scene disconnected", &unk_8420, &unk_4EE0);
}

- (id)styleProviderForAlertWithIdentifier:(id)identifier
{
  v3 = [objc_allocWithZone(type metadata accessor for AXUIHoverTextAlertStyleProvider()) init];

  return v3;
}

- (HoverTextAXUIService)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___HoverTextAXUIService____lazy_storage___hoverTextCoordinator) = 0;
  *(&self->super.isa + OBJC_IVAR___HoverTextAXUIService____lazy_storage___hoverTextTypingCoordinator) = 0;
  v4 = OBJC_IVAR___HoverTextAXUIService_mainActorQueue;
  sub_46BC();
  *(&self->super.isa + v4) = sub_46AC();
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(HoverTextAXUIService *)&v6 init];
}

@end