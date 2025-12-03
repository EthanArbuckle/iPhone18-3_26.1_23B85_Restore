@interface HKSampleType
+ (id)_sampleTypeWithCode:(int64_t)code;
+ (id)medicalRecordTypesWithOptions:(unint64_t)options;
- (BOOL)_supportsRelativeDataCalculation;
- (BOOL)_validateStartDate:(double)date endDate:(double)endDate error:(id *)error;
- (BOOL)canAttachFileOfType:(id)type size:(unint64_t)size error:(id *)error;
- (BOOL)hk_validateMetadata:(id)metadata sample:(id)sample error:(id *)error;
- (NSTimeInterval)maximumAllowedDuration;
- (NSTimeInterval)minimumAllowedDuration;
- (id)_earliestAllowedStartDateForSampleOverlappingDate:(id)date;
- (id)_rollingBaselineConfiguration;
- (id)_unitForChangeInCanonicalUnit;
@end

@implementation HKSampleType

- (BOOL)hk_validateMetadata:(id)metadata sample:(id)sample error:(id *)error
{
  metadataCopy = metadata;
  code = [(HKObjectType *)self code];
  if (code == 95)
  {
    if (!metadataCopy || ([metadataCopy objectForKey:@"HKMenstrualCycleStart"], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
    {
      v10 = @"Type %@ is missing a required metadata key (required keys: HKMetadataKeyMenstrualCycleStart)";
      goto LABEL_10;
    }
  }

  else if (code == 125)
  {
    if (!metadataCopy || ([metadataCopy objectForKey:@"HKInsulinDeliveryReason"], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
    {
      v10 = @"Type %@ is missing a required metadata key (required keys: HKMetadataKeyInsulinDeliveryReason)";
LABEL_10:
      [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{v10, self}];
      v12 = 0;
      goto LABEL_11;
    }
  }

  v12 = 1;
LABEL_11:

  return v12;
}

+ (id)medicalRecordTypesWithOptions:(unint64_t)options
{
  optionsCopy = options;
  v25[11] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] arrayWithArray:MEMORY[0x1E695E0F0]];
  if ((optionsCopy & 0x20) != 0)
  {
    if ((optionsCopy & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = MEMORY[0x1E695DF70];
    v24 = +[HKAllergyRecordType allergyRecordType];
    v25[0] = v24;
    v23 = +[HKClinicalNoteRecordType clinicalNoteRecordType];
    v25[1] = v23;
    v22 = +[HKConditionRecordType conditionRecordType];
    v25[2] = v22;
    v21 = +[HKCoverageRecordType coverageRecordType];
    v25[3] = v21;
    v20 = +[HKDiagnosticTestReportType diagnosticTestReportType];
    v25[4] = v20;
    v10 = +[HKDiagnosticTestResultType diagnosticTestResultType];
    v25[5] = v10;
    v11 = +[HKMedicationDispenseRecordType medicationDispenseRecordType];
    v25[6] = v11;
    v12 = +[HKMedicationOrderType medicationOrderType];
    v25[7] = v12;
    v13 = +[HKMedicationRecordType medicationRecordType];
    v25[8] = v13;
    v14 = +[HKProcedureRecordType procedureRecordType];
    v25[9] = v14;
    v15 = +[HKVaccinationRecordType vaccinationRecordType];
    v25[10] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:11];
    v17 = [v9 arrayWithArray:v16];

    v4 = v17;
    if ((optionsCopy & 1) == 0)
    {
LABEL_3:
      if ((optionsCopy & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  v18 = +[HKUnknownRecordType unknownRecordType];
  [v4 addObject:v18];

  if ((optionsCopy & 4) == 0)
  {
LABEL_4:
    if ((optionsCopy & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v19 = +[HKSignedClinicalDataRecordType signedClinicalDataRecordType];
  [v4 addObject:v19];

  if ((optionsCopy & 2) != 0)
  {
LABEL_5:
    v5 = +[HKAccountOwnerType accountOwnerType];
    [v4 addObject:v5];
  }

LABEL_6:
  v6 = [v4 copy];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)_sampleTypeWithCode:(int64_t)code
{
  v3 = [self dataTypeWithCode:code];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSTimeInterval)maximumAllowedDuration
{
  v3 = HKMaximumSampleDurationForType([(HKObjectType *)self code]);
  if (v3 == -1.0)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    identifier = [(HKObjectType *)self identifier];
    [v4 raise:v5 format:{@"Data type %@ is not duration restricted", identifier}];
  }

  return v3;
}

- (NSTimeInterval)minimumAllowedDuration
{
  v3 = HKMinimumSampleDurationForType([(HKObjectType *)self code]);
  if (v3 == -1.0)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    identifier = [(HKObjectType *)self identifier];
    [v4 raise:v5 format:{@"Data type %@ is not duration restricted", identifier}];
  }

  return v3;
}

- (BOOL)_validateStartDate:(double)date endDate:(double)endDate error:(id *)error
{
  if (date == 2.22507386e-308 || endDate == 2.22507386e-308)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Missing start or end time", v17}];
    return 0;
  }

  if (date > endDate)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
    v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:endDate];
    [v8 hk_assignError:error code:3 format:{@"startDate (%@) cannot occur after endDate (%@)", v9, v10}];

    return 0;
  }

  if (!HKProgramSDKAtLeast())
  {
    return 1;
  }

  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  [distantFuture timeIntervalSinceReferenceDate];
  v15 = v14;

  if (v15 > endDate)
  {
    return 1;
  }

  code = [(HKObjectType *)self code];
  result = 1;
  if ((code - 191) >= 3 && code != 109 && code != 257)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Type %@ can not have endDate of NSDate.distantFuture", objc_opt_class()}];
    return 0;
  }

  return result;
}

- (id)_earliestAllowedStartDateForSampleOverlappingDate:(id)date
{
  dateCopy = date;
  if ([(HKSampleType *)self isMaximumDurationRestricted])
  {
    [(HKSampleType *)self maximumAllowedDuration];
    v6 = [dateCopy dateByAddingTimeInterval:-v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_supportsRelativeDataCalculation
{
  _rollingBaselineConfiguration = [(HKSampleType *)self _rollingBaselineConfiguration];
  if (_rollingBaselineConfiguration)
  {
    _unitForChangeInCanonicalUnit = [(HKSampleType *)self _unitForChangeInCanonicalUnit];
    v5 = _unitForChangeInCanonicalUnit != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_rollingBaselineConfiguration
{
  if ([(HKObjectType *)self code]== 256)
  {
    v2 = [[HKRollingBaselineConfiguration alloc] initWithMinimumSampleCount:5 maximumSampleCount:50 maximumWindowDuration:1 options:31536000.0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_unitForChangeInCanonicalUnit
{
  if ([(HKObjectType *)self code]== 256)
  {
    v2 = +[HKUnit _changeInDegreeCelsiusUnit];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)canAttachFileOfType:(id)type size:(unint64_t)size error:(id *)error
{
  typeCopy = type;
  if ([(HKObjectType *)self code]!= 257)
  {
    goto LABEL_9;
  }

  v9 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:@"heic"];
  v10 = [typeCopy conformsToType:v9];

  if (v10)
  {
    goto LABEL_8;
  }

  v11 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:@"img"];
  v12 = [typeCopy conformsToType:v11];

  if (v12)
  {
    goto LABEL_8;
  }

  v13 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:@"jpeg"];
  v14 = [typeCopy conformsToType:v13];

  if (v14)
  {
    goto LABEL_8;
  }

  v15 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:@"pdf"];
  v16 = [typeCopy conformsToType:v15];

  if (v16)
  {
    goto LABEL_8;
  }

  v17 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:@"png"];
  v18 = [typeCopy conformsToType:v17];

  if (v18 || ([MEMORY[0x1E6982C40] typeWithFilenameExtension:@"tiff"], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(typeCopy, "conformsToType:", v19), v19, v20))
  {
LABEL_8:
    v21 = _HKValidateFileSize(size, error);
  }

  else
  {
LABEL_9:
    v22 = [MEMORY[0x1E696ABC0] hk_error:3 format:@"Content Type is not supported"];
    v23 = v22;
    if (v22)
    {
      if (error)
      {
        v24 = v22;
        *error = v23;
      }

      else
      {
        _HKLogDroppedError(v22);
      }
    }

    v21 = 0;
  }

  return v21;
}

@end