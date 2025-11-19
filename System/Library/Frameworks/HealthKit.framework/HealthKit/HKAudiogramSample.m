@interface HKAudiogramSample
+ (HKAudiogramSample)audiogramSampleWithLeftEarAverageSensitivity:(id)a3 rightEarAverageSensitivity:(id)a4 startDate:(id)a5 endDate:(id)a6 device:(id)a7 metadata:(id)a8;
+ (HKAudiogramSample)audiogramSampleWithSensitivityPoints:(id)a3 startDate:(id)a4 endDate:(id)a5 device:(id)a6 metadata:(id)a7;
+ (double)_randomDecibelValueInRangeFromStart:(double)a3 end:(double)a4;
+ (id)_decodeSensitivityData:(id)a3;
+ (id)_encodeSensitivityPoints:(id)a3;
+ (id)_sensitivityPointWithFrequency:(id)a3 leftEarSensitivity:(id)a4 rightEarSensitivity:(id)a5 error:(id *)a6;
+ (id)randomAudiogramSampleWithLeftEarClassification:(unint64_t)a3 rightEarClassification:(unint64_t)a4 startDate:(id)a5 endDate:(id)a6 device:(id)a7 metadata:(id)a8;
+ (id)randomSensitivityValueForClassification:(unint64_t)a3;
- (BOOL)_firstPartyHearingTest;
- (BOOL)_firstPartyIngestion;
- (BOOL)containSensitivityPointsIsMasked:(BOOL)a3 forSide:(int64_t)a4;
- (BOOL)hasDifferentClassificationWithModifiedClampingRange;
- (BOOL)hasSomeClampingForAnyFrequency:(id)a3;
- (BOOL)hasTooMuchClampingForAnyFrequency:(id)a3;
- (BOOL)hasTooMuchClampingForAnyKeyFrequency:(id)a3;
- (BOOL)isAmbiguous;
- (BOOL)isAverageSensitivityUpperClampedForAnySide;
- (BOOL)isAverageSensitivityUpperClampedForSide:(int64_t)a3;
- (BOOL)isFirstPartyHearingTestResult;
- (HKAudiogramSample)initWithCoder:(id)a3;
- (HKHearingLevelSummary)hearingLevelSummary;
- (NSArray)sensitivityPoints;
- (id)_keyFrequencyPointsFrom:(id)a3 forSide:(int64_t)a4;
- (id)_validateSensitivityPointsOrderedAscending;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)averageLeftEarSensitivity;
- (id)averageRightEarSensitivity;
- (id)averageSensitivityForSide:(int64_t)a3;
- (id)clampingLowerBoundPositionsPerFrequencyAtSide:(int64_t)a3;
- (id)localizedIngestionSource;
- (id)maximumSensitivity;
- (id)minimumSensitivity;
- (unint64_t)_rawHearingLevelClassificationFrom:(id)a3;
- (unint64_t)diagnostic;
- (unint64_t)leftEarDiagnostic;
- (unint64_t)rightEarDiagnostic;
- (void)encodeWithCoder:(id)a3;
- (void)hasDifferentClassificationWithModifiedClampingRange;
@end

@implementation HKAudiogramSample

+ (HKAudiogramSample)audiogramSampleWithSensitivityPoints:(id)a3 startDate:(id)a4 endDate:(id)a5 device:(id)a6 metadata:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = +[HKObjectType audiogramSampleType];
  [v16 timeIntervalSinceReferenceDate];
  v19 = v18;

  [v15 timeIntervalSinceReferenceDate];
  v21 = v20;

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __92__HKAudiogramSample_audiogramSampleWithSensitivityPoints_startDate_endDate_device_metadata___block_invoke;
  v25[3] = &unk_1E7380FC8;
  v26 = v12;
  v22 = v12;
  v23 = [a1 _newSampleWithType:v17 startDate:v14 endDate:v13 device:v25 metadata:v19 config:v21];

  return v23;
}

void __92__HKAudiogramSample_audiogramSampleWithSensitivityPoints_startDate_endDate_device_metadata___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [HKAudiogramSample _encodeSensitivityPoints:v2];
  [v3 _setPayload:v4];
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v9.receiver = self;
  v9.super_class = HKAudiogramSample;
  v4 = [(HKSample *)&v9 _validateWithConfiguration:a3.var0, a3.var1];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(HKAudiogramSample *)self _validateSensitivityPointsOrderedAscending];
  }

  v7 = v6;

  return v7;
}

