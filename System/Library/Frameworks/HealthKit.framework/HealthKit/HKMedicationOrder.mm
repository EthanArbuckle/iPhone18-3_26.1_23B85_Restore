@interface HKMedicationOrder
+ (id)_newMedicationOrderWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 medicationCodingCollection:(id)a15 prescriber:(id)a16 numberOfFills:(int64_t)a17 dosages:(id)a18 earliestDosageDate:(id)a19 writtenDate:(id)a20 endedDate:(id)a21 statusCoding:(id)a22 reasonCodingCollections:(id)a23 reasonEndedCodingCollection:(id)a24 statusReasonCodingCollection:(id)a25 config:(id)a26;
+ (id)cachedConceptRelationshipKeyPaths;
+ (id)defaultDisplayString;
+ (id)indexableConceptKeyPaths;
+ (id)medicationOrderWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 country:(id)a12 state:(unint64_t)a13 medicationCodingCollection:(id)a14 prescriber:(id)a15 numberOfFills:(int64_t)a16 dosages:(id)a17 earliestDosageDate:(id)a18 writtenDate:(id)a19 endedDate:(id)a20 statusCoding:(id)a21 reasonCodingCollections:(id)a22 reasonEndedCodingCollection:(id)a23 statusReasonCodingCollection:(id)a24;
- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
- (BOOL)isEquivalent:(id)a3;
- (HKConcept)medication;
- (HKConcept)reasonEnded;
- (HKConcept)status;
- (HKConcept)statusReason;
- (HKMedicationOrder)init;
- (HKMedicationOrder)initWithCoder:(id)a3;
- (NSArray)reason;
- (NSString)description;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)codingsForKeyPath:(id)a3 error:(id *)a4;
- (id)medicalRecordCodings;
- (id)statusCodingCollection;
- (void)_setDosages:(id)a3;
- (void)_setEarliestDosageDate:(id)a3;
- (void)_setEndedDate:(id)a3;
- (void)_setMedication:(id)a3;
- (void)_setMedicationCodingCollection:(id)a3;
- (void)_setPrescriber:(id)a3;
- (void)_setReason:(id)a3;
- (void)_setReasonCodingCollections:(id)a3;
- (void)_setReasonEnded:(id)a3;
- (void)_setReasonEndedCodingCollection:(id)a3;
- (void)_setStatus:(id)a3;
- (void)_setStatusCoding:(id)a3;
- (void)_setStatusReason:(id)a3;
- (void)_setStatusReasonCodingCollection:(id)a3;
- (void)_setWrittenDate:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMedicationOrder

