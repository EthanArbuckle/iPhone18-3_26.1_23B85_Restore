@interface HKConditionRecord
+ (id)_newConditionRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 conditionCodingCollection:(id)a15 categoriesCodingCollections:(id)a16 asserter:(id)a17 abatement:(id)a18 onset:(id)a19 recordedDate:(id)a20 clinicalStatusCoding:(id)a21 verificationStatusCoding:(id)a22 severityCodingCollection:(id)a23 bodySitesCodingCollections:(id)a24 config:(id)a25;
+ (id)cachedConceptRelationshipKeyPaths;
+ (id)conditionRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 country:(id)a12 state:(unint64_t)a13 conditionCodingCollection:(id)a14 categoriesCodingCollections:(id)a15 asserter:(id)a16 abatement:(id)a17 onset:(id)a18 recordedDate:(id)a19 clinicalStatusCoding:(id)a20 verificationStatusCoding:(id)a21 severityCodingCollection:(id)a22 bodySitesCodingCollections:(id)a23;
+ (id)defaultDisplayString;
+ (id)indexableConceptKeyPaths;
- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
- (BOOL)isEquivalent:(id)a3;
- (HKConcept)clinicalStatus;
- (HKConcept)condition;
- (HKConcept)severity;
- (HKConcept)verificationStatus;
- (HKConditionRecord)init;
- (HKConditionRecord)initWithCoder:(id)a3;
- (NSArray)bodySites;
- (NSArray)categories;
- (NSString)description;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)clinicalStatusCodingCollection;
- (id)codingsForKeyPath:(id)a3 error:(id *)a4;
- (id)medicalRecordCodings;
- (id)verificationStatusCodingCollection;
- (void)_setAbatement:(id)a3;
- (void)_setAsserter:(id)a3;
- (void)_setBodySites:(id)a3;
- (void)_setBodySitesCodingCollections:(id)a3;
- (void)_setCategories:(id)a3;
- (void)_setCategoriesCodingCollections:(id)a3;
- (void)_setClinicalStatus:(id)a3;
- (void)_setClinicalStatusCoding:(id)a3;
- (void)_setCondition:(id)a3;
- (void)_setConditionCodingCollection:(id)a3;
- (void)_setOnset:(id)a3;
- (void)_setRecordedDate:(id)a3;
- (void)_setSeverity:(id)a3;
- (void)_setSeverityCodingCollection:(id)a3;
- (void)_setVerificationStatus:(id)a3;
- (void)_setVerificationStatusCoding:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKConditionRecord

+ (id)conditionRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 country:(id)a12 state:(unint64_t)a13 conditionCodingCollection:(id)a14 categoriesCodingCollections:(id)a15 asserter:(id)a16 abatement:(id)a17 onset:(id)a18 recordedDate:(id)a19 clinicalStatusCoding:(id)a20 verificationStatusCoding:(id)a21 severityCodingCollection:(id)a22 bodySitesCodingCollections:(id)a23
{
  v44 = a5;
  v55 = a3;
  v54 = a4;
  v27 = a6;
  v53 = a7;
  v47 = a8;
  v52 = a10;
  v46 = a11;
  v51 = a12;
  v28 = a14;
  v50 = a15;
  v49 = a16;
  v48 = a17;
  v29 = a18;
  v30 = a19;
  v43 = a20;
  v31 = a21;
  v42 = a22;
  v32 = a23;
  v33 = @"modifiedDate";
  v34 = v27;
  if (!v29 || ([v29 dateValueForUTC], v35 = objc_claimAutoreleasedReturnValue(), v35, !v35))
  {
    v37 = v34;
    if (!v30)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v36 = @"onset";

  v37 = [v29 dateValueForUTC];

  v33 = v36;
  if (v30)
  {
LABEL_6:
    v38 = @"recordedDate";

    v39 = [v30 dateForUTC];

    v37 = v39;
    v33 = v38;
  }

LABEL_7:
  v40 = [HKSemanticDate semanticDateWithKeyPath:v33 date:v37];
  v45 = [HKConditionRecord conditionRecordWithType:v55 note:v54 enteredInError:v44 modifiedDate:v34 originIdentifier:v53 locale:v47 extractionVersion:a9 device:v52 metadata:v46 sortDate:v40 country:v51 state:a13 conditionCodingCollection:v28 categoriesCodingCollections:v50 asserter:v49 abatement:v48 onset:v29 recordedDate:v30 clinicalStatusCoding:v43 verificationStatusCoding:v31 severityCodingCollection:v42 bodySitesCodingCollections:v32];

  return v45;
}

- (id)medicalRecordCodings
{
  v2 = [(HKConditionRecord *)self conditionCodingCollection];
  v3 = [v2 codings];

  return v3;
}

+ (id)defaultDisplayString
{
  v2 = HKHealthKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"UNSPECIFIED_CONDITION" value:&stru_1F05FF230 table:@"Localizable-Clinical-Health-Records"];

  return v3;
}