- (id)_validateSensitivityPointsOrderedAscending
{
  v4 = [(HKAudiogramSample *)self sensitivityPoints];
  v5 = [v4 count];

  v6 = [(HKAudiogramSample *)self sensitivityPoints];
  v7 = +[HKUnit hertzUnit];
  if (v5 >= 0x1F)
  {
    [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"Audiograms are limited to %d sensitivity points per sample", 30}];
    v20 = LABEL_10:;
    goto LABEL_11;
  }

  if (!v5)
  {
    v17 = MEMORY[0x1E696ABC0];
    v18 = objc_opt_class();
    v19 = @"An audiogram sample must have at least 1 sensitivity point";
LABEL_9:
    [v17 hk_errorForInvalidArgument:@"@" class:v18 selector:a2 format:{v19, v22}];
    goto LABEL_10;
  }

  v8 = 1;
  while (v5 != v8)
  {
    v9 = [v6 objectAtIndexedSubscript:v8 - 1];
    v10 = [v9 frequency];
    [v10 doubleValueForUnit:v7];
    v12 = v11;

    v13 = [v6 objectAtIndexedSubscript:v8];
    v14 = [v13 frequency];
    [v14 doubleValueForUnit:v7];
    v16 = v15;

    ++v8;
    if (v12 >= v16)
    {
      v17 = MEMORY[0x1E696ABC0];
      v18 = objc_opt_class();
      v19 = @"Audiogram frequencies must be unique and in ascending order.";
      goto LABEL_9;
    }
  }

  v20 = 0;
LABEL_11:

  return v20;
}

+ (id)_encodeSensitivityPoints:(id)a3
{
  v7 = 0;
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v7];
  v4 = v7;
  if (!v3)
  {
    _HKInitializeLogging();
    v5 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      [(HKAudiogramSample *)v4 _encodeSensitivityPoints:v5];
    }
  }

  return v3;
}

+ (id)_decodeSensitivityData:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v3 setWithObjects:{v5, v6, objc_opt_class(), 0}];
  v12 = 0;
  v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v7 fromData:v4 error:&v12];

  v9 = v12;
  if (!v8)
  {
    _HKInitializeLogging();
    v10 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      [(HKAudiogramSample *)v9 _decodeSensitivityData:v10];
    }

    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (NSArray)sensitivityPoints
{
  v2 = [(HKAudiogramSample *)self encodedSensitivityPoints];
  v3 = [HKAudiogramSample _decodeSensitivityData:v2];

  return v3;
}

- (HKHearingLevelSummary)hearingLevelSummary
{
  hearingLevelSummary = self->_hearingLevelSummary;
  if (!hearingLevelSummary)
  {
    v4 = [HKHearingLevelSummary summaryForAudiogramSample:self];
    v5 = self->_hearingLevelSummary;
    self->_hearingLevelSummary = v4;

    hearingLevelSummary = self->_hearingLevelSummary;
  }

  return hearingLevelSummary;
}

