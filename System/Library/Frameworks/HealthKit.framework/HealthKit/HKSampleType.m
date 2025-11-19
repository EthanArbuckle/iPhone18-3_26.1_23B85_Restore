@interface HKSampleType
+ (id)_sampleTypeWithCode:(int64_t)a3;
+ (id)medicalRecordTypesWithOptions:(unint64_t)a3;
- (BOOL)_supportsRelativeDataCalculation;
- (BOOL)_validateStartDate:(double)a3 endDate:(double)a4 error:(id *)a5;
- (BOOL)canAttachFileOfType:(id)a3 size:(unint64_t)a4 error:(id *)a5;
- (BOOL)hk_validateMetadata:(id)a3 sample:(id)a4 error:(id *)a5;
- (NSTimeInterval)maximumAllowedDuration;
- (NSTimeInterval)minimumAllowedDuration;
- (id)_earliestAllowedStartDateForSampleOverlappingDate:(id)a3;
- (id)_rollingBaselineConfiguration;
- (id)_unitForChangeInCanonicalUnit;
@end

@implementation HKSampleType

- (BOOL)hk_validateMetadata:(id)a3 sample:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [(HKObjectType *)self code];
  if (v8 == 95)
  {
    if (!v7 || ([v7 objectForKey:@"HKMenstrualCycleStart"], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
    {
      v10 = @"Type %@ is missing a required metadata key (required keys: HKMetadataKeyMenstrualCycleStart)";
      goto LABEL_10;
    }
  }

  else if (v8 == 125)
  {
    if (!v7 || ([v7 objectForKey:@"HKInsulinDeliveryReason"], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
    {
      v10 = @"Type %@ is missing a required metadata key (required keys: HKMetadataKeyInsulinDeliveryReason)";
LABEL_10:
      [MEMORY[0x1E696ABC0] hk_assignError:a5 code:3 format:{v10, self}];
      v12 = 0;
      goto LABEL_11;
    }
  }

  v12 = 1;
LABEL_11:

  return v12;
}

+ (id)medicalRecordTypesWithOptions:(unint64_t)a3
{
  v3 = a3;
  v25[11] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] arrayWithArray:MEMORY[0x1E695E0F0]];
  if ((v3 & 0x20) != 0)
  {
    if ((v3 & 1) == 0)
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
    if ((v3 & 1) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  v18 = +[HKUnknownRecordType unknownRecordType];
  [v4 addObject:v18];

  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v19 = +[HKSignedClinicalDataRecordType signedClinicalDataRecordType];
  [v4 addObject:v19];

  if ((v3 & 2) != 0)
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

+ (id)_sampleTypeWithCode:(int64_t)a3
{
  v3 = [a1 dataTypeWithCode:a3];
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
    v6 = [(HKObjectType *)self identifier];
    [v4 raise:v5 format:{@"Data type %@ is not duration restricted", v6}];
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
    v6 = [(HKObjectType *)self identifier];
    [v4 raise:v5 format:{@"Data type %@ is not duration restricted", v6}];
  }

  return v3;
}

- (BOOL)_validateStartDate:(double)a3 endDate:(double)a4 error:(id *)a5
{
  if (a3 == 2.22507386e-308 || a4 == 2.22507386e-308)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a5 code:3 format:{@"Missing start or end time", v17}];
    return 0;
  }

  if (a3 > a4)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
    v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a4];
    [v8 hk_assignError:a5 code:3 format:{@"startDate (%@) cannot occur after endDate (%@)", v9, v10}];

    return 0;
  }

  if (!HKProgramSDKAtLeast())
  {
    return 1;
  }

  v13 = [MEMORY[0x1E695DF00] distantFuture];
  [v13 timeIntervalSinceReferenceDate];
  v15 = v14;

  if (v15 > a4)
  {
    return 1;
  }

  v16 = [(HKObjectType *)self code];
  result = 1;
  if ((v16 - 191) >= 3 && v16 != 109 && v16 != 257)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a5 code:3 format:{@"Type %@ can not have endDate of NSDate.distantFuture", objc_opt_class()}];
    return 0;
  }

  return result;
}

- (id)_earliestAllowedStartDateForSampleOverlappingDate:(id)a3
{
  v4 = a3;
  if ([(HKSampleType *)self isMaximumDurationRestricted])
  {
    [(HKSampleType *)self maximumAllowedDuration];
    v6 = [v4 dateByAddingTimeInterval:-v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_supportsRelativeDataCalculation
{
  v3 = [(HKSampleType *)self _rollingBaselineConfiguration];
  if (v3)
  {
    v4 = [(HKSampleType *)self _unitForChangeInCanonicalUnit];
    v5 = v4 != 0;
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

- (BOOL)canAttachFileOfType:(id)a3 size:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  if ([(HKObjectType *)self code]!= 257)
  {
    goto LABEL_9;
  }

  v9 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:@"heic"];
  v10 = [v8 conformsToType:v9];

  if (v10)
  {
    goto LABEL_8;
  }

  v11 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:@"img"];
  v12 = [v8 conformsToType:v11];

  if (v12)
  {
    goto LABEL_8;
  }

  v13 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:@"jpeg"];
  v14 = [v8 conformsToType:v13];

  if (v14)
  {
    goto LABEL_8;
  }

  v15 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:@"pdf"];
  v16 = [v8 conformsToType:v15];

  if (v16)
  {
    goto LABEL_8;
  }

  v17 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:@"png"];
  v18 = [v8 conformsToType:v17];

  if (v18 || ([MEMORY[0x1E6982C40] typeWithFilenameExtension:@"tiff"], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v8, "conformsToType:", v19), v19, v20))
  {
LABEL_8:
    v21 = _HKValidateFileSize(a4, a5);
  }

  else
  {
LABEL_9:
    v22 = [MEMORY[0x1E696ABC0] hk_error:3 format:@"Content Type is not supported"];
    v23 = v22;
    if (v22)
    {
      if (a5)
      {
        v24 = v22;
        *a5 = v23;
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