+ (id)indexableConceptKeyPaths
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___HKConditionRecord;
  v2 = objc_msgSendSuper2(&v5, sel_indexableConceptKeyPaths);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"condition"];
  [v3 addObject:@"categories"];
  [v3 addObject:@"clinicalStatus"];
  [v3 addObject:@"verificationStatus"];
  [v3 addObject:@"severity"];
  [v3 addObject:@"bodySites"];

  return v3;
}

+ (id)cachedConceptRelationshipKeyPaths
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___HKConditionRecord;
  v2 = objc_msgSendSuper2(&v4, sel_cachedConceptRelationshipKeyPaths);

  return v2;
}

- (id)codingsForKeyPath:(id)a3 error:(id *)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [HKConceptIndexUtilities firstComponentForKeyPath:v6 error:a4];
  v8 = v7;
  if (!v7)
  {
    v13 = 0;
    goto LABEL_17;
  }

  if ([v7 isEqualToString:@"condition"])
  {
    v9 = [(HKConditionRecord *)self conditionCodingCollection];
    v10 = [HKIndexableObject indexableObjectWithObject:v9];
    v30[0] = v10;
    v11 = MEMORY[0x1E695DEC8];
    v12 = v30;
LABEL_4:
    v13 = [v11 arrayWithObjects:v12 count:1];

    goto LABEL_17;
  }

  if ([v8 isEqualToString:@"categories"])
  {
    v14 = [(HKConditionRecord *)self categoriesCodingCollections];
LABEL_8:
    v15 = v14;
    v13 = [HKConceptIndexUtilities indexedCodingsForCodingCollections:v14 context:v6 error:a4];
LABEL_16:

    goto LABEL_17;
  }

  if ([v8 isEqualToString:@"clinicalStatus"])
  {
    v16 = [(HKConditionRecord *)self clinicalStatusCoding];

    if (v16)
    {
      v15 = [(HKConditionRecord *)self clinicalStatusCoding];
      v17 = [HKMedicalCodingCollection collectionWithCoding:v15];
      v18 = [HKIndexableObject indexableObjectWithObject:v17];
      v29 = v18;
      v19 = MEMORY[0x1E695DEC8];
      v20 = &v29;
LABEL_15:
      v13 = [v19 arrayWithObjects:v20 count:1];

      goto LABEL_16;
    }

    goto LABEL_26;
  }

  if ([v8 isEqualToString:@"verificationStatus"])
  {
    v21 = [(HKConditionRecord *)self verificationStatusCoding];

    if (v21)
    {
      v15 = [(HKConditionRecord *)self verificationStatusCoding];
      v17 = [HKMedicalCodingCollection collectionWithCoding:v15];
      v18 = [HKIndexableObject indexableObjectWithObject:v17];
      v28 = v18;
      v19 = MEMORY[0x1E695DEC8];
      v20 = &v28;
      goto LABEL_15;
    }

    goto LABEL_26;
  }

  if ([v8 isEqualToString:@"severity"])
  {
    v24 = [(HKConditionRecord *)self severityCodingCollection];

    if (v24)
    {
      v9 = [(HKConditionRecord *)self severityCodingCollection];
      v10 = [HKIndexableObject indexableObjectWithObject:v9];
      v27 = v10;
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v27;
      goto LABEL_4;
    }

LABEL_26:
    v13 = MEMORY[0x1E695E0F0];
    goto LABEL_17;
  }

  if ([v8 isEqualToString:@"bodySites"])
  {
    v25 = [(HKConditionRecord *)self bodySitesCodingCollections];

    if (v25)
    {
      v14 = [(HKConditionRecord *)self bodySitesCodingCollections];
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  v26.receiver = self;
  v26.super_class = HKConditionRecord;
  v13 = [(HKMedicalRecord *)&v26 codingsForKeyPath:v6 error:a4];
LABEL_17:

  v22 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [HKConceptIndexUtilities firstComponentForKeyPath:v9 error:a5];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_6;
  }

  if (![v10 isEqualToString:@"condition"])
  {
    if ([v11 isEqualToString:@"categories"])
    {
      v13 = [(HKConditionRecord *)self categoriesCodingCollections];
      v14 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", v8, [v13 count], v9, a5);

      LOBYTE(a5) = v14 != 0;
      if (v14)
      {
        [(HKConditionRecord *)self _setCategories:v14];
      }

LABEL_10:

      goto LABEL_11;
    }

    if ([v11 isEqualToString:@"clinicalStatus"])
    {
      v16 = [v8 count];
      v17 = [(HKConditionRecord *)self clinicalStatusCoding];
      LODWORD(a5) = HKIndexableObjectCheckCardinalityForIndexRestore(v16, v17 != 0, v9, a5);

      if (!a5)
      {
        goto LABEL_11;
      }

      a5 = [v8 firstObject];
      v12 = [a5 object];
      [(HKConditionRecord *)self _setClinicalStatus:v12];
      goto LABEL_5;
    }

    if ([v11 isEqualToString:@"verificationStatus"])
    {
      v18 = [v8 count];
      v19 = [(HKConditionRecord *)self verificationStatusCoding];
      LODWORD(a5) = HKIndexableObjectCheckCardinalityForIndexRestore(v18, v19 != 0, v9, a5);

      if (!a5)
      {
        goto LABEL_11;
      }

      a5 = [v8 firstObject];
      v12 = [a5 object];
      [(HKConditionRecord *)self _setVerificationStatus:v12];
      goto LABEL_5;
    }

    if ([v11 isEqualToString:@"severity"])
    {
      v20 = [v8 count];
      v21 = [(HKConditionRecord *)self severityCodingCollection];
      LODWORD(a5) = HKIndexableObjectCheckCardinalityForIndexRestore(v20, v21 != 0, v9, a5);

      if (!a5)
      {
        goto LABEL_11;
      }

      a5 = [v8 firstObject];
      v12 = [a5 object];
      [(HKConditionRecord *)self _setSeverity:v12];
      goto LABEL_5;
    }

    if ([v11 isEqualToString:@"bodySites"])
    {
      v22 = [(HKConditionRecord *)self bodySitesCodingCollections];

      if (v22)
      {
        v23 = [(HKConditionRecord *)self bodySitesCodingCollections];
        v14 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", v8, [v23 count], v9, a5);

        LOBYTE(a5) = v14 != 0;
        if (v14)
        {
          [(HKConditionRecord *)self _setBodySites:v14];
        }

        goto LABEL_10;
      }

      v24 = HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 0, v9, a5);
    }

    else
    {
      v25.receiver = self;
      v25.super_class = HKConditionRecord;
      v24 = [(HKMedicalRecord *)&v25 applyConcepts:v8 forKeyPath:v9 error:a5];
    }

    LOBYTE(a5) = v24;
    goto LABEL_11;
  }

  if (!HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 1, v9, a5))
  {
LABEL_6:
    LOBYTE(a5) = 0;
    goto LABEL_11;
  }

  a5 = [v8 firstObject];
  v12 = [a5 object];
  [(HKConditionRecord *)self _setCondition:v12];