+ (id)_newMedicationOrderWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 medicationCodingCollection:(id)a15 prescriber:(id)a16 numberOfFills:(int64_t)a17 dosages:(id)a18 earliestDosageDate:(id)a19 writtenDate:(id)a20 endedDate:(id)a21 statusCoding:(id)a22 reasonCodingCollections:(id)a23 reasonEndedCodingCollection:(id)a24 statusReasonCodingCollection:(id)a25 config:(id)a26
{
  v65 = a5;
  v53 = a15;
  v26 = a16;
  v27 = a18;
  v28 = a19;
  v29 = a20;
  v30 = a21;
  v31 = a22;
  v32 = a23;
  v33 = a24;
  v34 = a25;
  v35 = a26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __365__HKMedicationOrder__newMedicationOrderWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_medicationCodingCollection_prescriber_numberOfFills_dosages_earliestDosageDate_writtenDate_endedDate_statusCoding_reasonCodingCollections_reasonEndedCodingCollection_statusReasonCodingCollection_config___block_invoke;
  aBlock[3] = &unk_1E7376CD0;
  v69 = v53;
  v70 = v26;
  v71 = v27;
  v72 = v28;
  v73 = v29;
  v74 = v30;
  v75 = v31;
  v76 = v32;
  v77 = v33;
  v78 = v34;
  v79 = v35;
  v80 = a17;
  v64 = v35;
  v63 = v34;
  v62 = v33;
  v61 = v32;
  v60 = v31;
  v59 = v30;
  v58 = v29;
  v57 = v28;
  v56 = v27;
  v55 = v26;
  v54 = v53;
  v36 = a13;
  v37 = a12;
  v38 = a11;
  v39 = a10;
  v40 = a8;
  v41 = a7;
  v42 = a6;
  v43 = a4;
  v44 = a3;
  v45 = _Block_copy(aBlock);
  v67.receiver = a1;
  v67.super_class = &OBJC_METACLASS___HKMedicationOrder;
  v66 = objc_msgSendSuper2(&v67, sel__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config_, v44, v43, v65, v42, v41, v40, a9, v39, v38, v37, v36, a14, v45);

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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKMedicationOrder;
  v4 = a3;
  [(HKMedicalRecord *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_medicationCodingCollection forKey:{@"MedicationCodingCollection", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_prescriber forKey:@"Prescriber"];
  [v4 encodeInteger:self->_numberOfFills forKey:@"NumberOfFills"];
  [v4 encodeObject:self->_dosages forKey:@"Dosages"];
  [v4 encodeObject:self->_earliestDosageDate forKey:@"EarliestDosageDate"];
  [v4 encodeObject:self->_writtenDate forKey:@"WrittenDate"];
  [v4 encodeObject:self->_endedDate forKey:@"EndedDate"];
  [v4 encodeObject:self->_statusCoding forKey:@"StatusCoding"];
  [v4 encodeObject:self->_reasonCodingCollections forKey:@"ReasonCodingCollections"];
  [v4 encodeObject:self->_reasonEndedCodingCollection forKey:@"ReasonEndedCodingCollection"];
  [v4 encodeObject:self->_statusReasonCodingCollection forKey:@"StatusReasonCodingCollection"];
  [v4 encodeObject:self->_medication forKey:@"Medication"];
  [v4 encodeObject:self->_status forKey:@"Status"];
  [v4 encodeObject:self->_reason forKey:@"Reason"];
  [v4 encodeObject:self->_reasonEnded forKey:@"ReasonEnded"];
  [v4 encodeObject:self->_statusReason forKey:@"StatusReason"];
}

- (HKMedicationOrder)initWithCoder:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = HKMedicationOrder;
  v5 = [(HKMedicalRecord *)&v40 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MedicationCodingCollection"];
    medicationCodingCollection = v5->_medicationCodingCollection;
    v5->_medicationCodingCollection = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Prescriber"];
    prescriber = v5->_prescriber;
    v5->_prescriber = v8;

    v5->_numberOfFills = [v4 decodeIntegerForKey:@"NumberOfFills"];
    v10 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"Dosages"];
    dosages = v5->_dosages;
    v5->_dosages = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EarliestDosageDate"];
    earliestDosageDate = v5->_earliestDosageDate;
    v5->_earliestDosageDate = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WrittenDate"];
    writtenDate = v5->_writtenDate;
    v5->_writtenDate = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EndedDate"];
    endedDate = v5->_endedDate;
    v5->_endedDate = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StatusCoding"];
    statusCoding = v5->_statusCoding;
    v5->_statusCoding = v19;

    v21 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"ReasonCodingCollections"];
    reasonCodingCollections = v5->_reasonCodingCollections;
    v5->_reasonCodingCollections = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ReasonEndedCodingCollection"];
    reasonEndedCodingCollection = v5->_reasonEndedCodingCollection;
    v5->_reasonEndedCodingCollection = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StatusReasonCodingCollection"];
    statusReasonCodingCollection = v5->_statusReasonCodingCollection;
    v5->_statusReasonCodingCollection = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Medication"];
    medication = v5->_medication;
    v5->_medication = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Status"];
    status = v5->_status;
    v5->_status = v30;

    v32 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v33 = [v4 decodeObjectOfClasses:v32 forKey:@"Reason"];
    reason = v5->_reason;
    v5->_reason = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ReasonEnded"];
    reasonEnded = v5->_reasonEnded;
    v5->_reasonEnded = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StatusReason"];
    statusReason = v5->_statusReason;
    v5->_statusReason = v37;
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
    v101.receiver = self;
    v101.super_class = HKMedicationOrder;
    if (![(HKMedicalRecord *)&v101 isEquivalent:v5])
    {
      goto LABEL_80;
    }

    v6 = [(HKMedicationOrder *)self medicationCodingCollection];
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
        goto LABEL_79;
      }

      v10 = v9;
      v11 = [(HKMedicationOrder *)self medicationCodingCollection];
      v12 = [v5 medicationCodingCollection];
      v13 = [v11 isEqual:v12];

      if (!v13)
      {
        goto LABEL_80;
      }
    }

    v6 = [(HKMedicationOrder *)self prescriber];
    v15 = [v5 prescriber];
    v8 = v15;
    if (v6 == v15)
    {
    }

    else
    {
      v16 = [v5 prescriber];
      if (!v16)
      {
        goto LABEL_79;
      }

      v17 = v16;
      v18 = [(HKMedicationOrder *)self prescriber];
      v19 = [v5 prescriber];
      v20 = [v18 isEqualToString:v19];

      if (!v20)
      {
        goto LABEL_80;
      }
    }

    v21 = [(HKMedicationOrder *)self numberOfFills];
    if (v21 != [v5 numberOfFills])
    {
      goto LABEL_80;
    }

    v6 = [(HKMedicationOrder *)self dosages];
    v22 = [v5 dosages];
    v8 = v22;
    if (v6 == v22)
    {
    }

    else
    {
      v23 = [v5 dosages];
      if (!v23)
      {
        goto LABEL_79;
      }

      v24 = v23;
      v25 = [(HKMedicationOrder *)self dosages];
      v26 = [v5 dosages];
      v27 = [v25 isEqualToArray:v26];

      if (!v27)
      {
        goto LABEL_80;
      }
    }

    v6 = [(HKMedicationOrder *)self earliestDosageDate];
    v28 = [v5 earliestDosageDate];
    v8 = v28;
    if (v6 == v28)
    {
    }

    else
    {
      v29 = [v5 earliestDosageDate];
      if (!v29)
      {
        goto LABEL_79;
      }

      v30 = v29;
      v31 = [(HKMedicationOrder *)self earliestDosageDate];
      v32 = [v5 earliestDosageDate];
      v33 = [v31 isEqual:v32];

      if (!v33)
      {
        goto LABEL_80;
      }
    }

    v6 = [(HKMedicationOrder *)self writtenDate];
    v34 = [v5 writtenDate];
    v8 = v34;
    if (v6 == v34)
    {
    }

    else
    {
      v35 = [v5 writtenDate];
      if (!v35)
      {
        goto LABEL_79;
      }

      v36 = v35;
      v37 = [(HKMedicationOrder *)self writtenDate];
      v38 = [v5 writtenDate];
      v39 = [v37 isEqual:v38];

      if (!v39)
      {
        goto LABEL_80;
      }
    }

    v6 = [(HKMedicationOrder *)self endedDate];
    v40 = [v5 endedDate];
    v8 = v40;
    if (v6 == v40)
    {
    }

    else
    {
      v41 = [v5 endedDate];
      if (!v41)
      {
        goto LABEL_79;
      }

      v42 = v41;
      v43 = [(HKMedicationOrder *)self endedDate];
      v44 = [v5 endedDate];
      v45 = [v43 isEqual:v44];

      if (!v45)
      {
        goto LABEL_80;
      }
    }

    v6 = [(HKMedicationOrder *)self statusCoding];
    v46 = [v5 statusCoding];
    v8 = v46;
    if (v6 == v46)
    {
    }

    else
    {
      v47 = [v5 statusCoding];
      if (!v47)
      {
        goto LABEL_79;
      }

      v48 = v47;
      v49 = [(HKMedicationOrder *)self statusCoding];
      v50 = [v5 statusCoding];
      v51 = [v49 isEqual:v50];

      if (!v51)
      {
        goto LABEL_80;
      }
    }

    v6 = [(HKMedicationOrder *)self reasonCodingCollections];
    v52 = [v5 reasonCodingCollections];
    v8 = v52;
    if (v6 == v52)
    {
    }

    else
    {
      v53 = [v5 reasonCodingCollections];
      if (!v53)
      {
        goto LABEL_79;
      }

      v54 = v53;
      v55 = [(HKMedicationOrder *)self reasonCodingCollections];
      v56 = [v5 reasonCodingCollections];
      v57 = [v55 isEqualToArray:v56];

      if (!v57)
      {
        goto LABEL_80;
      }
    }

    v6 = [(HKMedicationOrder *)self reasonEndedCodingCollection];
    v58 = [v5 reasonEndedCodingCollection];
    v8 = v58;
    if (v6 == v58)
    {
    }

    else
    {
      v59 = [v5 reasonEndedCodingCollection];
      if (!v59)
      {
        goto LABEL_79;
      }

      v60 = v59;
      v61 = [(HKMedicationOrder *)self reasonEndedCodingCollection];
      v62 = [v5 reasonEndedCodingCollection];
      v63 = [v61 isEqual:v62];

      if (!v63)
      {
        goto LABEL_80;
      }
    }

    v6 = [(HKMedicationOrder *)self statusReasonCodingCollection];
    v64 = [v5 statusReasonCodingCollection];
    v8 = v64;
    if (v6 == v64)
    {
    }

    else
    {
      v65 = [v5 statusReasonCodingCollection];
      if (!v65)
      {
        goto LABEL_79;
      }

      v66 = v65;
      v67 = [(HKMedicationOrder *)self statusReasonCodingCollection];
      v68 = [v5 statusReasonCodingCollection];
      v69 = [v67 isEqual:v68];

      if (!v69)
      {
        goto LABEL_80;
      }
    }

    v6 = [(HKMedicationOrder *)self medication];
    v70 = [v5 medication];
    v8 = v70;
    if (v6 == v70)
    {
    }

    else
    {
      v71 = [v5 medication];
      if (!v71)
      {
        goto LABEL_79;
      }

      v72 = v71;
      v73 = [(HKMedicationOrder *)self medication];
      v74 = [v5 medication];
      v75 = [v73 isEqual:v74];

      if (!v75)
      {
        goto LABEL_80;
      }
    }

    v6 = [(HKMedicationOrder *)self status];
    v76 = [v5 status];
    v8 = v76;
    if (v6 == v76)
    {
    }

    else
    {
      v77 = [v5 status];
      if (!v77)
      {
        goto LABEL_79;
      }

      v78 = v77;
      v79 = [(HKMedicationOrder *)self status];
      v80 = [v5 status];
      v81 = [v79 isEqual:v80];

      if (!v81)
      {
        goto LABEL_80;
      }
    }

    v6 = [(HKMedicationOrder *)self reason];
    v82 = [v5 reason];
    v8 = v82;
    if (v6 == v82)
    {
    }

    else
    {
      v83 = [v5 reason];
      if (!v83)
      {
        goto LABEL_79;
      }

      v84 = v83;
      v85 = [(HKMedicationOrder *)self reason];
      v86 = [v5 reason];
      v87 = [v85 isEqualToArray:v86];

      if (!v87)
      {
        goto LABEL_80;
      }
    }

    v6 = [(HKMedicationOrder *)self reasonEnded];
    v88 = [v5 reasonEnded];
    v8 = v88;
    if (v6 == v88)
    {
    }

    else
    {
      v89 = [v5 reasonEnded];
      if (!v89)
      {
        goto LABEL_79;
      }

      v90 = v89;
      v91 = [(HKMedicationOrder *)self reasonEnded];
      v92 = [v5 reasonEnded];
      v93 = [v91 isEqual:v92];

      if (!v93)
      {
        goto LABEL_80;
      }
    }

    v6 = [(HKMedicationOrder *)self statusReason];
    v94 = [v5 statusReason];
    v8 = v94;
    if (v6 == v94)
    {

LABEL_84:
      v14 = 1;
      goto LABEL_81;
    }

    v95 = [v5 statusReason];
    if (v95)
    {
      v96 = v95;
      v97 = [(HKMedicationOrder *)self statusReason];
      v98 = [v5 statusReason];
      v99 = [v97 isEqual:v98];

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
  v2 = [(HKMedicationOrder *)self statusCoding];
  v3 = [HKMedicalCodingCollection collectionWithCoding:v2];

  return v3;
}

