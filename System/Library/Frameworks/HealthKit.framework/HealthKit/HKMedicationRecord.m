@interface HKMedicationRecord
+ (id)_newMedicationRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 medicationCodingCollection:(id)a15 assertionType:(int64_t)a16 asserter:(id)a17 assertionDate:(id)a18 statusCoding:(id)a19 dosages:(id)a20 earliestDosageDate:(id)a21 reasonForUseCodingCollections:(id)a22 notTaken:(BOOL)a23 reasonsNotTakenCodingCollections:(id)a24 effectiveStartDate:(id)a25 effectiveEndDate:(id)a26 config:(id)a27;
+ (id)cachedConceptRelationshipKeyPaths;
+ (id)defaultDisplayString;
+ (id)indexableConceptKeyPaths;
+ (id)medicationRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 country:(id)a12 state:(unint64_t)a13 medicationCodingCollection:(id)a14 assertionType:(int64_t)a15 asserter:(id)a16 assertionDate:(id)a17 statusCoding:(id)a18 dosages:(id)a19 earliestDosageDate:(id)a20 reasonForUseCodingCollections:(id)a21 notTaken:(BOOL)a22 reasonsNotTakenCodingCollections:(id)a23 effectiveStartDate:(id)a24 effectiveEndDate:(id)a25;
- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
- (BOOL)isEquivalent:(id)a3;
- (HKConcept)medication;
- (HKConcept)status;
- (HKMedicationRecord)init;
- (HKMedicationRecord)initWithCoder:(id)a3;
- (NSArray)reasonForUse;
- (NSArray)reasonsNotTaken;
- (NSString)description;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)codingsForKeyPath:(id)a3 error:(id *)a4;
- (id)medicalRecordCodings;
- (id)statusCodingCollection;
- (void)_setAsserter:(id)a3;
- (void)_setAssertionDate:(id)a3;
- (void)_setDosages:(id)a3;
- (void)_setEarliestDosageDate:(id)a3;
- (void)_setEffectiveEndDate:(id)a3;
- (void)_setEffectiveStartDate:(id)a3;
- (void)_setMedication:(id)a3;
- (void)_setMedicationCodingCollection:(id)a3;
- (void)_setReasonForUse:(id)a3;
- (void)_setReasonForUseCodingCollections:(id)a3;
- (void)_setReasonsNotTaken:(id)a3;
- (void)_setReasonsNotTakenCodingCollections:(id)a3;
- (void)_setStatus:(id)a3;
- (void)_setStatusCoding:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMedicationRecord

- (id)medicalRecordCodings
{
  v2 = [(HKMedicationRecord *)self medicationCodingCollection];
  v3 = [v2 codings];

  return v3;
}

+ (id)defaultDisplayString
{
  v2 = HKHealthKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"UNSPECIFIED_MEDICATION" value:&stru_1F05FF230 table:@"Localizable-Clinical-Health-Records"];

  return v3;
}

+ (id)_newMedicationRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 medicationCodingCollection:(id)a15 assertionType:(int64_t)a16 asserter:(id)a17 assertionDate:(id)a18 statusCoding:(id)a19 dosages:(id)a20 earliestDosageDate:(id)a21 reasonForUseCodingCollections:(id)a22 notTaken:(BOOL)a23 reasonsNotTakenCodingCollections:(id)a24 effectiveStartDate:(id)a25 effectiveEndDate:(id)a26 config:(id)a27
{
  v66 = a5;
  v54 = a15;
  v27 = a17;
  v28 = a18;
  v29 = a19;
  v30 = a20;
  v31 = a21;
  v32 = a22;
  v33 = a24;
  v34 = a25;
  v35 = a26;
  v36 = a27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __384__HKMedicationRecord__newMedicationRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_medicationCodingCollection_assertionType_asserter_assertionDate_statusCoding_dosages_earliestDosageDate_reasonForUseCodingCollections_notTaken_reasonsNotTakenCodingCollections_effectiveStartDate_effectiveEndDate_config___block_invoke;
  aBlock[3] = &unk_1E7381550;
  v70 = v54;
  v71 = v27;
  v72 = v28;
  v73 = v29;
  v74 = v30;
  v75 = v31;
  v82 = a23;
  v76 = v32;
  v77 = v33;
  v78 = v34;
  v79 = v35;
  v80 = v36;
  v81 = a16;
  v65 = v36;
  v64 = v35;
  v63 = v34;
  v62 = v33;
  v61 = v32;
  v60 = v31;
  v59 = v30;
  v58 = v29;
  v57 = v28;
  v56 = v27;
  v55 = v54;
  v37 = a13;
  v38 = a12;
  v39 = a11;
  v40 = a10;
  v41 = a8;
  v42 = a7;
  v43 = a6;
  v44 = a4;
  v45 = a3;
  v46 = _Block_copy(aBlock);
  v68.receiver = a1;
  v68.super_class = &OBJC_METACLASS___HKMedicationRecord;
  v67 = objc_msgSendSuper2(&v68, sel__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config_, v45, v44, v66, v43, v42, v41, a9, v40, v39, v38, v37, a14, v46);

  return v67;
}

