@interface HKMedicationRecord
+ (id)_newMedicationRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 medicationCodingCollection:(id)self5 assertionType:(int64_t)self6 asserter:(id)self7 assertionDate:(id)self8 statusCoding:(id)self9 dosages:(id)dosages earliestDosageDate:(id)dosageDate reasonForUseCodingCollections:(id)collections notTaken:(BOOL)taken reasonsNotTakenCodingCollections:(id)codingCollections effectiveStartDate:(id)startDate effectiveEndDate:(id)endDate config:(id)config;
+ (id)cachedConceptRelationshipKeyPaths;
+ (id)defaultDisplayString;
+ (id)indexableConceptKeyPaths;
+ (id)medicationRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 country:(id)self2 state:(unint64_t)self3 medicationCodingCollection:(id)self4 assertionType:(int64_t)self5 asserter:(id)self6 assertionDate:(id)self7 statusCoding:(id)self8 dosages:(id)self9 earliestDosageDate:(id)dosageDate reasonForUseCodingCollections:(id)collections notTaken:(BOOL)taken reasonsNotTakenCodingCollections:(id)codingCollections effectiveStartDate:(id)startDate effectiveEndDate:(id)endDate;
- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error;
- (BOOL)isEquivalent:(id)equivalent;
- (HKConcept)medication;
- (HKConcept)status;
- (HKMedicationRecord)init;
- (HKMedicationRecord)initWithCoder:(id)coder;
- (NSArray)reasonForUse;
- (NSArray)reasonsNotTaken;
- (NSString)description;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)codingsForKeyPath:(id)path error:(id *)error;
- (id)medicalRecordCodings;
- (id)statusCodingCollection;
- (void)_setAsserter:(id)asserter;
- (void)_setAssertionDate:(id)date;
- (void)_setDosages:(id)dosages;
- (void)_setEarliestDosageDate:(id)date;
- (void)_setEffectiveEndDate:(id)date;
- (void)_setEffectiveStartDate:(id)date;
- (void)_setMedication:(id)medication;
- (void)_setMedicationCodingCollection:(id)collection;
- (void)_setReasonForUse:(id)use;
- (void)_setReasonForUseCodingCollections:(id)collections;
- (void)_setReasonsNotTaken:(id)taken;
- (void)_setReasonsNotTakenCodingCollections:(id)collections;
- (void)_setStatus:(id)status;
- (void)_setStatusCoding:(id)coding;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMedicationRecord

- (id)medicalRecordCodings
{
  medicationCodingCollection = [(HKMedicationRecord *)self medicationCodingCollection];
  codings = [medicationCodingCollection codings];

  return codings;
}

+ (id)defaultDisplayString
{
  v2 = HKHealthKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"UNSPECIFIED_MEDICATION" value:&stru_1F05FF230 table:@"Localizable-Clinical-Health-Records"];

  return v3;
}

