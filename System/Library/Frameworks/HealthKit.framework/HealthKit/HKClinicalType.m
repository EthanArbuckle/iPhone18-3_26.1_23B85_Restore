@interface HKClinicalType
+ (id)allTypes;
+ (id)sampleTypesForResourceType:(id)a3 error:(id *)a4;
- (HKClinicalType)initWithIdentifier:(id)a3;
@end

@implementation HKClinicalType

- (HKClinicalType)initWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [HKObjectType clinicalTypeForIdentifier:v4];

  if (!v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid %@ identifier %@", objc_opt_class(), v4}];
  }

  return v5;
}

+ (id)sampleTypesForResourceType:(id)a3 error:(id *)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 isEqualToString:@"AllergyIntolerance"])
  {
    v6 = +[HKClinicalType allergyRecordType];
    v21[0] = v6;
    v7 = MEMORY[0x1E695DEC8];
    v8 = v21;
LABEL_18:
    v9 = [v7 arrayWithObjects:v8 count:1];
LABEL_19:

    goto LABEL_20;
  }

  if ([v5 isEqualToString:@"Condition"])
  {
    v6 = +[HKClinicalType conditionRecordType];
    v20 = v6;
    v7 = MEMORY[0x1E695DEC8];
    v8 = &v20;
    goto LABEL_18;
  }

  if ([v5 isEqualToString:@"Coverage"])
  {
    v6 = +[HKClinicalType coverageRecordType];
    v19 = v6;
    v7 = MEMORY[0x1E695DEC8];
    v8 = &v19;
    goto LABEL_18;
  }

  if ([v5 isEqualToString:@"DiagnosticReport"])
  {
    v6 = +[HKClinicalType clinicalNoteRecordType];
    v18 = v6;
    v7 = MEMORY[0x1E695DEC8];
    v8 = &v18;
    goto LABEL_18;
  }

  if ([v5 isEqualToString:@"DocumentReference"])
  {
    v6 = +[HKClinicalType clinicalNoteRecordType];
    v17 = v6;
    v7 = MEMORY[0x1E695DEC8];
    v8 = &v17;
    goto LABEL_18;
  }

  if ([v5 isEqualToString:@"Immunization"])
  {
    v6 = +[HKClinicalType immunizationRecordType];
    v16 = v6;
    v7 = MEMORY[0x1E695DEC8];
    v8 = &v16;
    goto LABEL_18;
  }

  if (([v5 isEqualToString:@"MedicationDispense"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"MedicationOrder") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"MedicationRequest") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"MedicationStatement"))
  {
    v6 = +[HKClinicalType medicationRecordType];
    v15 = v6;
    v7 = MEMORY[0x1E695DEC8];
    v8 = &v15;
    goto LABEL_18;
  }

  if ([v5 isEqualToString:@"Observation"])
  {
    v6 = +[HKClinicalType labResultRecordType];
    v14[0] = v6;
    v12 = +[HKClinicalType vitalSignRecordType];
    v14[1] = v12;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];

    goto LABEL_19;
  }

  if ([v5 isEqualToString:@"Patient"])
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  else
  {
    if ([v5 isEqualToString:@"Procedure"])
    {
      v6 = +[HKClinicalType procedureRecordType];
      v13 = v6;
      v7 = MEMORY[0x1E695DEC8];
      v8 = &v13;
      goto LABEL_18;
    }

    [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 format:{@"There is no clinical record type known for resourceType %@", v5}];
    v9 = 0;
  }

LABEL_20:

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)allTypes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__HKClinicalType_allTypes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (allTypes_onceToken != -1)
  {
    dispatch_once(&allTypes_onceToken, block);
  }

  v2 = allTypes_allTypes;

  return v2;
}

void __26__HKClinicalType_allTypes__block_invoke(uint64_t a1)
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) clinicalTypeForIdentifier:@"HKClinicalTypeIdentifierAllergyRecord"];
  v3 = [*(a1 + 32) clinicalTypeForIdentifier:{@"HKClinicalTypeIdentifierConditionRecord", v2}];
  v14[1] = v3;
  v4 = [*(a1 + 32) clinicalTypeForIdentifier:@"HKClinicalTypeIdentifierImmunizationRecord"];
  v14[2] = v4;
  v5 = [*(a1 + 32) clinicalTypeForIdentifier:@"HKClinicalTypeIdentifierLabResultRecord"];
  v14[3] = v5;
  v6 = [*(a1 + 32) clinicalTypeForIdentifier:@"HKClinicalTypeIdentifierMedicationRecord"];
  v14[4] = v6;
  v7 = [*(a1 + 32) clinicalTypeForIdentifier:@"HKClinicalTypeIdentifierProcedureRecord"];
  v14[5] = v7;
  v8 = [*(a1 + 32) clinicalTypeForIdentifier:@"HKClinicalTypeIdentifierVitalSignRecord"];
  v14[6] = v8;
  v9 = [*(a1 + 32) clinicalTypeForIdentifier:@"HKClinicalTypeIdentifierCoverageRecord"];
  v14[7] = v9;
  v10 = [*(a1 + 32) clinicalTypeForIdentifier:@"HKClinicalTypeIdentifierClinicalNoteRecord"];
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];
  v12 = allTypes_allTypes;
  allTypes_allTypes = v11;

  v13 = *MEMORY[0x1E69E9840];
}

@end