void __384__HKMedicationRecord__newMedicationRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_medicationCodingCollection_assertionType_asserter_assertionDate_statusCoding_dosages_earliestDosageDate_reasonForUseCodingCollections_notTaken_reasonsNotTakenCodingCollections_effectiveStartDate_effectiveEndDate_config___block_invoke(uint64_t a1, void *a2)
{
  v24 = a2;
  v3 = [*(a1 + 32) copy];
  v4 = v24[22];
  v24[22] = v3;

  v24[23] = *(a1 + 120);
  v5 = [*(a1 + 40) copy];
  v6 = v24[24];
  v24[24] = v5;

  v7 = [*(a1 + 48) copy];
  v8 = v24[25];
  v24[25] = v7;

  v9 = [*(a1 + 56) copy];
  v10 = v24[26];
  v24[26] = v9;

  v11 = [*(a1 + 64) copy];
  v12 = v24[27];
  v24[27] = v11;

  v13 = [*(a1 + 72) copy];
  v14 = v24[28];
  v24[28] = v13;

  v15 = [*(a1 + 80) copy];
  v16 = v24[29];
  v24[29] = v15;

  *(v24 + 240) = *(a1 + 128);
  v17 = [*(a1 + 88) copy];
  v18 = v24[31];
  v24[31] = v17;

  v19 = [*(a1 + 96) copy];
  v20 = v24[32];
  v24[32] = v19;

  v21 = [*(a1 + 104) copy];
  v22 = v24[33];
  v24[33] = v21;

  v23 = *(a1 + 112);
  if (v23)
  {
    (*(v23 + 16))(v23, v24);
  }
}

