@interface SFCardSection(AssistantCardService)
+ (id)acs_uniquelyIdentifiedCardSection;
- (id)acs_parameterKeyPathFromParameter:()AssistantCardService;
- (void)acs_addParameter:()AssistantCardService;
- (void)acs_setParameters:()AssistantCardService;
@end

@implementation SFCardSection(AssistantCardService)

+ (id)acs_uniquelyIdentifiedCardSection
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = [MEMORY[0x277CCAD78] UUID];
  v2 = [v1 UUIDString];
  [v0 setCardSectionId:v2];

  return v0;
}

- (void)acs_setParameters:()AssistantCardService
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [a1 acs_parameterKeyPathFromParameter:{*(*(&v13 + 1) + 8 * v10), v13}];
        if ([v11 length])
        {
          [v5 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [a1 setParameterKeyPaths:v5];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)acs_addParameter:()AssistantCardService
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = [a1 parameterKeyPaths];
  v9 = [v4 arrayWithArray:v6];

  v7 = [a1 acs_parameterKeyPathFromParameter:v5];

  if ([v7 length])
  {
    [v9 addObject:v7];
  }

  v8 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
  [a1 setParameterKeyPaths:v8];
}

- (id)acs_parameterKeyPathFromParameter:()AssistantCardService
{
  v3 = a3;
  v4 = [v3 parameterClass];
  if ([v4 isSubclassOfClass:objc_opt_class()])
  {
    [v3 parameterClass];
    v5 = INIntentSchemaGetIntentDescriptionWithFacadeClass();
  }

  else
  {
    if (![v4 isSubclassOfClass:objc_opt_class()])
    {
      v7 = 0;
      goto LABEL_8;
    }

    [v3 parameterClass];
    v5 = INIntentSchemaGetIntentResponseDescriptionWithFacadeClass();
  }

  v6 = v5;
  v7 = [v5 name];

  if (v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [v3 _subscriptedKeyPath];
    v10 = [v8 stringWithFormat:@"%@.%@", v7, v9];

    goto LABEL_9;
  }

LABEL_8:
  v10 = 0;
LABEL_9:

  return v10;
}

@end