@interface HKMetadataValidationUtilities
+ (BOOL)hk_validateActivityMoveModeMetadataValue:(id)value error:(id *)error;
+ (BOOL)hk_validateAppleECGAlgorithmValue:(id)value error:(id *)error;
+ (BOOL)hk_validateAppleHeartbeatSeriesAlgorithmVersionMetadataValue:(id)value error:(id *)error;
+ (BOOL)hk_validateAppleIrregularRhythmNotificationsAlgorithmVersionMetadataValue:(id)value error:(id *)error;
+ (BOOL)hk_validateBodyTemperatureSensorLocationMetadataValue:(id)value error:(id *)error;
+ (BOOL)hk_validateCoreMotionSourceIdentifierMetadataValue:(id)value error:(id *)error;
+ (BOOL)hk_validateCyclingFTPTestTypeMetadataValue:(id)value error:(id *)error;
+ (BOOL)hk_validateDevicePlacementSideValue:(id)value error:(id *)error;
+ (BOOL)hk_validateDigitalSignatureMetadataValue:(id)value error:(id *)error;
+ (BOOL)hk_validateHeartRateRecoveryActivityTypeMetadataValue:(id)value error:(id *)error;
+ (BOOL)hk_validateHeartRateRecoveryTestTypeMetadataValue:(id)value error:(id *)error;
+ (BOOL)hk_validateHeartRateSensorLocationMetadataValue:(id)value error:(id *)error;
+ (BOOL)hk_validateInsulinDeliveryReasonMetadataValue:(id)value error:(id *)error;
+ (BOOL)hk_validateMealTimeMetadataValue:(id)value error:(id *)error;
+ (BOOL)hk_validateMetadataValueClass:(id)class forKey:(id)key expectedClassLookupTable:(id)table error:(id *)error;
+ (BOOL)hk_validatePhysicalEffortEstimationTypeMetadataValue:(id)value error:(id *)error;
+ (BOOL)hk_validateQuantityMetadataValue:(id)value value:(id)a4 compatibleUnit:(id)unit error:(id *)error;
+ (BOOL)hk_validateSwimmingLocationTypeMetadataValue:(id)value error:(id *)error;
+ (BOOL)hk_validateSwimmingStrokeStyleMetadataValue:(id)value error:(id *)error;
+ (BOOL)hk_validateSyncIdentifierMetadataValue:(id)value error:(id *)error;
+ (BOOL)hk_validateSyncVersionMetadataValue:(id)value error:(id *)error;
+ (BOOL)hk_validateTimeZoneMetadataValue:(id)value error:(id *)error;
+ (BOOL)hk_validateUserMotionContextMetadataValue:(id)value error:(id *)error;
+ (BOOL)hk_validateVO2MaxTestTypeMetadataValue:(id)value error:(id *)error;
+ (BOOL)hk_validateWaterSalinityMetadataValue:(id)value error:(id *)error;
+ (BOOL)hk_validateWeatherConditionMetadataValue:(id)value error:(id *)error;
+ (BOOL)hk_validateWorkoutEventSourceMetadataValue:(id)value error:(id *)error;
@end

@implementation HKMetadataValidationUtilities

+ (BOOL)hk_validateMetadataValueClass:(id)class forKey:(id)key expectedClassLookupTable:(id)table error:(id *)error
{
  classCopy = class;
  keyCopy = key;
  v11 = [table objectForKeyedSubscript:keyCopy];
  if (v11 && (v12 = v11, (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = NSStringFromClass(v12);
    [v14 hk_assignError:error code:3 format:{@"Invalid class %@ for metadata key: %@. Expected %@.", v16, keyCopy, v17}];

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

+ (BOOL)hk_validateDigitalSignatureMetadataValue:(id)value error:(id *)error
{
  hk_isBase64 = [value hk_isBase64];
  if ((hk_isBase64 & 1) == 0)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Invalid metadata value for %@: value is not a Base64 string", @"HKDigitalSignature"}];
  }

  return hk_isBase64;
}

+ (BOOL)hk_validateTimeZoneMetadataValue:(id)value error:(id *)error
{
  valueCopy = value;
  v6 = [MEMORY[0x1E695DFE8] timeZoneWithName:valueCopy];
  if (!v6)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Invalid metadata value for %@: %@ is not a valid time zone name string", @"HKTimeZone", valueCopy}];
  }

  return v6 != 0;
}

+ (BOOL)hk_validateHeartRateSensorLocationMetadataValue:(id)value error:(id *)error
{
  valueCopy = value;
  intValue = [valueCopy intValue];
  if (intValue >= 7)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Invalid metadata value for %@: %@", @"HKHeartRateSensorLocation", valueCopy}];
  }

  return intValue < 7;
}

+ (BOOL)hk_validateInsulinDeliveryReasonMetadataValue:(id)value error:(id *)error
{
  valueCopy = value;
  v6 = [valueCopy intValue] - 1;
  if (v6 >= 2)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Invalid metadata value for %@: %@", @"HKInsulinDeliveryReason", valueCopy}];
  }

  return v6 < 2;
}

