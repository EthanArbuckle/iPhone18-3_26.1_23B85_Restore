@interface ATXOnboardingStackResultCache
- (ATXOnboardingStackResultCache)initWithCoder:(id)a3;
- (ATXOnboardingStackResultCache)initWithUnknownBatteryDrainResult:(id)a3 lightBatteryDrainResult:(id)a4 mediumBatteryDrainResult:(id)a5 heavyBatteryDrainResult:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)resultForClassification:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXOnboardingStackResultCache

- (ATXOnboardingStackResultCache)initWithUnknownBatteryDrainResult:(id)a3 lightBatteryDrainResult:(id)a4 mediumBatteryDrainResult:(id)a5 heavyBatteryDrainResult:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ATXOnboardingStackResultCache;
  v15 = [(ATXOnboardingStackResultCache *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_unknownBatteryDrainResult, a3);
    objc_storeStrong(&v16->_lightBatteryDrainResult, a4);
    objc_storeStrong(&v16->_mediumBatteryDrainResult, a5);
    objc_storeStrong(&v16->_heavyBatteryDrainResult, a6);
  }

  return v16;
}

- (id)resultForClassification:(unint64_t)a3
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v3 = [(ATXOnboardingStackResultCache *)self mediumBatteryDrainResult];
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_11;
      }

      v3 = [(ATXOnboardingStackResultCache *)self heavyBatteryDrainResult];
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_11;
    }

    v3 = [(ATXOnboardingStackResultCache *)self lightBatteryDrainResult];
  }

  else
  {
    v3 = [(ATXOnboardingStackResultCache *)self unknownBatteryDrainResult];
  }

  a2 = v3;
LABEL_11:

  return a2;
}

- (ATXOnboardingStackResultCache)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unknownBatteryDrainResult"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lightBatteryDrainResult"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediumBatteryDrainResult"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"heavyBatteryDrainResult"];

  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v7 == 0 || v8 == 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = [objc_alloc(objc_opt_class()) initWithUnknownBatteryDrainResult:v5 lightBatteryDrainResult:v6 mediumBatteryDrainResult:v7 heavyBatteryDrainResult:v8];
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  unknownBatteryDrainResult = self->_unknownBatteryDrainResult;
  v5 = a3;
  [v5 encodeObject:unknownBatteryDrainResult forKey:@"unknownBatteryDrainResult"];
  [v5 encodeObject:self->_lightBatteryDrainResult forKey:@"lightBatteryDrainResult"];
  [v5 encodeObject:self->_mediumBatteryDrainResult forKey:@"mediumBatteryDrainResult"];
  [v5 encodeObject:self->_heavyBatteryDrainResult forKey:@"heavyBatteryDrainResult"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  unknownBatteryDrainResult = self->_unknownBatteryDrainResult;
  lightBatteryDrainResult = self->_lightBatteryDrainResult;
  mediumBatteryDrainResult = self->_mediumBatteryDrainResult;
  heavyBatteryDrainResult = self->_heavyBatteryDrainResult;

  return [v4 initWithUnknownBatteryDrainResult:unknownBatteryDrainResult lightBatteryDrainResult:lightBatteryDrainResult mediumBatteryDrainResult:mediumBatteryDrainResult heavyBatteryDrainResult:heavyBatteryDrainResult];
}

@end