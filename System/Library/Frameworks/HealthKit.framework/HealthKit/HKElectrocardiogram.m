@interface HKElectrocardiogram
+ (id)_electrocardiogramWithStartDate:(id)a3 device:(id)a4 metadata:(id)a5;
+ (id)_localizedClassification:(unint64_t)a3 withActiveAlgorithmVersion:(int64_t)a4;
- (BOOL)isEquivalent:(id)a3;
- (BOOL)prepareForSaving:(id *)a3;
- (HKElectrocardiogram)initWithCoder:(id)a3;
- (HKElectrocardiogramClassification)classification;
- (HKQuantity)samplingFrequency;
- (NSArray)_localizedSymptoms;
- (NSArray)leadNames;
- (NSInteger)numberOfVoltageMeasurements;
- (NSNumber)_algorithmVersion;
- (id)_localizedClassificationWithActiveAlgorithmVersion:(int64_t)a3;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)payload;
- (id)voltageMeasurementEnumerator;
- (unint64_t)privateSymptoms;
- (void)_enumerateDataForLead:(int64_t)a3 block:(id)a4;
- (void)_setPayload:(id)a3;
- (void)copyMeasurementFlagsForLead:(int64_t)a3 count:(unint64_t)a4 target:(char *)a5;
- (void)copyMeasurementValuesForLead:(int64_t)a3 count:(unint64_t)a4 target:(float *)a5;
- (void)encodeWithCoder:(id)a3;
- (void)setReading:(Electrocardiogram *)a3;
@end

@implementation HKElectrocardiogram

+ (id)_electrocardiogramWithStartDate:(id)a3 device:(id)a4 metadata:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[(HKObjectType *)HKElectrocardiogramType];
  [v8 timeIntervalSinceReferenceDate];
  v13 = v12;
  [v8 timeIntervalSinceReferenceDate];
  v15 = [a1 _newSampleWithType:v11 startDate:v9 endDate:v10 device:0 metadata:v13 config:v14];

  return v15;
}

- (NSArray)leadNames
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  begin = self->_reading._leads._v.__begin_;
  for (i = self->_reading._leads._v.__end_; begin != i; begin += 8)
  {
    if (*(*begin + 60))
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:*(*begin + 56)];
      [v3 addObject:v6];
    }
  }

  return v3;
}

- (NSInteger)numberOfVoltageMeasurements
{
  begin = self->_reading._leads._v.__begin_;
  if (self->_reading._leads._v.__end_ == begin)
  {
    return 0;
  }

  else
  {
    return (*(*begin + 40) - *(*begin + 32)) >> 2;
  }
}

