@interface HKQueryDescriptor
+ (HKQueryDescriptor)queryDescriptorWithSampleType:(id)type;
+ (HKQueryDescriptor)queryDescriptorWithSampleType:(id)type predicate:(id)predicate;
+ (id)allergiesDescriptionsWithPredicate:(id)predicate;
+ (id)clinicalNotesDescriptionsWithPredicate:(id)predicate;
+ (id)conditionsDescriptionsWithPredicate:(id)predicate;
+ (id)coverageDescriptionsWithPredicate:(id)predicate;
+ (id)immunizationsDescriptionsWithPredicate:(id)predicate;
+ (id)labsDescriptionsWithPredicate:(id)predicate;
+ (id)medicalRecordDescriptionsWithPredicate:(id)predicate futureMigrationsEnabled:(BOOL)enabled;
+ (id)medicationsDescriptionsWithPredicate:(id)predicate;
+ (id)proceduresDescriptionsWithPredicate:(id)predicate;
+ (id)vitalsDescriptionsWithPredicate:(id)predicate;
- (BOOL)isEqual:(id)equal;
- (HKQueryDescriptor)init;
- (HKQueryDescriptor)initWithCoder:(id)coder;
- (HKQueryDescriptor)initWithSampleType:(HKSampleType *)sampleType predicate:(NSPredicate *)predicate;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKQueryDescriptor

+ (HKQueryDescriptor)queryDescriptorWithSampleType:(id)type
{
  typeCopy = type;
  v5 = [[self alloc] initWithSampleType:typeCopy predicate:0];

  return v5;
}

+ (HKQueryDescriptor)queryDescriptorWithSampleType:(id)type predicate:(id)predicate
{
  predicateCopy = predicate;
  typeCopy = type;
  v8 = [[self alloc] initWithSampleType:typeCopy predicate:predicateCopy];

  return v8;
}

- (HKQueryDescriptor)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKQueryDescriptor)initWithSampleType:(HKSampleType *)sampleType predicate:(NSPredicate *)predicate
{
  v6 = sampleType;
  v7 = predicate;
  v17.receiver = self;
  v17.super_class = HKQueryDescriptor;
  v8 = [(HKQueryDescriptor *)&v17 init];
  if (v8)
  {
    v9 = [(HKSampleType *)v6 copy];
    v10 = v8->_sampleType;
    v8->_sampleType = v9;

    v11 = [(NSPredicate *)v7 copy];
    v12 = v8->_predicate;
    v8->_predicate = v11;

    v13 = [MEMORY[0x1E695DFD8] setWithObject:v8->_sampleType];
    v14 = [(NSPredicate *)v7 hk_filterRepresentationForDataTypes:v13];
    filter = v8->_filter;
    v8->_filter = v14;
  }

  return v8;
}

- (unint64_t)hash
{
  sampleType = [(HKQueryDescriptor *)self sampleType];
  v4 = [sampleType hash];
  _filter = [(HKQueryDescriptor *)self _filter];
  v6 = [_filter hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      sampleType = [(HKQueryDescriptor *)self sampleType];
      sampleType2 = [(HKQueryDescriptor *)v5 sampleType];
      v8 = sampleType2;
      if (sampleType == sampleType2)
      {
      }

      else
      {
        sampleType3 = [(HKQueryDescriptor *)v5 sampleType];
        if (!sampleType3)
        {
          goto LABEL_14;
        }

        v10 = sampleType3;
        sampleType4 = [(HKQueryDescriptor *)self sampleType];
        sampleType5 = [(HKQueryDescriptor *)v5 sampleType];
        v13 = [sampleType4 isEqual:sampleType5];

        if (!v13)
        {
          goto LABEL_15;
        }
      }

      sampleType = [(HKQueryDescriptor *)self _filter];
      _filter = [(HKQueryDescriptor *)v5 _filter];
      v8 = _filter;
      if (sampleType == _filter)
      {

LABEL_17:
        v14 = 1;
        goto LABEL_18;
      }

      _filter2 = [(HKQueryDescriptor *)v5 _filter];
      if (_filter2)
      {
        v17 = _filter2;
        _filter3 = [(HKQueryDescriptor *)self _filter];
        _filter4 = [(HKQueryDescriptor *)v5 _filter];
        v20 = [_filter3 isEqual:_filter4];

        if (v20)
        {
          goto LABEL_17;
        }

LABEL_15:
        v14 = 0;
LABEL_18:

        goto LABEL_19;
      }

LABEL_14:

      goto LABEL_15;
    }

    v14 = 0;
  }

LABEL_19:

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  sampleType = [(HKQueryDescriptor *)self sampleType];
  predicate = [(HKQueryDescriptor *)self predicate];
  v7 = [v3 stringWithFormat:@"<%@: %@, Predicate: %@>", v4, sampleType, predicate];

  return v7;
}