- (HKMedicationRecord)init
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
  v10.super_class = HKMedicationRecord;
  v6 = [(HKSample *)&v10 description];
  medicationCodingCollection = self->_medicationCodingCollection;
  v8 = [v3 stringWithFormat:@"<%@:%p super=%@medicationCodingCollection = %@assertionType = %ldasserter = %@assertionDate = %@statusCoding = %@dosages = %@earliestDosageDate = %@reasonForUseCodingCollections = %@notTaken = %ldreasonsNotTakenCodingCollections = %@effectiveStartDate = %@effectiveEndDate = %@>", v5, self, v6, medicationCodingCollection, self->_assertionType, self->_asserter, self->_assertionDate, self->_statusCoding, self->_dosages, self->_earliestDosageDate, self->_reasonForUseCodingCollections, self->_notTaken, self->_reasonsNotTakenCodingCollections, self->_effectiveStartDate, self->_effectiveEndDate];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKMedicationRecord;
  v4 = a3;
  [(HKMedicalRecord *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_medicationCodingCollection forKey:{@"MedicationCodingCollection", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_assertionType forKey:@"AssertionType"];
  [v4 encodeObject:self->_asserter forKey:@"Asserter"];
  [v4 encodeObject:self->_assertionDate forKey:@"AssertionDate"];
  [v4 encodeObject:self->_statusCoding forKey:@"StatusCoding"];
  [v4 encodeObject:self->_dosages forKey:@"Dosages"];
  [v4 encodeObject:self->_earliestDosageDate forKey:@"EarliestDosageDate"];
  [v4 encodeObject:self->_reasonForUseCodingCollections forKey:@"ReasonForUseCodingCollections"];
  [v4 encodeBool:self->_notTaken forKey:@"NotTaken"];
  [v4 encodeObject:self->_reasonsNotTakenCodingCollections forKey:@"ReasonsNotTakenCodingCollections"];
  [v4 encodeObject:self->_effectiveStartDate forKey:@"EffectiveStartDate"];
  [v4 encodeObject:self->_effectiveEndDate forKey:@"EffectiveEndDate"];
  [v4 encodeObject:self->_medication forKey:@"Medication"];
  [v4 encodeObject:self->_status forKey:@"Status"];
  [v4 encodeObject:self->_reasonForUse forKey:@"ReasonForUse"];
  [v4 encodeObject:self->_reasonsNotTaken forKey:@"ReasonsNotTaken"];
}

- (HKMedicationRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = HKMedicationRecord;
  v5 = [(HKMedicalRecord *)&v40 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MedicationCodingCollection"];
    medicationCodingCollection = v5->_medicationCodingCollection;
    v5->_medicationCodingCollection = v6;

    v5->_assertionType = [v4 decodeIntegerForKey:@"AssertionType"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Asserter"];
    asserter = v5->_asserter;
    v5->_asserter = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AssertionDate"];
    assertionDate = v5->_assertionDate;
    v5->_assertionDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StatusCoding"];
    statusCoding = v5->_statusCoding;
    v5->_statusCoding = v12;

    v14 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"Dosages"];
    dosages = v5->_dosages;
    v5->_dosages = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EarliestDosageDate"];
    earliestDosageDate = v5->_earliestDosageDate;
    v5->_earliestDosageDate = v17;

    v19 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"ReasonForUseCodingCollections"];
    reasonForUseCodingCollections = v5->_reasonForUseCodingCollections;
    v5->_reasonForUseCodingCollections = v20;

    v5->_notTaken = [v4 decodeBoolForKey:@"NotTaken"];
    v22 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"ReasonsNotTakenCodingCollections"];
    reasonsNotTakenCodingCollections = v5->_reasonsNotTakenCodingCollections;
    v5->_reasonsNotTakenCodingCollections = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EffectiveStartDate"];
    effectiveStartDate = v5->_effectiveStartDate;
    v5->_effectiveStartDate = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EffectiveEndDate"];
    effectiveEndDate = v5->_effectiveEndDate;
    v5->_effectiveEndDate = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Medication"];
    medication = v5->_medication;
    v5->_medication = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Status"];
    status = v5->_status;
    v5->_status = v31;

    v33 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v34 = [v4 decodeObjectOfClasses:v33 forKey:@"ReasonForUse"];
    reasonForUse = v5->_reasonForUse;
    v5->_reasonForUse = v34;

    v36 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v37 = [v4 decodeObjectOfClasses:v36 forKey:@"ReasonsNotTaken"];
    reasonsNotTaken = v5->_reasonsNotTaken;
    v5->_reasonsNotTaken = v37;
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
    v96.receiver = self;
    v96.super_class = HKMedicationRecord;
    if (![(HKMedicalRecord *)&v96 isEquivalent:v5])
    {
      goto LABEL_76;
    }

    v6 = [(HKMedicationRecord *)self medicationCodingCollection];
    v7 = [v5 medicationCodingCollection];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [v5 medicationCodingCollection];
      if (!v9)
      {
        goto LABEL_75;
      }

      v10 = v9;
      v11 = [(HKMedicationRecord *)self medicationCodingCollection];
      v12 = [v5 medicationCodingCollection];
      v13 = [v11 isEqual:v12];

      if (!v13)
      {
        goto LABEL_76;
      }
    }

    v15 = [(HKMedicationRecord *)self assertionType];
    if (v15 != [v5 assertionType])
    {
      goto LABEL_76;
    }

    v6 = [(HKMedicationRecord *)self asserter];
    v16 = [v5 asserter];
    v8 = v16;
    if (v6 == v16)
    {
    }

    else
    {
      v17 = [v5 asserter];
      if (!v17)
      {
        goto LABEL_75;
      }

      v18 = v17;
      v19 = [(HKMedicationRecord *)self asserter];
      v20 = [v5 asserter];
      v21 = [v19 isEqualToString:v20];

      if (!v21)
      {
        goto LABEL_76;
      }
    }

    v6 = [(HKMedicationRecord *)self assertionDate];
    v22 = [v5 assertionDate];
    v8 = v22;
    if (v6 == v22)
    {
    }

    else
    {
      v23 = [v5 assertionDate];
      if (!v23)
      {
        goto LABEL_75;
      }

      v24 = v23;
      v25 = [(HKMedicationRecord *)self assertionDate];
      v26 = [v5 assertionDate];
      v27 = [v25 isEqual:v26];

      if (!v27)
      {
        goto LABEL_76;
      }
    }

    v6 = [(HKMedicationRecord *)self statusCoding];
    v28 = [v5 statusCoding];
    v8 = v28;
    if (v6 == v28)
    {
    }

    else
    {
      v29 = [v5 statusCoding];
      if (!v29)
      {
        goto LABEL_75;
      }

      v30 = v29;
      v31 = [(HKMedicationRecord *)self statusCoding];
      v32 = [v5 statusCoding];
      v33 = [v31 isEqual:v32];

      if (!v33)
      {
        goto LABEL_76;
      }
    }

    v6 = [(HKMedicationRecord *)self dosages];
    v34 = [v5 dosages];
    v8 = v34;
    if (v6 == v34)
    {
    }

    else
    {
      v35 = [v5 dosages];
      if (!v35)
      {
        goto LABEL_75;
      }

      v36 = v35;
      v37 = [(HKMedicationRecord *)self dosages];
      v38 = [v5 dosages];
      v39 = [v37 isEqualToArray:v38];

      if (!v39)
      {
        goto LABEL_76;
      }
    }

    v6 = [(HKMedicationRecord *)self earliestDosageDate];
    v40 = [v5 earliestDosageDate];
    v8 = v40;
    if (v6 == v40)
    {
    }

    else
    {
      v41 = [v5 earliestDosageDate];
      if (!v41)
      {
        goto LABEL_75;
      }

      v42 = v41;
      v43 = [(HKMedicationRecord *)self earliestDosageDate];
      v44 = [v5 earliestDosageDate];
      v45 = [v43 isEqual:v44];

      if (!v45)
      {
        goto LABEL_76;
      }
    }

    v6 = [(HKMedicationRecord *)self reasonForUseCodingCollections];
    v46 = [v5 reasonForUseCodingCollections];
    v8 = v46;
    if (v6 == v46)
    {
    }

    else
    {
      v47 = [v5 reasonForUseCodingCollections];
      if (!v47)
      {
        goto LABEL_75;
      }

      v48 = v47;
      v49 = [(HKMedicationRecord *)self reasonForUseCodingCollections];
      v50 = [v5 reasonForUseCodingCollections];
      v51 = [v49 isEqualToArray:v50];

      if (!v51)
      {
        goto LABEL_76;
      }
    }

    v52 = [(HKMedicationRecord *)self notTaken];
    if (v52 != [v5 notTaken])
    {
      goto LABEL_76;
    }

    v6 = [(HKMedicationRecord *)self reasonsNotTakenCodingCollections];
    v53 = [v5 reasonsNotTakenCodingCollections];
    v8 = v53;
    if (v6 == v53)
    {
    }

    else
    {
      v54 = [v5 reasonsNotTakenCodingCollections];
      if (!v54)
      {
        goto LABEL_75;
      }

      v55 = v54;
      v56 = [(HKMedicationRecord *)self reasonsNotTakenCodingCollections];
      v57 = [v5 reasonsNotTakenCodingCollections];
      v58 = [v56 isEqualToArray:v57];

      if (!v58)
      {
        goto LABEL_76;
      }
    }

    v6 = [(HKMedicationRecord *)self effectiveStartDate];
    v59 = [v5 effectiveStartDate];
    v8 = v59;
    if (v6 == v59)
    {
    }

    else
    {
      v60 = [v5 effectiveStartDate];
      if (!v60)
      {
        goto LABEL_75;
      }

      v61 = v60;
      v62 = [(HKMedicationRecord *)self effectiveStartDate];
      v63 = [v5 effectiveStartDate];
      v64 = [v62 isEqual:v63];

      if (!v64)
      {
        goto LABEL_76;
      }
    }

    v6 = [(HKMedicationRecord *)self effectiveEndDate];
    v65 = [v5 effectiveEndDate];
    v8 = v65;
    if (v6 == v65)
    {
    }

    else
    {
      v66 = [v5 effectiveEndDate];
      if (!v66)
      {
        goto LABEL_75;
      }

      v67 = v66;
      v68 = [(HKMedicationRecord *)self effectiveEndDate];
      v69 = [v5 effectiveEndDate];
      v70 = [v68 isEqual:v69];

      if (!v70)
      {
        goto LABEL_76;
      }
    }

    v6 = [(HKMedicationRecord *)self medication];
    v71 = [v5 medication];
    v8 = v71;
    if (v6 == v71)
    {
    }

    else
    {
      v72 = [v5 medication];
      if (!v72)
      {
        goto LABEL_75;
      }

      v73 = v72;
      v74 = [(HKMedicationRecord *)self medication];
      v75 = [v5 medication];
      v76 = [v74 isEqual:v75];

      if (!v76)
      {
        goto LABEL_76;
      }
    }

    v6 = [(HKMedicationRecord *)self status];
    v77 = [v5 status];
    v8 = v77;
    if (v6 == v77)
    {
    }

    else
    {
      v78 = [v5 status];
      if (!v78)
      {
        goto LABEL_75;
      }

      v79 = v78;
      v80 = [(HKMedicationRecord *)self status];
      v81 = [v5 status];
      v82 = [v80 isEqual:v81];

      if (!v82)
      {
        goto LABEL_76;
      }
    }

    v6 = [(HKMedicationRecord *)self reasonForUse];
    v83 = [v5 reasonForUse];
    v8 = v83;
    if (v6 == v83)
    {
    }

    else
    {
      v84 = [v5 reasonForUse];
      if (!v84)
      {
        goto LABEL_75;
      }

      v85 = v84;
      v86 = [(HKMedicationRecord *)self reasonForUse];
      v87 = [v5 reasonForUse];
      v88 = [v86 isEqualToArray:v87];

      if (!v88)
      {
        goto LABEL_76;
      }
    }

    v6 = [(HKMedicationRecord *)self reasonsNotTaken];
    v89 = [v5 reasonsNotTaken];
    v8 = v89;
    if (v6 == v89)
    {

LABEL_80:
      v14 = 1;
      goto LABEL_77;
    }

    v90 = [v5 reasonsNotTaken];
    if (v90)
    {
      v91 = v90;
      v92 = [(HKMedicationRecord *)self reasonsNotTaken];
      v93 = [v5 reasonsNotTaken];
      v94 = [v92 isEqualToArray:v93];

      if (v94)
      {
        goto LABEL_80;
      }

LABEL_76:
      v14 = 0;
LABEL_77:

      goto LABEL_78;
    }