- (HKAudiogramSample)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HKAudiogramSample;
  v5 = [(HKSample *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AudiogramDataKey"];
    [(HKAudiogramSample *)v5 _setPayload:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HKAudiogramSample;
  v4 = a3;
  [(HKSample *)&v6 encodeWithCoder:v4];
  v5 = [(HKAudiogramSample *)self encodedSensitivityPoints:v6.receiver];
  [v4 encodeObject:v5 forKey:@"AudiogramDataKey"];
}

- (unint64_t)diagnostic
{
  v2 = [(HKAudiogramSample *)self hearingLevelSummary];
  v3 = [v2 overallMetrics];
  v4 = [v3 averageSensitivity];
  v5 = HKHearingLevelClassificationForSensitivity(v4);

  return v5;
}

- (unint64_t)leftEarDiagnostic
{
  v2 = [(HKAudiogramSample *)self hearingLevelSummary];
  v3 = [v2 leftEarMetrics];
  v4 = [v3 averageSensitivity];
  v5 = HKHearingLevelClassificationForSensitivity(v4);

  return v5;
}

- (unint64_t)rightEarDiagnostic
{
  v2 = [(HKAudiogramSample *)self hearingLevelSummary];
  v3 = [v2 rightEarMetrics];
  v4 = [v3 averageSensitivity];
  v5 = HKHearingLevelClassificationForSensitivity(v4);

  return v5;
}

- (id)averageLeftEarSensitivity
{
  v2 = [(HKAudiogramSample *)self hearingLevelSummary];
  v3 = [v2 leftEarMetrics];
  v4 = [v3 averageSensitivity];

  return v4;
}

- (id)averageRightEarSensitivity
{
  v2 = [(HKAudiogramSample *)self hearingLevelSummary];
  v3 = [v2 rightEarMetrics];
  v4 = [v3 averageSensitivity];

  return v4;
}

- (id)minimumSensitivity
{
  v2 = [(HKAudiogramSample *)self hearingLevelSummary];
  v3 = [v2 overallMetrics];
  v4 = [v3 minimumSensitivity];

  return v4;
}

- (id)maximumSensitivity
{
  v2 = [(HKAudiogramSample *)self hearingLevelSummary];
  v3 = [v2 overallMetrics];
  v4 = [v3 maximumSensitivity];

  return v4;
}

- (BOOL)containSensitivityPointsIsMasked:(BOOL)a3 forSide:(int64_t)a4
{
  v6 = [(HKAudiogramSample *)self sensitivityPoints];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__HKAudiogramSample_containSensitivityPointsIsMasked_forSide___block_invoke;
  v8[3] = &__block_descriptor_41_e37_B16__0__HKAudiogramSensitivityPoint_8l;
  v8[4] = a4;
  v9 = a3;
  LOBYTE(a4) = [v6 hk_containsObjectPassingTest:v8];

  return a4;
}

uint64_t __62__HKAudiogramSample_containSensitivityPointsIsMasked_forSide___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 tests];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__HKAudiogramSample_containSensitivityPointsIsMasked_forSide___block_invoke_2;
  v6[3] = &__block_descriptor_41_e36_B16__0__HKAudiogramSensitivityTest_8l;
  v6[4] = *(a1 + 32);
  v7 = *(a1 + 40);
  v4 = [v3 hk_containsObjectPassingTest:v6];

  return v4;
}

BOOL __62__HKAudiogramSample_containSensitivityPointsIsMasked_forSide___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 side] == *(a1 + 32) && *(a1 + 40) == objc_msgSend(v3, "masked");

  return v4;
}

- (id)averageSensitivityForSide:(int64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v4 = [(HKAudiogramSample *)self hearingLevelSummary];
    v5 = [v4 rightEarMetrics];
  }

  else
  {
    v4 = [(HKAudiogramSample *)self hearingLevelSummary];
    v5 = [v4 leftEarMetrics];
  }

  v6 = v5;
  v3 = [v5 averageSensitivity];

LABEL_6:

  return v3;
}

- (id)localizedIngestionSource
{
  if ([(HKAudiogramSample *)self _firstPartyHearingTest])
  {
    v3 = HKHealthKitFrameworkBundle();
    v4 = v3;
    v5 = @"AUDIOGRAM_APPLE_HEARING_TEST";
LABEL_5:
    v6 = [v3 localizedStringForKey:v5 value:&stru_1F05FF230 table:@"Localizable-Yodel"];
    goto LABEL_7;
  }

  if ([(HKAudiogramSample *)self _firstPartyIngestion])
  {
    v3 = HKHealthKitFrameworkBundle();
    v4 = v3;
    v5 = @"AUDIOGRAM_MANUAL_INGESTION";
    goto LABEL_5;
  }

  v4 = [(HKObject *)self sourceRevision];
  v7 = [v4 source];
  v6 = [v7 name];

LABEL_7:

  return v6;
}

