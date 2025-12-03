@interface HKMedicationOrder
+ (id)_newMedicationOrderWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 medicationCodingCollection:(id)self5 prescriber:(id)self6 numberOfFills:(int64_t)self7 dosages:(id)self8 earliestDosageDate:(id)self9 writtenDate:(id)writtenDate endedDate:(id)endedDate statusCoding:(id)coding reasonCodingCollections:(id)collections reasonEndedCodingCollection:(id)codingCollection statusReasonCodingCollection:(id)reasonCodingCollection config:(id)config;
+ (id)cachedConceptRelationshipKeyPaths;
+ (id)defaultDisplayString;
+ (id)indexableConceptKeyPaths;
+ (id)medicationOrderWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 country:(id)self2 state:(unint64_t)self3 medicationCodingCollection:(id)self4 prescriber:(id)self5 numberOfFills:(int64_t)self6 dosages:(id)self7 earliestDosageDate:(id)self8 writtenDate:(id)self9 endedDate:(id)endedDate statusCoding:(id)coding reasonCodingCollections:(id)collections reasonEndedCodingCollection:(id)codingCollection statusReasonCodingCollection:(id)reasonCodingCollection;
- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error;
- (BOOL)isEquivalent:(id)equivalent;
- (HKConcept)medication;
- (HKConcept)reasonEnded;
- (HKConcept)status;
- (HKConcept)statusReason;
- (HKMedicationOrder)init;
- (HKMedicationOrder)initWithCoder:(id)coder;
- (NSArray)reason;
- (NSString)description;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)codingsForKeyPath:(id)path error:(id *)error;
- (id)medicalRecordCodings;
- (id)statusCodingCollection;
- (void)_setDosages:(id)dosages;
- (void)_setEarliestDosageDate:(id)date;
- (void)_setEndedDate:(id)date;
- (void)_setMedication:(id)medication;
- (void)_setMedicationCodingCollection:(id)collection;
- (void)_setPrescriber:(id)prescriber;
- (void)_setReason:(id)reason;
- (void)_setReasonCodingCollections:(id)collections;
- (void)_setReasonEnded:(id)ended;
- (void)_setReasonEndedCodingCollection:(id)collection;
- (void)_setStatus:(id)status;
- (void)_setStatusCoding:(id)coding;
- (void)_setStatusReason:(id)reason;
- (void)_setStatusReasonCodingCollection:(id)collection;
- (void)_setWrittenDate:(id)date;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMedicationOrder

+ (id)_newMedicationOrderWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 medicationCodingCollection:(id)self5 prescriber:(id)self6 numberOfFills:(int64_t)self7 dosages:(id)self8 earliestDosageDate:(id)self9 writtenDate:(id)writtenDate endedDate:(id)endedDate statusCoding:(id)coding reasonCodingCollections:(id)collections reasonEndedCodingCollection:(id)codingCollection statusReasonCodingCollection:(id)reasonCodingCollection config:(id)config
{
  errorCopy = error;
  collectionCopy = collection;
  prescriberCopy = prescriber;
  dosagesCopy = dosages;
  dosageDateCopy = dosageDate;
  writtenDateCopy = writtenDate;
  endedDateCopy = endedDate;
  codingCopy = coding;
  collectionsCopy = collections;
  codingCollectionCopy = codingCollection;
  reasonCodingCollectionCopy = reasonCodingCollection;
  configCopy = config;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __365__HKMedicationOrder__newMedicationOrderWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_medicationCodingCollection_prescriber_numberOfFills_dosages_earliestDosageDate_writtenDate_endedDate_statusCoding_reasonCodingCollections_reasonEndedCodingCollection_statusReasonCodingCollection_config___block_invoke;
  aBlock[3] = &unk_1E7376CD0;
  v69 = collectionCopy;
  v70 = prescriberCopy;
  v71 = dosagesCopy;
  v72 = dosageDateCopy;
  v73 = writtenDateCopy;
  v74 = endedDateCopy;
  v75 = codingCopy;
  v76 = collectionsCopy;
  v77 = codingCollectionCopy;
  v78 = reasonCodingCollectionCopy;
  v79 = configCopy;
  fillsCopy = fills;
  v64 = configCopy;
  v63 = reasonCodingCollectionCopy;
  v62 = codingCollectionCopy;
  v61 = collectionsCopy;
  v60 = codingCopy;
  v59 = endedDateCopy;
  v58 = writtenDateCopy;
  v57 = dosageDateCopy;
  v56 = dosagesCopy;
  v55 = prescriberCopy;
  v54 = collectionCopy;
  countryCopy = country;
  sortDateCopy = sortDate;
  metadataCopy = metadata;
  deviceCopy = device;
  localeCopy = locale;
  identifierCopy = identifier;
  dateCopy = date;
  noteCopy = note;
  typeCopy = type;
  v45 = _Block_copy(aBlock);
  v67.receiver = self;
  v67.super_class = &OBJC_METACLASS___HKMedicationOrder;
  v66 = objc_msgSendSuper2(&v67, sel__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config_, typeCopy, noteCopy, errorCopy, dateCopy, identifierCopy, localeCopy, version, deviceCopy, metadataCopy, sortDateCopy, countryCopy, state, v45);

  return v66;
}