- (HKQuantity)samplingFrequency
{
  p_reading = &self->_reading;
  if (*&self->_reading._has)
  {
    v4 = +[HKUnit hertzUnit];
    v3 = [HKQuantity quantityWithUnit:v4 doubleValue:p_reading->_frequency];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (HKElectrocardiogramClassification)classification
{
  v2 = [(HKElectrocardiogram *)self privateClassification];
  if (v2 - 1 > 9)
  {
    return 0;
  }

  else
  {
    return qword_191DCE6F0[v2 - 1];
  }
}

- (NSNumber)_algorithmVersion
{
  v2 = [(HKObject *)self metadata];
  v3 = [v2 objectForKeyedSubscript:@"HKMetadataKeyAppleECGAlgorithmVersion"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &unk_1F0685EE0;
  }

  return v4;
}

- (void)setReading:(Electrocardiogram *)a3
{
  binarysample::Electrocardiogram::operator=(&self->_reading, a3);
  v4 = [(HKElectrocardiogram *)self samplingFrequency];
  v5 = +[HKUnit hertzUnit];
  [v4 doubleValueForUnit:v5];
  v7 = v6;

  [(HKSample *)self _startTimestamp];
  v9 = v8 + [(HKElectrocardiogram *)self numberOfVoltageMeasurements]/ v7;

  [(HKSample *)self _setEndTimestamp:v9];
}

- (void)copyMeasurementValuesForLead:(int64_t)a3 count:(unint64_t)a4 target:(float *)a5
{
  begin = self->_reading._leads._v.__begin_;
  for (i = self->_reading._leads._v.__end_; begin != i; begin += 8)
  {
    v10 = *begin;
    if ((*(*begin + 60) & 1) != 0 && *(v10 + 56) == a3)
    {
      v11 = *(v10 + 32);
      v12 = (*(v10 + 40) - v11) >> 2;
      if (v12 >= a4)
      {
        v12 = a4;
      }

      if (v12)
      {
        memmove(a5, v11, 4 * v12);
      }
    }
  }
}

- (void)copyMeasurementFlagsForLead:(int64_t)a3 count:(unint64_t)a4 target:(char *)a5
{
  begin = self->_reading._leads._v.__begin_;
  end = self->_reading._leads._v.__end_;
  while (begin != end)
  {
    v7 = *begin;
    if ((*(*begin + 60) & 1) != 0 && *(v7 + 56) == a3)
    {
      v8 = (*(v7 + 16) - *(v7 + 8)) >> 2;
      if (v8 >= a4)
      {
        v8 = a4;
      }

      if (v8 >= 1)
      {
        for (i = 0; i != v8; ++i)
        {
          a5[i] = *(*(v7 + 8) + 4 * i);
        }
      }
    }

    begin += 8;
  }
}

- (void)_enumerateDataForLead:(int64_t)a3 block:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(HKElectrocardiogram *)self samplingFrequency];

  if (v7)
  {
    begin = self->_reading._leads._v.__begin_;
    end = self->_reading._leads._v.__end_;
    while (begin != end)
    {
      v10 = *begin;
      if ((*(*begin + 60) & 1) != 0 && *(v10 + 56) == a3)
      {
        v15 = *(v10 + 32);
        if (*(v10 + 40) != v15)
        {
          v16 = 0;
          do
          {
            v17[0] = 0;
            v6[2](v6, v16, v17, *(v15 + 4 * v16));
            if (v17[0])
            {
              break;
            }

            ++v16;
            v15 = *(v10 + 32);
          }

          while (v16 < (*(v10 + 40) - v15) >> 2);
        }

        break;
      }

      begin += 8;
    }
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogHeartRhythm;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [(HKObject *)self UUID];
      v13 = [v12 UUIDString];
      [(HKElectrocardiogram *)v13 _enumerateDataForLead:v17 block:v11, v12];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)voltageMeasurementEnumerator
{
  begin = self->_reading._leads._v.__begin_;
  end = self->_reading._leads._v.__end_;
  if (begin == end)
  {
    v6 = 0;
  }

  else
  {
    while (1)
    {
      v5 = *begin;
      if ((*(*begin + 60) & 1) != 0 && *(v5 + 56) == 1)
      {
        break;
      }

      begin += 8;
      if (begin == end)
      {
        v6 = 0;
        goto LABEL_10;
      }
    }

    v6 = [[_HKElectrocardiogramVoltageMeasurementEnumerator alloc] initWithElectrocardiogram:self leadIMicroVoltsBegin:*(v5 + 32) end:*(v5 + 40)];
LABEL_10:
  }

  return v6;
}

- (void)_setPayload:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 bytes];
    [v5 length];
    PB::Reader::Reader(v7, v6);
    (*(self->_reading._vptr$Base + 2))(&self->_reading, v7);
  }

  else
  {
    binarysample::Electrocardiogram::Electrocardiogram(v7);
    binarysample::Electrocardiogram::operator=(&self->_reading, v7);
    binarysample::Electrocardiogram::~Electrocardiogram(v7);
  }
}

