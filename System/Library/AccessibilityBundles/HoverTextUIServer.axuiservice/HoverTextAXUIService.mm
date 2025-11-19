@interface HoverTextAXUIService
+ (id)requiredEntitlementForProcessingMessageWithIdentifier:(int64_t)a3;
+ (id)sharedInstance;
- (HoverTextAXUIService)init;
- (id)processMessage:(id)a3 withIdentifier:(int64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6;
- (id)styleProviderForAlertWithIdentifier:(id)a3;
- (void)externalDisplaySceneConnected:(id)a3;
- (void)externalDisplaySceneDisconnected:(id)a3;
@end

@implementation HoverTextAXUIService

+ (id)sharedInstance
{
  swift_getObjCClassMetadata();
  v2 = sub_17D0();

  return v2;
}

- (id)processMessage:(id)a3 withIdentifier:(int64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6
{
  if (a3)
  {
    v8 = sub_470C();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_473C();
  v11 = v10;
  v12 = self;
  sub_1878(v8, a4, v9, v11);

  v13.super.isa = sub_46FC().super.isa;

  return v13.super.isa;
}

+ (id)requiredEntitlementForProcessingMessageWithIdentifier:(int64_t)a3
{
  v3 = sub_472C();

  return v3;
}

- (void)externalDisplaySceneConnected:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2DBC(a3, "External display scene connected", &unk_8498, &unk_4F08);
}

- (void)externalDisplaySceneDisconnected:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2DBC(a3, "External display scene disconnected", &unk_8420, &unk_4EE0);
}

- (id)styleProviderForAlertWithIdentifier:(id)a3
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