void __365__HKMedicationOrder__newMedicationOrderWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_medicationCodingCollection_prescriber_numberOfFills_dosages_earliestDosageDate_writtenDate_endedDate_statusCoding_reasonCodingCollections_reasonEndedCodingCollection_statusReasonCodingCollection_config___block_invoke(uint64_t a1, void *a2)
{
  v24 = a2;
  v3 = [*(a1 + 32) copy];
  v4 = v24[22];
  v24[22] = v3;

  v5 = [*(a1 + 40) copy];
  v6 = v24[23];
  v24[23] = v5;

  v24[24] = *(a1 + 120);
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

  v17 = [*(a1 + 88) copy];
  v18 = v24[30];
  v24[30] = v17;

  v19 = [*(a1 + 96) copy];
  v20 = v24[31];
  v24[31] = v19;

  v21 = [*(a1 + 104) copy];
  v22 = v24[32];
  v24[32] = v21;

  v23 = *(a1 + 112);
  if (v23)
  {
    (*(v23 + 16))(v23, v24);
  }
}

- (HKMedicationOrder)init
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
  v10.super_class = HKMedicationOrder;
  v6 = [(HKSample *)&v10 description];
  reasonEndedCodingCollection = self->_reasonEndedCodingCollection;
  v8 = [v3 stringWithFormat:@"<%@:%p super=%@medicationCodingCollection = %@prescriber = %@numberOfFills = %lddosages = %@earliestDosageDate = %@writtenDate = %@endedDate = %@statusCoding = %@reasonCodingCollections = %@reasonEndedCodingCollection = %@statusReasonCodingCollection = %@>", v5, self, v6, self->_medicationCodingCollection, self->_prescriber, self->_numberOfFills, self->_dosages, self->_earliestDosageDate, self->_writtenDate, self->_endedDate, self->_statusCoding, self->_reasonCodingCollections, reasonEndedCodingCollection, self->_statusReasonCodingCollection];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKMedicationOrder;
  coderCopy = coder;
  [(HKMedicalRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_medicationCodingCollection forKey:{@"MedicationCodingCollection", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_prescriber forKey:@"Prescriber"];
  [coderCopy encodeInteger:self->_numberOfFills forKey:@"NumberOfFills"];
  [coderCopy encodeObject:self->_dosages forKey:@"Dosages"];
  [coderCopy encodeObject:self->_earliestDosageDate forKey:@"EarliestDosageDate"];
  [coderCopy encodeObject:self->_writtenDate forKey:@"WrittenDate"];
  [coderCopy encodeObject:self->_endedDate forKey:@"EndedDate"];
  [coderCopy encodeObject:self->_statusCoding forKey:@"StatusCoding"];
  [coderCopy encodeObject:self->_reasonCodingCollections forKey:@"ReasonCodingCollections"];
  [coderCopy encodeObject:self->_reasonEndedCodingCollection forKey:@"ReasonEndedCodingCollection"];
  [coderCopy encodeObject:self->_statusReasonCodingCollection forKey:@"StatusReasonCodingCollection"];
  [coderCopy encodeObject:self->_medication forKey:@"Medication"];
  [coderCopy encodeObject:self->_status forKey:@"Status"];
  [coderCopy encodeObject:self->_reason forKey:@"Reason"];
  [coderCopy encodeObject:self->_reasonEnded forKey:@"ReasonEnded"];
  [coderCopy encodeObject:self->_statusReason forKey:@"StatusReason"];
}

- (HKMedicationOrder)initWithCoder:(id)coder
{
  coderCopy = coder;
  v40.receiver = self;
  v40.super_class = HKMedicationOrder;
  v5 = [(HKMedicalRecord *)&v40 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MedicationCodingCollection"];
    medicationCodingCollection = v5->_medicationCodingCollection;
    v5->_medicationCodingCollection = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Prescriber"];
    prescriber = v5->_prescriber;
    v5->_prescriber = v8;

    v5->_numberOfFills = [coderCopy decodeIntegerForKey:@"NumberOfFills"];
    v10 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"Dosages"];
    dosages = v5->_dosages;
    v5->_dosages = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EarliestDosageDate"];
    earliestDosageDate = v5->_earliestDosageDate;
    v5->_earliestDosageDate = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WrittenDate"];
    writtenDate = v5->_writtenDate;
    v5->_writtenDate = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EndedDate"];
    endedDate = v5->_endedDate;
    v5->_endedDate = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StatusCoding"];
    statusCoding = v5->_statusCoding;
    v5->_statusCoding = v19;

    v21 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"ReasonCodingCollections"];
    reasonCodingCollections = v5->_reasonCodingCollections;
    v5->_reasonCodingCollections = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ReasonEndedCodingCollection"];
    reasonEndedCodingCollection = v5->_reasonEndedCodingCollection;
    v5->_reasonEndedCodingCollection = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StatusReasonCodingCollection"];
    statusReasonCodingCollection = v5->_statusReasonCodingCollection;
    v5->_statusReasonCodingCollection = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Medication"];
    medication = v5->_medication;
    v5->_medication = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Status"];
    status = v5->_status;
    v5->_status = v30;

    v32 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"Reason"];
    reason = v5->_reason;
    v5->_reason = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ReasonEnded"];
    reasonEnded = v5->_reasonEnded;
    v5->_reasonEnded = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StatusReason"];
    statusReason = v5->_statusReason;
    v5->_statusReason = v37;
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
    v101.receiver = self;
    v101.super_class = HKMedicationOrder;
    if (![(HKMedicalRecord *)&v101 isEquivalent:v5])
    {
      goto LABEL_80;
    }

    medicationCodingCollection = [(HKMedicationOrder *)self medicationCodingCollection];
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
        goto LABEL_79;
      }

      v10 = medicationCodingCollection3;
      medicationCodingCollection4 = [(HKMedicationOrder *)self medicationCodingCollection];
      medicationCodingCollection5 = [v5 medicationCodingCollection];
      v13 = [medicationCodingCollection4 isEqual:medicationCodingCollection5];

      if (!v13)
      {
        goto LABEL_80;
      }
    }

    medicationCodingCollection = [(HKMedicationOrder *)self prescriber];
    prescriber = [v5 prescriber];
    v8 = prescriber;
    if (medicationCodingCollection == prescriber)
    {
    }

    else
    {
      prescriber2 = [v5 prescriber];
      if (!prescriber2)
      {
        goto LABEL_79;
      }

      v17 = prescriber2;
      prescriber3 = [(HKMedicationOrder *)self prescriber];
      prescriber4 = [v5 prescriber];
      v20 = [prescriber3 isEqualToString:prescriber4];

      if (!v20)
      {
        goto LABEL_80;
      }
    }

    numberOfFills = [(HKMedicationOrder *)self numberOfFills];
    if (numberOfFills != [v5 numberOfFills])
    {
      goto LABEL_80;
    }

    medicationCodingCollection = [(HKMedicationOrder *)self dosages];
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
        goto LABEL_79;
      }

      v24 = dosages2;
      dosages3 = [(HKMedicationOrder *)self dosages];
      dosages4 = [v5 dosages];
      v27 = [dosages3 isEqualToArray:dosages4];

      if (!v27)
      {
        goto LABEL_80;
      }
    }

    medicationCodingCollection = [(HKMedicationOrder *)self earliestDosageDate];
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
        goto LABEL_79;
      }

      v30 = earliestDosageDate2;
      earliestDosageDate3 = [(HKMedicationOrder *)self earliestDosageDate];
      earliestDosageDate4 = [v5 earliestDosageDate];
      v33 = [earliestDosageDate3 isEqual:earliestDosageDate4];

      if (!v33)
      {
        goto LABEL_80;
      }
    }

    medicationCodingCollection = [(HKMedicationOrder *)self writtenDate];
    writtenDate = [v5 writtenDate];
    v8 = writtenDate;
    if (medicationCodingCollection == writtenDate)
    {
    }

    else
    {
      writtenDate2 = [v5 writtenDate];
      if (!writtenDate2)
      {
        goto LABEL_79;
      }

      v36 = writtenDate2;
      writtenDate3 = [(HKMedicationOrder *)self writtenDate];
      writtenDate4 = [v5 writtenDate];
      v39 = [writtenDate3 isEqual:writtenDate4];

      if (!v39)
      {
        goto LABEL_80;
      }
    }

    medicationCodingCollection = [(HKMedicationOrder *)self endedDate];
    endedDate = [v5 endedDate];
    v8 = endedDate;
    if (medicationCodingCollection == endedDate)
    {
    }

    else
    {
      endedDate2 = [v5 endedDate];
      if (!endedDate2)
      {
        goto LABEL_79;
      }

      v42 = endedDate2;
      endedDate3 = [(HKMedicationOrder *)self endedDate];
      endedDate4 = [v5 endedDate];
      v45 = [endedDate3 isEqual:endedDate4];

      if (!v45)
      {
        goto LABEL_80;
      }
    }

    medicationCodingCollection = [(HKMedicationOrder *)self statusCoding];
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
        goto LABEL_79;
      }

      v48 = statusCoding2;
      statusCoding3 = [(HKMedicationOrder *)self statusCoding];
      statusCoding4 = [v5 statusCoding];
      v51 = [statusCoding3 isEqual:statusCoding4];

      if (!v51)
      {
        goto LABEL_80;
      }
    }

    medicationCodingCollection = [(HKMedicationOrder *)self reasonCodingCollections];
    reasonCodingCollections = [v5 reasonCodingCollections];
    v8 = reasonCodingCollections;
    if (medicationCodingCollection == reasonCodingCollections)
    {
    }

    else
    {
      reasonCodingCollections2 = [v5 reasonCodingCollections];
      if (!reasonCodingCollections2)
      {
        goto LABEL_79;
      }

      v54 = reasonCodingCollections2;
      reasonCodingCollections3 = [(HKMedicationOrder *)self reasonCodingCollections];
      reasonCodingCollections4 = [v5 reasonCodingCollections];
      v57 = [reasonCodingCollections3 isEqualToArray:reasonCodingCollections4];

      if (!v57)
      {
        goto LABEL_80;
      }
    }

    medicationCodingCollection = [(HKMedicationOrder *)self reasonEndedCodingCollection];
    reasonEndedCodingCollection = [v5 reasonEndedCodingCollection];
    v8 = reasonEndedCodingCollection;
    if (medicationCodingCollection == reasonEndedCodingCollection)
    {
    }

    else
    {
      reasonEndedCodingCollection2 = [v5 reasonEndedCodingCollection];
      if (!reasonEndedCodingCollection2)
      {
        goto LABEL_79;
      }

      v60 = reasonEndedCodingCollection2;
      reasonEndedCodingCollection3 = [(HKMedicationOrder *)self reasonEndedCodingCollection];
      reasonEndedCodingCollection4 = [v5 reasonEndedCodingCollection];
      v63 = [reasonEndedCodingCollection3 isEqual:reasonEndedCodingCollection4];

      if (!v63)
      {
        goto LABEL_80;
      }
    }

    medicationCodingCollection = [(HKMedicationOrder *)self statusReasonCodingCollection];
    statusReasonCodingCollection = [v5 statusReasonCodingCollection];
    v8 = statusReasonCodingCollection;
    if (medicationCodingCollection == statusReasonCodingCollection)
    {
    }

    else
    {
      statusReasonCodingCollection2 = [v5 statusReasonCodingCollection];
      if (!statusReasonCodingCollection2)
      {
        goto LABEL_79;
      }

      v66 = statusReasonCodingCollection2;
      statusReasonCodingCollection3 = [(HKMedicationOrder *)self statusReasonCodingCollection];
      statusReasonCodingCollection4 = [v5 statusReasonCodingCollection];
      v69 = [statusReasonCodingCollection3 isEqual:statusReasonCodingCollection4];

      if (!v69)
      {
        goto LABEL_80;
      }
    }

    medicationCodingCollection = [(HKMedicationOrder *)self medication];
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
        goto LABEL_79;
      }

      v72 = medication2;
      medication3 = [(HKMedicationOrder *)self medication];
      medication4 = [v5 medication];
      v75 = [medication3 isEqual:medication4];

      if (!v75)
      {
        goto LABEL_80;
      }
    }

    medicationCodingCollection = [(HKMedicationOrder *)self status];
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
        goto LABEL_79;
      }

      v78 = status2;
      status3 = [(HKMedicationOrder *)self status];
      status4 = [v5 status];
      v81 = [status3 isEqual:status4];

      if (!v81)
      {
        goto LABEL_80;
      }
    }

    medicationCodingCollection = [(HKMedicationOrder *)self reason];
    reason = [v5 reason];
    v8 = reason;
    if (medicationCodingCollection == reason)
    {
    }

    else
    {
      reason2 = [v5 reason];
      if (!reason2)
      {
        goto LABEL_79;
      }

      v84 = reason2;
      reason3 = [(HKMedicationOrder *)self reason];
      reason4 = [v5 reason];
      v87 = [reason3 isEqualToArray:reason4];

      if (!v87)
      {
        goto LABEL_80;
      }
    }

    medicationCodingCollection = [(HKMedicationOrder *)self reasonEnded];
    reasonEnded = [v5 reasonEnded];
    v8 = reasonEnded;
    if (medicationCodingCollection == reasonEnded)
    {
    }

    else
    {
      reasonEnded2 = [v5 reasonEnded];
      if (!reasonEnded2)
      {
        goto LABEL_79;
      }

      v90 = reasonEnded2;
      reasonEnded3 = [(HKMedicationOrder *)self reasonEnded];
      reasonEnded4 = [v5 reasonEnded];
      v93 = [reasonEnded3 isEqual:reasonEnded4];

      if (!v93)
      {
        goto LABEL_80;
      }
    }

    medicationCodingCollection = [(HKMedicationOrder *)self statusReason];
    statusReason = [v5 statusReason];
    v8 = statusReason;
    if (medicationCodingCollection == statusReason)
    {

LABEL_84:
      v14 = 1;
      goto LABEL_81;
    }

    statusReason2 = [v5 statusReason];
    if (statusReason2)
    {
      v96 = statusReason2;
      statusReason3 = [(HKMedicationOrder *)self statusReason];
      statusReason4 = [v5 statusReason];
      v99 = [statusReason3 isEqual:statusReason4];

      if (v99)
      {
        goto LABEL_84;
      }

LABEL_80:
      v14 = 0;
LABEL_81:

      goto LABEL_82;
    }

