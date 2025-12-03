@interface HKElectrocardiogram
+ (id)_electrocardiogramWithStartDate:(id)date device:(id)device metadata:(id)metadata;
+ (id)_localizedClassification:(unint64_t)classification withActiveAlgorithmVersion:(int64_t)version;
- (BOOL)isEquivalent:(id)equivalent;
- (BOOL)prepareForSaving:(id *)saving;
- (HKElectrocardiogram)initWithCoder:(id)coder;
- (HKElectrocardiogramClassification)classification;
- (HKQuantity)samplingFrequency;
- (NSArray)_localizedSymptoms;
- (NSArray)leadNames;
- (NSInteger)numberOfVoltageMeasurements;
- (NSNumber)_algorithmVersion;
- (id)_localizedClassificationWithActiveAlgorithmVersion:(int64_t)version;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)payload;
- (id)voltageMeasurementEnumerator;
- (unint64_t)privateSymptoms;
- (void)_enumerateDataForLead:(int64_t)lead block:(id)block;
- (void)_setPayload:(id)payload;
- (void)copyMeasurementFlagsForLead:(int64_t)lead count:(unint64_t)count target:(char *)target;
- (void)copyMeasurementValuesForLead:(int64_t)lead count:(unint64_t)count target:(float *)target;
- (void)encodeWithCoder:(id)coder;
- (void)setReading:(Electrocardiogram *)reading;
@end

@implementation HKElectrocardiogram

+ (id)_electrocardiogramWithStartDate:(id)date device:(id)device metadata:(id)metadata
{
  dateCopy = date;
  deviceCopy = device;
  metadataCopy = metadata;
  v11 = +[(HKObjectType *)HKElectrocardiogramType];
  [dateCopy timeIntervalSinceReferenceDate];
  v13 = v12;
  [dateCopy timeIntervalSinceReferenceDate];
  v15 = [self _newSampleWithType:v11 startDate:deviceCopy endDate:metadataCopy device:0 metadata:v13 config:v14];

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
  privateClassification = [(HKElectrocardiogram *)self privateClassification];
  if (privateClassification - 1 > 9)
  {
    return 0;
  }

  else
  {
    return qword_191DCE6F0[privateClassification - 1];
  }
}