- (HKQueryDescriptor)initWithCoder:(id)coder
{
  v19[4] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SampleType"];
  sampleType = self->_sampleType;
  self->_sampleType = v5;

  v7 = [(HKQueryDescriptor *)self initWithSampleType:self->_sampleType predicate:0];
  if (v7)
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Filter"];
    filter = v7->_filter;
    v7->_filter = v8;

    if (!v7->_filter)
    {
      v10 = MEMORY[0x1E695DFD8];
      v19[0] = objc_opt_class();
      v19[1] = objc_opt_class();
      v19[2] = objc_opt_class();
      v19[3] = objc_opt_class();
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
      v12 = [v10 setWithArray:v11];
      v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"Predicate"];

      if (v13)
      {
        v14 = [MEMORY[0x1E695DFD8] setWithObject:v7->_sampleType];
        v15 = [v13 hk_filterRepresentationForDataTypes:v14];
        v16 = v7->_filter;
        v7->_filter = v15;
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sampleType = [(HKQueryDescriptor *)self sampleType];
  [coderCopy encodeObject:sampleType forKey:@"SampleType"];

  _filter = [(HKQueryDescriptor *)self _filter];
  [coderCopy encodeObject:_filter forKey:@"Filter"];
}

+ (id)medicalRecordDescriptionsWithPredicate:(id)predicate futureMigrationsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  predicateCopy = predicate;
  if (enabledCopy)
  {
    v6 = 8;
  }

  else
  {
    v6 = 0;
  }

  v7 = [HKSampleType medicalRecordTypesWithOptions:v6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __99__HKQueryDescriptor_HealthRecords__medicalRecordDescriptionsWithPredicate_futureMigrationsEnabled___block_invoke;
  v11[3] = &unk_1E73847E8;
  v12 = predicateCopy;
  v8 = predicateCopy;
  v9 = [v7 hk_map:v11];

  return v9;
}

+ (id)allergiesDescriptionsWithPredicate:(id)predicate
{
  v9[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v4 = +[HKAllergyRecordType allergyRecordType];
  v5 = [HKQueryDescriptor queryDescriptorWithSampleType:v4 predicate:predicateCopy];

  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)clinicalNotesDescriptionsWithPredicate:(id)predicate
{
  v9[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v4 = +[HKClinicalNoteRecordType clinicalNoteRecordType];
  v5 = [HKQueryDescriptor queryDescriptorWithSampleType:v4 predicate:predicateCopy];

  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)conditionsDescriptionsWithPredicate:(id)predicate
{
  v9[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v4 = +[HKConditionRecordType conditionRecordType];
  v5 = [HKQueryDescriptor queryDescriptorWithSampleType:v4 predicate:predicateCopy];

  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)coverageDescriptionsWithPredicate:(id)predicate
{
  v9[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v4 = +[HKCoverageRecordType coverageRecordType];
  v5 = [HKQueryDescriptor queryDescriptorWithSampleType:v4 predicate:predicateCopy];

  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)immunizationsDescriptionsWithPredicate:(id)predicate
{
  v9[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v4 = +[HKVaccinationRecordType vaccinationRecordType];
  v5 = [HKQueryDescriptor queryDescriptorWithSampleType:v4 predicate:predicateCopy];

  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)labsDescriptionsWithPredicate:(id)predicate
{
  v17[2] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v4 = [HKQuery predicateForDiagnosticTestResultCategory:@"laboratory"];
  v5 = v4;
  if (predicateCopy)
  {
    v6 = MEMORY[0x1E696AB28];
    v17[0] = v4;
    v17[1] = predicateCopy;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v8 = [v6 andPredicateWithSubpredicates:v7];

    v5 = v8;
  }

  v9 = +[HKDiagnosticTestReportType diagnosticTestReportType];
  v10 = [HKQueryDescriptor queryDescriptorWithSampleType:v9 predicate:predicateCopy];
  v16[0] = v10;
  v11 = +[HKDiagnosticTestResultType diagnosticTestResultType];
  v12 = [HKQueryDescriptor queryDescriptorWithSampleType:v11 predicate:v5];
  v16[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)medicationsDescriptionsWithPredicate:(id)predicate
{
  v13[3] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v4 = +[HKMedicationDispenseRecordType medicationDispenseRecordType];
  v5 = [HKQueryDescriptor queryDescriptorWithSampleType:v4 predicate:predicateCopy];
  v6 = +[HKMedicationOrderType medicationOrderType];
  v7 = [HKQueryDescriptor queryDescriptorWithSampleType:v6 predicate:predicateCopy];
  v13[1] = v7;
  v8 = +[HKMedicationRecordType medicationRecordType];
  v9 = [HKQueryDescriptor queryDescriptorWithSampleType:v8 predicate:predicateCopy];

  v13[2] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)proceduresDescriptionsWithPredicate:(id)predicate
{
  v9[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v4 = +[HKProcedureRecordType procedureRecordType];
  v5 = [HKQueryDescriptor queryDescriptorWithSampleType:v4 predicate:predicateCopy];

  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)vitalsDescriptionsWithPredicate:(id)predicate
{
  v15[2] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v4 = [HKQuery predicateForDiagnosticTestResultCategory:@"vital-signs"];
  v5 = v4;
  if (predicateCopy)
  {
    v6 = MEMORY[0x1E696AB28];
    v15[0] = v4;
    v15[1] = predicateCopy;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v8 = [v6 andPredicateWithSubpredicates:v7];

    v5 = v8;
  }

  v9 = +[HKDiagnosticTestResultType diagnosticTestResultType];
  v10 = [HKQueryDescriptor queryDescriptorWithSampleType:v9 predicate:v5];
  v14 = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end