LABEL_75:

    goto LABEL_76;
  }

  v14 = 0;
LABEL_78:

  return v14;
}

- (id)statusCodingCollection
{
  v2 = [(HKMedicationRecord *)self statusCoding];
  v3 = [HKMedicalCodingCollection collectionWithCoding:v2];

  return v3;
}

- (void)_setMedicationCodingCollection:(id)a3
{
  v4 = [a3 copy];
  medicationCodingCollection = self->_medicationCodingCollection;
  self->_medicationCodingCollection = v4;

  v8 = [(HKMedicationRecord *)self medicationCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v8];
  medication = self->_medication;
  self->_medication = v6;
}

- (void)_setAsserter:(id)a3
{
  v4 = [a3 copy];
  asserter = self->_asserter;
  self->_asserter = v4;

  MEMORY[0x1EEE66BB8](v4, asserter);
}

- (void)_setAssertionDate:(id)a3
{
  v4 = [a3 copy];
  assertionDate = self->_assertionDate;
  self->_assertionDate = v4;

  MEMORY[0x1EEE66BB8](v4, assertionDate);
}

- (void)_setStatusCoding:(id)a3
{
  v4 = [a3 copy];
  statusCoding = self->_statusCoding;
  self->_statusCoding = v4;

  v8 = [(HKMedicationRecord *)self statusCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v8];
  status = self->_status;
  self->_status = v6;
}