- (NSNumber)_algorithmVersion
{
  metadata = [(HKObject *)self metadata];
  v3 = [metadata objectForKeyedSubscript:@"HKMetadataKeyAppleECGAlgorithmVersion"];

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

- (void)setReading:(Electrocardiogram *)reading
{
  binarysample::Electrocardiogram::operator=(&self->_reading, reading);
  samplingFrequency = [(HKElectrocardiogram *)self samplingFrequency];
  v5 = +[HKUnit hertzUnit];
  [samplingFrequency doubleValueForUnit:v5];
  v7 = v6;

  [(HKSample *)self _startTimestamp];
  v9 = v8 + [(HKElectrocardiogram *)self numberOfVoltageMeasurements]/ v7;

  [(HKSample *)self _setEndTimestamp:v9];
}

- (void)copyMeasurementValuesForLead:(int64_t)lead count:(unint64_t)count target:(float *)target
{
  begin = self->_reading._leads._v.__begin_;
  for (i = self->_reading._leads._v.__end_; begin != i; begin += 8)
  {
    v10 = *begin;
    if ((*(*begin + 60) & 1) != 0 && *(v10 + 56) == lead)
    {
      v11 = *(v10 + 32);
      countCopy = (*(v10 + 40) - v11) >> 2;
      if (countCopy >= count)
      {
        countCopy = count;
      }

      if (countCopy)
      {
        memmove(target, v11, 4 * countCopy);
      }
    }
  }
}

- (void)copyMeasurementFlagsForLead:(int64_t)lead count:(unint64_t)count target:(char *)target
{
  begin = self->_reading._leads._v.__begin_;
  end = self->_reading._leads._v.__end_;
  while (begin != end)
  {
    v7 = *begin;
    if ((*(*begin + 60) & 1) != 0 && *(v7 + 56) == lead)
    {
      countCopy = (*(v7 + 16) - *(v7 + 8)) >> 2;
      if (countCopy >= count)
      {
        countCopy = count;
      }

      if (countCopy >= 1)
      {
        for (i = 0; i != countCopy; ++i)
        {
          target[i] = *(*(v7 + 8) + 4 * i);
        }
      }
    }

    begin += 8;
  }
}

- (void)_enumerateDataForLead:(int64_t)lead block:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  samplingFrequency = [(HKElectrocardiogram *)self samplingFrequency];

  if (samplingFrequency)
  {
    begin = self->_reading._leads._v.__begin_;
    end = self->_reading._leads._v.__end_;
    while (begin != end)
    {
      v10 = *begin;
      if ((*(*begin + 60) & 1) != 0 && *(v10 + 56) == lead)
      {
        v15 = *(v10 + 32);
        if (*(v10 + 40) != v15)
        {
          v16 = 0;
          do
          {
            v17[0] = 0;
            blockCopy[2](blockCopy, v16, v17, *(v15 + 4 * v16));
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
      uUID = [(HKObject *)self UUID];
      uUIDString = [uUID UUIDString];
      [(HKElectrocardiogram *)uUIDString _enumerateDataForLead:v17 block:v11, uUID];
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

- (void)_setPayload:(id)payload
{
  payloadCopy = payload;
  v5 = payloadCopy;
  if (payloadCopy)
  {
    bytes = [payloadCopy bytes];
    [v5 length];
    PB::Reader::Reader(v7, bytes);
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

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v15.receiver = self;
  v15.super_class = HKElectrocardiogram;
  v5 = [(HKSample *)&v15 _validateWithConfiguration:configuration.var0, configuration.var1];
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

- (BOOL)prepareForSaving:(id *)saving
{
  if (self->_reading._leads._v.__end_ == self->_reading._leads._v.__begin_)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = objc_opt_class();
    v16 = [v11 hk_errorForInvalidArgument:@"@" class:v12 selector:a2 format:{@"%@ %@ requires at least one lead", objc_opt_class(), self}];
    v13 = v16;
    if (v16)
    {
      if (saving)
      {
LABEL_13:
        v17 = v13;
        *saving = v13;
        goto LABEL_15;
      }

LABEL_14:
      _HKLogDroppedError(v16);
    }
  }

  else
  {
    metadata = [(HKObject *)self metadata];
    v7 = [metadata objectForKeyedSubscript:@"_HKPrivateMetadataKeyElectrocardiogramSymptoms"];
    integerValue = [v7 integerValue];

    if (integerValue == 1 || (integerValue & 1) == 0)
    {
      return 1;
    }

    v14 = MEMORY[0x1E696ABC0];
    v15 = objc_opt_class();
    v16 = [v14 hk_errorForInvalidArgument:@"@" class:v15 selector:a2 format:{@"%@ %@ metadata cannot have both no symptoms and a symptom", objc_opt_class(), self}];
    v13 = v16;
    if (v16)
    {
      if (saving)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

LABEL_15:

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HKElectrocardiogram;
  [(HKSample *)&v7 encodeWithCoder:coderCopy];
  payload = [(HKElectrocardiogram *)self payload];
  [coderCopy encodeObject:payload forKey:@"payload"];

  averageHeartRate = [(HKElectrocardiogram *)self averageHeartRate];
  [coderCopy encodeObject:averageHeartRate forKey:@"averageHeartRate"];

  [coderCopy encodeInteger:-[HKElectrocardiogram privateClassification](self forKey:{"privateClassification"), @"classification"}];
  [coderCopy encodeInteger:-[HKElectrocardiogram symptoms](self forKey:{"symptoms"), @"symptoms_status"}];
}

- (HKElectrocardiogram)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HKElectrocardiogram;
  v5 = [(HKSample *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
    [(HKElectrocardiogram *)v5 _setPayload:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"averageHeartRate"];
    [(HKElectrocardiogram *)v5 _setAverageHeartRate:v7];

    -[HKElectrocardiogram _setPrivateClassification:](v5, "_setPrivateClassification:", [coderCopy decodeIntegerForKey:@"classification"]);
    -[HKElectrocardiogram _setSymptomsStatus:](v5, "_setSymptomsStatus:", [coderCopy decodeIntegerForKey:@"symptoms_status"]);
  }

  return v5;
}

- (BOOL)isEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equivalentCopy;
    v26.receiver = self;
    v26.super_class = HKElectrocardiogram;
    if (![(HKSample *)&v26 isEquivalent:v5])
    {
      goto LABEL_17;
    }

    numberOfVoltageMeasurements = [(HKElectrocardiogram *)self numberOfVoltageMeasurements];
    if (numberOfVoltageMeasurements != [v5 numberOfVoltageMeasurements])
    {
      goto LABEL_17;
    }

    samplingFrequency = [(HKElectrocardiogram *)self samplingFrequency];
    samplingFrequency2 = [v5 samplingFrequency];
    v9 = samplingFrequency2;
    if (samplingFrequency == samplingFrequency2)
    {
    }

    else
    {
      samplingFrequency3 = [v5 samplingFrequency];
      if (!samplingFrequency3)
      {
        goto LABEL_16;
      }

      samplingFrequency4 = [(HKElectrocardiogram *)self samplingFrequency];
      samplingFrequency5 = [v5 samplingFrequency];
      v13 = [samplingFrequency4 isEqual:samplingFrequency5];

      if ((v13 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    payload = [(HKElectrocardiogram *)self payload];
    payload2 = [v5 payload];
    v17 = [payload isEqualToData:payload2];

    if ((v17 & 1) == 0)
    {
      goto LABEL_17;
    }

    privateClassification = [(HKElectrocardiogram *)self privateClassification];
    if (privateClassification != [v5 privateClassification])
    {
      goto LABEL_17;
    }

    samplingFrequency = [(HKElectrocardiogram *)self averageHeartRate];
    averageHeartRate = [v5 averageHeartRate];
    v9 = averageHeartRate;
    if (samplingFrequency == averageHeartRate)
    {

LABEL_21:
      symptomsStatus = [(HKElectrocardiogram *)self symptomsStatus];
      v14 = symptomsStatus == [v5 symptomsStatus];
      goto LABEL_18;
    }

    averageHeartRate2 = [v5 averageHeartRate];
    if (averageHeartRate2)
    {
      averageHeartRate3 = [(HKElectrocardiogram *)self averageHeartRate];
      averageHeartRate4 = [v5 averageHeartRate];
      v23 = [averageHeartRate3 isEqual:averageHeartRate4];

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

+ (id)_localizedClassification:(unint64_t)classification withActiveAlgorithmVersion:(int64_t)version
{
  v4 = 0;
  if (classification > 5)
  {
    if (classification <= 7)
    {
      if (classification == 6)
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

    if (classification - 8 >= 2)
    {
      if (classification != 10)
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

  if (classification > 2)
  {
    if (classification == 3)
    {
      v5 = HKHealthKitFrameworkBundle();
      v6 = [v5 localizedStringForKey:@"ELECTROCARDIOGRAM_ATRIAL_FIBRILLATION_CLASSIFICATION_SINUS_RHYTHM_HEART_RATE_50_TO_100" value:&stru_1F05FF230 table:@"Localizable-Cinnamon"];
      v7 = HKConditionallyRedactedHeartRhythmString(v6);
      goto LABEL_23;
    }

    if (classification != 4)
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

  if (classification != 1)
  {
    if (classification != 2)
    {
      goto LABEL_24;
    }

    v5 = HKHealthKitFrameworkBundle();
    v6 = [v5 localizedStringForKey:@"ELECTROCARDIOGRAM_ATRIAL_FIBRILLATION_CLASSIFICATION_INCONCLUSIVE_OTHER" value:&stru_1F05FF230 table:@"Localizable-Cinnamon"];
    v7 = HKConditionallyRedactedHeartRhythmString(v6);
    goto LABEL_23;
  }

  if (version == 2)
  {
    v5 = HKHealthKitFrameworkBundle();
    v6 = [v5 localizedStringForKey:@"ELECTROCARDIOGRAM_ATRIAL_FIBRILLATION_CLASSIFICATION_POOR_RECORDING" value:&stru_1F05FF230 table:@"Localizable-Cinnamon"];
    v7 = HKConditionallyRedactedHeartRhythmString(v6);
    goto LABEL_23;
  }

  if (version == 1)
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

- (id)_localizedClassificationWithActiveAlgorithmVersion:(int64_t)version
{
  v5 = objc_opt_class();
  privateClassification = [(HKElectrocardiogram *)self privateClassification];

  return [v5 _localizedClassification:privateClassification withActiveAlgorithmVersion:version];
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

        integerValue = [*(*(&v15 + 1) + 8 * i) integerValue];
        v9 = 0;
        if (integerValue <= 15)
        {
          if (integerValue > 3)
          {
            if (integerValue == 4)
            {
              v10 = HKHealthKitFrameworkBundle();
              v11 = [v10 localizedStringForKey:@"ELECTROCARDIOGRAM_SYMPTOM_DIZZINESS" value:&stru_1F05FF230 table:@"Localizable-Cinnamon"];
              v12 = HKConditionallyRedactedHeartRhythmString(v11);
            }

            else
            {
              if (integerValue != 8)
              {
                goto LABEL_29;
              }

              v10 = HKHealthKitFrameworkBundle();
              v11 = [v10 localizedStringForKey:@"ELECTROCARDIOGRAM_SYMPTOM_FATIGUE" value:&stru_1F05FF230 table:@"Localizable-Cinnamon"];
              v12 = HKConditionallyRedactedHeartRhythmString(v11);
            }
          }

          else if (integerValue == 1)
          {
            v10 = HKHealthKitFrameworkBundle();
            v11 = [v10 localizedStringForKey:@"ELECTROCARDIOGRAM_SYMPTOM_NO_SYMPTOMS" value:&stru_1F05FF230 table:@"Localizable-Cinnamon"];
            v12 = HKConditionallyRedactedHeartRhythmString(v11);
          }

          else
          {
            if (integerValue != 2)
            {
              goto LABEL_29;
            }

            v10 = HKHealthKitFrameworkBundle();
            v11 = [v10 localizedStringForKey:@"ELECTROCARDIOGRAM_SYMPTOM_CHEST_TIGHTNESS_OR_PAIN" value:&stru_1F05FF230 table:@"Localizable-Cinnamon"];
            v12 = HKConditionallyRedactedHeartRhythmString(v11);
          }
        }

        else if (integerValue <= 127)
        {
          if (integerValue == 16)
          {
            v10 = HKHealthKitFrameworkBundle();
            v11 = [v10 localizedStringForKey:@"ELECTROCARDIOGRAM_SYMPTOM_FAINTING" value:&stru_1F05FF230 table:@"Localizable-Cinnamon"];
            v12 = HKConditionallyRedactedHeartRhythmString(v11);
          }

          else
          {
            if (integerValue != 64)
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
          switch(integerValue)
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
  metadata = [(HKObject *)self metadata];
  v3 = [metadata objectForKeyedSubscript:@"_HKPrivateMetadataKeyElectrocardiogramSymptoms"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)_enumerateDataForLead:(os_log_t)log block:(void *)a4 .cold.1(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "Sample %{public}@ has no measurement frequency", buf, 0xCu);
}

@end