LABEL_5:

  LOBYTE(a5) = 1;
LABEL_11:

  return a5;
}

+ (id)_newConditionRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 conditionCodingCollection:(id)a15 categoriesCodingCollections:(id)a16 asserter:(id)a17 abatement:(id)a18 onset:(id)a19 recordedDate:(id)a20 clinicalStatusCoding:(id)a21 verificationStatusCoding:(id)a22 severityCodingCollection:(id)a23 bodySitesCodingCollections:(id)a24 config:(id)a25
{
  v64 = a5;
  v52 = a15;
  v25 = a16;
  v26 = a17;
  v27 = a18;
  v28 = a19;
  v29 = a20;
  v30 = a21;
  v31 = a22;
  v32 = a23;
  v33 = a24;
  v34 = a25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __360__HKConditionRecord__newConditionRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_conditionCodingCollection_categoriesCodingCollections_asserter_abatement_onset_recordedDate_clinicalStatusCoding_verificationStatusCoding_severityCodingCollection_bodySitesCodingCollections_config___block_invoke;
  aBlock[3] = &unk_1E7384A40;
  v68 = v52;
  v69 = v25;
  v70 = v26;
  v71 = v27;
  v72 = v28;
  v73 = v29;
  v74 = v30;
  v75 = v31;
  v76 = v32;
  v77 = v33;
  v78 = v34;
  v63 = v34;
  v62 = v33;
  v61 = v32;
  v60 = v31;
  v59 = v30;
  v58 = v29;
  v57 = v28;
  v56 = v27;
  v55 = v26;
  v54 = v25;
  v53 = v52;
  v35 = a13;
  v36 = a12;
  v37 = a11;
  v38 = a10;
  v39 = a8;
  v40 = a7;
  v41 = a6;
  v42 = a4;
  v43 = a3;
  v44 = _Block_copy(aBlock);
  v66.receiver = a1;
  v66.super_class = &OBJC_METACLASS___HKConditionRecord;
  v65 = objc_msgSendSuper2(&v66, sel__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config_, v43, v42, v64, v41, v40, v39, a9, v38, v37, v36, v35, a14, v44);

  return v65;
}

