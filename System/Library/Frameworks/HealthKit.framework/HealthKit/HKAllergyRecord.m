@interface HKAllergyRecord
+ (id)_newAllergyRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 allergyCodingCollection:(id)a15 onsetDate:(id)a16 asserter:(id)a17 reactions:(id)a18 criticalityCoding:(id)a19 lastOccurrenceDate:(id)a20 recordedDate:(id)a21 verificationStatusCoding:(id)a22 clinicalStatusCoding:(id)a23 allergyTypeCoding:(id)a24 categoryCoding:(id)a25 config:(id)a26;
+ (id)allergyRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 country:(id)a12 state:(unint64_t)a13 allergyCodingCollection:(id)a14 onsetDate:(id)a15 asserter:(id)a16 reactions:(id)a17 criticalityCoding:(id)a18 lastOccurrenceDate:(id)a19 recordedDate:(id)a20 verificationStatusCoding:(id)a21 clinicalStatusCoding:(id)a22 allergyTypeCoding:(id)a23 categoryCoding:(id)a24;
+ (id)cachedConceptRelationshipKeyPaths;
+ (id)defaultDisplayString;
+ (id)indexableConceptKeyPaths;
- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
- (BOOL)isEquivalent:(id)a3;
- (HKAllergyRecord)init;
- (HKAllergyRecord)initWithCoder:(id)a3;
- (HKConcept)allergy;
- (HKConcept)allergyType;
- (HKConcept)category;
- (HKConcept)clinicalStatus;
- (HKConcept)criticality;
- (HKConcept)verificationStatus;
- (NSString)description;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)allergyTypeCodingCollection;
- (id)categoryCodingCollection;
- (id)clinicalStatusCodingCollection;
- (id)codingsForKeyPath:(id)a3 error:(id *)a4;
- (id)criticalityCodingCollection;
- (id)medicalRecordCodings;
- (id)verificationStatusCodingCollection;
- (void)_setAllergy:(id)a3;
- (void)_setAllergyCodingCollection:(id)a3;
- (void)_setAllergyType:(id)a3;
- (void)_setAllergyTypeCoding:(id)a3;
- (void)_setAsserter:(id)a3;
- (void)_setCategory:(id)a3;
- (void)_setCategoryCoding:(id)a3;
- (void)_setClinicalStatus:(id)a3;
- (void)_setClinicalStatusCoding:(id)a3;
- (void)_setCriticality:(id)a3;
- (void)_setCriticalityCoding:(id)a3;
- (void)_setLastOccurrenceDate:(id)a3;
- (void)_setOnsetDate:(id)a3;
- (void)_setReactions:(id)a3;
- (void)_setRecordedDate:(id)a3;
- (void)_setVerificationStatus:(id)a3;
- (void)_setVerificationStatusCoding:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKAllergyRecord

- (id)medicalRecordCodings
{
  v2 = [(HKAllergyRecord *)self allergyCodingCollection];
  v3 = [v2 codings];

  return v3;
}

+ (id)defaultDisplayString
{
  v2 = HKHealthKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"UNSPECIFIED_ALLERGY" value:&stru_1F05FF230 table:@"Localizable-Clinical-Health-Records"];

  return v3;
}

+ (id)allergyRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 country:(id)a12 state:(unint64_t)a13 allergyCodingCollection:(id)a14 onsetDate:(id)a15 asserter:(id)a16 reactions:(id)a17 criticalityCoding:(id)a18 lastOccurrenceDate:(id)a19 recordedDate:(id)a20 verificationStatusCoding:(id)a21 clinicalStatusCoding:(id)a22 allergyTypeCoding:(id)a23 categoryCoding:(id)a24
{
  v49 = a5;
  v59 = a3;
  v58 = a4;
  v28 = a6;
  v57 = a7;
  v51 = a8;
  v55 = a10;
  v56 = a11;
  v54 = a12;
  v53 = a14;
  v60 = a15;
  v52 = a16;
  v48 = a17;
  v29 = a18;
  v30 = a19;
  v31 = a20;
  v47 = a21;
  v46 = a22;
  v32 = a23;
  v45 = a24;
  v33 = @"modifiedDate";
  v34 = v28;
  v35 = v34;
  if (v30)
  {
    v36 = @"lastOccurrenceDate";

    v37 = v30;
    v38 = [v30 dateForUTC];

    v33 = v36;
  }

  else
  {
    v37 = 0;
    v38 = v34;
  }

  if (v60)
  {
    v39 = @"onsetDate";

    v40 = [v60 dateForUTC];

    v38 = v40;
    v33 = v39;
  }

  if (v31)
  {
    v41 = @"recordedDate";

    v42 = [v31 dateForUTC];

    v38 = v42;
    v33 = v41;
  }

  v43 = [HKSemanticDate semanticDateWithKeyPath:v33 date:v38];
  v50 = [HKAllergyRecord allergyRecordWithType:v59 note:v58 enteredInError:v49 modifiedDate:v35 originIdentifier:v57 locale:v51 extractionVersion:a9 device:v55 metadata:v56 sortDate:v43 country:v54 state:a13 allergyCodingCollection:v53 onsetDate:v60 asserter:v52 reactions:v48 criticalityCoding:v29 lastOccurrenceDate:v37 recordedDate:v31 verificationStatusCoding:v47 clinicalStatusCoding:v46 allergyTypeCoding:v32 categoryCoding:v45];

  return v50;
}

