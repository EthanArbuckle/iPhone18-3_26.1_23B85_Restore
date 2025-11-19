@interface LiveSpeechAXUIServiceInstance
+ (id)requiredEntitlementForProcessingMessageWithIdentifier:(int64_t)a3;
+ (id)sharedInstance;
- (LiveSpeechAXUIServiceInstance)init;
- (id)processMessage:(id)a3 withIdentifier:(int64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6;
- (void)externalDisplaySceneConnected:(id)a3;
- (void)externalDisplaySceneDisconnected:(id)a3;
@end

@implementation LiveSpeechAXUIServiceInstance

+ (id)sharedInstance
{
  swift_getObjCClassMetadata();
  v2 = sub_3D4E4();

  return v2;
}

- (id)processMessage:(id)a3 withIdentifier:(int64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6
{
  if (a3)
  {
    v8 = sub_BAF40();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_BAFD0();
  v11 = v10;
  v12 = self;
  sub_3D58C(v8, a4, v9, v11);

  v13.super.isa = sub_BAF30().super.isa;

  return v13.super.isa;
}

+ (id)requiredEntitlementForProcessingMessageWithIdentifier:(int64_t)a3
{
  v3 = sub_BAFA0();

  return v3;
}

- (void)externalDisplaySceneConnected:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_3E8A4(a3, "External display scene connected", &unk_F0C48, &unk_BFFF8);
}

- (void)externalDisplaySceneDisconnected:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_3E8A4(a3, "External display scene disconnected", &unk_F0C20, &unk_BFFE8);
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