void __360__HKConditionRecord__newConditionRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_conditionCodingCollection_categoriesCodingCollections_asserter_abatement_onset_recordedDate_clinicalStatusCoding_verificationStatusCoding_severityCodingCollection_bodySitesCodingCollections_config___block_invoke(uint64_t a1, void *a2)
{
  v24 = a2;
  v3 = [*(a1 + 32) copy];
  v4 = v24[22];
  v24[22] = v3;

  v5 = [*(a1 + 40) copy];
  v6 = v24[23];
  v24[23] = v5;

  v7 = [*(a1 + 48) copy];
  v8 = v24[24];
  v24[24] = v7;

  v9 = [*(a1 + 56) copy];
  v10 = v24[25];
  v24[25] = v9;

  v11 = [*(a1 + 64) copy];
  v12 = v24[26];
  v24[26] = v11;

  v13 = [*(a1 + 72) copy];
  v14 = v24[27];
  v24[27] = v13;

  v15 = [*(a1 + 80) copy];
  v16 = v24[28];
  v24[28] = v15;

  v17 = [*(a1 + 88) copy];
  v18 = v24[29];
  v24[29] = v17;

  v19 = [*(a1 + 96) copy];
  v20 = v24[30];
  v24[30] = v19;

  v21 = [*(a1 + 104) copy];
  v22 = v24[31];
  v24[31] = v21;

  v23 = *(a1 + 112);
  if (v23)
  {
    (*(v23 + 16))(v23, v24);
  }
}

