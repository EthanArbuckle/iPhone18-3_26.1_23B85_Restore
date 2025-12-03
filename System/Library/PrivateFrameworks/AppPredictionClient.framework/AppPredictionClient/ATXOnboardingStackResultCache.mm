@interface ATXOnboardingStackResultCache
- (ATXOnboardingStackResultCache)initWithCoder:(id)coder;
- (ATXOnboardingStackResultCache)initWithUnknownBatteryDrainResult:(id)result lightBatteryDrainResult:(id)drainResult mediumBatteryDrainResult:(id)batteryDrainResult heavyBatteryDrainResult:(id)heavyBatteryDrainResult;
- (id)copyWithZone:(_NSZone *)zone;
- (id)resultForClassification:(unint64_t)classification;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXOnboardingStackResultCache

- (ATXOnboardingStackResultCache)initWithUnknownBatteryDrainResult:(id)result lightBatteryDrainResult:(id)drainResult mediumBatteryDrainResult:(id)batteryDrainResult heavyBatteryDrainResult:(id)heavyBatteryDrainResult
{
  resultCopy = result;
  drainResultCopy = drainResult;
  batteryDrainResultCopy = batteryDrainResult;
  heavyBatteryDrainResultCopy = heavyBatteryDrainResult;
  v18.receiver = self;
  v18.super_class = ATXOnboardingStackResultCache;
  v15 = [(ATXOnboardingStackResultCache *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_unknownBatteryDrainResult, result);
    objc_storeStrong(&v16->_lightBatteryDrainResult, drainResult);
    objc_storeStrong(&v16->_mediumBatteryDrainResult, batteryDrainResult);
    objc_storeStrong(&v16->_heavyBatteryDrainResult, heavyBatteryDrainResult);
  }

  return v16;
}

- (id)resultForClassification:(unint64_t)classification
{
  if (classification > 1)
  {
    if (classification == 2)
    {
      mediumBatteryDrainResult = [(ATXOnboardingStackResultCache *)self mediumBatteryDrainResult];
    }

    else
    {
      if (classification != 3)
      {
        goto LABEL_11;
      }

      mediumBatteryDrainResult = [(ATXOnboardingStackResultCache *)self heavyBatteryDrainResult];
    }
  }

  else if (classification)
  {
    if (classification != 1)
    {
      goto LABEL_11;
    }

    mediumBatteryDrainResult = [(ATXOnboardingStackResultCache *)self lightBatteryDrainResult];
  }

  else
  {
    mediumBatteryDrainResult = [(ATXOnboardingStackResultCache *)self unknownBatteryDrainResult];
  }

  a2 = mediumBatteryDrainResult;
LABEL_11:

  return a2;
}

- (ATXOnboardingStackResultCache)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unknownBatteryDrainResult"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lightBatteryDrainResult"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediumBatteryDrainResult"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"heavyBatteryDrainResult"];

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

- (void)encodeWithCoder:(id)coder
{
  unknownBatteryDrainResult = self->_unknownBatteryDrainResult;
  coderCopy = coder;
  [coderCopy encodeObject:unknownBatteryDrainResult forKey:@"unknownBatteryDrainResult"];
  [coderCopy encodeObject:self->_lightBatteryDrainResult forKey:@"lightBatteryDrainResult"];
  [coderCopy encodeObject:self->_mediumBatteryDrainResult forKey:@"mediumBatteryDrainResult"];
  [coderCopy encodeObject:self->_heavyBatteryDrainResult forKey:@"heavyBatteryDrainResult"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  unknownBatteryDrainResult = self->_unknownBatteryDrainResult;
  lightBatteryDrainResult = self->_lightBatteryDrainResult;
  mediumBatteryDrainResult = self->_mediumBatteryDrainResult;
  heavyBatteryDrainResult = self->_heavyBatteryDrainResult;

  return [v4 initWithUnknownBatteryDrainResult:unknownBatteryDrainResult lightBatteryDrainResult:lightBatteryDrainResult mediumBatteryDrainResult:mediumBatteryDrainResult heavyBatteryDrainResult:heavyBatteryDrainResult];
}

@end