- (void)_setDosages:(id)a3
{
  v4 = [a3 copy];
  dosages = self->_dosages;
  self->_dosages = v4;

  MEMORY[0x1EEE66BB8](v4, dosages);
}

- (void)_setEarliestDosageDate:(id)a3
{
  v4 = [a3 copy];
  earliestDosageDate = self->_earliestDosageDate;
  self->_earliestDosageDate = v4;

  MEMORY[0x1EEE66BB8](v4, earliestDosageDate);
}

- (void)_setReasonForUseCodingCollections:(id)a3
{
  v4 = [a3 copy];
  reasonForUseCodingCollections = self->_reasonForUseCodingCollections;
  self->_reasonForUseCodingCollections = v4;

  if (self->_reasonForUseCodingCollections)
  {
    v9 = [(HKMedicationRecord *)self reasonForUseCodingCollections];
    v6 = [(NSArray *)v9 hk_map:&__block_literal_global_94];
    reasonForUse = self->_reasonForUse;
    self->_reasonForUse = v6;

    v8 = v9;
  }

  else
  {
    v8 = self->_reasonForUse;
    self->_reasonForUse = 0;
  }
}

- (void)_setReasonsNotTakenCodingCollections:(id)a3
{
  v4 = [a3 copy];
  reasonsNotTakenCodingCollections = self->_reasonsNotTakenCodingCollections;
  self->_reasonsNotTakenCodingCollections = v4;

  if (self->_reasonsNotTakenCodingCollections)
  {
    v9 = [(HKMedicationRecord *)self reasonsNotTakenCodingCollections];
    v6 = [(NSArray *)v9 hk_map:&__block_literal_global_126_0];
    reasonsNotTaken = self->_reasonsNotTaken;
    self->_reasonsNotTaken = v6;

    v8 = v9;
  }

  else
  {
    v8 = self->_reasonsNotTaken;
    self->_reasonsNotTaken = 0;
  }
}