+ (BOOL)hk_validateMealTimeMetadataValue:(id)value error:(id *)error
{
  valueCopy = value;
  v6 = [valueCopy intValue] - 1;
  if (v6 >= 2)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Invalid metadata value for %@: %@", @"HKBloodGlucoseMealTime", valueCopy}];
  }

  return v6 < 2;
}

+ (BOOL)hk_validateBodyTemperatureSensorLocationMetadataValue:(id)value error:(id *)error
{
  valueCopy = value;
  intValue = [valueCopy intValue];
  if (intValue >= 0xC)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Invalid metadata value for %@: %@", @"HKBodyTemperatureSensorLocation", valueCopy}];
  }

  return intValue < 0xC;
}

+ (BOOL)hk_validateWeatherConditionMetadataValue:(id)value error:(id *)error
{
  valueCopy = value;
  intValue = [valueCopy intValue];
  if (intValue >= 0x1C)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Invalid metadata value for %@: %@", @"HKWeatherCondition", valueCopy}];
  }

  return intValue < 0x1C;
}

+ (BOOL)hk_validateQuantityMetadataValue:(id)value value:(id)a4 compatibleUnit:(id)unit error:(id *)error
{
  valueCopy = value;
  v10 = a4;
  unitCopy = unit;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = @"Invalid metadata value for %@: '%@' is not a quantity";
LABEL_6:
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{v13, valueCopy, v10}];
    v12 = 0;
    goto LABEL_7;
  }

  if (([v10 isCompatibleWithUnit:unitCopy] & 1) == 0)
  {
    v13 = @"Invalid metadata value for %@: %@ has an incompatible unit";
    goto LABEL_6;
  }

  v12 = 1;
LABEL_7:

  return v12;
}

+ (BOOL)hk_validateSwimmingLocationTypeMetadataValue:(id)value error:(id *)error
{
  valueCopy = value;
  intValue = [valueCopy intValue];
  if (intValue >= 3)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Invalid metadata value for %@: %@", @"HKSwimmingLocationType", valueCopy}];
  }

  return intValue < 3;
}

+ (BOOL)hk_validateSwimmingStrokeStyleMetadataValue:(id)value error:(id *)error
{
  valueCopy = value;
  intValue = [valueCopy intValue];
  if (intValue >= 7)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Invalid metadata value for %@: %@", @"HKSwimmingStrokeStyle", valueCopy}];
  }

  return intValue < 7;
}

+ (BOOL)hk_validateSyncIdentifierMetadataValue:(id)value error:(id *)error
{
  valueCopy = value;
  v6 = [valueCopy objectForKeyedSubscript:@"HKMetadataKeySyncIdentifier"];
  v7 = [v6 length];

  if (!v7)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"%@ must contain at least one character", @"HKMetadataKeySyncIdentifier", v11}];
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v8 = [valueCopy objectForKeyedSubscript:@"HKMetadataKeySyncVersion"];

  if (!v8)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"%@ must be provided if %@ is provided in the metadata", @"HKMetadataKeySyncVersion", @"HKMetadataKeySyncIdentifier"}];
    goto LABEL_6;
  }

  v9 = 1;
LABEL_7:

  return v9;
}

+ (BOOL)hk_validateSyncVersionMetadataValue:(id)value error:(id *)error
{
  valueCopy = value;
  v6 = [valueCopy objectForKeyedSubscript:@"HKMetadataKeySyncIdentifier"];

  if (v6)
  {
    v7 = [valueCopy objectForKeyedSubscript:@"HKMetadataKeySyncVersion"];
    integerValue = [v7 integerValue];
    v9 = integerValue >= 0;
    if (integerValue < 0)
    {
      [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"%@ must greater than or equal to 0", @"HKMetadataKeySyncVersion"}];
    }
  }

  else
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"%@ may not be provided if %@ is not provided in the metadata", @"HKMetadataKeySyncVersion", @"HKMetadataKeySyncIdentifier"}];
    v9 = 0;
  }

  return v9;
}

+ (BOOL)hk_validateVO2MaxTestTypeMetadataValue:(id)value error:(id *)error
{
  valueCopy = value;
  v6 = [valueCopy intValue] - 1;
  if (v6 >= 4)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Invalid metadata value for %@: %@", @"HKVO2MaxTestType", valueCopy}];
  }

  return v6 < 4;
}