- (BOOL)_firstPartyHearingTest
{
  v2 = [(HKObject *)self metadata];
  v3 = [v2 objectForKeyedSubscript:@"_HKPrivateMetadataKeyHearingTestTakenFromFirstParty"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_firstPartyIngestion
{
  v3 = [(HKObject *)self metadata];
  v4 = [v3 objectForKeyedSubscript:@"_HKPrivateMetadataKeyAudiogramManualIngestionFromFirstParty"];

  v5 = [v4 BOOLValue];
  if (v4 && (v5 & 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(HKObject *)self sourceRevision];
    v8 = [v7 source];
    v9 = [v8 bundleIdentifier];

    if (v9)
    {
      v10 = [(HKObject *)self sourceRevision];
      v11 = [v10 source];
      v12 = [v11 bundleIdentifier];

      v6 = ([v12 isEqualToString:@"com.apple.Health"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"com.apple.Preferences");
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

void __74__HKAudiogramSample_clampingMaximumLowerBoundForValidityCheckPerFrequency__block_invoke(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v5 = a3;
  v6 = a2;
  v12 = +[HKUnit hertzUnit];
  [v6 doubleValue];
  v8 = v7;

  v9 = [HKQuantity quantityWithUnit:v12 doubleValue:v8];
  v10 = +[HKUnit decibelHearingLevelUnit];
  v11 = [HKQuantity quantityWithUnit:v10 doubleValue:20.0];
  (a3)[2](v5, v9, v11);
}

id __35__HKAudiogramSample_ptaFrequencies__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HKUnit hertzUnit];
  [v2 doubleValue];
  v5 = v4;

  v6 = [HKQuantity quantityWithUnit:v3 doubleValue:v5];

  return v6;
}

- (BOOL)hasSomeClampingForAnyFrequency:(id)a3
{
  v3 = [a3 hk_filter:&__block_literal_global_80];
  v4 = [v3 count] != 0;

  return v4;
}

- (BOOL)isAmbiguous
{
  v3 = [(HKAudiogramSample *)self clampingLowerBoundPositionsPerFrequencyAtSide:0];
  v4 = [(HKAudiogramSample *)self clampingLowerBoundPositionsPerFrequencyAtSide:1];
  v5 = [v3 allValues];
  v6 = [v5 hk_filter:&__block_literal_global_82_0];

  v7 = [v4 allValues];
  v8 = [v7 hk_filter:&__block_literal_global_84];

  if (![v6 count] && !objc_msgSend(v8, "count") || !-[HKAudiogramSample hasSomeClampingForAnyFrequency:](self, "hasSomeClampingForAnyFrequency:", v6) && !-[HKAudiogramSample hasSomeClampingForAnyFrequency:](self, "hasSomeClampingForAnyFrequency:", v8))
  {
    goto LABEL_11;
  }

  if (![(HKAudiogramSample *)self hasTooMuchClampingForAnyFrequency:v6]&& ![(HKAudiogramSample *)self hasTooMuchClampingForAnyFrequency:v8])
  {
    if ([(HKAudiogramSample *)self hasTooMuchClampingForAnyKeyFrequency:v3]|| [(HKAudiogramSample *)self hasTooMuchClampingForAnyKeyFrequency:v4])
    {
      v9 = [(HKAudiogramSample *)self hasDifferentClassificationWithModifiedClampingRange];
      goto LABEL_12;
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v9 = 1;
LABEL_12:

  return v9;
}

- (BOOL)hasTooMuchClampingForAnyFrequency:(id)a3
{
  v3 = [a3 hk_filter:&__block_literal_global_86];
  v4 = [v3 count] != 0;

  return v4;
}

- (BOOL)hasTooMuchClampingForAnyKeyFrequency:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = +[HKAudiogramSample ptaFrequencies];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [v3 objectForKey:*(*(&v12 + 1) + 8 * i)];
        v9 = v8;
        if (v8 && [v8 intValue] > 1)
        {

          LOBYTE(v5) = 1;
          goto LABEL_12;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)hasDifferentClassificationWithModifiedClampingRange
{
  v70 = *MEMORY[0x1E69E9840];
  v2 = [(HKAudiogramSample *)self sensitivityPoints];
  v3 = [v2 hk_filter:&__block_literal_global_88];

  v4 = 0x1E695D000uLL;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v7)
  {
    v8 = *v65;
    v49 = v6;
    v50 = v5;
    v44 = *v65;
    while (2)
    {
      v9 = 0;
      v45 = v7;
      do
      {
        if (*v65 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v46 = v9;
        v10 = *(*(&v64 + 1) + 8 * v9);
        v11 = objc_alloc_init(*(v4 + 3952));
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v47 = v10;
        obj = [v10 tests];
        v54 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
        v12 = 0;
        if (v54)
        {
          v52 = v11;
          v53 = *v61;
          while (2)
          {
            for (i = 0; i != v54; ++i)
            {
              if (*v61 != v53)
              {
                objc_enumerationMutation(obj);
              }

              v14 = *(*(&v60 + 1) + 8 * i);
              v15 = [v14 sensitivity];
              v16 = [v14 clampingRange];

              if (v16)
              {
                v56 = v15;
                v17 = MEMORY[0x1E696AD98];
                v18 = [v14 clampingRange];
                v19 = [v18 upperBound];
                v20 = +[HKUnit decibelHearingLevelUnit];
                [v19 doubleValueForUnit:v20];
                v21 = [v17 numberWithDouble:?];

                v22 = +[HKAudiogramSample clampingLowestBoundForValidityCheck];
                v59 = v12;
                v23 = [HKAudiogramSensitivityPointClampingRange clampingRangeWithLowerBound:v22 upperBound:v21 error:&v59];
                v55 = v59;

                v24 = [v14 sensitivity];
                v25 = +[HKUnit decibelHearingLevelUnit];
                [v24 doubleValueForUnit:v25];
                v27 = v26;
                v28 = [v14 clampingRange];
                v29 = [v28 lowerBound];
                v30 = +[HKUnit decibelHearingLevelUnit];
                [v29 doubleValueForUnit:v30];
                if (v27 <= v31)
                {
                  [v23 lowerBound];
                }

                else
                {
                  [v14 sensitivity];
                }
                v15 = ;

                v12 = v55;
                v11 = v52;
                if (v55)
                {
LABEL_24:
                  _HKInitializeLogging();
                  if (os_log_type_enabled(HKLogHearing, OS_LOG_TYPE_ERROR))
                  {
                    [HKAudiogramSample hasDifferentClassificationWithModifiedClampingRange];
                  }

                  v6 = v49;
                  v5 = v50;
                  goto LABEL_27;
                }
              }

              else
              {
                v23 = 0;
                if (v12)
                {
                  goto LABEL_24;
                }
              }

              v32 = [HKAudiogramSensitivityTest alloc];
              v33 = [v14 type];
              v34 = [v14 masked];
              v35 = [v14 side];
              v58 = 0;
              v36 = [(HKAudiogramSensitivityTest *)v32 initWithSensitivity:v15 type:v33 masked:v34 side:v35 clampingRange:v23 error:&v58];
              v12 = v58;
              [v11 addObject:v36];
            }

            v54 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
            if (v54)
            {
              continue;
            }

            break;
          }
        }

        v37 = [v47 frequency];
        v57 = v12;
        v38 = [HKAudiogramSensitivityPoint sensitivityPointWithFrequency:v37 tests:v11 error:&v57];
        v39 = v57;

        v5 = v50;
        [v50 addObject:v38];

        if (v39)
        {
          _HKInitializeLogging();
          v6 = v49;
          if (os_log_type_enabled(HKLogHearing, OS_LOG_TYPE_ERROR))
          {
            [HKAudiogramSample hasDifferentClassificationWithModifiedClampingRange];
          }

          v12 = v39;
LABEL_27:

          v41 = 1;
          goto LABEL_28;
        }

        v9 = v46 + 1;
        v6 = v49;
        v4 = 0x1E695D000;
        v8 = v44;
      }

      while (v46 + 1 != v45);
      v7 = [v49 countByEnumeratingWithState:&v64 objects:v69 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v40 = [(HKAudiogramSample *)self _rawHearingLevelClassificationFrom:v5];
  v41 = [(HKAudiogramSample *)self _rawHearingLevelClassificationFrom:v6]!= v40;
LABEL_28:

  v42 = *MEMORY[0x1E69E9840];
  return v41;
}

uint64_t __72__HKAudiogramSample_hasDifferentClassificationWithModifiedClampingRange__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HKAudiogramSample ptaFrequencies];
  v4 = [v2 frequency];

  v5 = [v3 containsObject:v4];
  return v5;
}

- (unint64_t)_rawHearingLevelClassificationFrom:(id)a3
{
  v4 = a3;
  v5 = [(HKAudiogramSample *)self _keyFrequencyPointsFrom:v4 forSide:0];
  v6 = [(HKAudiogramSample *)self _keyFrequencyPointsFrom:v4 forSide:1];

  v7 = HKPureToneAverageFromPureToneSensitivityPoints(v5);
  v8 = HKPureToneAverageFromPureToneSensitivityPoints(v6);
  v9 = HKQuantityMin(v7, v8);
  v10 = HKHearingLevelClassificationForSensitivity(v9);

  return v10;
}

- (id)_keyFrequencyPointsFrom:(id)a3 forSide:(int64_t)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__HKAudiogramSample__keyFrequencyPointsFrom_forSide___block_invoke;
  v6[3] = &__block_descriptor_40_e37__16__0__HKAudiogramSensitivityPoint_8l;
  v6[4] = a4;
  v4 = [a3 hk_map:v6];

  return v4;
}

id __53__HKAudiogramSample__keyFrequencyPointsFrom_forSide___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 tests];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__HKAudiogramSample__keyFrequencyPointsFrom_forSide___block_invoke_2;
  v7[3] = &__block_descriptor_40_e36_B16__0__HKAudiogramSensitivityTest_8l;
  v7[4] = *(a1 + 32);
  v4 = [v3 hk_firstObjectPassingTest:v7];
  v5 = [v4 sensitivity];

  return v5;
}

- (id)clampingLowerBoundPositionsPerFrequencyAtSide:(int64_t)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = [(HKAudiogramSample *)self sensitivityPoints];
  v36 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v36)
  {
    v35 = *v45;
    do
    {
      v5 = 0;
      do
      {
        if (*v45 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v5;
        v6 = *(*(&v44 + 1) + 8 * v5);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v39 = [v6 tests];
        v7 = [v39 countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v41;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v41 != v9)
              {
                objc_enumerationMutation(v39);
              }

              v11 = *(*(&v40 + 1) + 8 * i);
              if ([v11 side] == a3)
              {
                v12 = [v11 clampingRange];
                v13 = [v12 lowerBound];

                if (v13)
                {
                  v14 = [v6 frequency];
                  v15 = [v11 clampingRange];
                  v16 = [v15 lowerBound];
                  v17 = +[HKUnit decibelHearingLevelUnit];
                  [v16 doubleValueForUnit:v17];
                  v19 = v18;

                  v20 = +[HKAudiogramSample clampingLowestBoundForValidityCheck];
                  [v20 doubleValue];
                  v22 = v21;

                  v23 = +[HKAudiogramSample clampingMaximumLowerBoundForValidityCheckPerFrequency];
                  v24 = [v23 objectForKey:v14];
                  v25 = +[HKUnit decibelHearingLevelUnit];
                  [v24 doubleValueForUnit:v25];
                  v27 = v26;

                  if (v19 <= v27)
                  {
                    v28 = 2;
                  }

                  else
                  {
                    v28 = 3;
                  }

                  if (v19 < v22)
                  {
                    v29 = 1;
                  }

                  else
                  {
                    v29 = v28;
                  }

                  v30 = [MEMORY[0x1E696AD98] numberWithInt:v29];
                  v31 = [v6 frequency];
                  [v38 setObject:v30 forKey:v31];
                }

                else
                {
                  v14 = [MEMORY[0x1E696AD98] numberWithInt:0];
                  v30 = [v6 frequency];
                  [v38 setObject:v14 forKey:v30];
                }
              }
            }

            v8 = [v39 countByEnumeratingWithState:&v40 objects:v48 count:16];
          }

          while (v8);
        }

        v5 = v37 + 1;
      }

      while (v37 + 1 != v36);
      v36 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v36);
  }

  v32 = *MEMORY[0x1E69E9840];

  return v38;
}