LABEL_79:

    goto LABEL_80;
  }

  v14 = 0;
LABEL_82:

  return v14;
}

- (id)statusCodingCollection
{
  statusCoding = [(HKMedicationOrder *)self statusCoding];
  v3 = [HKMedicalCodingCollection collectionWithCoding:statusCoding];

  return v3;
}

- (void)_setMedicationCodingCollection:(id)collection
{
  v4 = [collection copy];
  medicationCodingCollection = self->_medicationCodingCollection;
  self->_medicationCodingCollection = v4;

  medicationCodingCollection = [(HKMedicationOrder *)self medicationCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:medicationCodingCollection];
  medication = self->_medication;
  self->_medication = v6;
}

- (void)_setPrescriber:(id)prescriber
{
  v4 = [prescriber copy];
  prescriber = self->_prescriber;
  self->_prescriber = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setDosages:(id)dosages
{
  v4 = [dosages copy];
  dosages = self->_dosages;
  self->_dosages = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setEarliestDosageDate:(id)date
{
  v4 = [date copy];
  earliestDosageDate = self->_earliestDosageDate;
  self->_earliestDosageDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setWrittenDate:(id)date
{
  v4 = [date copy];
  writtenDate = self->_writtenDate;
  self->_writtenDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setEndedDate:(id)date
{
  v4 = [date copy];
  endedDate = self->_endedDate;
  self->_endedDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setStatusCoding:(id)coding
{
  v4 = [coding copy];
  statusCoding = self->_statusCoding;
  self->_statusCoding = v4;

  statusCodingCollection = [(HKMedicationOrder *)self statusCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:statusCodingCollection];
  status = self->_status;
  self->_status = v6;
}

- (void)_setReasonCodingCollections:(id)collections
{
  v4 = [collections copy];
  reasonCodingCollections = self->_reasonCodingCollections;
  self->_reasonCodingCollections = v4;

  if (self->_reasonCodingCollections)
  {
    reasonCodingCollections = [(HKMedicationOrder *)self reasonCodingCollections];
    v6 = [(NSArray *)reasonCodingCollections hk_map:&__block_literal_global_1];
    reason = self->_reason;
    self->_reason = v6;

    v8 = reasonCodingCollections;
  }

  else
  {
    v8 = self->_reason;
    self->_reason = 0;
  }
}

- (void)_setReasonEndedCodingCollection:(id)collection
{
  v4 = [collection copy];
  reasonEndedCodingCollection = self->_reasonEndedCodingCollection;
  self->_reasonEndedCodingCollection = v4;

  if (self->_reasonEndedCodingCollection)
  {
    reasonEndedCodingCollection = [(HKMedicationOrder *)self reasonEndedCodingCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:reasonEndedCodingCollection];
    reasonEnded = self->_reasonEnded;
    self->_reasonEnded = v6;

    v8 = reasonEndedCodingCollection;
  }

  else
  {
    v8 = self->_reasonEnded;
    self->_reasonEnded = 0;
  }
}

- (void)_setStatusReasonCodingCollection:(id)collection
{
  v4 = [collection copy];
  statusReasonCodingCollection = self->_statusReasonCodingCollection;
  self->_statusReasonCodingCollection = v4;

  if (self->_statusReasonCodingCollection)
  {
    statusReasonCodingCollection = [(HKMedicationOrder *)self statusReasonCodingCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:statusReasonCodingCollection];
    statusReason = self->_statusReason;
    self->_statusReason = v6;

    v8 = statusReasonCodingCollection;
  }

  else
  {
    v8 = self->_statusReason;
    self->_statusReason = 0;
  }
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
    medicationCodingCollection = [(HKMedicationOrder *)self medicationCodingCollection];
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
      [HKMedicationOrder _setMedication:v5];
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
    statusCodingCollection = [(HKMedicationOrder *)self statusCodingCollection];
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
      [HKMedicationOrder _setStatus:v5];
    }
  }

  v6 = [statusCopy copy];
  status = self->_status;
  self->_status = v6;
}

- (NSArray)reason
{
  if (self->_reasonCodingCollections)
  {
    reason = self->_reason;
    if (reason)
    {
      v3 = reason;
    }

    else
    {
      reasonCodingCollections = [(HKMedicationOrder *)self reasonCodingCollections];
      v3 = [reasonCodingCollections hk_map:&__block_literal_global_126];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setReason:(id)reason
{
  v4 = [reason copy];
  reason = self->_reason;
  self->_reason = v4;

  MEMORY[0x1EEE66BB8]();
}

- (HKConcept)reasonEnded
{
  if (self->_reasonEndedCodingCollection)
  {
    reasonEnded = self->_reasonEnded;
    if (reasonEnded)
    {
      v3 = reasonEnded;
    }

    else
    {
      reasonEndedCodingCollection = [(HKMedicationOrder *)self reasonEndedCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:reasonEndedCodingCollection];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setReasonEnded:(id)ended
{
  v4 = [ended copy];
  reasonEnded = self->_reasonEnded;
  self->_reasonEnded = v4;

  MEMORY[0x1EEE66BB8]();
}

- (HKConcept)statusReason
{
  if (self->_statusReasonCodingCollection)
  {
    statusReason = self->_statusReason;
    if (statusReason)
    {
      v3 = statusReason;
    }

    else
    {
      statusReasonCodingCollection = [(HKMedicationOrder *)self statusReasonCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:statusReasonCodingCollection];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setStatusReason:(id)reason
{
  v4 = [reason copy];
  statusReason = self->_statusReason;
  self->_statusReason = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v13.receiver = self;
  v13.super_class = HKMedicationOrder;
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

- (id)medicalRecordCodings
{
  medicationCodingCollection = [(HKMedicationOrder *)self medicationCodingCollection];
  codings = [medicationCodingCollection codings];

  return codings;
}

+ (id)defaultDisplayString
{
  v2 = HKHealthKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"UNSPECIFIED_MEDICATION" value:&stru_1F05FF230 table:@"Localizable-Clinical-Health-Records"];

  return v3;
}

+ (id)indexableConceptKeyPaths
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___HKMedicationOrder;
  v2 = objc_msgSendSuper2(&v5, sel_indexableConceptKeyPaths);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"medication"];
  [v3 addObject:@"status"];
  [v3 addObject:@"reason"];
  [v3 addObject:@"reasonEnded"];
  [v3 addObject:@"statusReason"];

  return v3;
}

+ (id)cachedConceptRelationshipKeyPaths
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___HKMedicationOrder;
  v2 = objc_msgSendSuper2(&v4, sel_cachedConceptRelationshipKeyPaths);

  return v2;
}

- (id)codingsForKeyPath:(id)path error:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = [HKConceptIndexUtilities firstComponentForKeyPath:pathCopy error:error];
  v8 = v7;
  if (!v7)
  {
    v13 = 0;
    goto LABEL_12;
  }

  if ([v7 isEqualToString:@"medication"])
  {
    medicationCodingCollection = [(HKMedicationOrder *)self medicationCodingCollection];
    v10 = [HKIndexableObject indexableObjectWithObject:medicationCodingCollection];
    v26[0] = v10;
    v11 = MEMORY[0x1E695DEC8];
    v12 = v26;
LABEL_4:
    v13 = [v11 arrayWithObjects:v12 count:1];

    goto LABEL_12;
  }

  if ([v8 isEqualToString:@"status"])
  {
    statusCoding = [(HKMedicationOrder *)self statusCoding];
    v15 = [HKMedicalCodingCollection collectionWithCoding:statusCoding];
    v16 = [HKIndexableObject indexableObjectWithObject:v15];
    v25 = v16;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];

LABEL_11:
    goto LABEL_12;
  }

  if ([v8 isEqualToString:@"reason"])
  {
    reasonCodingCollections = [(HKMedicationOrder *)self reasonCodingCollections];

    if (reasonCodingCollections)
    {
      statusCoding = [(HKMedicationOrder *)self reasonCodingCollections];
      v13 = [HKConceptIndexUtilities indexedCodingsForCodingCollections:statusCoding context:pathCopy error:error];
      goto LABEL_11;
    }

    goto LABEL_21;
  }

  if ([v8 isEqualToString:@"reasonEnded"])
  {
    reasonEndedCodingCollection = [(HKMedicationOrder *)self reasonEndedCodingCollection];

    if (reasonEndedCodingCollection)
    {
      medicationCodingCollection = [(HKMedicationOrder *)self reasonEndedCodingCollection];
      v10 = [HKIndexableObject indexableObjectWithObject:medicationCodingCollection];
      v24 = v10;
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v24;
      goto LABEL_4;
    }

    goto LABEL_21;
  }

  if ([v8 isEqualToString:@"statusReason"])
  {
    statusReasonCodingCollection = [(HKMedicationOrder *)self statusReasonCodingCollection];

    if (statusReasonCodingCollection)
    {
      medicationCodingCollection = [(HKMedicationOrder *)self statusReasonCodingCollection];
      v10 = [HKIndexableObject indexableObjectWithObject:medicationCodingCollection];
      v23 = v10;
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v23;
      goto LABEL_4;
    }

LABEL_21:
    v13 = MEMORY[0x1E695E0F0];
    goto LABEL_12;
  }

  v22.receiver = self;
  v22.super_class = HKMedicationOrder;
  v13 = [(HKMedicalRecord *)&v22 codingsForKeyPath:pathCopy error:error];
LABEL_12:

  v18 = *MEMORY[0x1E69E9840];

  return v13;
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

  if ([v10 isEqualToString:@"medication"])
  {
    if (HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 1, pathCopy, error))
    {
      error = [conceptsCopy firstObject];
      object = [error object];
      [(HKMedicationOrder *)self _setMedication:object];
LABEL_8:

      LOBYTE(error) = 1;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ([v11 isEqualToString:@"status"])
  {
    if (HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 1, pathCopy, error))
    {
      error = [conceptsCopy firstObject];
      object = [error object];
      [(HKMedicationOrder *)self _setStatus:object];
      goto LABEL_8;
    }

LABEL_9:
    LOBYTE(error) = 0;
    goto LABEL_10;
  }

  if (![v11 isEqualToString:@"reason"])
  {
    if ([v11 isEqualToString:@"reasonEnded"])
    {
      v17 = [conceptsCopy count];
      reasonEndedCodingCollection = [(HKMedicationOrder *)self reasonEndedCodingCollection];
      LODWORD(error) = HKIndexableObjectCheckCardinalityForIndexRestore(v17, reasonEndedCodingCollection != 0, pathCopy, error);

      if (!error)
      {
        goto LABEL_10;
      }

      error = [conceptsCopy firstObject];
      object = [error object];
      [(HKMedicationOrder *)self _setReasonEnded:object];
      goto LABEL_8;
    }

    if ([v11 isEqualToString:@"statusReason"])
    {
      v19 = [conceptsCopy count];
      statusReasonCodingCollection = [(HKMedicationOrder *)self statusReasonCodingCollection];
      LODWORD(error) = HKIndexableObjectCheckCardinalityForIndexRestore(v19, statusReasonCodingCollection != 0, pathCopy, error);

      if (!error)
      {
        goto LABEL_10;
      }

      error = [conceptsCopy firstObject];
      object = [error object];
      [(HKMedicationOrder *)self _setStatusReason:object];
      goto LABEL_8;
    }

    v22.receiver = self;
    v22.super_class = HKMedicationOrder;
    v21 = [(HKMedicalRecord *)&v22 applyConcepts:conceptsCopy forKeyPath:pathCopy error:error];
LABEL_24:
    LOBYTE(error) = v21;
    goto LABEL_10;
  }

  reasonCodingCollections = [(HKMedicationOrder *)self reasonCodingCollections];

  if (!reasonCodingCollections)
  {
    v21 = HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 0, pathCopy, error);
    goto LABEL_24;
  }

  reasonCodingCollections2 = [(HKMedicationOrder *)self reasonCodingCollections];
  v16 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", conceptsCopy, [reasonCodingCollections2 count], pathCopy, error);

  LOBYTE(error) = v16 != 0;
  if (v16)
  {
    [(HKMedicationOrder *)self _setReason:v16];
  }

LABEL_10:
  return error;
}

+ (id)medicationOrderWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 country:(id)self2 state:(unint64_t)self3 medicationCodingCollection:(id)self4 prescriber:(id)self5 numberOfFills:(int64_t)self6 dosages:(id)self7 earliestDosageDate:(id)self8 writtenDate:(id)self9 endedDate:(id)endedDate statusCoding:(id)coding reasonCodingCollections:(id)collections reasonEndedCodingCollection:(id)codingCollection statusReasonCodingCollection:(id)reasonCodingCollection
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
  prescriberCopy = prescriber;
  dosagesCopy = dosages;
  dosageDateCopy = dosageDate;
  writtenDateCopy = writtenDate;
  endedDateCopy = endedDate;
  codingCopy = coding;
  collectionsCopy = collections;
  codingCollectionCopy = codingCollection;
  reasonCodingCollectionCopy = reasonCodingCollection;
  v35 = @"modifiedDate";
  v36 = dateCopy;
  v37 = v36;
  if (dosageDateCopy)
  {
    v38 = @"earliestDosageDate";

    dateForUTC = [dosageDateCopy dateForUTC];

    v35 = v38;
    if (!writtenDateCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dateForUTC = v36;
  if (writtenDateCopy)
  {
LABEL_3:
    v40 = @"writtenDate";

    dateForUTC2 = [writtenDateCopy dateForUTC];

    dateForUTC = dateForUTC2;
    v35 = v40;
  }

LABEL_4:
  v42 = writtenDateCopy;
  v45 = writtenDateCopy;
  v43 = [HKSemanticDate semanticDateWithKeyPath:v35 date:dateForUTC];
  v49 = [HKMedicationOrder medicationOrderWithType:typeCopy note:noteCopy enteredInError:errorCopy modifiedDate:v37 originIdentifier:identifierCopy locale:localeCopy extractionVersion:version device:deviceCopy metadata:metadataCopy sortDate:v43 country:countryCopy state:state medicationCodingCollection:collectionCopy prescriber:prescriberCopy numberOfFills:fills dosages:dosagesCopy earliestDosageDate:dosageDateCopy writtenDate:v42 endedDate:endedDateCopy statusCoding:codingCopy reasonCodingCollections:collectionsCopy reasonEndedCodingCollection:codingCollectionCopy statusReasonCodingCollection:reasonCodingCollectionCopy];

  return v49;
}

@end