- (id)payload
{
  PB::Writer::Writer(&v6);
  (*(self->_reading._vptr$Base + 3))(&self->_reading, &v6);
  v3 = objc_alloc(MEMORY[0x1E695DEF0]);
  v4 = [v3 initWithBytes:v7 length:v6 - v7];
  PB::Writer::~Writer(&v6);

  return v4;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v15.receiver = self;
  v15.super_class = HKElectrocardiogram;
  v5 = [(HKSample *)&v15 _validateWithConfiguration:a3.var0, a3.var1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
LABEL_3:
    v8 = v7;
    goto LABEL_9;
  }

  begin = self->_reading._leads._v.__begin_;
  end = self->_reading._leads._v.__end_;
  if (end != begin)
  {
    v11 = *(*begin + 40) - *(*begin + 32);
    while (v11 == *(*begin + 40) - *(*begin + 32))
    {
      begin += 8;
      if (begin == end)
      {
        goto LABEL_8;
      }
    }

    v13 = MEMORY[0x1E696ABC0];
    v14 = objc_opt_class();
    v7 = [v13 hk_errorForInvalidArgument:@"@" class:v14 selector:a2 format:{@"%@ %@ requires each lead to have an identical number of data", objc_opt_class(), self}];
    goto LABEL_3;
  }

LABEL_8:
  v8 = 0;
LABEL_9:

  return v8;
}