- (BOOL)isAverageSensitivityUpperClampedForSide:(int64_t)a3
{
  v5 = [(HKAudiogramSample *)self averageSensitivityForSide:?];

  if (!v5)
  {
    return 0;
  }

  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = [&unk_1F0686B08 copy];
  v8 = [v6 initWithArray:v7];

  v9 = [(HKAudiogramSample *)self sensitivityPoints];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__HKAudiogramSample_isAverageSensitivityUpperClampedForSide___block_invoke;
  v16[3] = &unk_1E73810B0;
  v17 = v8;
  v10 = v8;
  v11 = [v9 hk_filter:v16];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__HKAudiogramSample_isAverageSensitivityUpperClampedForSide___block_invoke_2;
  v15[3] = &__block_descriptor_40_e37__16__0__HKAudiogramSensitivityPoint_8l;
  v15[4] = a3;
  v12 = [v11 hk_map:v15];
  v13 = [v12 count] != 0;

  return v13;
}

uint64_t __61__HKAudiogramSample_isAverageSensitivityUpperClampedForSide___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696AD98];
  v4 = [a2 frequency];
  [v4 _value];
  v5 = [v3 numberWithDouble:?];
  v6 = [v2 containsObject:v5];

  return v6;
}

id __61__HKAudiogramSample_isAverageSensitivityUpperClampedForSide___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 tests];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__HKAudiogramSample_isAverageSensitivityUpperClampedForSide___block_invoke_3;
  v6[3] = &__block_descriptor_40_e36_B16__0__HKAudiogramSensitivityTest_8l;
  v6[4] = *(a1 + 32);
  v4 = [v3 hk_firstObjectPassingTest:v6];

  return v4;
}