+ (id)indexableConceptKeyPaths
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___HKAllergyRecord;
  v2 = objc_msgSendSuper2(&v6, sel_indexableConceptKeyPaths);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"allergy"];
  v4 = [HKAllergyReaction indexableKeyPathsWithPrefix:@"reactions"];
  [v3 addObjectsFromArray:v4];

  [v3 addObject:@"criticality"];
  [v3 addObject:@"verificationStatus"];
  [v3 addObject:@"clinicalStatus"];
  [v3 addObject:@"allergyType"];
  [v3 addObject:@"category"];

  return v3;
}

+ (id)cachedConceptRelationshipKeyPaths
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___HKAllergyRecord;
  v2 = objc_msgSendSuper2(&v4, sel_cachedConceptRelationshipKeyPaths);

  return v2;
}

- (id)codingsForKeyPath:(id)a3 error:(id *)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [HKConceptIndexUtilities firstComponentForKeyPath:v6 error:a4];
  v8 = v7;
  if (!v7)
  {
    v11 = 0;
    goto LABEL_28;
  }

  if ([v7 isEqualToString:@"allergy"])
  {
    v9 = [(HKAllergyRecord *)self allergyCodingCollection];
    v10 = [HKIndexableObject indexableObjectWithObject:v9];
    v32[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];

LABEL_4:
    goto LABEL_28;
  }

  if ([v8 isEqualToString:@"reactions"])
  {
    v12 = [(HKAllergyRecord *)self reactions];

    if (v12)
    {
      v9 = [HKConceptIndexUtilities keyPathRemovingFirstComponentFromKeyPath:v6 error:a4];
      if (v9)
      {
        v13 = [(HKAllergyRecord *)self reactions];
        v11 = [v13 codingsForKeyPath:v9 error:a4];
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_4;
    }

    goto LABEL_27;
  }

  if ([v8 isEqualToString:@"criticality"])
  {
    v14 = [(HKAllergyRecord *)self criticalityCoding];

    if (v14)
    {
      v15 = [(HKAllergyRecord *)self criticalityCoding];
      v16 = [HKMedicalCodingCollection collectionWithCoding:v15];
      v17 = [HKIndexableObject indexableObjectWithObject:v16];
      v31 = v17;
      v18 = MEMORY[0x1E695DEC8];
      v19 = &v31;
LABEL_26:
      v11 = [v18 arrayWithObjects:v19 count:1];

      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if ([v8 isEqualToString:@"verificationStatus"])
  {
    v20 = [(HKAllergyRecord *)self verificationStatusCoding];

    if (v20)
    {
      v15 = [(HKAllergyRecord *)self verificationStatusCoding];
      v16 = [HKMedicalCodingCollection collectionWithCoding:v15];
      v17 = [HKIndexableObject indexableObjectWithObject:v16];
      v30 = v17;
      v18 = MEMORY[0x1E695DEC8];
      v19 = &v30;
      goto LABEL_26;
    }

LABEL_27:
    v11 = MEMORY[0x1E695E0F0];
    goto LABEL_28;
  }

  if ([v8 isEqualToString:@"clinicalStatus"])
  {
    v21 = [(HKAllergyRecord *)self clinicalStatusCoding];

    if (v21)
    {
      v15 = [(HKAllergyRecord *)self clinicalStatusCoding];
      v16 = [HKMedicalCodingCollection collectionWithCoding:v15];
      v17 = [HKIndexableObject indexableObjectWithObject:v16];
      v29 = v17;
      v18 = MEMORY[0x1E695DEC8];
      v19 = &v29;
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if ([v8 isEqualToString:@"allergyType"])
  {
    v22 = [(HKAllergyRecord *)self allergyTypeCoding];

    if (v22)
    {
      v15 = [(HKAllergyRecord *)self allergyTypeCoding];
      v16 = [HKMedicalCodingCollection collectionWithCoding:v15];
      v17 = [HKIndexableObject indexableObjectWithObject:v16];
      v28 = v17;
      v18 = MEMORY[0x1E695DEC8];
      v19 = &v28;
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if ([v8 isEqualToString:@"category"])
  {
    v23 = [(HKAllergyRecord *)self categoryCoding];

    if (v23)
    {
      v15 = [(HKAllergyRecord *)self categoryCoding];
      v16 = [HKMedicalCodingCollection collectionWithCoding:v15];
      v17 = [HKIndexableObject indexableObjectWithObject:v16];
      v27 = v17;
      v18 = MEMORY[0x1E695DEC8];
      v19 = &v27;
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v26.receiver = self;
  v26.super_class = HKAllergyRecord;
  v11 = [(HKMedicalRecord *)&v26 codingsForKeyPath:v6 error:a4];
LABEL_28:

  v24 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [HKConceptIndexUtilities firstComponentForKeyPath:v9 error:a5];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_28;
  }

  if ([v10 isEqualToString:@"allergy"])
  {
    if (HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 1, v9, a5))
    {
      v12 = [v8 firstObject];
      v13 = [v12 object];
      [(HKAllergyRecord *)self _setAllergy:v13];
LABEL_5:

      v14 = 1;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (![v11 isEqualToString:@"reactions"])
  {
    if ([v11 isEqualToString:@"criticality"])
    {
      v18 = [v8 count];
      v19 = [(HKAllergyRecord *)self criticalityCoding];
      v20 = HKIndexableObjectCheckCardinalityForIndexRestore(v18, v19 != 0, v9, a5);

      if (v20)
      {
        v12 = [v8 firstObject];
        v13 = [v12 object];
        [(HKAllergyRecord *)self _setCriticality:v13];
        goto LABEL_5;
      }
    }

    else if ([v11 isEqualToString:@"verificationStatus"])
    {
      v21 = [v8 count];
      v22 = [(HKAllergyRecord *)self verificationStatusCoding];
      v23 = HKIndexableObjectCheckCardinalityForIndexRestore(v21, v22 != 0, v9, a5);

      if (v23)
      {
        v12 = [v8 firstObject];
        v13 = [v12 object];
        [(HKAllergyRecord *)self _setVerificationStatus:v13];
        goto LABEL_5;
      }
    }

    else if ([v11 isEqualToString:@"clinicalStatus"])
    {
      v24 = [v8 count];
      v25 = [(HKAllergyRecord *)self clinicalStatusCoding];
      v26 = HKIndexableObjectCheckCardinalityForIndexRestore(v24, v25 != 0, v9, a5);

      if (v26)
      {
        v12 = [v8 firstObject];
        v13 = [v12 object];
        [(HKAllergyRecord *)self _setClinicalStatus:v13];
        goto LABEL_5;
      }
    }

    else if ([v11 isEqualToString:@"allergyType"])
    {
      v27 = [v8 count];
      v28 = [(HKAllergyRecord *)self allergyTypeCoding];
      v29 = HKIndexableObjectCheckCardinalityForIndexRestore(v27, v28 != 0, v9, a5);

      if (v29)
      {
        v12 = [v8 firstObject];
        v13 = [v12 object];
        [(HKAllergyRecord *)self _setAllergyType:v13];
        goto LABEL_5;
      }
    }

    else
    {
      if (![v11 isEqualToString:@"category"])
      {
        v34.receiver = self;
        v34.super_class = HKAllergyRecord;
        v14 = [(HKMedicalRecord *)&v34 applyConcepts:v8 forKeyPath:v9 error:a5];
        goto LABEL_29;
      }

      v30 = [v8 count];
      v31 = [(HKAllergyRecord *)self categoryCoding];
      v32 = HKIndexableObjectCheckCardinalityForIndexRestore(v30, v31 != 0, v9, a5);

      if (v32)
      {
        v12 = [v8 firstObject];
        v13 = [v12 object];
        [(HKAllergyRecord *)self _setCategory:v13];
        goto LABEL_5;
      }
    }

LABEL_28:
    v14 = 0;
    goto LABEL_29;
  }

  v15 = [HKConceptIndexUtilities keyPathRemovingFirstComponentFromKeyPath:v9 error:a5];
  if (v15)
  {
    v16 = [(HKAllergyRecord *)self reactions];

    if (v16)
    {
      v17 = [(HKAllergyRecord *)self reactions];
      v14 = [v17 applyConcepts:v8 forKeyPath:v15 error:a5];
    }

    else
    {
      v14 = HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 0, v9, a5);
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_29:
  return v14;
}

+ (id)_newAllergyRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 allergyCodingCollection:(id)a15 onsetDate:(id)a16 asserter:(id)a17 reactions:(id)a18 criticalityCoding:(id)a19 lastOccurrenceDate:(id)a20 recordedDate:(id)a21 verificationStatusCoding:(id)a22 clinicalStatusCoding:(id)a23 allergyTypeCoding:(id)a24 categoryCoding:(id)a25 config:(id)a26
{
  v65 = a5;
  v67 = a15;
  v26 = a16;
  v49 = a17;
  v51 = a18;
  v53 = a19;
  v55 = a20;
  v57 = a21;
  v59 = a22;
  v27 = a23;
  v28 = a24;
  v29 = a25;
  v30 = a26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __348__HKAllergyRecord__newAllergyRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_allergyCodingCollection_onsetDate_asserter_reactions_criticalityCoding_lastOccurrenceDate_recordedDate_verificationStatusCoding_clinicalStatusCoding_allergyTypeCoding_categoryCoding_config___block_invoke;
  aBlock[3] = &unk_1E7385128;
  v71 = v67;
  v72 = v26;
  v73 = v49;
  v74 = v51;
  v75 = v53;
  v76 = v55;
  v77 = v57;
  v78 = v59;
  v79 = v27;
  v80 = v28;
  v81 = v29;
  v82 = v30;
  v64 = v30;
  v63 = v29;
  v62 = v28;
  v61 = v27;
  v60 = v59;
  v58 = v57;
  v56 = v55;
  v54 = v53;
  v52 = v51;
  v50 = v49;
  v48 = v26;
  v68 = v67;
  v31 = a13;
  v32 = a12;
  v33 = a11;
  v34 = a10;
  v35 = a8;
  v36 = a7;
  v37 = a6;
  v38 = a4;
  v39 = a3;
  v40 = _Block_copy(aBlock);
  v69.receiver = a1;
  v69.super_class = &OBJC_METACLASS___HKAllergyRecord;
  v66 = objc_msgSendSuper2(&v69, sel__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config_, v39, v38, v65, v37, v36, v35, a9, v34, v33, v32, v31, a14, v40);

  return v66;
}

void __348__HKAllergyRecord__newAllergyRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_allergyCodingCollection_onsetDate_asserter_reactions_criticalityCoding_lastOccurrenceDate_recordedDate_verificationStatusCoding_clinicalStatusCoding_allergyTypeCoding_categoryCoding_config___block_invoke(uint64_t a1, void *a2)
{
  v26 = a2;
  v3 = [*(a1 + 32) copy];
  v4 = v26[22];
  v26[22] = v3;

  v5 = [*(a1 + 40) copy];
  v6 = v26[23];
  v26[23] = v5;

  v7 = [*(a1 + 48) copy];
  v8 = v26[24];
  v26[24] = v7;

  v9 = [*(a1 + 56) copy];
  v10 = v26[25];
  v26[25] = v9;

  v11 = [*(a1 + 64) copy];
  v12 = v26[26];
  v26[26] = v11;

  v13 = [*(a1 + 72) copy];
  v14 = v26[27];
  v26[27] = v13;

  v15 = [*(a1 + 80) copy];
  v16 = v26[28];
  v26[28] = v15;

  v17 = [*(a1 + 88) copy];
  v18 = v26[29];
  v26[29] = v17;

  v19 = [*(a1 + 96) copy];
  v20 = v26[30];
  v26[30] = v19;

  v21 = [*(a1 + 104) copy];
  v22 = v26[31];
  v26[31] = v21;

  v23 = [*(a1 + 112) copy];
  v24 = v26[32];
  v26[32] = v23;

  v25 = *(a1 + 120);
  if (v25)
  {
    (*(v25 + 16))(v25, v26);
  }
}

- (HKAllergyRecord)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10.receiver = self;
  v10.super_class = HKAllergyRecord;
  v6 = [(HKSample *)&v10 description];
  allergyTypeCoding = self->_allergyTypeCoding;
  v8 = [v3 stringWithFormat:@"<%@:%p super=%@allergyCodingCollection = %@onsetDate = %@asserter = %@reactions = %@criticalityCoding = %@lastOccurrenceDate = %@recordedDate = %@verificationStatusCoding = %@clinicalStatusCoding = %@allergyTypeCoding = %@categoryCoding = %@>", v5, self, v6, self->_allergyCodingCollection, self->_onsetDate, self->_asserter, self->_reactions, self->_criticalityCoding, self->_lastOccurrenceDate, self->_recordedDate, self->_verificationStatusCoding, self->_clinicalStatusCoding, allergyTypeCoding, self->_categoryCoding];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKAllergyRecord;
  v4 = a3;
  [(HKMedicalRecord *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_allergyCodingCollection forKey:{@"AllergyCodingCollection", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_onsetDate forKey:@"OnsetDate"];
  [v4 encodeObject:self->_asserter forKey:@"Asserter"];
  [v4 encodeObject:self->_reactions forKey:@"Reactions"];
  [v4 encodeObject:self->_criticalityCoding forKey:@"CriticalityCoding"];
  [v4 encodeObject:self->_lastOccurrenceDate forKey:@"LastOccurrenceDate"];
  [v4 encodeObject:self->_recordedDate forKey:@"RecordedDate"];
  [v4 encodeObject:self->_verificationStatusCoding forKey:@"VerificationStatusCoding"];
  [v4 encodeObject:self->_clinicalStatusCoding forKey:@"ClinicalStatusCoding"];
  [v4 encodeObject:self->_allergyTypeCoding forKey:@"AllergyTypeCoding"];
  [v4 encodeObject:self->_categoryCoding forKey:@"CategoryCoding"];
  [v4 encodeObject:self->_allergy forKey:@"Allergy"];
  [v4 encodeObject:self->_criticality forKey:@"Criticality"];
  [v4 encodeObject:self->_verificationStatus forKey:@"VerificationStatus"];
  [v4 encodeObject:self->_clinicalStatus forKey:@"ClinicalStatus"];
  [v4 encodeObject:self->_allergyType forKey:@"AllergyType"];
  [v4 encodeObject:self->_category forKey:@"Category"];
}

- (HKAllergyRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = HKAllergyRecord;
  v5 = [(HKMedicalRecord *)&v42 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AllergyCodingCollection"];
    allergyCodingCollection = v5->_allergyCodingCollection;
    v5->_allergyCodingCollection = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OnsetDate"];
    onsetDate = v5->_onsetDate;
    v5->_onsetDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Asserter"];
    asserter = v5->_asserter;
    v5->_asserter = v10;

    v12 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"Reactions"];
    reactions = v5->_reactions;
    v5->_reactions = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CriticalityCoding"];
    criticalityCoding = v5->_criticalityCoding;
    v5->_criticalityCoding = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LastOccurrenceDate"];
    lastOccurrenceDate = v5->_lastOccurrenceDate;
    v5->_lastOccurrenceDate = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RecordedDate"];
    recordedDate = v5->_recordedDate;
    v5->_recordedDate = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"VerificationStatusCoding"];
    verificationStatusCoding = v5->_verificationStatusCoding;
    v5->_verificationStatusCoding = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ClinicalStatusCoding"];
    clinicalStatusCoding = v5->_clinicalStatusCoding;
    v5->_clinicalStatusCoding = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AllergyTypeCoding"];
    allergyTypeCoding = v5->_allergyTypeCoding;
    v5->_allergyTypeCoding = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CategoryCoding"];
    categoryCoding = v5->_categoryCoding;
    v5->_categoryCoding = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Allergy"];
    allergy = v5->_allergy;
    v5->_allergy = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Criticality"];
    criticality = v5->_criticality;
    v5->_criticality = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"VerificationStatus"];
    verificationStatus = v5->_verificationStatus;
    v5->_verificationStatus = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ClinicalStatus"];
    clinicalStatus = v5->_clinicalStatus;
    v5->_clinicalStatus = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AllergyType"];
    allergyType = v5->_allergyType;
    v5->_allergyType = v37;

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Category"];
    category = v5->_category;
    v5->_category = v39;
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
    v112.receiver = self;
    v112.super_class = HKAllergyRecord;
    if (![(HKMedicalRecord *)&v112 isEquivalent:v5])
    {
      goto LABEL_89;
    }

    v6 = [(HKAllergyRecord *)self allergyCodingCollection];
    v7 = [v5 allergyCodingCollection];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [v5 allergyCodingCollection];
      if (!v9)
      {
        goto LABEL_88;
      }

      v10 = v9;
      v11 = [(HKAllergyRecord *)self allergyCodingCollection];
      v12 = [v5 allergyCodingCollection];
      v13 = [v11 isEqual:v12];

      if (!v13)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKAllergyRecord *)self onsetDate];
    v15 = [v5 onsetDate];
    v8 = v15;
    if (v6 == v15)
    {
    }

    else
    {
      v16 = [v5 onsetDate];
      if (!v16)
      {
        goto LABEL_88;
      }

      v17 = v16;
      v18 = [(HKAllergyRecord *)self onsetDate];
      v19 = [v5 onsetDate];
      v20 = [v18 isEqual:v19];

      if (!v20)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKAllergyRecord *)self asserter];
    v21 = [v5 asserter];
    v8 = v21;
    if (v6 == v21)
    {
    }

    else
    {
      v22 = [v5 asserter];
      if (!v22)
      {
        goto LABEL_88;
      }

      v23 = v22;
      v24 = [(HKAllergyRecord *)self asserter];
      v25 = [v5 asserter];
      v26 = [v24 isEqualToString:v25];

      if (!v26)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKAllergyRecord *)self reactions];
    v27 = [v5 reactions];
    v8 = v27;
    if (v6 == v27)
    {
    }

    else
    {
      v28 = [v5 reactions];
      if (!v28)
      {
        goto LABEL_88;
      }

      v29 = v28;
      v30 = [(HKAllergyRecord *)self reactions];
      v31 = [v5 reactions];
      v32 = [v30 isEqualToArray:v31];

      if (!v32)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKAllergyRecord *)self criticalityCoding];
    v33 = [v5 criticalityCoding];
    v8 = v33;
    if (v6 == v33)
    {
    }

    else
    {
      v34 = [v5 criticalityCoding];
      if (!v34)
      {
        goto LABEL_88;
      }

      v35 = v34;
      v36 = [(HKAllergyRecord *)self criticalityCoding];
      v37 = [v5 criticalityCoding];
      v38 = [v36 isEqual:v37];

      if (!v38)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKAllergyRecord *)self lastOccurrenceDate];
    v39 = [v5 lastOccurrenceDate];
    v8 = v39;
    if (v6 == v39)
    {
    }

    else
    {
      v40 = [v5 lastOccurrenceDate];
      if (!v40)
      {
        goto LABEL_88;
      }

      v41 = v40;
      v42 = [(HKAllergyRecord *)self lastOccurrenceDate];
      v43 = [v5 lastOccurrenceDate];
      v44 = [v42 isEqual:v43];

      if (!v44)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKAllergyRecord *)self recordedDate];
    v45 = [v5 recordedDate];
    v8 = v45;
    if (v6 == v45)
    {
    }

    else
    {
      v46 = [v5 recordedDate];
      if (!v46)
      {
        goto LABEL_88;
      }

      v47 = v46;
      v48 = [(HKAllergyRecord *)self recordedDate];
      v49 = [v5 recordedDate];
      v50 = [v48 isEqual:v49];

      if (!v50)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKAllergyRecord *)self verificationStatusCoding];
    v51 = [v5 verificationStatusCoding];
    v8 = v51;
    if (v6 == v51)
    {
    }

    else
    {
      v52 = [v5 verificationStatusCoding];
      if (!v52)
      {
        goto LABEL_88;
      }

      v53 = v52;
      v54 = [(HKAllergyRecord *)self verificationStatusCoding];
      v55 = [v5 verificationStatusCoding];
      v56 = [v54 isEqual:v55];

      if (!v56)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKAllergyRecord *)self clinicalStatusCoding];
    v57 = [v5 clinicalStatusCoding];
    v8 = v57;
    if (v6 == v57)
    {
    }

    else
    {
      v58 = [v5 clinicalStatusCoding];
      if (!v58)
      {
        goto LABEL_88;
      }

      v59 = v58;
      v60 = [(HKAllergyRecord *)self clinicalStatusCoding];
      v61 = [v5 clinicalStatusCoding];
      v62 = [v60 isEqual:v61];

      if (!v62)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKAllergyRecord *)self allergyTypeCoding];
    v63 = [v5 allergyTypeCoding];
    v8 = v63;
    if (v6 == v63)
    {
    }

    else
    {
      v64 = [v5 allergyTypeCoding];
      if (!v64)
      {
        goto LABEL_88;
      }

      v65 = v64;
      v66 = [(HKAllergyRecord *)self allergyTypeCoding];
      v67 = [v5 allergyTypeCoding];
      v68 = [v66 isEqual:v67];

      if (!v68)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKAllergyRecord *)self categoryCoding];
    v69 = [v5 categoryCoding];
    v8 = v69;
    if (v6 == v69)
    {
    }

    else
    {
      v70 = [v5 categoryCoding];
      if (!v70)
      {
        goto LABEL_88;
      }

      v71 = v70;
      v72 = [(HKAllergyRecord *)self categoryCoding];
      v73 = [v5 categoryCoding];
      v74 = [v72 isEqual:v73];

      if (!v74)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKAllergyRecord *)self allergy];
    v75 = [v5 allergy];
    v8 = v75;
    if (v6 == v75)
    {
    }

    else
    {
      v76 = [v5 allergy];
      if (!v76)
      {
        goto LABEL_88;
      }

      v77 = v76;
      v78 = [(HKAllergyRecord *)self allergy];
      v79 = [v5 allergy];
      v80 = [v78 isEqual:v79];

      if (!v80)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKAllergyRecord *)self criticality];
    v81 = [v5 criticality];
    v8 = v81;
    if (v6 == v81)
    {
    }

    else
    {
      v82 = [v5 criticality];
      if (!v82)
      {
        goto LABEL_88;
      }

      v83 = v82;
      v84 = [(HKAllergyRecord *)self criticality];
      v85 = [v5 criticality];
      v86 = [v84 isEqual:v85];

      if (!v86)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKAllergyRecord *)self verificationStatus];
    v87 = [v5 verificationStatus];
    v8 = v87;
    if (v6 == v87)
    {
    }

    else
    {
      v88 = [v5 verificationStatus];
      if (!v88)
      {
        goto LABEL_88;
      }

      v89 = v88;
      v90 = [(HKAllergyRecord *)self verificationStatus];
      v91 = [v5 verificationStatus];
      v92 = [v90 isEqual:v91];

      if (!v92)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKAllergyRecord *)self clinicalStatus];
    v93 = [v5 clinicalStatus];
    v8 = v93;
    if (v6 == v93)
    {
    }

    else
    {
      v94 = [v5 clinicalStatus];
      if (!v94)
      {
        goto LABEL_88;
      }

      v95 = v94;
      v96 = [(HKAllergyRecord *)self clinicalStatus];
      v97 = [v5 clinicalStatus];
      v98 = [v96 isEqual:v97];

      if (!v98)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKAllergyRecord *)self allergyType];
    v99 = [v5 allergyType];
    v8 = v99;
    if (v6 == v99)
    {
    }

    else
    {
      v100 = [v5 allergyType];
      if (!v100)
      {
        goto LABEL_88;
      }

      v101 = v100;
      v102 = [(HKAllergyRecord *)self allergyType];
      v103 = [v5 allergyType];
      v104 = [v102 isEqual:v103];

      if (!v104)
      {
        goto LABEL_89;
      }
    }

    v6 = [(HKAllergyRecord *)self category];
    v105 = [v5 category];
    v8 = v105;
    if (v6 == v105)
    {

LABEL_93:
      v14 = 1;
      goto LABEL_90;
    }

    v106 = [v5 category];
    if (v106)
    {
      v107 = v106;
      v108 = [(HKAllergyRecord *)self category];
      v109 = [v5 category];
      v110 = [v108 isEqual:v109];

      if (v110)
      {
        goto LABEL_93;
      }

LABEL_89:
      v14 = 0;
LABEL_90:

      goto LABEL_91;
    }