+ (id)_newMedicationRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 medicationCodingCollection:(id)self5 assertionType:(int64_t)self6 asserter:(id)self7 assertionDate:(id)self8 statusCoding:(id)self9 dosages:(id)dosages earliestDosageDate:(id)dosageDate reasonForUseCodingCollections:(id)collections notTaken:(BOOL)taken reasonsNotTakenCodingCollections:(id)codingCollections effectiveStartDate:(id)startDate effectiveEndDate:(id)endDate config:(id)config
{
  errorCopy = error;
  collectionCopy = collection;
  asserterCopy = asserter;
  assertionDateCopy = assertionDate;
  codingCopy = coding;
  dosagesCopy = dosages;
  dosageDateCopy = dosageDate;
  collectionsCopy = collections;
  codingCollectionsCopy = codingCollections;
  startDateCopy = startDate;
  endDateCopy = endDate;
  configCopy = config;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __384__HKMedicationRecord__newMedicationRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_medicationCodingCollection_assertionType_asserter_assertionDate_statusCoding_dosages_earliestDosageDate_reasonForUseCodingCollections_notTaken_reasonsNotTakenCodingCollections_effectiveStartDate_effectiveEndDate_config___block_invoke;
  aBlock[3] = &unk_1E7381550;
  v70 = collectionCopy;
  v71 = asserterCopy;
  v72 = assertionDateCopy;
  v73 = codingCopy;
  v74 = dosagesCopy;
  v75 = dosageDateCopy;
  takenCopy = taken;
  v76 = collectionsCopy;
  v77 = codingCollectionsCopy;
  v78 = startDateCopy;
  v79 = endDateCopy;
  v80 = configCopy;
  assertionTypeCopy = assertionType;
  v65 = configCopy;
  v64 = endDateCopy;
  v63 = startDateCopy;
  v62 = codingCollectionsCopy;
  v61 = collectionsCopy;
  v60 = dosageDateCopy;
  v59 = dosagesCopy;
  v58 = codingCopy;
  v57 = assertionDateCopy;
  v56 = asserterCopy;
  v55 = collectionCopy;
  countryCopy = country;
  sortDateCopy = sortDate;
  metadataCopy = metadata;
  deviceCopy = device;
  localeCopy = locale;
  identifierCopy = identifier;
  dateCopy = date;
  noteCopy = note;
  typeCopy = type;
  v46 = _Block_copy(aBlock);
  v68.receiver = self;
  v68.super_class = &OBJC_METACLASS___HKMedicationRecord;
  v67 = objc_msgSendSuper2(&v68, sel__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config_, typeCopy, noteCopy, errorCopy, dateCopy, identifierCopy, localeCopy, version, deviceCopy, metadataCopy, sortDateCopy, countryCopy, state, v46);

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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKMedicationRecord;
  coderCopy = coder;
  [(HKMedicalRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_medicationCodingCollection forKey:{@"MedicationCodingCollection", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_assertionType forKey:@"AssertionType"];
  [coderCopy encodeObject:self->_asserter forKey:@"Asserter"];
  [coderCopy encodeObject:self->_assertionDate forKey:@"AssertionDate"];
  [coderCopy encodeObject:self->_statusCoding forKey:@"StatusCoding"];
  [coderCopy encodeObject:self->_dosages forKey:@"Dosages"];
  [coderCopy encodeObject:self->_earliestDosageDate forKey:@"EarliestDosageDate"];
  [coderCopy encodeObject:self->_reasonForUseCodingCollections forKey:@"ReasonForUseCodingCollections"];
  [coderCopy encodeBool:self->_notTaken forKey:@"NotTaken"];
  [coderCopy encodeObject:self->_reasonsNotTakenCodingCollections forKey:@"ReasonsNotTakenCodingCollections"];
  [coderCopy encodeObject:self->_effectiveStartDate forKey:@"EffectiveStartDate"];
  [coderCopy encodeObject:self->_effectiveEndDate forKey:@"EffectiveEndDate"];
  [coderCopy encodeObject:self->_medication forKey:@"Medication"];
  [coderCopy encodeObject:self->_status forKey:@"Status"];
  [coderCopy encodeObject:self->_reasonForUse forKey:@"ReasonForUse"];
  [coderCopy encodeObject:self->_reasonsNotTaken forKey:@"ReasonsNotTaken"];
}

- (HKMedicationRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v40.receiver = self;
  v40.super_class = HKMedicationRecord;
  v5 = [(HKMedicalRecord *)&v40 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MedicationCodingCollection"];
    medicationCodingCollection = v5->_medicationCodingCollection;
    v5->_medicationCodingCollection = v6;

    v5->_assertionType = [coderCopy decodeIntegerForKey:@"AssertionType"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Asserter"];
    asserter = v5->_asserter;
    v5->_asserter = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AssertionDate"];
    assertionDate = v5->_assertionDate;
    v5->_assertionDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StatusCoding"];
    statusCoding = v5->_statusCoding;
    v5->_statusCoding = v12;

    v14 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"Dosages"];
    dosages = v5->_dosages;
    v5->_dosages = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EarliestDosageDate"];
    earliestDosageDate = v5->_earliestDosageDate;
    v5->_earliestDosageDate = v17;

    v19 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"ReasonForUseCodingCollections"];
    reasonForUseCodingCollections = v5->_reasonForUseCodingCollections;
    v5->_reasonForUseCodingCollections = v20;

    v5->_notTaken = [coderCopy decodeBoolForKey:@"NotTaken"];
    v22 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"ReasonsNotTakenCodingCollections"];
    reasonsNotTakenCodingCollections = v5->_reasonsNotTakenCodingCollections;
    v5->_reasonsNotTakenCodingCollections = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EffectiveStartDate"];
    effectiveStartDate = v5->_effectiveStartDate;
    v5->_effectiveStartDate = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EffectiveEndDate"];
    effectiveEndDate = v5->_effectiveEndDate;
    v5->_effectiveEndDate = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Medication"];
    medication = v5->_medication;
    v5->_medication = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Status"];
    status = v5->_status;
    v5->_status = v31;

    v33 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"ReasonForUse"];
    reasonForUse = v5->_reasonForUse;
    v5->_reasonForUse = v34;

    v36 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v37 = [coderCopy decodeObjectOfClasses:v36 forKey:@"ReasonsNotTaken"];
    reasonsNotTaken = v5->_reasonsNotTaken;
    v5->_reasonsNotTaken = v37;
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
    v96.receiver = self;
    v96.super_class = HKMedicationRecord;
    if (![(HKMedicalRecord *)&v96 isEquivalent:v5])
    {
      goto LABEL_76;
    }

    medicationCodingCollection = [(HKMedicationRecord *)self medicationCodingCollection];
    medicationCodingCollection2 = [v5 medicationCodingCollection];
    v8 = medicationCodingCollection2;
    if (medicationCodingCollection == medicationCodingCollection2)
    {
    }

    else
    {
      medicationCodingCollection3 = [v5 medicationCodingCollection];
      if (!medicationCodingCollection3)
      {
        goto LABEL_75;
      }

      v10 = medicationCodingCollection3;
      medicationCodingCollection4 = [(HKMedicationRecord *)self medicationCodingCollection];
      medicationCodingCollection5 = [v5 medicationCodingCollection];
      v13 = [medicationCodingCollection4 isEqual:medicationCodingCollection5];

      if (!v13)
      {
        goto LABEL_76;
      }
    }

    assertionType = [(HKMedicationRecord *)self assertionType];
    if (assertionType != [v5 assertionType])
    {
      goto LABEL_76;
    }

    medicationCodingCollection = [(HKMedicationRecord *)self asserter];
    asserter = [v5 asserter];
    v8 = asserter;
    if (medicationCodingCollection == asserter)
    {
    }

    else
    {
      asserter2 = [v5 asserter];
      if (!asserter2)
      {
        goto LABEL_75;
      }

      v18 = asserter2;
      asserter3 = [(HKMedicationRecord *)self asserter];
      asserter4 = [v5 asserter];
      v21 = [asserter3 isEqualToString:asserter4];

      if (!v21)
      {
        goto LABEL_76;
      }
    }

    medicationCodingCollection = [(HKMedicationRecord *)self assertionDate];
    assertionDate = [v5 assertionDate];
    v8 = assertionDate;
    if (medicationCodingCollection == assertionDate)
    {
    }

    else
    {
      assertionDate2 = [v5 assertionDate];
      if (!assertionDate2)
      {
        goto LABEL_75;
      }

      v24 = assertionDate2;
      assertionDate3 = [(HKMedicationRecord *)self assertionDate];
      assertionDate4 = [v5 assertionDate];
      v27 = [assertionDate3 isEqual:assertionDate4];

      if (!v27)
      {
        goto LABEL_76;
      }
    }

    medicationCodingCollection = [(HKMedicationRecord *)self statusCoding];
    statusCoding = [v5 statusCoding];
    v8 = statusCoding;
    if (medicationCodingCollection == statusCoding)
    {
    }

    else
    {
      statusCoding2 = [v5 statusCoding];
      if (!statusCoding2)
      {
        goto LABEL_75;
      }

      v30 = statusCoding2;
      statusCoding3 = [(HKMedicationRecord *)self statusCoding];
      statusCoding4 = [v5 statusCoding];
      v33 = [statusCoding3 isEqual:statusCoding4];

      if (!v33)
      {
        goto LABEL_76;
      }
    }

    medicationCodingCollection = [(HKMedicationRecord *)self dosages];
    dosages = [v5 dosages];
    v8 = dosages;
    if (medicationCodingCollection == dosages)
    {
    }

    else
    {
      dosages2 = [v5 dosages];
      if (!dosages2)
      {
        goto LABEL_75;
      }

      v36 = dosages2;
      dosages3 = [(HKMedicationRecord *)self dosages];
      dosages4 = [v5 dosages];
      v39 = [dosages3 isEqualToArray:dosages4];

      if (!v39)
      {
        goto LABEL_76;
      }
    }

    medicationCodingCollection = [(HKMedicationRecord *)self earliestDosageDate];
    earliestDosageDate = [v5 earliestDosageDate];
    v8 = earliestDosageDate;
    if (medicationCodingCollection == earliestDosageDate)
    {
    }

    else
    {
      earliestDosageDate2 = [v5 earliestDosageDate];
      if (!earliestDosageDate2)
      {
        goto LABEL_75;
      }

      v42 = earliestDosageDate2;
      earliestDosageDate3 = [(HKMedicationRecord *)self earliestDosageDate];
      earliestDosageDate4 = [v5 earliestDosageDate];
      v45 = [earliestDosageDate3 isEqual:earliestDosageDate4];

      if (!v45)
      {
        goto LABEL_76;
      }
    }

    medicationCodingCollection = [(HKMedicationRecord *)self reasonForUseCodingCollections];
    reasonForUseCodingCollections = [v5 reasonForUseCodingCollections];
    v8 = reasonForUseCodingCollections;
    if (medicationCodingCollection == reasonForUseCodingCollections)
    {
    }

    else
    {
      reasonForUseCodingCollections2 = [v5 reasonForUseCodingCollections];
      if (!reasonForUseCodingCollections2)
      {
        goto LABEL_75;
      }

      v48 = reasonForUseCodingCollections2;
      reasonForUseCodingCollections3 = [(HKMedicationRecord *)self reasonForUseCodingCollections];
      reasonForUseCodingCollections4 = [v5 reasonForUseCodingCollections];
      v51 = [reasonForUseCodingCollections3 isEqualToArray:reasonForUseCodingCollections4];

      if (!v51)
      {
        goto LABEL_76;
      }
    }

    notTaken = [(HKMedicationRecord *)self notTaken];
    if (notTaken != [v5 notTaken])
    {
      goto LABEL_76;
    }

    medicationCodingCollection = [(HKMedicationRecord *)self reasonsNotTakenCodingCollections];
    reasonsNotTakenCodingCollections = [v5 reasonsNotTakenCodingCollections];
    v8 = reasonsNotTakenCodingCollections;
    if (medicationCodingCollection == reasonsNotTakenCodingCollections)
    {
    }

    else
    {
      reasonsNotTakenCodingCollections2 = [v5 reasonsNotTakenCodingCollections];
      if (!reasonsNotTakenCodingCollections2)
      {
        goto LABEL_75;
      }

      v55 = reasonsNotTakenCodingCollections2;
      reasonsNotTakenCodingCollections3 = [(HKMedicationRecord *)self reasonsNotTakenCodingCollections];
      reasonsNotTakenCodingCollections4 = [v5 reasonsNotTakenCodingCollections];
      v58 = [reasonsNotTakenCodingCollections3 isEqualToArray:reasonsNotTakenCodingCollections4];

      if (!v58)
      {
        goto LABEL_76;
      }
    }

    medicationCodingCollection = [(HKMedicationRecord *)self effectiveStartDate];
    effectiveStartDate = [v5 effectiveStartDate];
    v8 = effectiveStartDate;
    if (medicationCodingCollection == effectiveStartDate)
    {
    }

    else
    {
      effectiveStartDate2 = [v5 effectiveStartDate];
      if (!effectiveStartDate2)
      {
        goto LABEL_75;
      }

      v61 = effectiveStartDate2;
      effectiveStartDate3 = [(HKMedicationRecord *)self effectiveStartDate];
      effectiveStartDate4 = [v5 effectiveStartDate];
      v64 = [effectiveStartDate3 isEqual:effectiveStartDate4];

      if (!v64)
      {
        goto LABEL_76;
      }
    }

    medicationCodingCollection = [(HKMedicationRecord *)self effectiveEndDate];
    effectiveEndDate = [v5 effectiveEndDate];
    v8 = effectiveEndDate;
    if (medicationCodingCollection == effectiveEndDate)
    {
    }

    else
    {
      effectiveEndDate2 = [v5 effectiveEndDate];
      if (!effectiveEndDate2)
      {
        goto LABEL_75;
      }

      v67 = effectiveEndDate2;
      effectiveEndDate3 = [(HKMedicationRecord *)self effectiveEndDate];
      effectiveEndDate4 = [v5 effectiveEndDate];
      v70 = [effectiveEndDate3 isEqual:effectiveEndDate4];

      if (!v70)
      {
        goto LABEL_76;
      }
    }

    medicationCodingCollection = [(HKMedicationRecord *)self medication];
    medication = [v5 medication];
    v8 = medication;
    if (medicationCodingCollection == medication)
    {
    }

    else
    {
      medication2 = [v5 medication];
      if (!medication2)
      {
        goto LABEL_75;
      }

      v73 = medication2;
      medication3 = [(HKMedicationRecord *)self medication];
      medication4 = [v5 medication];
      v76 = [medication3 isEqual:medication4];

      if (!v76)
      {
        goto LABEL_76;
      }
    }

    medicationCodingCollection = [(HKMedicationRecord *)self status];
    status = [v5 status];
    v8 = status;
    if (medicationCodingCollection == status)
    {
    }

    else
    {
      status2 = [v5 status];
      if (!status2)
      {
        goto LABEL_75;
      }

      v79 = status2;
      status3 = [(HKMedicationRecord *)self status];
      status4 = [v5 status];
      v82 = [status3 isEqual:status4];

      if (!v82)
      {
        goto LABEL_76;
      }
    }

    medicationCodingCollection = [(HKMedicationRecord *)self reasonForUse];
    reasonForUse = [v5 reasonForUse];
    v8 = reasonForUse;
    if (medicationCodingCollection == reasonForUse)
    {
    }

    else
    {
      reasonForUse2 = [v5 reasonForUse];
      if (!reasonForUse2)
      {
        goto LABEL_75;
      }

      v85 = reasonForUse2;
      reasonForUse3 = [(HKMedicationRecord *)self reasonForUse];
      reasonForUse4 = [v5 reasonForUse];
      v88 = [reasonForUse3 isEqualToArray:reasonForUse4];

      if (!v88)
      {
        goto LABEL_76;
      }
    }

    medicationCodingCollection = [(HKMedicationRecord *)self reasonsNotTaken];
    reasonsNotTaken = [v5 reasonsNotTaken];
    v8 = reasonsNotTaken;
    if (medicationCodingCollection == reasonsNotTaken)
    {

LABEL_80:
      v14 = 1;
      goto LABEL_77;
    }

    reasonsNotTaken2 = [v5 reasonsNotTaken];
    if (reasonsNotTaken2)
    {
      v91 = reasonsNotTaken2;
      reasonsNotTaken3 = [(HKMedicationRecord *)self reasonsNotTaken];
      reasonsNotTaken4 = [v5 reasonsNotTaken];
      v94 = [reasonsNotTaken3 isEqualToArray:reasonsNotTaken4];

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
  statusCoding = [(HKMedicationRecord *)self statusCoding];
  v3 = [HKMedicalCodingCollection collectionWithCoding:statusCoding];

  return v3;
}

- (void)_setMedicationCodingCollection:(id)collection
{
  v4 = [collection copy];
  medicationCodingCollection = self->_medicationCodingCollection;
  self->_medicationCodingCollection = v4;

  medicationCodingCollection = [(HKMedicationRecord *)self medicationCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:medicationCodingCollection];
  medication = self->_medication;
  self->_medication = v6;
}

- (void)_setAsserter:(id)asserter
{
  v4 = [asserter copy];
  asserter = self->_asserter;
  self->_asserter = v4;

  MEMORY[0x1EEE66BB8](v4, asserter);
}

- (void)_setAssertionDate:(id)date
{
  v4 = [date copy];
  assertionDate = self->_assertionDate;
  self->_assertionDate = v4;

  MEMORY[0x1EEE66BB8](v4, assertionDate);
}

- (void)_setStatusCoding:(id)coding
{
  v4 = [coding copy];
  statusCoding = self->_statusCoding;
  self->_statusCoding = v4;

  statusCodingCollection = [(HKMedicationRecord *)self statusCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:statusCodingCollection];
  status = self->_status;
  self->_status = v6;
}

- (void)_setDosages:(id)dosages
{
  v4 = [dosages copy];
  dosages = self->_dosages;
  self->_dosages = v4;

  MEMORY[0x1EEE66BB8](v4, dosages);
}

- (void)_setEarliestDosageDate:(id)date
{
  v4 = [date copy];
  earliestDosageDate = self->_earliestDosageDate;
  self->_earliestDosageDate = v4;

  MEMORY[0x1EEE66BB8](v4, earliestDosageDate);
}

- (void)_setReasonForUseCodingCollections:(id)collections
{
  v4 = [collections copy];
  reasonForUseCodingCollections = self->_reasonForUseCodingCollections;
  self->_reasonForUseCodingCollections = v4;

  if (self->_reasonForUseCodingCollections)
  {
    reasonForUseCodingCollections = [(HKMedicationRecord *)self reasonForUseCodingCollections];
    v6 = [(NSArray *)reasonForUseCodingCollections hk_map:&__block_literal_global_94];
    reasonForUse = self->_reasonForUse;
    self->_reasonForUse = v6;

    v8 = reasonForUseCodingCollections;
  }

  else
  {
    v8 = self->_reasonForUse;
    self->_reasonForUse = 0;
  }
}

- (void)_setReasonsNotTakenCodingCollections:(id)collections
{
  v4 = [collections copy];
  reasonsNotTakenCodingCollections = self->_reasonsNotTakenCodingCollections;
  self->_reasonsNotTakenCodingCollections = v4;

  if (self->_reasonsNotTakenCodingCollections)
  {
    reasonsNotTakenCodingCollections = [(HKMedicationRecord *)self reasonsNotTakenCodingCollections];
    v6 = [(NSArray *)reasonsNotTakenCodingCollections hk_map:&__block_literal_global_126_0];
    reasonsNotTaken = self->_reasonsNotTaken;
    self->_reasonsNotTaken = v6;

    v8 = reasonsNotTakenCodingCollections;
  }

  else
  {
    v8 = self->_reasonsNotTaken;
    self->_reasonsNotTaken = 0;
  }
}

- (void)_setEffectiveStartDate:(id)date
{
  v4 = [date copy];
  effectiveStartDate = self->_effectiveStartDate;
  self->_effectiveStartDate = v4;

  MEMORY[0x1EEE66BB8](v4, effectiveStartDate);
}

- (void)_setEffectiveEndDate:(id)date
{
  v4 = [date copy];
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
    medicationCodingCollection = [(HKMedicationRecord *)self medicationCodingCollection];
    v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:medicationCodingCollection];
  }

  return v3;
}