BOOL __61__HKAudiogramSample_isAverageSensitivityUpperClampedForSide___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 side] == *(a1 + 32))
  {
    v4 = [v3 clampingRange];
    v5 = [v4 upperBound];
    if (v5)
    {
      v6 = [v3 clampingRange];
      v7 = [v6 upperBound];
      [v7 _value];
      v9 = v8;
      v10 = [v3 sensitivity];
      [v10 _value];
      v12 = v9 <= v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isAverageSensitivityUpperClampedForAnySide
{
  if ([(HKAudiogramSample *)self isAverageSensitivityUpperClampedForSide:0])
  {
    return 1;
  }

  return [(HKAudiogramSample *)self isAverageSensitivityUpperClampedForSide:1];
}

+ (id)randomAudiogramSampleWithLeftEarClassification:(unint64_t)a3 rightEarClassification:(unint64_t)a4 startDate:(id)a5 endDate:(id)a6 device:(id)a7 metadata:(id)a8
{
  v48 = *MEMORY[0x1E69E9840];
  v33 = a5;
  v32 = a6;
  v31 = a7;
  v30 = a8;
  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v12 = [&unk_1F0686B20 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v40;
    do
    {
      v15 = 0;
      do
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(&unk_1F0686B20);
        }

        v16 = *(*(&v39 + 1) + 8 * v15);
        v17 = +[HKUnit hertzUnit];
        [v16 doubleValue];
        v18 = [HKQuantity quantityWithUnit:v17 doubleValue:?];

        v19 = [a1 randomSensitivityValueForClassification:a3];
        v20 = [a1 randomSensitivityValueForClassification:a4];
        v38 = 0;
        v21 = [a1 _sensitivityPointWithFrequency:v18 leftEarSensitivity:v19 rightEarSensitivity:v20 error:&v38];
        v22 = v38;
        if (v21)
        {
          [v35 addObject:v21];
        }

        else
        {
          _HKInitializeLogging();
          v23 = HKLogHearing;
          if (os_log_type_enabled(HKLogHearing, OS_LOG_TYPE_ERROR))
          {
            v24 = v23;
            v25 = objc_opt_class();
            v34 = NSStringFromClass(v25);
            *buf = 138543618;
            v44 = v34;
            v45 = 2114;
            v46 = v22;
            _os_log_error_impl(&dword_19197B000, v24, OS_LOG_TYPE_ERROR, "[%{public}@] Error creating sensitivity point: %{public}@", buf, 0x16u);
          }
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [&unk_1F0686B20 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v13);
  }

  v26 = v30;
  v27 = [HKAudiogramSample audiogramSampleWithSensitivityPoints:v35 startDate:v33 endDate:v32 device:v31 metadata:v30, v30];

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

+ (id)_sensitivityPointWithFrequency:(id)a3 leftEarSensitivity:(id)a4 rightEarSensitivity:(id)a5 error:(id *)a6
{
  v9 = MEMORY[0x1E695DF70];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(v9);
  v21 = 0;
  v14 = [[HKAudiogramSensitivityTest alloc] initWithSensitivity:v11 type:0 masked:0 side:0 clampingRange:0 error:&v21];

  v15 = v21;
  if (v14)
  {
    [v13 addObject:v14];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHearing, OS_LOG_TYPE_ERROR))
    {
      +[HKAudiogramSample _sensitivityPointWithFrequency:leftEarSensitivity:rightEarSensitivity:error:];
    }
  }

  v20 = v15;
  v16 = [[HKAudiogramSensitivityTest alloc] initWithSensitivity:v10 type:0 masked:0 side:1 clampingRange:0 error:&v20];

  v17 = v20;
  if (v16)
  {
    [v13 addObject:v16];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHearing, OS_LOG_TYPE_ERROR))
    {
      +[HKAudiogramSample _sensitivityPointWithFrequency:leftEarSensitivity:rightEarSensitivity:error:];
    }
  }

  v18 = [HKAudiogramSensitivityPoint sensitivityPointWithFrequency:v12 tests:v13 error:a6];

  return v18;
}

