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
  v4 = [(HDClinicalPostExtractionOperation *)self extractionResult];
  v5 = [v4 allUnits];

  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v17 + 1) + 8 * v9) medicalRecord];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [v11 value];
          if (![v12 collectionType] || (objc_msgSend(v12, "inspectableValue"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "valueType"), v13, v14 == &dword_4 + 2))
          {
            if (v12)
            {
              v15 = [v11 referenceRanges];
              v16 = [v12 referenceRangeStatusWithRanges:v15];
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
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }
}

@end