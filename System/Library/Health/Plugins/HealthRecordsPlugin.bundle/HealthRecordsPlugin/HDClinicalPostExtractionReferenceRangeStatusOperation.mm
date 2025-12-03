@interface HDClinicalPostExtractionReferenceRangeStatusOperation
- (void)main;
@end

@implementation HDClinicalPostExtractionReferenceRangeStatusOperation

- (void)main
{
  _HKInitializeLogging();
  v3 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A3390(v3, self);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  extractionResult = [(HDClinicalPostExtractionOperation *)self extractionResult];
  allUnits = [extractionResult allUnits];

  v6 = [allUnits countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(allUnits);
        }

        medicalRecord = [*(*(&v17 + 1) + 8 * v9) medicalRecord];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = medicalRecord;
          value = [v11 value];
          if (![value collectionType] || (objc_msgSend(value, "inspectableValue"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "valueType"), v13, v14 == &dword_4 + 2))
          {
            if (value)
            {
              referenceRanges = [v11 referenceRanges];
              v16 = [value referenceRangeStatusWithRanges:referenceRanges];
            }

            else
            {
              v16 = 0;
            }

            [v11 _setReferenceRangeStatus:v16];
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [allUnits countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }
}

@end