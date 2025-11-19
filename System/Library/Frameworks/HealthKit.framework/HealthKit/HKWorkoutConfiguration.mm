@interface HKWorkoutConfiguration
+ (id)_workoutConfigurationFromDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)validateIgnoringDeviceSupport:(BOOL)a3 error:(id *)a4;
- (HKWorkoutConfiguration)init;
- (HKWorkoutConfiguration)initWithCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKWorkoutConfiguration

- (HKWorkoutConfiguration)init
{
  v3.receiver = self;
  v3.super_class = HKWorkoutConfiguration;
  result = [(HKWorkoutConfiguration *)&v3 init];
  if (result)
  {
    *&result->_activityType = xmmword_191DCCFA0;
    result->_swimmingLocationType = 0;
    result->_shouldUseExtendedMode = 0;
    *&result->_shouldUseLowPowerMode = 0;
    result->_fitnessPlusMediaType = 0;
  }

  return result;
}

- (BOOL)validateIgnoringDeviceSupport:(BOOL)a3 error:(id *)a4
{
  if ((_HKWorkoutActivityTypeIsValid(self->_activityType) & 1) == 0)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 format:{@"Invalid workout activity type %ld", self->_activityType}];
    return 0;
  }

  locationType = self->_locationType;
  if ((locationType - 1) >= 3)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 format:{@"Invalid workout session location type %ld", self->_locationType}];
    return 0;
  }

  if (locationType != 2 && self->_fitnessMachineSessionUUID != 0)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = @"GymKit workout session location type should be indoor";
LABEL_17:
    [v13 hk_assignError:a4 code:3 format:{v14, v21}];
    return 0;
  }

  if (self->_activityType == 46)
  {
    if (!a3)
    {
      v9 = +[_HKBehavior sharedBehavior];
      v10 = [v9 supportsSwimmingWorkoutSessions];

      if ((v10 & 1) == 0)
      {
        v13 = MEMORY[0x1E696ABC0];
        v14 = @"Swimming sessions are not supported on this device";
        goto LABEL_17;
      }
    }

    if (!_HKWorkoutSwimmingLocationTypeIsValid(self->_swimmingLocationType))
    {
      [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 format:{@"Invalid swimming location type %ld", self->_swimmingLocationType}];
      return 0;
    }

    v11 = HKProgramSDKAtLeast();
    swimmingLocationType = self->_swimmingLocationType;
    if (v11 && !swimmingLocationType)
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = @"Swimming workouts should be either pool or open water workouts.";
      goto LABEL_17;
    }

    lapLength = self->_lapLength;
    if (swimmingLocationType == 2)
    {
      if (lapLength)
      {
        v13 = MEMORY[0x1E696ABC0];
        v14 = @"Open water swimming should not have lap length";
        goto LABEL_17;
      }
    }

    else
    {
      if (lapLength)
      {
        if (!_HKWorkoutLapLengthIsValid(lapLength))
        {
          [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 format:{@"Lap length is not a valid quantity type %@", self->_lapLength}];
          return 0;
        }

        swimmingLocationType = self->_swimmingLocationType;
      }

      if (swimmingLocationType == 1)
      {
        v17 = self->_lapLength;
        if (!v17 || (+[HKUnit meterUnit], v18 = objc_claimAutoreleasedReturnValue(), [(HKQuantity *)v17 doubleValueForUnit:v18], v20 = v19, v18, v20 < 2.22044605e-16))
        {
          v13 = MEMORY[0x1E696ABC0];
          v14 = @"Invalid lap length for pool swimming";
          goto LABEL_17;
        }
      }
    }
  }

  else if (HKProgramSDKAtLeast() && self->_swimmingLocationType)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = @"Swimming location should not be set for non swimming activities";
    goto LABEL_17;
  }

  return 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = v5;
      if (self->_activityType != v5->_activityType)
      {
        goto LABEL_21;
      }

      if (self->_locationType != v5->_locationType)
      {
        goto LABEL_21;
      }

      if (self->_swimmingLocationType != v5->_swimmingLocationType)
      {
        goto LABEL_21;
      }

      fitnessMachineSessionUUID = self->_fitnessMachineSessionUUID;
      v8 = v6->_fitnessMachineSessionUUID;
      if (fitnessMachineSessionUUID != v8 && (!v8 || ![(NSUUID *)fitnessMachineSessionUUID isEqual:?]))
      {
        goto LABEL_21;
      }

      lapLength = self->_lapLength;
      v10 = v6->_lapLength;
      if (lapLength != v10 && (!v10 || ![(HKQuantity *)lapLength isEqual:?]))
      {
        goto LABEL_21;
      }

      suggestedActivityUUID = self->_suggestedActivityUUID;
      v12 = v6->_suggestedActivityUUID;
      if (suggestedActivityUUID != v12 && (!v12 || ![(NSUUID *)suggestedActivityUUID isEqual:?]))
      {
        goto LABEL_21;
      }

      if (self->_fitnessPlusMediaType != v6->_fitnessPlusMediaType)
      {
        goto LABEL_21;
      }

      fitnessPlusCatalogWorkoutId = self->_fitnessPlusCatalogWorkoutId;
      v14 = v6->_fitnessPlusCatalogWorkoutId;
      if (fitnessPlusCatalogWorkoutId == v14)
      {
        v15 = 1;
        goto LABEL_22;
      }

      if (v14)
      {
        v15 = [(NSString *)fitnessPlusCatalogWorkoutId isEqual:?];
      }

      else
      {
LABEL_21:
        v15 = 0;
      }

