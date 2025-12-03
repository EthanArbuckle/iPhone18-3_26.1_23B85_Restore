@interface LiveSpeechAXUIServiceInstance
+ (id)requiredEntitlementForProcessingMessageWithIdentifier:(int64_t)identifier;
+ (id)sharedInstance;
- (LiveSpeechAXUIServiceInstance)init;
- (id)processMessage:(id)message withIdentifier:(int64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error;
- (void)externalDisplaySceneConnected:(id)connected;
- (void)externalDisplaySceneDisconnected:(id)disconnected;
@end

@implementation LiveSpeechAXUIServiceInstance

+ (id)sharedInstance
{
  swift_getObjCClassMetadata();
  v2 = sub_3D4E4();

  return v2;
}

- (id)processMessage:(id)message withIdentifier:(int64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error
{
  if (message)
  {
    v8 = sub_BAF40();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_BAFD0();
  v11 = v10;
  selfCopy = self;
  sub_3D58C(v8, identifier, v9, v11);

  v13.super.isa = sub_BAF30().super.isa;

  return v13.super.isa;
}

+ (id)requiredEntitlementForProcessingMessageWithIdentifier:(int64_t)identifier
{
  v3 = sub_BAFA0();

  return v3;
}

- (void)externalDisplaySceneConnected:(id)connected
{
  connectedCopy = connected;
  selfCopy = self;
  sub_3E8A4(connected, "External display scene connected", &unk_F0C48, &unk_BFFF8);
}

- (void)externalDisplaySceneDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  selfCopy = self;
  sub_3E8A4(disconnected, "External display scene disconnected", &unk_F0C20, &unk_BFFE8);
}

- (LiveSpeechAXUIServiceInstance)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___LiveSpeechAXUIServiceInstance____lazy_storage___coordinator) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(LiveSpeechAXUIServiceInstance *)&v5 init];
}

@end