- (void)_setMedication:(id)medication
{
  medicationCopy = medication;
  if (!medicationCopy)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      [HKMedicationRecord _setMedication:v5];
    }
  }

  v6 = [medicationCopy copy];
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
    statusCodingCollection = [(HKMedicationRecord *)self statusCodingCollection];
    v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:statusCodingCollection];
  }

  return v3;
}

- (void)_setStatus:(id)status
{
  statusCopy = status;
  if (!statusCopy)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      [HKMedicationRecord _setStatus:v5];
    }
  }

  v6 = [statusCopy copy];
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
      reasonForUseCodingCollections = [(HKMedicationRecord *)self reasonForUseCodingCollections];
      v3 = [reasonForUseCodingCollections hk_map:&__block_literal_global_128];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setReasonForUse:(id)use
{
  v4 = [use copy];
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
      reasonsNotTakenCodingCollections = [(HKMedicationRecord *)self reasonsNotTakenCodingCollections];
      v3 = [reasonsNotTakenCodingCollections hk_map:&__block_literal_global_130];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setReasonsNotTaken:(id)taken
{
  v4 = [taken copy];
  reasonsNotTaken = self->_reasonsNotTaken;
  self->_reasonsNotTaken = v4;

  MEMORY[0x1EEE66BB8](v4, reasonsNotTaken);
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v13.receiver = self;
  v13.super_class = HKMedicationRecord;
  v5 = [(HKMedicalRecord *)&v13 _validateWithConfiguration:configuration.var0, configuration.var1];
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
  v5.receiver = self;
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
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___HKMedicationRecord;
  v2 = objc_msgSendSuper2(&v4, sel_cachedConceptRelationshipKeyPaths);

  return v2;
}

- (id)codingsForKeyPath:(id)path error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = [HKConceptIndexUtilities firstComponentForKeyPath:pathCopy error:error];
  v8 = v7;
  if (!v7)
  {
    v11 = 0;
    goto LABEL_9;
  }

  if ([v7 isEqualToString:@"medication"])
  {
    medicationCodingCollection = [(HKMedicationRecord *)self medicationCodingCollection];
    v10 = [HKIndexableObject indexableObjectWithObject:medicationCodingCollection];
    v20[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
LABEL_7:

LABEL_8:
    goto LABEL_9;
  }

  if ([v8 isEqualToString:@"status"])
  {
    medicationCodingCollection = [(HKMedicationRecord *)self statusCoding];
    v10 = [HKMedicalCodingCollection collectionWithCoding:medicationCodingCollection];
    v12 = [HKIndexableObject indexableObjectWithObject:v10];
    v19 = v12;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];

    goto LABEL_7;
  }

  if ([v8 isEqualToString:@"reasonForUse"])
  {
    reasonForUseCodingCollections = [(HKMedicationRecord *)self reasonForUseCodingCollections];

    if (reasonForUseCodingCollections)
    {
      reasonForUseCodingCollections2 = [(HKMedicationRecord *)self reasonForUseCodingCollections];
LABEL_18:
      medicationCodingCollection = reasonForUseCodingCollections2;
      v11 = [HKConceptIndexUtilities indexedCodingsForCodingCollections:reasonForUseCodingCollections2 context:pathCopy error:error];
      goto LABEL_8;
    }

LABEL_19:
    v11 = MEMORY[0x1E695E0F0];
    goto LABEL_9;
  }

  if ([v8 isEqualToString:@"reasonsNotTaken"])
  {
    reasonsNotTakenCodingCollections = [(HKMedicationRecord *)self reasonsNotTakenCodingCollections];

    if (reasonsNotTakenCodingCollections)
    {
      reasonForUseCodingCollections2 = [(HKMedicationRecord *)self reasonsNotTakenCodingCollections];
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v18.receiver = self;
  v18.super_class = HKMedicationRecord;
  v11 = [(HKMedicalRecord *)&v18 codingsForKeyPath:pathCopy error:error];
LABEL_9:

  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error
{
  conceptsCopy = concepts;
  pathCopy = path;
  v10 = [HKConceptIndexUtilities firstComponentForKeyPath:pathCopy error:error];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_9;
  }

  if (![v10 isEqualToString:@"medication"])
  {
    if ([v11 isEqualToString:@"status"])
    {
      if (HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 1, pathCopy, error))
      {
        firstObject = [conceptsCopy firstObject];
        object = [firstObject object];
        [(HKMedicationRecord *)self _setStatus:object];
        goto LABEL_8;
      }

LABEL_9:
      v14 = 0;
      goto LABEL_10;
    }

    if ([v11 isEqualToString:@"reasonForUse"])
    {
      reasonForUseCodingCollections = [(HKMedicationRecord *)self reasonForUseCodingCollections];

      if (reasonForUseCodingCollections)
      {
        reasonForUseCodingCollections2 = [(HKMedicationRecord *)self reasonForUseCodingCollections];
        v18 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", conceptsCopy, [reasonForUseCodingCollections2 count], pathCopy, error);

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
        v21 = [(HKMedicalRecord *)&v22 applyConcepts:conceptsCopy forKeyPath:pathCopy error:error];
        goto LABEL_22;
      }

      reasonsNotTakenCodingCollections = [(HKMedicationRecord *)self reasonsNotTakenCodingCollections];

      if (reasonsNotTakenCodingCollections)
      {
        reasonsNotTakenCodingCollections2 = [(HKMedicationRecord *)self reasonsNotTakenCodingCollections];
        v18 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", conceptsCopy, [reasonsNotTakenCodingCollections2 count], pathCopy, error);

        v14 = v18 != 0;
        if (v18)
        {
          [(HKMedicationRecord *)self _setReasonsNotTaken:v18];
        }

        goto LABEL_19;
      }
    }

    v21 = HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 0, pathCopy, error);
LABEL_22:
    v14 = v21;
    goto LABEL_10;
  }

  if (!HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 1, pathCopy, error))
  {
    goto LABEL_9;
  }

  firstObject = [conceptsCopy firstObject];
  object = [firstObject object];
  [(HKMedicationRecord *)self _setMedication:object];