- (void)_setMedicationCodingCollection:(id)a3
{
  v4 = [a3 copy];
  medicationCodingCollection = self->_medicationCodingCollection;
  self->_medicationCodingCollection = v4;

  v8 = [(HKMedicationOrder *)self medicationCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v8];
  medication = self->_medication;
  self->_medication = v6;
}

- (void)_setPrescriber:(id)a3
{
  v4 = [a3 copy];
  prescriber = self->_prescriber;
  self->_prescriber = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setDosages:(id)a3
{
  v4 = [a3 copy];
  dosages = self->_dosages;
  self->_dosages = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setEarliestDosageDate:(id)a3
{
  v4 = [a3 copy];
  earliestDosageDate = self->_earliestDosageDate;
  self->_earliestDosageDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setWrittenDate:(id)a3
{
  v4 = [a3 copy];
  writtenDate = self->_writtenDate;
  self->_writtenDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setEndedDate:(id)a3
{
  v4 = [a3 copy];
  endedDate = self->_endedDate;
  self->_endedDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setStatusCoding:(id)a3
{
  v4 = [a3 copy];
  statusCoding = self->_statusCoding;
  self->_statusCoding = v4;

  v8 = [(HKMedicationOrder *)self statusCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v8];
  status = self->_status;
  self->_status = v6;
}

- (void)_setReasonCodingCollections:(id)a3
{
  v4 = [a3 copy];
  reasonCodingCollections = self->_reasonCodingCollections;
  self->_reasonCodingCollections = v4;

  if (self->_reasonCodingCollections)
  {
    v9 = [(HKMedicationOrder *)self reasonCodingCollections];
    v6 = [(NSArray *)v9 hk_map:&__block_literal_global_1];
    reason = self->_reason;
    self->_reason = v6;

    v8 = v9;
  }

  else
  {
    v8 = self->_reason;
    self->_reason = 0;
  }
}

- (void)_setReasonEndedCodingCollection:(id)a3
{
  v4 = [a3 copy];
  reasonEndedCodingCollection = self->_reasonEndedCodingCollection;
  self->_reasonEndedCodingCollection = v4;

  if (self->_reasonEndedCodingCollection)
  {
    v9 = [(HKMedicationOrder *)self reasonEndedCodingCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v9];
    reasonEnded = self->_reasonEnded;
    self->_reasonEnded = v6;

    v8 = v9;
  }

  else
  {
    v8 = self->_reasonEnded;
    self->_reasonEnded = 0;
  }
}

- (void)_setStatusReasonCodingCollection:(id)a3
{
  v4 = [a3 copy];
  statusReasonCodingCollection = self->_statusReasonCodingCollection;
  self->_statusReasonCodingCollection = v4;

  if (self->_statusReasonCodingCollection)
  {
    v9 = [(HKMedicationOrder *)self statusReasonCodingCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v9];
    statusReason = self->_statusReason;
    self->_statusReason = v6;

    v8 = v9;
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
    v4 = [(HKMedicationOrder *)self medicationCodingCollection];
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
      [HKMedicationOrder _setMedication:v5];
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
    v4 = [(HKMedicationOrder *)self statusCodingCollection];
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
      [HKMedicationOrder _setStatus:v5];
    }
  }

  v6 = [v4 copy];
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
      v4 = [(HKMedicationOrder *)self reasonCodingCollections];
      v3 = [v4 hk_map:&__block_literal_global_126];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setReason:(id)a3
{
  v4 = [a3 copy];
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
      v4 = [(HKMedicationOrder *)self reasonEndedCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setReasonEnded:(id)a3
{
  v4 = [a3 copy];
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
      v4 = [(HKMedicationOrder *)self statusReasonCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setStatusReason:(id)a3
{
  v4 = [a3 copy];
  statusReason = self->_statusReason;
  self->_statusReason = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v13.receiver = self;
  v13.super_class = HKMedicationOrder;
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

- (id)medicalRecordCodings
{
  v2 = [(HKMedicationOrder *)self medicationCodingCollection];
  v3 = [v2 codings];

  return v3;
}

+ (id)defaultDisplayString
{
  v2 = HKHealthKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"UNSPECIFIED_MEDICATION" value:&stru_1F05FF230 table:@"Localizable-Clinical-Health-Records"];

  return v3;
}

+ (id)indexableConceptKeyPaths
{
  v5.receiver = a1;
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
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___HKMedicationOrder;
  v2 = objc_msgSendSuper2(&v4, sel_cachedConceptRelationshipKeyPaths);

  return v2;
}

- (id)codingsForKeyPath:(id)a3 error:(id *)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [HKConceptIndexUtilities firstComponentForKeyPath:v6 error:a4];
  v8 = v7;
  if (!v7)
  {
    v13 = 0;
    goto LABEL_12;
  }

  if ([v7 isEqualToString:@"medication"])
  {
    v9 = [(HKMedicationOrder *)self medicationCodingCollection];
    v10 = [HKIndexableObject indexableObjectWithObject:v9];
    v26[0] = v10;
    v11 = MEMORY[0x1E695DEC8];
    v12 = v26;
LABEL_4:
    v13 = [v11 arrayWithObjects:v12 count:1];

    goto LABEL_12;
  }

  if ([v8 isEqualToString:@"status"])
  {
    v14 = [(HKMedicationOrder *)self statusCoding];
    v15 = [HKMedicalCodingCollection collectionWithCoding:v14];
    v16 = [HKIndexableObject indexableObjectWithObject:v15];
    v25 = v16;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];

LABEL_11:
    goto LABEL_12;
  }

  if ([v8 isEqualToString:@"reason"])
  {
    v17 = [(HKMedicationOrder *)self reasonCodingCollections];

    if (v17)
    {
      v14 = [(HKMedicationOrder *)self reasonCodingCollections];
      v13 = [HKConceptIndexUtilities indexedCodingsForCodingCollections:v14 context:v6 error:a4];
      goto LABEL_11;
    }

    goto LABEL_21;
  }

  if ([v8 isEqualToString:@"reasonEnded"])
  {
    v20 = [(HKMedicationOrder *)self reasonEndedCodingCollection];

    if (v20)
    {
      v9 = [(HKMedicationOrder *)self reasonEndedCodingCollection];
      v10 = [HKIndexableObject indexableObjectWithObject:v9];
      v24 = v10;
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v24;
      goto LABEL_4;
    }

    goto LABEL_21;
  }

  if ([v8 isEqualToString:@"statusReason"])
  {
    v21 = [(HKMedicationOrder *)self statusReasonCodingCollection];

    if (v21)
    {
      v9 = [(HKMedicationOrder *)self statusReasonCodingCollection];
      v10 = [HKIndexableObject indexableObjectWithObject:v9];
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
  v13 = [(HKMedicalRecord *)&v22 codingsForKeyPath:v6 error:a4];
LABEL_12:

  v18 = *MEMORY[0x1E69E9840];

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
    goto LABEL_9;
  }

  if ([v10 isEqualToString:@"medication"])
  {
    if (HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 1, v9, a5))
    {
      a5 = [v8 firstObject];
      v12 = [a5 object];
      [(HKMedicationOrder *)self _setMedication:v12];
LABEL_8:

      LOBYTE(a5) = 1;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ([v11 isEqualToString:@"status"])
  {
    if (HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 1, v9, a5))
    {
      a5 = [v8 firstObject];
      v12 = [a5 object];
      [(HKMedicationOrder *)self _setStatus:v12];
      goto LABEL_8;
    }

LABEL_9:
    LOBYTE(a5) = 0;
    goto LABEL_10;
  }

  if (![v11 isEqualToString:@"reason"])
  {
    if ([v11 isEqualToString:@"reasonEnded"])
    {
      v17 = [v8 count];
      v18 = [(HKMedicationOrder *)self reasonEndedCodingCollection];
      LODWORD(a5) = HKIndexableObjectCheckCardinalityForIndexRestore(v17, v18 != 0, v9, a5);

      if (!a5)
      {
        goto LABEL_10;
      }

      a5 = [v8 firstObject];
      v12 = [a5 object];
      [(HKMedicationOrder *)self _setReasonEnded:v12];
      goto LABEL_8;
    }

    if ([v11 isEqualToString:@"statusReason"])
    {
      v19 = [v8 count];
      v20 = [(HKMedicationOrder *)self statusReasonCodingCollection];
      LODWORD(a5) = HKIndexableObjectCheckCardinalityForIndexRestore(v19, v20 != 0, v9, a5);

      if (!a5)
      {
        goto LABEL_10;
      }

      a5 = [v8 firstObject];
      v12 = [a5 object];
      [(HKMedicationOrder *)self _setStatusReason:v12];
      goto LABEL_8;
    }

    v22.receiver = self;
    v22.super_class = HKMedicationOrder;
    v21 = [(HKMedicalRecord *)&v22 applyConcepts:v8 forKeyPath:v9 error:a5];
LABEL_24:
    LOBYTE(a5) = v21;
    goto LABEL_10;
  }

  v14 = [(HKMedicationOrder *)self reasonCodingCollections];

  if (!v14)
  {
    v21 = HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 0, v9, a5);
    goto LABEL_24;
  }

  v15 = [(HKMedicationOrder *)self reasonCodingCollections];
  v16 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", v8, [v15 count], v9, a5);

  LOBYTE(a5) = v16 != 0;
  if (v16)
  {
    [(HKMedicationOrder *)self _setReason:v16];
  }

LABEL_10:
  return a5;
}

+ (id)medicationOrderWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 country:(id)a12 state:(unint64_t)a13 medicationCodingCollection:(id)a14 prescriber:(id)a15 numberOfFills:(int64_t)a16 dosages:(id)a17 earliestDosageDate:(id)a18 writtenDate:(id)a19 endedDate:(id)a20 statusCoding:(id)a21 reasonCodingCollections:(id)a22 reasonEndedCodingCollection:(id)a23 statusReasonCodingCollection:(id)a24
{
  v48 = a5;
  v58 = a3;
  v57 = a4;
  v28 = a6;
  v53 = a7;
  v52 = a8;
  v51 = a10;
  v50 = a11;
  v56 = a12;
  v29 = a14;
  v55 = a15;
  v54 = a17;
  v30 = a18;
  v31 = a19;
  v47 = a20;
  v32 = a21;
  v46 = a22;
  v33 = a23;
  v34 = a24;
  v35 = @"modifiedDate";
  v36 = v28;
  v37 = v36;
  if (v30)
  {
    v38 = @"earliestDosageDate";

    v39 = [v30 dateForUTC];

    v35 = v38;
    if (!v31)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v39 = v36;
  if (v31)
  {
LABEL_3:
    v40 = @"writtenDate";

    v41 = [v31 dateForUTC];

    v39 = v41;
    v35 = v40;
  }

LABEL_4:
  v42 = v31;
  v45 = v31;
  v43 = [HKSemanticDate semanticDateWithKeyPath:v35 date:v39];
  v49 = [HKMedicationOrder medicationOrderWithType:v58 note:v57 enteredInError:v48 modifiedDate:v37 originIdentifier:v53 locale:v52 extractionVersion:a9 device:v51 metadata:v50 sortDate:v43 country:v56 state:a13 medicationCodingCollection:v29 prescriber:v55 numberOfFills:a16 dosages:v54 earliestDosageDate:v30 writtenDate:v42 endedDate:v47 statusCoding:v32 reasonCodingCollections:v46 reasonEndedCodingCollection:v33 statusReasonCodingCollection:v34];

  return v49;
}

@end