LABEL_22:

      goto LABEL_23;
    }

    v15 = 0;
  }

LABEL_23:

  return v15;
}

- (unint64_t)hash
{
  v3 = self->_activityType ^ (self->_locationType << 8) ^ (self->_swimmingLocationType << 16);
  v4 = [(HKQuantity *)self->_lapLength hash];
  v5 = v4 ^ [(NSUUID *)self->_fitnessMachineSessionUUID hash];
  v6 = v5 ^ [(NSString *)self->_fitnessPlusCatalogWorkoutId hash];
  return v3 ^ v6 ^ [(NSUUID *)self->_suggestedActivityUUID hash];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = _HKWorkoutActivityNameForActivityType(self->_activityType);
  v6 = v5;
  v7 = self->_locationType - 1;
  if (v7 > 2)
  {
    v8 = @"invalid location";
  }

  else
  {
    v8 = off_1E737E3E0[v7];
  }

  v9 = [v3 stringWithFormat:@"<%@:%p activity:%@ location:%@", v4, self, v5, v8];

  v10 = _HKWorkoutSwimmingLocationTypeName(self->_swimmingLocationType);
  [v9 appendFormat:@" swimming location:%@ lap length:%@", v10, self->_lapLength];

  if (self->_shouldDisambiguateLocation)
  {
    [v9 appendFormat:@" disambiguation requested:%d", 1];
  }

  if (self->_shouldUseExtendedMode)
  {
    [v9 appendFormat:@" extended mode:%d", 1];
  }

  if (self->_shouldUseLowPowerMode)
  {
    [v9 appendFormat:@" low power mode:%d", 1];
  }

  if (self->_fitnessMachineSessionUUID)
  {
    [v9 appendFormat:@" fitness machine session UUID:%@", self->_fitnessMachineSessionUUID];
  }

  fitnessPlusCatalogWorkoutId = self->_fitnessPlusCatalogWorkoutId;
  if (fitnessPlusCatalogWorkoutId)
  {
    fitnessPlusMediaType = self->_fitnessPlusMediaType;
    if (fitnessPlusMediaType >= 4)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown(%ld)", self->_fitnessPlusMediaType];
    }

    else
    {
      v13 = off_1E737E3C0[fitnessPlusMediaType];
    }

    [v9 appendFormat:@" catalog id: %@, media: %@", fitnessPlusCatalogWorkoutId, v13];
  }

  if (self->_suggestedActivityUUID)
  {
    [v9 appendFormat:@" Suggested activity UUID:%@", self->_suggestedActivityUUID];
  }

  [v9 appendString:@">"];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  activityType = self->_activityType;
  v5 = a3;
  [v5 encodeInteger:activityType forKey:@"activityType"];
  [v5 encodeInteger:self->_locationType forKey:@"locationType"];
  [v5 encodeInteger:self->_swimmingLocationType forKey:@"swimmingLocationType"];
  [v5 encodeObject:self->_lapLength forKey:@"lapLength"];
  [v5 encodeObject:self->_fitnessMachineSessionUUID forKey:@"ftmSessionUUIDKey"];
  [v5 encodeObject:self->_predictionSessionUUID forKey:@"predictionSessionUUIDKey"];
  [v5 encodeBool:self->_shouldDisambiguateLocation forKey:@"disambiguateLocationTypeKey"];
  [v5 encodeBool:self->_shouldUseExtendedMode forKey:@"useExtendedModeKey"];
  [v5 encodeBool:self->_shouldUseLowPowerMode forKey:@"enableLowPowerModeKey"];
  [v5 encodeObject:self->_fitnessPlusCatalogWorkoutId forKey:@"fpCatalogWorkoutIdString"];
  [v5 encodeInteger:self->_fitnessPlusMediaType forKey:@"fpMediaType"];
  [v5 encodeObject:self->_suggestedActivityUUID forKey:@"suggestedActivityUUIDKey"];
}