LABEL_8:

  v14 = 1;
LABEL_10:

  return v14;
}

+ (id)medicationRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 country:(id)self2 state:(unint64_t)self3 medicationCodingCollection:(id)self4 assertionType:(int64_t)self5 asserter:(id)self6 assertionDate:(id)self7 statusCoding:(id)self8 dosages:(id)self9 earliestDosageDate:(id)dosageDate reasonForUseCodingCollections:(id)collections notTaken:(BOOL)taken reasonsNotTakenCodingCollections:(id)codingCollections effectiveStartDate:(id)startDate effectiveEndDate:(id)endDate
{
  errorCopy = error;
  typeCopy = type;
  noteCopy = note;
  dateCopy = date;
  identifierCopy = identifier;
  localeCopy = locale;
  deviceCopy = device;
  metadataCopy = metadata;
  countryCopy = country;
  collectionCopy = collection;
  asserterCopy = asserter;
  assertionDateCopy = assertionDate;
  codingCopy = coding;
  dosagesCopy = dosages;
  dosageDateCopy = dosageDate;
  collectionsCopy = collections;
  codingCollectionsCopy = codingCollections;
  startDateCopy = startDate;
  endDateCopy = endDate;
  v35 = @"modifiedDate";
  v36 = dateCopy;
  v37 = v36;
  if (assertionDateCopy)
  {
    v38 = @"assertionDate";

    dateForUTC = [assertionDateCopy dateForUTC];

    v35 = v38;
    if (!endDateCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dateForUTC = v36;
  if (endDateCopy)
  {
LABEL_3:
    v40 = @"effectiveEndDate";

    dateForUTC2 = [endDateCopy dateForUTC];

    dateForUTC = dateForUTC2;
    v35 = v40;
  }

LABEL_4:
  if (startDateCopy)
  {
    v42 = @"effectiveStartDate";

    dateForUTC3 = [startDateCopy dateForUTC];

    dateForUTC = dateForUTC3;
    v35 = v42;
  }

  if (dosageDateCopy)
  {
    v44 = @"earliestDosageDate";

    dateForUTC4 = [dosageDateCopy dateForUTC];

    dateForUTC = dateForUTC4;
    v35 = v44;
  }

  v46 = [HKSemanticDate semanticDateWithKeyPath:v35 date:dateForUTC];
  LOBYTE(v48) = taken;
  v53 = [HKMedicationRecord medicationRecordWithType:typeCopy note:noteCopy enteredInError:errorCopy modifiedDate:v37 originIdentifier:identifierCopy locale:localeCopy extractionVersion:version device:deviceCopy metadata:metadataCopy sortDate:v46 country:countryCopy state:state medicationCodingCollection:collectionCopy assertionType:assertionType asserter:asserterCopy assertionDate:assertionDateCopy statusCoding:codingCopy dosages:dosagesCopy earliestDosageDate:dosageDateCopy reasonForUseCodingCollections:collectionsCopy notTaken:v48 reasonsNotTakenCodingCollections:codingCollectionsCopy effectiveStartDate:startDateCopy effectiveEndDate:endDateCopy];

  return v53;
}

@end