+ (BOOL)hk_validateActivityMoveModeMetadataValue:(id)value error:(id *)error
{
  valueCopy = value;
  v6 = [valueCopy intValue] - 1;
  if (v6 >= 2)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Invalid metadata value for %@: %@", @"_HKPrivateWorkoutActivityMoveMode", valueCopy}];
  }

  return v6 < 2;
}

+ (BOOL)hk_validateAppleECGAlgorithmValue:(id)value error:(id *)error
{
  valueCopy = value;
  v6 = [valueCopy intValue] - 1;
  if (v6 >= 2)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Invalid metadata value for %@: %@", @"HKMetadataKeyAppleECGAlgorithmVersion", valueCopy}];
  }

  return v6 < 2;
}

+ (BOOL)hk_validateDevicePlacementSideValue:(id)value error:(id *)error
{
  valueCopy = value;
  intValue = [valueCopy intValue];
  if (intValue >= 4)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Invalid metadata value for %@: %@", @"HKMetadataKeyDevicePlacementSide", valueCopy}];
  }

  return intValue < 4;
}

+ (BOOL)hk_validateAppleHeartbeatSeriesAlgorithmVersionMetadataValue:(id)value error:(id *)error
{
  valueCopy = value;
  v6 = [valueCopy intValue] - 1;
  if (v6 >= 2)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Invalid metadata value for %@: %@", @"_HKPrivateMetadataKeyAppleHeartbeatSeriesAlgorithmVersion", valueCopy}];
  }

  return v6 < 2;
}

+ (BOOL)hk_validateAppleIrregularRhythmNotificationsAlgorithmVersionMetadataValue:(id)value error:(id *)error
{
  valueCopy = value;
  v6 = [valueCopy intValue] - 1;
  if (v6 >= 2)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Invalid metadata value for %@: %@", @"HKMetadataKeyAppleIrregularRhythmNotificationsAlgorithmVersion", valueCopy}];
  }

  return v6 < 2;
}

+ (BOOL)hk_validateCoreMotionSourceIdentifierMetadataValue:(id)value error:(id *)error
{
  v5 = [value length];
  if (!v5)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"%@ must contain at least one character", @"_HKPrivateCoreMotionSourceIdentifier"}];
  }

  return v5 != 0;
}

+ (BOOL)hk_validateHeartRateRecoveryTestTypeMetadataValue:(id)value error:(id *)error
{
  valueCopy = value;
  v6 = [valueCopy intValue] - 1;
  if (v6 >= 3)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Invalid metadata value for %@: %@", @"HKMetadataKeyHeartRateRecoveryTestType", valueCopy}];
  }

  return v6 < 3;
}

+ (BOOL)hk_validateHeartRateRecoveryActivityTypeMetadataValue:(id)value error:(id *)error
{
  valueCopy = value;
  IsValid = _HKWorkoutActivityTypeIsValid([valueCopy intValue]);
  if ((IsValid & 1) == 0)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Invalid metadata value for %@: %@", @"HKMetadataKeyHeartRateRecoveryActivityType", valueCopy}];
  }

  return IsValid;
}

+ (BOOL)hk_validateUserMotionContextMetadataValue:(id)value error:(id *)error
{
  valueCopy = value;
  intValue = [valueCopy intValue];
  if (intValue >= 3)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Invalid metadata value for %@: %@", @"HKMetadataKeyUserMotionContext", valueCopy}];
  }

  return intValue < 3;
}

+ (BOOL)hk_validateWaterSalinityMetadataValue:(id)value error:(id *)error
{
  valueCopy = value;
  v6 = [valueCopy intValue] - 1;
  if (v6 >= 2)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Invalid metadata value for %@: %@", @"HKMetadataKeyWaterSalinity", valueCopy}];
  }

  return v6 < 2;
}

+ (BOOL)hk_validateCyclingFTPTestTypeMetadataValue:(id)value error:(id *)error
{
  valueCopy = value;
  v6 = [valueCopy intValue] - 1;
  if (v6 >= 4)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Invalid metadata value for %@: %@", @"HKCyclingCyclingFunctionalThresholdPowerTestType", valueCopy}];
  }

  return v6 < 4;
}

+ (BOOL)hk_validatePhysicalEffortEstimationTypeMetadataValue:(id)value error:(id *)error
{
  valueCopy = value;
  v6 = [valueCopy intValue] - 1;
  if (v6 >= 2)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Invalid metadata value for %@: %@", @"HKPhysicalEffortEstimationType", valueCopy}];
  }

  return v6 < 2;
}

+ (BOOL)hk_validateWorkoutEventSourceMetadataValue:(id)value error:(id *)error
{
  valueCopy = value;
  intValue = [valueCopy intValue];
  if (intValue >= 3)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Invalid metadata value for %@: %@", @"_HKPrivateMetadataKeyWorkoutEventSource", valueCopy}];
  }

  return intValue < 3;
}

@end