- (void)_setEffectiveStartDate:(id)a3
{
  v4 = [a3 copy];
  effectiveStartDate = self->_effectiveStartDate;
  self->_effectiveStartDate = v4;

  MEMORY[0x1EEE66BB8](v4, effectiveStartDate);
}

- (void)_setEffectiveEndDate:(id)a3
{
  v4 = [a3 copy];
  effectiveEndDate = self->_effectiveEndDate;
  self->_effectiveEndDate = v4;

  MEMORY[0x1EEE66BB8](v4, effectiveEndDate);
}

- (HKConcept)medication
{
  medication = self->_medication;
  if (medication)
  {
    v3 = medication;
  }

  else
  {
    v4 = [(HKMedicationRecord *)self medicationCodingCollection];
    v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
  }

  return v3;
}

- (void)_setMedication:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      [HKMedicationRecord _setMedication:v5];
    }
  }

  v6 = [v4 copy];
  medication = self->_medication;
  self->_medication = v6;
}

- (HKConcept)status
{
  status = self->_status;
  if (status)
  {
    v3 = status;
  }

  else
  {
    v4 = [(HKMedicationRecord *)self statusCodingCollection];
    v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
  }

  return v3;
}

- (void)_setStatus:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      [HKMedicationRecord _setStatus:v5];
    }
  }

  v6 = [v4 copy];
  status = self->_status;
  self->_status = v6;
}

