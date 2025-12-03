@interface HKAudioExposureUtilities
+ (double)maximumDurationInSecondsForLEQ:(double)q days:(int64_t)days;
+ (id)_classificationValueWithLEQ:(double)q duration:(double)duration days:(int64_t)days;
+ (id)computeLEQFromAudioExposureValues:(id)values;
+ (id)localizedDisplayNameForClassification:(unint64_t)classification isEmbedded:(BOOL)embedded;
+ (unint64_t)classifyLEQ:(id)q forDuration:(double)duration overDays:(int64_t)days;
@end

@implementation HKAudioExposureUtilities

+ (id)localizedDisplayNameForClassification:(unint64_t)classification isEmbedded:(BOOL)embedded
{
  v4 = @"AUDIO_EXPOSURE_CLASSIFICATION_UNAVAILABLE";
  if (classification == 1)
  {
    v4 = @"AUDIO_EXPOSURE_CLASSIFICATION_OK";
  }

  if (classification == 2)
  {
    v5 = @"AUDIO_EXPOSURE_CLASSIFICATION_LOUD";
  }

  else
  {
    v5 = v4;
  }

  if (embedded)
  {
    v5 = [(__CFString *)v5 stringByAppendingString:@"_EMBEDDED"];
  }

  v6 = HKHealthKitFrameworkBundle();
  v7 = [v6 localizedStringForKey:v5 value:&stru_1F05FF230 table:@"Localizable-DataTypes"];

  return v7;
}

+ (unint64_t)classifyLEQ:(id)q forDuration:(double)duration overDays:(int64_t)days
{
  if (!q)
  {
    return 0;
  }

  qCopy = q;
  v9 = +[HKUnit decibelAWeightedSoundPressureLevelUnit];
  [qCopy doubleValueForUnit:v9];
  v11 = v10;

  v12 = [self _classificationValueWithLEQ:days duration:v11 days:duration];
  v13 = v12;
  if (v12)
  {
    if ([v12 integerValue] < 80)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)computeLEQFromAudioExposureValues:(id)values
{
  v25 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [valuesCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = *v21;
    v7 = 0.0;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(valuesCopy);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        [v10 duration];
        v12 = v11;
        [v10 value];
        v8 = v8 + v12 * __exp10(v13 / 10.0);
        [v10 duration];
        v7 = v7 + v14;
      }

      v5 = [valuesCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
    if (v7 > 0.0 && v8 > 0.0)
    {
      [self _rounded:(log10(v8 / v7) * 10.0)];
      v16 = v15;
      v17 = +[HKUnit decibelAWeightedSoundPressureLevelUnit];
      v5 = [HKQuantity quantityWithUnit:v17 doubleValue:v16];
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (double)maximumDurationInSecondsForLEQ:(double)q days:(int64_t)days
{
  if (days < 1)
  {
    return 0.0;
  }

  v4 = (80.0 - q) * 2.30258509 / 10.0;
  v5 = log(40.0 / 7uLL * days);
  return exp(v4 + v5) * 0xE10uLL;
}

+ (id)_classificationValueWithLEQ:(double)q duration:(double)duration days:(int64_t)days
{
  if (duration < 2.22507386e-308 || days < 1)
  {
    v6 = 0;
  }

  else
  {
    [self _rounded:(q + log10(duration / 0xE10uLL / (40.0 / 7uLL * days)) * 10.0)];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  }

  return v6;
}

@end