- (HKConditionRecord)init
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
  v11.receiver = self;
  v11.super_class = HKConditionRecord;
  v6 = [(HKSample *)&v11 description];
  conditionCodingCollection = self->_conditionCodingCollection;
  severityCodingCollection = self->_severityCodingCollection;
  v9 = [v3 stringWithFormat:@"<%@:%p super=%@conditionCodingCollection = %@categoriesCodingCollections = %@asserter = %@abatement = %@onset = %@recordedDate = %@clinicalStatusCoding = %@verificationStatusCoding = %@severityCodingCollection = %@bodySitesCodingCollections = %@>", v5, self, v6, conditionCodingCollection, self->_categoriesCodingCollections, self->_asserter, self->_abatement, self->_onset, self->_recordedDate, self->_clinicalStatusCoding, self->_verificationStatusCoding, severityCodingCollection, self->_bodySitesCodingCollections];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKConditionRecord;
  v4 = a3;
  [(HKMedicalRecord *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_conditionCodingCollection forKey:{@"ConditionCodingCollection", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_categoriesCodingCollections forKey:@"CategoriesCodingCollections"];
  [v4 encodeObject:self->_asserter forKey:@"Asserter"];
  [v4 encodeObject:self->_abatement forKey:@"Abatement"];
  [v4 encodeObject:self->_onset forKey:@"Onset"];
  [v4 encodeObject:self->_recordedDate forKey:@"RecordedDate"];
  [v4 encodeObject:self->_clinicalStatusCoding forKey:@"ClinicalStatusCoding"];
  [v4 encodeObject:self->_verificationStatusCoding forKey:@"VerificationStatusCoding"];
  [v4 encodeObject:self->_severityCodingCollection forKey:@"SeverityCodingCollection"];
  [v4 encodeObject:self->_bodySitesCodingCollections forKey:@"BodySitesCodingCollections"];
  [v4 encodeObject:self->_condition forKey:@"Condition"];
  [v4 encodeObject:self->_categories forKey:@"Categories"];
  [v4 encodeObject:self->_clinicalStatus forKey:@"ClinicalStatus"];
  [v4 encodeObject:self->_verificationStatus forKey:@"VerificationStatus"];
  [v4 encodeObject:self->_severity forKey:@"Severity"];
  [v4 encodeObject:self->_bodySites forKey:@"BodySites"];
}

- (HKConditionRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = HKConditionRecord;
  v5 = [(HKMedicalRecord *)&v43 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ConditionCodingCollection"];
    conditionCodingCollection = v5->_conditionCodingCollection;
    v5->_conditionCodingCollection = v6;

    v8 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"CategoriesCodingCollections"];
    categoriesCodingCollections = v5->_categoriesCodingCollections;
    v5->_categoriesCodingCollections = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Asserter"];
    asserter = v5->_asserter;
    v5->_asserter = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Abatement"];
    abatement = v5->_abatement;
    v5->_abatement = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Onset"];
    onset = v5->_onset;
    v5->_onset = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RecordedDate"];
    recordedDate = v5->_recordedDate;
    v5->_recordedDate = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ClinicalStatusCoding"];
    clinicalStatusCoding = v5->_clinicalStatusCoding;
    v5->_clinicalStatusCoding = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"VerificationStatusCoding"];
    verificationStatusCoding = v5->_verificationStatusCoding;
    v5->_verificationStatusCoding = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SeverityCodingCollection"];
    severityCodingCollection = v5->_severityCodingCollection;
    v5->_severityCodingCollection = v23;

    v25 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"BodySitesCodingCollections"];
    bodySitesCodingCollections = v5->_bodySitesCodingCollections;
    v5->_bodySitesCodingCollections = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Condition"];
    condition = v5->_condition;
    v5->_condition = v28;

    v30 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v31 = [v4 decodeObjectOfClasses:v30 forKey:@"Categories"];
    categories = v5->_categories;
    v5->_categories = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ClinicalStatus"];
    clinicalStatus = v5->_clinicalStatus;
    v5->_clinicalStatus = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"VerificationStatus"];
    verificationStatus = v5->_verificationStatus;
    v5->_verificationStatus = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Severity"];
    severity = v5->_severity;
    v5->_severity = v37;

    v39 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v40 = [v4 decodeObjectOfClasses:v39 forKey:@"BodySites"];
    bodySites = v5->_bodySites;
    v5->_bodySites = v40;
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
    v106.receiver = self;
    v106.super_class = HKConditionRecord;
    if (![(HKMedicalRecord *)&v106 isEquivalent:v5])
    {
      goto LABEL_84;
    }

    v6 = [(HKConditionRecord *)self conditionCodingCollection];
    v7 = [v5 conditionCodingCollection];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [v5 conditionCodingCollection];
      if (!v9)
      {
        goto LABEL_83;
      }

      v10 = v9;
      v11 = [(HKConditionRecord *)self conditionCodingCollection];
      v12 = [v5 conditionCodingCollection];
      v13 = [v11 isEqual:v12];

      if (!v13)
      {
        goto LABEL_84;
      }
    }

    v6 = [(HKConditionRecord *)self categoriesCodingCollections];
    v15 = [v5 categoriesCodingCollections];
    v8 = v15;
    if (v6 == v15)
    {
    }

    else
    {
      v16 = [v5 categoriesCodingCollections];
      if (!v16)
      {
        goto LABEL_83;
      }

      v17 = v16;
      v18 = [(HKConditionRecord *)self categoriesCodingCollections];
      v19 = [v5 categoriesCodingCollections];
      v20 = [v18 isEqualToArray:v19];

      if (!v20)
      {
        goto LABEL_84;
      }
    }

    v6 = [(HKConditionRecord *)self asserter];
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
        goto LABEL_83;
      }

      v23 = v22;
      v24 = [(HKConditionRecord *)self asserter];
      v25 = [v5 asserter];
      v26 = [v24 isEqualToString:v25];

      if (!v26)
      {
        goto LABEL_84;
      }
    }

    v6 = [(HKConditionRecord *)self abatement];
    v27 = [v5 abatement];
    v8 = v27;
    if (v6 == v27)
    {
    }

    else
    {
      v28 = [v5 abatement];
      if (!v28)
      {
        goto LABEL_83;
      }

      v29 = v28;
      v30 = [(HKConditionRecord *)self abatement];
      v31 = [v5 abatement];
      v32 = [v30 isEqual:v31];

      if (!v32)
      {
        goto LABEL_84;
      }
    }

    v6 = [(HKConditionRecord *)self onset];
    v33 = [v5 onset];
    v8 = v33;
    if (v6 == v33)
    {
    }

    else
    {
      v34 = [v5 onset];
      if (!v34)
      {
        goto LABEL_83;
      }

      v35 = v34;
      v36 = [(HKConditionRecord *)self onset];
      v37 = [v5 onset];
      v38 = [v36 isEqual:v37];

      if (!v38)
      {
        goto LABEL_84;
      }
    }

    v6 = [(HKConditionRecord *)self recordedDate];
    v39 = [v5 recordedDate];
    v8 = v39;
    if (v6 == v39)
    {
    }

    else
    {
      v40 = [v5 recordedDate];
      if (!v40)
      {
        goto LABEL_83;
      }

      v41 = v40;
      v42 = [(HKConditionRecord *)self recordedDate];
      v43 = [v5 recordedDate];
      v44 = [v42 isEqual:v43];

      if (!v44)
      {
        goto LABEL_84;
      }
    }

    v6 = [(HKConditionRecord *)self clinicalStatusCoding];
    v45 = [v5 clinicalStatusCoding];
    v8 = v45;
    if (v6 == v45)
    {
    }

    else
    {
      v46 = [v5 clinicalStatusCoding];
      if (!v46)
      {
        goto LABEL_83;
      }

      v47 = v46;
      v48 = [(HKConditionRecord *)self clinicalStatusCoding];
      v49 = [v5 clinicalStatusCoding];
      v50 = [v48 isEqual:v49];

      if (!v50)
      {
        goto LABEL_84;
      }
    }

    v6 = [(HKConditionRecord *)self verificationStatusCoding];
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
        goto LABEL_83;
      }

      v53 = v52;
      v54 = [(HKConditionRecord *)self verificationStatusCoding];
      v55 = [v5 verificationStatusCoding];
      v56 = [v54 isEqual:v55];

      if (!v56)
      {
        goto LABEL_84;
      }
    }

    v6 = [(HKConditionRecord *)self severityCodingCollection];
    v57 = [v5 severityCodingCollection];
    v8 = v57;
    if (v6 == v57)
    {
    }

    else
    {
      v58 = [v5 severityCodingCollection];
      if (!v58)
      {
        goto LABEL_83;
      }

      v59 = v58;
      v60 = [(HKConditionRecord *)self severityCodingCollection];
      v61 = [v5 severityCodingCollection];
      v62 = [v60 isEqual:v61];

      if (!v62)
      {
        goto LABEL_84;
      }
    }

    v6 = [(HKConditionRecord *)self bodySitesCodingCollections];
    v63 = [v5 bodySitesCodingCollections];
    v8 = v63;
    if (v6 == v63)
    {
    }

    else
    {
      v64 = [v5 bodySitesCodingCollections];
      if (!v64)
      {
        goto LABEL_83;
      }

      v65 = v64;
      v66 = [(HKConditionRecord *)self bodySitesCodingCollections];
      v67 = [v5 bodySitesCodingCollections];
      v68 = [v66 isEqualToArray:v67];

      if (!v68)
      {
        goto LABEL_84;
      }
    }

    v6 = [(HKConditionRecord *)self condition];
    v69 = [v5 condition];
    v8 = v69;
    if (v6 == v69)
    {
    }

    else
    {
      v70 = [v5 condition];
      if (!v70)
      {
        goto LABEL_83;
      }

      v71 = v70;
      v72 = [(HKConditionRecord *)self condition];
      v73 = [v5 condition];
      v74 = [v72 isEqual:v73];

      if (!v74)
      {
        goto LABEL_84;
      }
    }

    v6 = [(HKConditionRecord *)self categories];
    v75 = [v5 categories];
    v8 = v75;
    if (v6 == v75)
    {
    }

    else
    {
      v76 = [v5 categories];
      if (!v76)
      {
        goto LABEL_83;
      }

      v77 = v76;
      v78 = [(HKConditionRecord *)self categories];
      v79 = [v5 categories];
      v80 = [v78 isEqualToArray:v79];

      if (!v80)
      {
        goto LABEL_84;
      }
    }

    v6 = [(HKConditionRecord *)self clinicalStatus];
    v81 = [v5 clinicalStatus];
    v8 = v81;
    if (v6 == v81)
    {
    }

    else
    {
      v82 = [v5 clinicalStatus];
      if (!v82)
      {
        goto LABEL_83;
      }

      v83 = v82;
      v84 = [(HKConditionRecord *)self clinicalStatus];
      v85 = [v5 clinicalStatus];
      v86 = [v84 isEqual:v85];

      if (!v86)
      {
        goto LABEL_84;
      }
    }

    v6 = [(HKConditionRecord *)self verificationStatus];
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
        goto LABEL_83;
      }

      v89 = v88;
      v90 = [(HKConditionRecord *)self verificationStatus];
      v91 = [v5 verificationStatus];
      v92 = [v90 isEqual:v91];

      if (!v92)
      {
        goto LABEL_84;
      }
    }

    v6 = [(HKConditionRecord *)self severity];
    v93 = [v5 severity];
    v8 = v93;
    if (v6 == v93)
    {
    }

    else
    {
      v94 = [v5 severity];
      if (!v94)
      {
        goto LABEL_83;
      }

      v95 = v94;
      v96 = [(HKConditionRecord *)self severity];
      v97 = [v5 severity];
      v98 = [v96 isEqual:v97];

      if (!v98)
      {
        goto LABEL_84;
      }
    }

    v6 = [(HKConditionRecord *)self bodySites];
    v99 = [v5 bodySites];
    v8 = v99;
    if (v6 == v99)
    {

LABEL_88:
      v14 = 1;
      goto LABEL_85;
    }

    v100 = [v5 bodySites];
    if (v100)
    {
      v101 = v100;
      v102 = [(HKConditionRecord *)self bodySites];
      v103 = [v5 bodySites];
      v104 = [v102 isEqualToArray:v103];

      if (v104)
      {
        goto LABEL_88;
      }

LABEL_84:
      v14 = 0;
LABEL_85:

      goto LABEL_86;
    }