- (NSArray)reasonForUse
{
  if (self->_reasonForUseCodingCollections)
  {
    reasonForUse = self->_reasonForUse;
    if (reasonForUse)
    {
      v3 = reasonForUse;
    }

    else
    {
      v4 = [(HKMedicationRecord *)self reasonForUseCodingCollections];
      v3 = [v4 hk_map:&__block_literal_global_128];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setReasonForUse:(id)a3
{
  v4 = [a3 copy];
  reasonForUse = self->_reasonForUse;
  self->_reasonForUse = v4;

  MEMORY[0x1EEE66BB8](v4, reasonForUse);
}

- (NSArray)reasonsNotTaken
{
  if (self->_reasonsNotTakenCodingCollections)
  {
    reasonsNotTaken = self->_reasonsNotTaken;
    if (reasonsNotTaken)
    {
      v3 = reasonsNotTaken;
    }

    else
    {
      v4 = [(HKMedicationRecord *)self reasonsNotTakenCodingCollections];
      v3 = [v4 hk_map:&__block_literal_global_130];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setReasonsNotTaken:(id)a3
{
  v4 = [a3 copy];
  reasonsNotTaken = self->_reasonsNotTaken;
  self->_reasonsNotTaken = v4;

  MEMORY[0x1EEE66BB8](v4, reasonsNotTaken);
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v13.receiver = self;
  v13.super_class = HKMedicationRecord;
  v5 = [(HKMedicalRecord *)&v13 _validateWithConfiguration:a3.var0, a3.var1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    if (self->_medicationCodingCollection)
    {
      if (self->_statusCoding)
      {
        v8 = 0;
        goto LABEL_10;
      }

      v9 = MEMORY[0x1E696ABC0];
      v10 = objc_opt_class();
      v11 = @"%@: statusCoding must not be nil";
    }

    else
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = objc_opt_class();
      v11 = @"%@: medicationCodingCollection must not be nil";
    }

    v7 = [v9 hk_errorForInvalidArgument:@"@" class:v10 selector:a2 format:{v11, self}];
  }

  v8 = v7;
LABEL_10:

  return v8;
}

+ (id)indexableConceptKeyPaths
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___HKMedicationRecord;
  v2 = objc_msgSendSuper2(&v5, sel_indexableConceptKeyPaths);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"medication"];
  [v3 addObject:@"status"];
  [v3 addObject:@"reasonForUse"];
  [v3 addObject:@"reasonsNotTaken"];

  return v3;
}

+ (id)cachedConceptRelationshipKeyPaths
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___HKMedicationRecord;
  v2 = objc_msgSendSuper2(&v4, sel_cachedConceptRelationshipKeyPaths);

  return v2;
}

- (id)codingsForKeyPath:(id)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [HKConceptIndexUtilities firstComponentForKeyPath:v6 error:a4];
  v8 = v7;
  if (!v7)
  {
    v11 = 0;
    goto LABEL_9;
  }

  if ([v7 isEqualToString:@"medication"])
  {
    v9 = [(HKMedicationRecord *)self medicationCodingCollection];
    v10 = [HKIndexableObject indexableObjectWithObject:v9];
    v20[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
LABEL_7:

LABEL_8:
    goto LABEL_9;
  }

  if ([v8 isEqualToString:@"status"])
  {
    v9 = [(HKMedicationRecord *)self statusCoding];
    v10 = [HKMedicalCodingCollection collectionWithCoding:v9];
    v12 = [HKIndexableObject indexableObjectWithObject:v10];
    v19 = v12;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];

    goto LABEL_7;
  }

  if ([v8 isEqualToString:@"reasonForUse"])
  {
    v15 = [(HKMedicationRecord *)self reasonForUseCodingCollections];

    if (v15)
    {
      v16 = [(HKMedicationRecord *)self reasonForUseCodingCollections];
LABEL_18:
      v9 = v16;
      v11 = [HKConceptIndexUtilities indexedCodingsForCodingCollections:v16 context:v6 error:a4];
      goto LABEL_8;
    }

LABEL_19:
    v11 = MEMORY[0x1E695E0F0];
    goto LABEL_9;
  }

  if ([v8 isEqualToString:@"reasonsNotTaken"])
  {
    v17 = [(HKMedicationRecord *)self reasonsNotTakenCodingCollections];

    if (v17)
    {
      v16 = [(HKMedicationRecord *)self reasonsNotTakenCodingCollections];
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v18.receiver = self;
  v18.super_class = HKMedicationRecord;
  v11 = [(HKMedicalRecord *)&v18 codingsForKeyPath:v6 error:a4];
LABEL_9:

  v13 = *MEMORY[0x1E69E9840];

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
    goto LABEL_9;
  }

  if (![v10 isEqualToString:@"medication"])
  {
    if ([v11 isEqualToString:@"status"])
    {
      if (HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 1, v9, a5))
      {
        v12 = [v8 firstObject];
        v13 = [v12 object];
        [(HKMedicationRecord *)self _setStatus:v13];
        goto LABEL_8;
      }

LABEL_9:
      v14 = 0;
      goto LABEL_10;
    }

    if ([v11 isEqualToString:@"reasonForUse"])
    {
      v16 = [(HKMedicationRecord *)self reasonForUseCodingCollections];

      if (v16)
      {
        v17 = [(HKMedicationRecord *)self reasonForUseCodingCollections];
        v18 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", v8, [v17 count], v9, a5);

        v14 = v18 != 0;
        if (v18)
        {
          [(HKMedicationRecord *)self _setReasonForUse:v18];
        }

LABEL_19:

        goto LABEL_10;
      }
    }

    else
    {
      if (![v11 isEqualToString:@"reasonsNotTaken"])
      {
        v22.receiver = self;
        v22.super_class = HKMedicationRecord;
        v21 = [(HKMedicalRecord *)&v22 applyConcepts:v8 forKeyPath:v9 error:a5];
        goto LABEL_22;
      }

      v19 = [(HKMedicationRecord *)self reasonsNotTakenCodingCollections];

      if (v19)
      {
        v20 = [(HKMedicationRecord *)self reasonsNotTakenCodingCollections];
        v18 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", v8, [v20 count], v9, a5);

        v14 = v18 != 0;
        if (v18)
        {
          [(HKMedicationRecord *)self _setReasonsNotTaken:v18];
        }

        goto LABEL_19;
      }
    }

    v21 = HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 0, v9, a5);
LABEL_22:
    v14 = v21;
    goto LABEL_10;
  }

  if (!HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 1, v9, a5))
  {
    goto LABEL_9;
  }

  v12 = [v8 firstObject];
  v13 = [v12 object];
  [(HKMedicationRecord *)self _setMedication:v13];