LABEL_88:

    goto LABEL_89;
  }

  v14 = 0;
LABEL_91:

  return v14;
}

- (id)criticalityCodingCollection
{
  v3 = [(HKAllergyRecord *)self criticalityCoding];

  if (v3)
  {
    v4 = [(HKAllergyRecord *)self criticalityCoding];
    v5 = [HKMedicalCodingCollection collectionWithCoding:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)verificationStatusCodingCollection
{
  v3 = [(HKAllergyRecord *)self verificationStatusCoding];

  if (v3)
  {
    v4 = [(HKAllergyRecord *)self verificationStatusCoding];
    v5 = [HKMedicalCodingCollection collectionWithCoding:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)clinicalStatusCodingCollection
{
  v3 = [(HKAllergyRecord *)self clinicalStatusCoding];

  if (v3)
  {
    v4 = [(HKAllergyRecord *)self clinicalStatusCoding];
    v5 = [HKMedicalCodingCollection collectionWithCoding:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)allergyTypeCodingCollection
{
  v3 = [(HKAllergyRecord *)self allergyTypeCoding];

  if (v3)
  {
    v4 = [(HKAllergyRecord *)self allergyTypeCoding];
    v5 = [HKMedicalCodingCollection collectionWithCoding:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)categoryCodingCollection
{
  v3 = [(HKAllergyRecord *)self categoryCoding];

  if (v3)
  {
    v4 = [(HKAllergyRecord *)self categoryCoding];
    v5 = [HKMedicalCodingCollection collectionWithCoding:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setAllergyCodingCollection:(id)a3
{
  v4 = [a3 copy];
  allergyCodingCollection = self->_allergyCodingCollection;
  self->_allergyCodingCollection = v4;

  v8 = [(HKAllergyRecord *)self allergyCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v8];
  allergy = self->_allergy;
  self->_allergy = v6;
}

- (void)_setOnsetDate:(id)a3
{
  v4 = [a3 copy];
  onsetDate = self->_onsetDate;
  self->_onsetDate = v4;

  MEMORY[0x1EEE66BB8](v4, onsetDate);
}

- (void)_setAsserter:(id)a3
{
  v4 = [a3 copy];
  asserter = self->_asserter;
  self->_asserter = v4;

  MEMORY[0x1EEE66BB8](v4, asserter);
}

- (void)_setReactions:(id)a3
{
  v4 = [a3 copy];
  reactions = self->_reactions;
  self->_reactions = v4;

  MEMORY[0x1EEE66BB8](v4, reactions);
}

- (void)_setCriticalityCoding:(id)a3
{
  v4 = [a3 copy];
  criticalityCoding = self->_criticalityCoding;
  self->_criticalityCoding = v4;

  if (self->_criticalityCoding)
  {
    v9 = [(HKAllergyRecord *)self criticalityCodingCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v9];
    criticality = self->_criticality;
    self->_criticality = v6;

    v8 = v9;
  }

  else
  {
    v8 = self->_criticality;
    self->_criticality = 0;
  }
}

- (void)_setLastOccurrenceDate:(id)a3
{
  v4 = [a3 copy];
  lastOccurrenceDate = self->_lastOccurrenceDate;
  self->_lastOccurrenceDate = v4;

  MEMORY[0x1EEE66BB8](v4, lastOccurrenceDate);
}

- (void)_setRecordedDate:(id)a3
{
  v4 = [a3 copy];
  recordedDate = self->_recordedDate;
  self->_recordedDate = v4;

  MEMORY[0x1EEE66BB8](v4, recordedDate);
}

- (void)_setVerificationStatusCoding:(id)a3
{
  v4 = [a3 copy];
  verificationStatusCoding = self->_verificationStatusCoding;
  self->_verificationStatusCoding = v4;

  if (self->_verificationStatusCoding)
  {
    v9 = [(HKAllergyRecord *)self verificationStatusCodingCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v9];
    verificationStatus = self->_verificationStatus;
    self->_verificationStatus = v6;

    v8 = v9;
  }

  else
  {
    v8 = self->_verificationStatus;
    self->_verificationStatus = 0;
  }
}

- (void)_setClinicalStatusCoding:(id)a3
{
  v4 = [a3 copy];
  clinicalStatusCoding = self->_clinicalStatusCoding;
  self->_clinicalStatusCoding = v4;

  if (self->_clinicalStatusCoding)
  {
    v9 = [(HKAllergyRecord *)self clinicalStatusCodingCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v9];
    clinicalStatus = self->_clinicalStatus;
    self->_clinicalStatus = v6;

    v8 = v9;
  }

  else
  {
    v8 = self->_clinicalStatus;
    self->_clinicalStatus = 0;
  }
}

- (void)_setAllergyTypeCoding:(id)a3
{
  v4 = [a3 copy];
  allergyTypeCoding = self->_allergyTypeCoding;
  self->_allergyTypeCoding = v4;

  if (self->_allergyTypeCoding)
  {
    v9 = [(HKAllergyRecord *)self allergyTypeCodingCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v9];
    allergyType = self->_allergyType;
    self->_allergyType = v6;

    v8 = v9;
  }

  else
  {
    v8 = self->_allergyType;
    self->_allergyType = 0;
  }
}

- (void)_setCategoryCoding:(id)a3
{
  v4 = [a3 copy];
  categoryCoding = self->_categoryCoding;
  self->_categoryCoding = v4;

  if (self->_categoryCoding)
  {
    v9 = [(HKAllergyRecord *)self categoryCodingCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v9];
    category = self->_category;
    self->_category = v6;

    v8 = v9;
  }

  else
  {
    v8 = self->_category;
    self->_category = 0;
  }
}

- (HKConcept)allergy
{
  allergy = self->_allergy;
  if (allergy)
  {
    v3 = allergy;
  }

  else
  {
    v4 = [(HKAllergyRecord *)self allergyCodingCollection];
    v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
  }

  return v3;
}

- (void)_setAllergy:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      [HKAllergyRecord _setAllergy:v5];
    }
  }

  v6 = [v4 copy];
  allergy = self->_allergy;
  self->_allergy = v6;
}

- (HKConcept)criticality
{
  if (self->_criticalityCoding)
  {
    criticality = self->_criticality;
    if (criticality)
    {
      v3 = criticality;
    }

    else
    {
      v4 = [(HKAllergyRecord *)self criticalityCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setCriticality:(id)a3
{
  v4 = [a3 copy];
  criticality = self->_criticality;
  self->_criticality = v4;

  MEMORY[0x1EEE66BB8](v4, criticality);
}

- (HKConcept)verificationStatus
{
  if (self->_verificationStatusCoding)
  {
    verificationStatus = self->_verificationStatus;
    if (verificationStatus)
    {
      v3 = verificationStatus;
    }

    else
    {
      v4 = [(HKAllergyRecord *)self verificationStatusCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setVerificationStatus:(id)a3
{
  v4 = [a3 copy];
  verificationStatus = self->_verificationStatus;
  self->_verificationStatus = v4;

  MEMORY[0x1EEE66BB8](v4, verificationStatus);
}

- (HKConcept)clinicalStatus
{
  if (self->_clinicalStatusCoding)
  {
    clinicalStatus = self->_clinicalStatus;
    if (clinicalStatus)
    {
      v3 = clinicalStatus;
    }

    else
    {
      v4 = [(HKAllergyRecord *)self clinicalStatusCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setClinicalStatus:(id)a3
{
  v4 = [a3 copy];
  clinicalStatus = self->_clinicalStatus;
  self->_clinicalStatus = v4;

  MEMORY[0x1EEE66BB8](v4, clinicalStatus);
}

- (HKConcept)allergyType
{
  if (self->_allergyTypeCoding)
  {
    allergyType = self->_allergyType;
    if (allergyType)
    {
      v3 = allergyType;
    }

    else
    {
      v4 = [(HKAllergyRecord *)self allergyTypeCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setAllergyType:(id)a3
{
  v4 = [a3 copy];
  allergyType = self->_allergyType;
  self->_allergyType = v4;

  MEMORY[0x1EEE66BB8](v4, allergyType);
}

- (HKConcept)category
{
  if (self->_categoryCoding)
  {
    category = self->_category;
    if (category)
    {
      v3 = category;
    }

    else
    {
      v4 = [(HKAllergyRecord *)self categoryCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setCategory:(id)a3
{
  v4 = [a3 copy];
  category = self->_category;
  self->_category = v4;

  MEMORY[0x1EEE66BB8](v4, category);
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v10.receiver = self;
  v10.super_class = HKAllergyRecord;
  v5 = [(HKMedicalRecord *)&v10 _validateWithConfiguration:a3.var0, a3.var1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
LABEL_3:
    v8 = v7;
    goto LABEL_6;
  }

  if (!self->_allergyCodingCollection)
  {
    v7 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"%@: allergyCodingCollection must not be nil", self}];
    goto LABEL_3;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

@end