- (HKWorkoutConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = HKWorkoutConfiguration;
  v5 = [(HKWorkoutConfiguration *)&v17 init];
  if (v5)
  {
    v5->_activityType = [v4 decodeIntegerForKey:@"activityType"];
    v5->_locationType = [v4 decodeIntegerForKey:@"locationType"];
    v5->_swimmingLocationType = [v4 decodeIntegerForKey:@"swimmingLocationType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lapLength"];
    lapLength = v5->_lapLength;
    v5->_lapLength = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ftmSessionUUIDKey"];
    fitnessMachineSessionUUID = v5->_fitnessMachineSessionUUID;
    v5->_fitnessMachineSessionUUID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predictionSessionUUIDKey"];
    predictionSessionUUID = v5->_predictionSessionUUID;
    v5->_predictionSessionUUID = v10;

    v5->_shouldDisambiguateLocation = [v4 decodeBoolForKey:@"disambiguateLocationTypeKey"];
    v5->_shouldUseExtendedMode = [v4 decodeBoolForKey:@"useExtendedModeKey"];
    v5->_shouldUseLowPowerMode = [v4 decodeBoolForKey:@"enableLowPowerModeKey"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fpCatalogWorkoutIdString"];
    fitnessPlusCatalogWorkoutId = v5->_fitnessPlusCatalogWorkoutId;
    v5->_fitnessPlusCatalogWorkoutId = v12;

    v5->_fitnessPlusMediaType = [v4 decodeIntegerForKey:@"fpMediaType"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suggestedActivityUUIDKey"];
    suggestedActivityUUID = v5->_suggestedActivityUUID;
    v5->_suggestedActivityUUID = v14;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[HKWorkoutConfiguration allocWithZone:](HKWorkoutConfiguration init];
  [(HKWorkoutConfiguration *)v5 setActivityType:self->_activityType];
  [(HKWorkoutConfiguration *)v5 setLocationType:self->_locationType];
  [(HKWorkoutConfiguration *)v5 setSwimmingLocationType:self->_swimmingLocationType];
  v6 = [(HKQuantity *)self->_lapLength copyWithZone:a3];
  [(HKWorkoutConfiguration *)v5 setLapLength:v6];

  v7 = [(NSUUID *)self->_predictionSessionUUID copyWithZone:a3];
  [(HKWorkoutConfiguration *)v5 setPredictionSessionUUID:v7];

  v8 = [(NSUUID *)self->_fitnessMachineSessionUUID copyWithZone:a3];
  [(HKWorkoutConfiguration *)v5 setFitnessMachineSessionUUID:v8];

  [(HKWorkoutConfiguration *)v5 setShouldDisambiguateLocation:self->_shouldDisambiguateLocation];
  [(HKWorkoutConfiguration *)v5 setShouldUseExtendedMode:self->_shouldUseExtendedMode];
  [(HKWorkoutConfiguration *)v5 setShouldUseLowPowerMode:self->_shouldUseLowPowerMode];
  v9 = [(NSString *)self->_fitnessPlusCatalogWorkoutId copyWithZone:a3];
  [(HKWorkoutConfiguration *)v5 setFitnessPlusCatalogWorkoutId:v9];

  [(HKWorkoutConfiguration *)v5 setFitnessPlusMediaType:self->_fitnessPlusMediaType];
  v10 = [(NSUUID *)self->_suggestedActivityUUID copyWithZone:a3];
  [(HKWorkoutConfiguration *)v5 setSuggestedActivityUUID:v10];

  return v5;
}

- (id)_dictionaryRepresentation
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v3 encodeObject:self forKey:@"HKWorkoutConfigurationKey"];
  v4 = [v3 encodedData];
  v9 = @"HKWorkoutConfigurationNSDataKey";
  v5 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x1E695DEF0] data];
  }

  v10[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  if (!v4)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)_workoutConfigurationFromDictionary:(id)a3
{
  v3 = [a3 objectForKey:@"HKWorkoutConfigurationNSDataKey"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v3 error:0];
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKWorkoutConfigurationKey"];
    [v4 finishDecoding];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end