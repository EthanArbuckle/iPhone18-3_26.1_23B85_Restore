@interface SFCard(AssistantCardService)
+ (id)acs_uniquelyIdentifiedCard;
- (id)acs_interaction;
- (void)acs_setInteraction:()AssistantCardService;
@end

@implementation SFCard(AssistantCardService)

+ (id)acs_uniquelyIdentifiedCard
{
  v0 = objc_alloc_init(objc_opt_class());
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [v0 setCardId:uUIDString];

  return v0;
}

- (void)acs_setInteraction:()AssistantCardService
{
  v22 = a3;
  intent = [v22 intent];

  if (intent)
  {
    intent2 = [v22 intent];
    backingStore = [intent2 backingStore];
    data = [backingStore data];

    v8 = objc_alloc_init(MEMORY[0x277D4C4B8]);
    [v8 setProtobufMessageData:data];
    _intentInstanceDescription = [intent2 _intentInstanceDescription];
    type = [_intentInstanceDescription type];
    [v8 setProtobufMessageName:type];

    protobufMessageData = [v8 protobufMessageData];
    [self setIntentMessageData:protobufMessageData];

    protobufMessageName = [v8 protobufMessageName];
    [self setIntentMessageName:protobufMessageName];
  }

  intentResponse = [v22 intentResponse];

  if (intentResponse)
  {
    intentResponse2 = [v22 intentResponse];
    backingStore2 = [intentResponse2 backingStore];
    data2 = [backingStore2 data];

    v17 = objc_alloc_init(MEMORY[0x277D4C4B8]);
    [v17 setProtobufMessageData:data2];
    objc_opt_class();
    v18 = INIntentSchemaGetIntentResponseDescriptionWithFacadeClass();
    type2 = [v18 type];
    [v17 setProtobufMessageName:type2];

    protobufMessageData2 = [v17 protobufMessageData];
    [self setIntentResponseMessageData:protobufMessageData2];

    protobufMessageName2 = [v17 protobufMessageName];
    [self setIntentResponseMessageName:protobufMessageName2];
  }
}

- (id)acs_interaction
{
  intentMessageName = [self intentMessageName];
  intentMessageData = [self intentMessageData];
  v4 = INIntentCreate();

  intentResponseMessageName = [self intentResponseMessageName];
  intentResponseMessageData = [self intentResponseMessageData];
  v7 = INIntentResponseCreate();

  v8 = [objc_alloc(MEMORY[0x277CD3D58]) initWithIntent:v4 response:v7];

  return v8;
}

@end