LABEL_8:

  v14 = 1;
LABEL_10:

  return v14;
}

+ (id)medicationRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 country:(id)a12 state:(unint64_t)a13 medicationCodingCollection:(id)a14 assertionType:(int64_t)a15 asserter:(id)a16 assertionDate:(id)a17 statusCoding:(id)a18 dosages:(id)a19 earliestDosageDate:(id)a20 reasonForUseCodingCollections:(id)a21 notTaken:(BOOL)a22 reasonsNotTakenCodingCollections:(id)a23 effectiveStartDate:(id)a24 effectiveEndDate:(id)a25
{
  v52 = a5;
  v62 = a3;
  v61 = a4;
  v29 = a6;
  v55 = a7;
  v54 = a8;
  v60 = a10;
  v59 = a11;
  v58 = a12;
  v57 = a14;
  v56 = a16;
  v30 = a17;
  v51 = a18;
  v50 = a19;
  v31 = a20;
  v49 = a21;
  v32 = a23;
  v33 = a24;
  v34 = a25;
  v35 = @"modifiedDate";
  v36 = v29;
  v37 = v36;
  if (v30)
  {
    v38 = @"assertionDate";

    v39 = [v30 dateForUTC];

    v35 = v38;
    if (!v34)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v39 = v36;
  if (v34)
  {
LABEL_3:
    v40 = @"effectiveEndDate";

    v41 = [v34 dateForUTC];

    v39 = v41;
    v35 = v40;
  }

LABEL_4:
  if (v33)
  {
    v42 = @"effectiveStartDate";

    v43 = [v33 dateForUTC];

    v39 = v43;
    v35 = v42;
  }

  if (v31)
  {
    v44 = @"earliestDosageDate";

    v45 = [v31 dateForUTC];

    v39 = v45;
    v35 = v44;
  }

  v46 = [HKSemanticDate semanticDateWithKeyPath:v35 date:v39];
  LOBYTE(v48) = a22;
  v53 = [HKMedicationRecord medicationRecordWithType:v62 note:v61 enteredInError:v52 modifiedDate:v37 originIdentifier:v55 locale:v54 extractionVersion:a9 device:v60 metadata:v59 sortDate:v46 country:v58 state:a13 medicationCodingCollection:v57 assertionType:a15 asserter:v56 assertionDate:v30 statusCoding:v51 dosages:v50 earliestDosageDate:v31 reasonForUseCodingCollections:v49 notTaken:v48 reasonsNotTakenCodingCollections:v32 effectiveStartDate:v33 effectiveEndDate:v34];

  return v53;
}

@end