+ (id)randomSensitivityValueForClassification:(unint64_t)a3
{
  v5 = HKMinimumDecibelQuantityForHearingLevelClassification(a3);
  v6 = HKMaximumDecibelQuantityForHearingLevelClassification(a3);
  v7 = +[HKUnit decibelHearingLevelUnit];
  [v5 doubleValueForUnit:v7];
  v9 = fmax(v8, 0.0);
  [v6 doubleValueForUnit:v7];
  [a1 _randomDecibelValueInRangeFromStart:v9 end:v10];
  v11 = [HKQuantity quantityWithUnit:v7 doubleValue:?];

  return v11;
}

+ (double)_randomDecibelValueInRangeFromStart:(double)a3 end:(double)a4
{
  if (a3 >= a4)
  {
    [HKAudiogramSample _randomDecibelValueInRangeFromStart:a2 end:a1];
  }

  return arc4random_uniform((a4 - a3)) + a3;
}

+ (HKAudiogramSample)audiogramSampleWithLeftEarAverageSensitivity:(id)a3 rightEarAverageSensitivity:(id)a4 startDate:(id)a5 endDate:(id)a6 device:(id)a7 metadata:(id)a8
{
  v48 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v35 = a5;
  v34 = a6;
  v33 = a7;
  v32 = a8;
  v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v16 = [&unk_1F0686B20 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v40;
    do
    {
      v19 = 0;
      do
      {
        if (*v40 != v18)
        {
          objc_enumerationMutation(&unk_1F0686B20);
        }

        v20 = *(*(&v39 + 1) + 8 * v19);
        v21 = +[HKUnit hertzUnit];
        [v20 doubleValue];
        v22 = [HKQuantity quantityWithUnit:v21 doubleValue:?];

        v38 = 0;
        v23 = [a1 _sensitivityPointWithFrequency:v22 leftEarSensitivity:v14 rightEarSensitivity:v15 error:&v38];
        v24 = v38;
        if (v23)
        {
          [v37 addObject:v23];
        }

        else
        {
          _HKInitializeLogging();
          v25 = HKLogHearing;
          if (os_log_type_enabled(HKLogHearing, OS_LOG_TYPE_ERROR))
          {
            v26 = v25;
            v27 = objc_opt_class();
            v36 = NSStringFromClass(v27);
            *buf = 138543618;
            v44 = v36;
            v45 = 2114;
            v46 = v24;
            _os_log_error_impl(&dword_19197B000, v26, OS_LOG_TYPE_ERROR, "[%{public}@] Error creating sensitivity point: %{public}@", buf, 0x16u);
          }
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [&unk_1F0686B20 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v17);
  }

  v28 = v32;
  v29 = [HKAudiogramSample audiogramSampleWithSensitivityPoints:v37 startDate:v35 endDate:v34 device:v33 metadata:v32, v32];

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

- (BOOL)isFirstPartyHearingTestResult
{
  v3 = [(HKObject *)self metadata];
  v4 = [v3 objectForKey:@"HKWasUserEntered"];

  if (v4)
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(HKAudiogramSample *)self _firstPartyHearingTest];
  v7 = 0;
  if ((v5 & 1) == 0 && v6)
  {
    v8 = [(HKObject *)self device];
    v7 = v8 != 0;
  }

  return v7;
}

+ (void)_encodeSensitivityPoints:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Unable to encode the sensitivity points for an HKAudiogramSample instance: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_decodeSensitivityData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Unable to decode the sensitivity points for an HKAudiogramSample instance: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)hasDifferentClassificationWithModifiedClampingRange
{
  OUTLINED_FUNCTION_2_6();
  v13 = *MEMORY[0x1E69E9840];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3_4();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_0_19();
  OUTLINED_FUNCTION_1_9(&dword_19197B000, v5, v6, "[%{public}@] Error creating a modified HKAudiogramSensitivityPoint. Returning isAmbiguous YES. Error: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

+ (void)_sensitivityPointWithFrequency:leftEarSensitivity:rightEarSensitivity:error:.cold.1()
{
  OUTLINED_FUNCTION_2_6();
  v13 = *MEMORY[0x1E69E9840];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3_4();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_0_19();
  OUTLINED_FUNCTION_1_9(&dword_19197B000, v5, v6, "[%{public}@] Error creating left sensitivity test: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

+ (void)_sensitivityPointWithFrequency:leftEarSensitivity:rightEarSensitivity:error:.cold.2()
{
  OUTLINED_FUNCTION_2_6();
  v13 = *MEMORY[0x1E69E9840];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3_4();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_0_19();
  OUTLINED_FUNCTION_1_9(&dword_19197B000, v5, v6, "[%{public}@] Error creating right sensitivity test: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

+ (void)_randomDecibelValueInRangeFromStart:(uint64_t)a1 end:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKAudiogramSample.m" lineNumber:667 description:@"Start of range must be before the end."];
}

@end