- (BOOL)prepareForSaving:(id *)a3
{
  if (self->_reading._leads._v.__end_ == self->_reading._leads._v.__begin_)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = objc_opt_class();
    v16 = [v11 hk_errorForInvalidArgument:@"@" class:v12 selector:a2 format:{@"%@ %@ requires at least one lead", objc_opt_class(), self}];
    v13 = v16;
    if (v16)
    {
      if (a3)
      {
LABEL_13:
        v17 = v13;
        *a3 = v13;
        goto LABEL_15;
      }

LABEL_14:
      _HKLogDroppedError(v16);
    }
  }

  else
  {
    v6 = [(HKObject *)self metadata];
    v7 = [v6 objectForKeyedSubscript:@"_HKPrivateMetadataKeyElectrocardiogramSymptoms"];
    v8 = [v7 integerValue];

    if (v8 == 1 || (v8 & 1) == 0)
    {
      return 1;
    }

    v14 = MEMORY[0x1E696ABC0];
    v15 = objc_opt_class();
    v16 = [v14 hk_errorForInvalidArgument:@"@" class:v15 selector:a2 format:{@"%@ %@ metadata cannot have both no symptoms and a symptom", objc_opt_class(), self}];
    v13 = v16;
    if (v16)
    {
      if (a3)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

LABEL_15:

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HKElectrocardiogram;
  [(HKSample *)&v7 encodeWithCoder:v4];
  v5 = [(HKElectrocardiogram *)self payload];
  [v4 encodeObject:v5 forKey:@"payload"];

  v6 = [(HKElectrocardiogram *)self averageHeartRate];
  [v4 encodeObject:v6 forKey:@"averageHeartRate"];

  [v4 encodeInteger:-[HKElectrocardiogram privateClassification](self forKey:{"privateClassification"), @"classification"}];
  [v4 encodeInteger:-[HKElectrocardiogram symptoms](self forKey:{"symptoms"), @"symptoms_status"}];
}

- (HKElectrocardiogram)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKElectrocardiogram;
  v5 = [(HKSample *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
    [(HKElectrocardiogram *)v5 _setPayload:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"averageHeartRate"];
    [(HKElectrocardiogram *)v5 _setAverageHeartRate:v7];

    -[HKElectrocardiogram _setPrivateClassification:](v5, "_setPrivateClassification:", [v4 decodeIntegerForKey:@"classification"]);
    -[HKElectrocardiogram _setSymptomsStatus:](v5, "_setSymptomsStatus:", [v4 decodeIntegerForKey:@"symptoms_status"]);
  }

  return v5;
}

- (BOOL)isEquivalent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v26.receiver = self;
    v26.super_class = HKElectrocardiogram;
    if (![(HKSample *)&v26 isEquivalent:v5])
    {
      goto LABEL_17;
    }

    v6 = [(HKElectrocardiogram *)self numberOfVoltageMeasurements];
    if (v6 != [v5 numberOfVoltageMeasurements])
    {
      goto LABEL_17;
    }

    v7 = [(HKElectrocardiogram *)self samplingFrequency];
    v8 = [v5 samplingFrequency];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [v5 samplingFrequency];
      if (!v10)
      {
        goto LABEL_16;
      }

      v11 = [(HKElectrocardiogram *)self samplingFrequency];
      v12 = [v5 samplingFrequency];
      v13 = [v11 isEqual:v12];

      if ((v13 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v15 = [(HKElectrocardiogram *)self payload];
    v16 = [v5 payload];
    v17 = [v15 isEqualToData:v16];

    if ((v17 & 1) == 0)
    {
      goto LABEL_17;
    }

    v18 = [(HKElectrocardiogram *)self privateClassification];
    if (v18 != [v5 privateClassification])
    {
      goto LABEL_17;
    }

    v7 = [(HKElectrocardiogram *)self averageHeartRate];
    v19 = [v5 averageHeartRate];
    v9 = v19;
    if (v7 == v19)
    {

LABEL_21:
      v25 = [(HKElectrocardiogram *)self symptomsStatus];
      v14 = v25 == [v5 symptomsStatus];
      goto LABEL_18;
    }

    v20 = [v5 averageHeartRate];
    if (v20)
    {
      v21 = [(HKElectrocardiogram *)self averageHeartRate];
      v22 = [v5 averageHeartRate];
      v23 = [v21 isEqual:v22];

      if (v23)
      {
        goto LABEL_21;
      }

LABEL_17:
      v14 = 0;
LABEL_18:

      goto LABEL_19;
    }

LABEL_16:

    goto LABEL_17;
  }

  v14 = 0;
LABEL_19:

  return v14;
}

+ (id)_localizedClassification:(unint64_t)a3 withActiveAlgorithmVersion:(int64_t)a4
{
  v4 = 0;
  if (a3 > 5)
  {
    if (a3 <= 7)
    {
      if (a3 == 6)
      {
        v5 = HKHealthKitFrameworkBundle();
        [v5 localizedStringForKey:@"ELECTROCARDIOGRAM_ATRIAL_FIBRILLATION_CLASSIFICATION_HEART_RATE_BELOW_50" value:&stru_1F05FF230 table:@"Localizable-Cinnamon"];
      }

      else
      {
        v5 = HKHealthKitFrameworkBundle();
        [v5 localizedStringForKey:@"ELECTROCARDIOGRAM_ATRIAL_FIBRILLATION_CLASSIFICATION_SINUS_RHYTHM_HEART_RATE_100_TO_150" value:&stru_1F05FF230 table:@"Localizable-Cinnamon"];
      }
      v6 = ;
      v7 = HKConditionallyRedactedHeartRhythmString(v6);
      goto LABEL_23;
    }

    if (a3 - 8 >= 2)
    {
      if (a3 != 10)
      {
        goto LABEL_24;
      }

      v5 = HKHealthKitFrameworkBundle();
      v6 = [v5 localizedStringForKey:@"ELECTROCARDIOGRAM_ATRIAL_FIBRILLATION_CLASSIFICATION_HEART_RATE_ABOVE_150" value:&stru_1F05FF230 table:@"Localizable-Cinnamon"];
      v7 = HKConditionallyRedactedHeartRhythmString(v6);
      goto LABEL_23;
    }

    goto LABEL_8;
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v5 = HKHealthKitFrameworkBundle();
      v6 = [v5 localizedStringForKey:@"ELECTROCARDIOGRAM_ATRIAL_FIBRILLATION_CLASSIFICATION_SINUS_RHYTHM_HEART_RATE_50_TO_100" value:&stru_1F05FF230 table:@"Localizable-Cinnamon"];
      v7 = HKConditionallyRedactedHeartRhythmString(v6);
      goto LABEL_23;
    }

    if (a3 != 4)
    {
      v5 = HKHealthKitFrameworkBundle();
      v6 = [v5 localizedStringForKey:@"ELECTROCARDIOGRAM_ATRIAL_FIBRILLATION_CLASSIFICATION_HEART_RATE_ABOVE_120" value:&stru_1F05FF230 table:@"Localizable-Cinnamon"];
      v7 = HKConditionallyRedactedHeartRhythmString(v6);
LABEL_23:
      v4 = v7;

      goto LABEL_24;
    }

LABEL_8:
    v5 = HKHealthKitFrameworkBundle();
    v6 = [v5 localizedStringForKey:@"ELECTROCARDIOGRAM_ATRIAL_FIBRILLATION_CLASSIFICATION_ATRIAL_FIBRILLATION" value:&stru_1F05FF230 table:@"Localizable-Cinnamon"];
    v7 = HKConditionallyRedactedHeartRhythmString(v6);
    goto LABEL_23;
  }

  if (a3 != 1)
  {
    if (a3 != 2)
    {
      goto LABEL_24;
    }

    v5 = HKHealthKitFrameworkBundle();
    v6 = [v5 localizedStringForKey:@"ELECTROCARDIOGRAM_ATRIAL_FIBRILLATION_CLASSIFICATION_INCONCLUSIVE_OTHER" value:&stru_1F05FF230 table:@"Localizable-Cinnamon"];
    v7 = HKConditionallyRedactedHeartRhythmString(v6);
    goto LABEL_23;
  }

  if (a4 == 2)
  {
    v5 = HKHealthKitFrameworkBundle();
    v6 = [v5 localizedStringForKey:@"ELECTROCARDIOGRAM_ATRIAL_FIBRILLATION_CLASSIFICATION_POOR_RECORDING" value:&stru_1F05FF230 table:@"Localizable-Cinnamon"];
    v7 = HKConditionallyRedactedHeartRhythmString(v6);
    goto LABEL_23;
  }

  if (a4 == 1)
  {
    v5 = HKHealthKitFrameworkBundle();
    v6 = [v5 localizedStringForKey:@"ELECTROCARDIOGRAM_ATRIAL_FIBRILLATION_CLASSIFICATION_INCONCLUSIVE_POOR_READING" value:&stru_1F05FF230 table:@"Localizable-Cinnamon"];
    v7 = HKConditionallyRedactedHeartRhythmString(v6);
    goto LABEL_23;
  }

  v4 = 0;
LABEL_24:

  return v4;
}

