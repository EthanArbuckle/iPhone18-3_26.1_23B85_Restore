@interface NSLocale(AssistantServices)
+ (id)af_temperatureUnitForAceTemperatureUnit:()AssistantServices;
+ (void)af_setAceTemperatureUnit:()AssistantServices;
- (id)af_aceTemperatureUnit;
@end

@implementation NSLocale(AssistantServices)

- (id)af_aceTemperatureUnit
{
  v2 = [self objectForKey:*MEMORY[0x1E695D9F0]];
  v3 = [v2 isEqualToString:*MEMORY[0x1E695D9F8]];
  v4 = MEMORY[0x1E69C7C28];
  v5 = MEMORY[0x1E69C7C28];
  if ((v3 & 1) == 0)
  {
    if (![v2 isEqualToString:*MEMORY[0x1E695DA00]])
    {
LABEL_5:
      v7 = MEMORY[0x1E69C7C30];
      v8 = [self objectForKey:*MEMORY[0x1E695DA08]];
      bOOLValue = [v8 BOOLValue];

      if (bOOLValue)
      {
        v10 = v4;
      }

      else
      {
        v10 = v7;
      }

      v6 = *v10;
      goto LABEL_9;
    }

    v5 = MEMORY[0x1E69C7C30];
  }

  v6 = *v5;
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_9:

  return v6;
}

+ (void)af_setAceTemperatureUnit:()AssistantServices
{
  v2 = [self af_temperatureUnitForAceTemperatureUnit:?];
  if (v2)
  {
    v3 = v2;
    [self _setPreferredTemperatureUnit:v2];
    v2 = v3;
  }
}

+ (id)af_temperatureUnitForAceTemperatureUnit:()AssistantServices
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E69C7C28]])
  {
    v4 = MEMORY[0x1E695D9F8];
LABEL_5:
    v5 = *v4;
    goto LABEL_7;
  }

  if ([v3 isEqualToString:*MEMORY[0x1E69C7C30]])
  {
    v4 = MEMORY[0x1E695DA00];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end