LABEL_83:

    goto LABEL_84;
  }

  v14 = 0;
LABEL_86:

  return v14;
}

- (id)clinicalStatusCodingCollection
{
  v3 = [(HKConditionRecord *)self clinicalStatusCoding];

  if (v3)
  {
    v4 = [(HKConditionRecord *)self clinicalStatusCoding];
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
  v3 = [(HKConditionRecord *)self verificationStatusCoding];

  if (v3)
  {
    v4 = [(HKConditionRecord *)self verificationStatusCoding];
    v5 = [HKMedicalCodingCollection collectionWithCoding:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setConditionCodingCollection:(id)a3
{
  v4 = [a3 copy];
  conditionCodingCollection = self->_conditionCodingCollection;
  self->_conditionCodingCollection = v4;

  v8 = [(HKConditionRecord *)self conditionCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v8];
  condition = self->_condition;
  self->_condition = v6;
}

- (void)_setCategoriesCodingCollections:(id)a3
{
  v4 = [a3 copy];
  categoriesCodingCollections = self->_categoriesCodingCollections;
  self->_categoriesCodingCollections = v4;

  v8 = [(HKConditionRecord *)self categoriesCodingCollections];
  v6 = [v8 hk_map:&__block_literal_global_128];
  categories = self->_categories;
  self->_categories = v6;
}

- (void)_setAsserter:(id)a3
{
  v4 = [a3 copy];
  asserter = self->_asserter;
  self->_asserter = v4;

  MEMORY[0x1EEE66BB8](v4, asserter);
}

- (void)_setAbatement:(id)a3
{
  v4 = [a3 copy];
  abatement = self->_abatement;
  self->_abatement = v4;

  MEMORY[0x1EEE66BB8](v4, abatement);
}

- (void)_setOnset:(id)a3
{
  v4 = [a3 copy];
  onset = self->_onset;
  self->_onset = v4;

  MEMORY[0x1EEE66BB8](v4, onset);
}

- (void)_setRecordedDate:(id)a3
{
  v4 = [a3 copy];
  recordedDate = self->_recordedDate;
  self->_recordedDate = v4;

  MEMORY[0x1EEE66BB8](v4, recordedDate);
}

- (void)_setClinicalStatusCoding:(id)a3
{
  v4 = [a3 copy];
  clinicalStatusCoding = self->_clinicalStatusCoding;
  self->_clinicalStatusCoding = v4;

  if (self->_clinicalStatusCoding)
  {
    v9 = [(HKConditionRecord *)self clinicalStatusCodingCollection];
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

- (void)_setVerificationStatusCoding:(id)a3
{
  v4 = [a3 copy];
  verificationStatusCoding = self->_verificationStatusCoding;
  self->_verificationStatusCoding = v4;

  if (self->_verificationStatusCoding)
  {
    v9 = [(HKConditionRecord *)self verificationStatusCodingCollection];
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

- (void)_setSeverityCodingCollection:(id)a3
{
  v4 = [a3 copy];
  severityCodingCollection = self->_severityCodingCollection;
  self->_severityCodingCollection = v4;

  if (self->_severityCodingCollection)
  {
    v9 = [(HKConditionRecord *)self severityCodingCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v9];
    severity = self->_severity;
    self->_severity = v6;

    v8 = v9;
  }

  else
  {
    v8 = self->_severity;
    self->_severity = 0;
  }
}

- (void)_setBodySitesCodingCollections:(id)a3
{
  v4 = [a3 copy];
  bodySitesCodingCollections = self->_bodySitesCodingCollections;
  self->_bodySitesCodingCollections = v4;

  if (self->_bodySitesCodingCollections)
  {
    v9 = [(HKConditionRecord *)self bodySitesCodingCollections];
    v6 = [(NSArray *)v9 hk_map:&__block_literal_global_126_1];
    bodySites = self->_bodySites;
    self->_bodySites = v6;

    v8 = v9;
  }

  else
  {
    v8 = self->_bodySites;
    self->_bodySites = 0;
  }
}

- (HKConcept)condition
{
  condition = self->_condition;
  if (condition)
  {
    v3 = condition;
  }

  else
  {
    v4 = [(HKConditionRecord *)self conditionCodingCollection];
    v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
  }

  return v3;
}

- (void)_setCondition:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      [HKConditionRecord _setCondition:v5];
    }
  }

  v6 = [v4 copy];
  condition = self->_condition;
  self->_condition = v6;
}

- (NSArray)categories
{
  categories = self->_categories;
  if (categories)
  {
    v3 = categories;
  }

  else
  {
    v4 = [(HKConditionRecord *)self categoriesCodingCollections];
    v3 = [v4 hk_map:&__block_literal_global_128_1];
  }

  return v3;
}

- (void)_setCategories:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      [HKConditionRecord _setCategories:v5];
    }
  }

  v6 = [v4 copy];
  categories = self->_categories;
  self->_categories = v6;
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
      v4 = [(HKConditionRecord *)self clinicalStatusCodingCollection];
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
      v4 = [(HKConditionRecord *)self verificationStatusCodingCollection];
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

- (HKConcept)severity
{
  if (self->_severityCodingCollection)
  {
    severity = self->_severity;
    if (severity)
    {
      v3 = severity;
    }

    else
    {
      v4 = [(HKConditionRecord *)self severityCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setSeverity:(id)a3
{
  v4 = [a3 copy];
  severity = self->_severity;
  self->_severity = v4;

  MEMORY[0x1EEE66BB8](v4, severity);
}

- (NSArray)bodySites
{
  if (self->_bodySitesCodingCollections)
  {
    bodySites = self->_bodySites;
    if (bodySites)
    {
      v3 = bodySites;
    }

    else
    {
      v4 = [(HKConditionRecord *)self bodySitesCodingCollections];
      v3 = [v4 hk_map:&__block_literal_global_130_0];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setBodySites:(id)a3
{
  v4 = [a3 copy];
  bodySites = self->_bodySites;
  self->_bodySites = v4;

  MEMORY[0x1EEE66BB8](v4, bodySites);
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v13.receiver = self;
  v13.super_class = HKConditionRecord;
  v5 = [(HKMedicalRecord *)&v13 _validateWithConfiguration:a3.var0, a3.var1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    if (self->_conditionCodingCollection)
    {
      if (self->_categoriesCodingCollections)
      {
        v8 = 0;
        goto LABEL_10;
      }

      v9 = MEMORY[0x1E696ABC0];
      v10 = objc_opt_class();
      v11 = @"%@: categoriesCodingCollections must not be nil";
    }

    else
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = objc_opt_class();
      v11 = @"%@: conditionCodingCollection must not be nil";
    }

    v7 = [v9 hk_errorForInvalidArgument:@"@" class:v10 selector:a2 format:{v11, self}];
  }

  v8 = v7;
LABEL_10:

  return v8;
}

@end