- (id)_localizedClassificationWithActiveAlgorithmVersion:(int64_t)a3
{
  v5 = objc_opt_class();
  v6 = [(HKElectrocardiogram *)self privateClassification];

  return [v5 _localizedClassification:v6 withActiveAlgorithmVersion:a3];
}

- (NSArray)_localizedSymptoms
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = _HKPrivateElectrocardiogramSymptomsGetList([(HKElectrocardiogram *)self privateSymptoms]);
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v15 + 1) + 8 * i) integerValue];
        v9 = 0;
        if (v8 <= 15)
        {
          if (v8 > 3)
          {
            if (v8 == 4)
            {
              v10 = HKHealthKitFrameworkBundle();
              v11 = [v10 localizedStringForKey:@"ELECTROCARDIOGRAM_SYMPTOM_DIZZINESS" value:&stru_1F05FF230 table:@"Localizable-Cinnamon"];
              v12 = HKConditionallyRedactedHeartRhythmString(v11);
            }

            else
            {
              if (v8 != 8)
              {
                goto LABEL_29;
              }

              v10 = HKHealthKitFrameworkBundle();
              v11 = [v10 localizedStringForKey:@"ELECTROCARDIOGRAM_SYMPTOM_FATIGUE" value:&stru_1F05FF230 table:@"Localizable-Cinnamon"];
              v12 = HKConditionallyRedactedHeartRhythmString(v11);
            }
          }

          else if (v8 == 1)
          {
            v10 = HKHealthKitFrameworkBundle();
            v11 = [v10 localizedStringForKey:@"ELECTROCARDIOGRAM_SYMPTOM_NO_SYMPTOMS" value:&stru_1F05FF230 table:@"Localizable-Cinnamon"];
            v12 = HKConditionallyRedactedHeartRhythmString(v11);
          }

          else
          {
            if (v8 != 2)
            {
              goto LABEL_29;
            }

            v10 = HKHealthKitFrameworkBundle();
            v11 = [v10 localizedStringForKey:@"ELECTROCARDIOGRAM_SYMPTOM_CHEST_TIGHTNESS_OR_PAIN" value:&stru_1F05FF230 table:@"Localizable-Cinnamon"];
            v12 = HKConditionallyRedactedHeartRhythmString(v11);
          }
        }

        else if (v8 <= 127)
        {
          if (v8 == 16)
          {
            v10 = HKHealthKitFrameworkBundle();
            v11 = [v10 localizedStringForKey:@"ELECTROCARDIOGRAM_SYMPTOM_FAINTING" value:&stru_1F05FF230 table:@"Localizable-Cinnamon"];
            v12 = HKConditionallyRedactedHeartRhythmString(v11);
          }

          else
          {
            if (v8 != 64)
            {
              goto LABEL_29;
            }

            v10 = HKHealthKitFrameworkBundle();
            v11 = [v10 localizedStringForKey:@"ELECTROCARDIOGRAM_SYMPTOM_OTHER" value:&stru_1F05FF230 table:@"Localizable-Cinnamon"];
            v12 = HKConditionallyRedactedHeartRhythmString(v11);
          }
        }

        else
        {
          switch(v8)
          {
            case 128:
              v10 = HKHealthKitFrameworkBundle();
              v11 = [v10 localizedStringForKey:@"ELECTROCARDIOGRAM_SYMPTOM_RAPID_POUNDING_OR_FLUTTERING_HEARTBEAT" value:&stru_1F05FF230 table:@"Localizable-Cinnamon"];
              v12 = HKConditionallyRedactedHeartRhythmString(v11);
              break;
            case 256:
              v10 = HKHealthKitFrameworkBundle();
              v11 = [v10 localizedStringForKey:@"ELECTROCARDIOGRAM_SYMPTOM_SHORTNESS_OF_BREATH" value:&stru_1F05FF230 table:@"Localizable-Cinnamon"];
              v12 = HKConditionallyRedactedHeartRhythmString(v11);
              break;
            case 512:
              v10 = HKHealthKitFrameworkBundle();
              v11 = [v10 localizedStringForKey:@"ELECTROCARDIOGRAM_SYMPTOM_SKIPPED_HEARTBEAT" value:&stru_1F05FF230 table:@"Localizable-Cinnamon"];
              v12 = HKConditionallyRedactedHeartRhythmString(v11);
              break;
            default:
              goto LABEL_29;
          }
        }

        v9 = v12;

        if (v9)
        {
          [v3 addObject:v9];
        }

LABEL_29:
      }

      v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)privateSymptoms
{
  v2 = [(HKObject *)self metadata];
  v3 = [v2 objectForKeyedSubscript:@"_HKPrivateMetadataKeyElectrocardiogramSymptoms"];
  v4 = [v3 integerValue];

  return v4;
}

- (void)_enumerateDataForLead:(os_log_t)log block:(void *)a4 .cold.1(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "Sample %{public}@ has no measurement frequency", buf, 0xCu);
}

@end