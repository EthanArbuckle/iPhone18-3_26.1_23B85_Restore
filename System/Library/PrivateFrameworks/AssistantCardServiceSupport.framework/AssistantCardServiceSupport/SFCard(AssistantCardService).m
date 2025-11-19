@interface SFCard(AssistantCardService)
+ (id)acs_uniquelyIdentifiedCard;
- (id)acs_interaction;
- (void)acs_setInteraction:()AssistantCardService;
@end

@implementation SFCard(AssistantCardService)

+ (id)acs_uniquelyIdentifiedCard
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = [MEMORY[0x277CCAD78] UUID];
  v2 = [v1 UUIDString];
  [v0 setCardId:v2];

  return v0;
}

- (void)acs_setInteraction:()AssistantCardService
{
  v22 = a3;
  v4 = [v22 intent];

  if (v4)
  {
    v5 = [v22 intent];
    v6 = [v5 backingStore];
    v7 = [v6 data];

    v8 = objc_alloc_init(MEMORY[0x277D4C4B8]);
    [v8 setProtobufMessageData:v7];
    v9 = [v5 _intentInstanceDescription];
    v10 = [v9 type];
    [v8 setProtobufMessageName:v10];

    v11 = [v8 protobufMessageData];
    [a1 setIntentMessageData:v11];

    v12 = [v8 protobufMessageName];
    [a1 setIntentMessageName:v12];
  }

  v13 = [v22 intentResponse];

  if (v13)
  {
    v14 = [v22 intentResponse];
    v15 = [v14 backingStore];
    v16 = [v15 data];

    v17 = objc_alloc_init(MEMORY[0x277D4C4B8]);
    [v17 setProtobufMessageData:v16];
    objc_opt_class();
    v18 = INIntentSchemaGetIntentResponseDescriptionWithFacadeClass();
    v19 = [v18 type];
    [v17 setProtobufMessageName:v19];

    v20 = [v17 protobufMessageData];
    [a1 setIntentResponseMessageData:v20];

    v21 = [v17 protobufMessageName];
    [a1 setIntentResponseMessageName:v21];
  }
}

- (id)acs_interaction
{
  v2 = [a1 intentMessageName];
  v3 = [a1 intentMessageData];
  v4 = INIntentCreate();

  v5 = [a1 intentResponseMessageName];
  v6 = [a1 intentResponseMessageData];
  v7 = INIntentResponseCreate();

  v8 = [objc_alloc(MEMORY[0x277CD3D58]) initWithIntent:v4 response:v7];

  return v8;
}

@end