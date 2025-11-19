@interface HKMedicationDispenseRecord
+ (id)_newMedicationDispenseRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 medicationCodings:(id)a15 quantityDispensed:(id)a16 preparationDate:(id)a17 handOverDate:(id)a18 dosages:(id)a19 earliestDosageDate:(id)a20 statusCoding:(id)a21 daysSupplyQuantity:(id)a22 config:(id)a23;
+ (id)cachedConceptRelationshipKeyPaths;
+ (id)defaultDisplayString;
+ (id)indexableConceptKeyPaths;
+ (id)medicationDispenseRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 country:(id)a12 state:(unint64_t)a13 medicationCodings:(id)a14 quantityDispensed:(id)a15 preparationDate:(id)a16 handOverDate:(id)a17 dosages:(id)a18 earliestDosageDate:(id)a19 statusCoding:(id)a20 daysSupplyQuantity:(id)a21;
- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
- (BOOL)isEquivalent:(id)a3;
- (HKConcept)medication;
- (HKConcept)status;
- (HKMedicationDispenseRecord)init;
- (HKMedicationDispenseRecord)initWithCoder:(id)a3;
- (NSString)description;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)codingsForKeyPath:(id)a3 error:(id *)a4;
- (id)medicationCodingsCollection;
- (id)statusCodingCollection;
- (void)_setDaysSupplyQuantity:(id)a3;
- (void)_setDosages:(id)a3;
- (void)_setEarliestDosageDate:(id)a3;
- (void)_setHandOverDate:(id)a3;
- (void)_setMedication:(id)a3;
- (void)_setMedicationCodings:(id)a3;
- (void)_setPreparationDate:(id)a3;
- (void)_setQuantityDispensed:(id)a3;
- (void)_setStatus:(id)a3;
- (void)_setStatusCoding:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMedicationDispenseRecord

+ (id)_newMedicationDispenseRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 medicationCodings:(id)a15 quantityDispensed:(id)a16 preparationDate:(id)a17 handOverDate:(id)a18 dosages:(id)a19 earliestDosageDate:(id)a20 statusCoding:(id)a21 daysSupplyQuantity:(id)a22 config:(id)a23
{
  v58 = a5;
  v23 = a15;
  v24 = a16;
  v25 = a17;
  v26 = a18;
  v27 = a19;
  v28 = a20;
  v29 = a21;
  v30 = a22;
  v31 = a23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __312__HKMedicationDispenseRecord__newMedicationDispenseRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_medicationCodings_quantityDispensed_preparationDate_handOverDate_dosages_earliestDosageDate_statusCoding_daysSupplyQuantity_config___block_invoke;
  aBlock[3] = &unk_1E7376C28;
  v62 = v23;
  v63 = v24;
  v64 = v25;
  v65 = v26;
  v66 = v27;
  v67 = v28;
  v68 = v29;
  v69 = v30;
  v70 = v31;
  v57 = v31;
  v56 = v30;
  v55 = v29;
  v54 = v28;
  v53 = v27;
  v52 = v26;
  v51 = v25;
  v50 = v24;
  v49 = v23;
  v32 = a13;
  v33 = a12;
  v34 = a11;
  v35 = a10;
  v36 = a8;
  v37 = a7;
  v38 = a6;
  v39 = a4;
  v40 = a3;
  v41 = _Block_copy(aBlock);
  v60.receiver = a1;
  v60.super_class = &OBJC_METACLASS___HKMedicationDispenseRecord;
  v59 = objc_msgSendSuper2(&v60, sel__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config_, v40, v39, v58, v38, v37, v36, a9, v35, v34, v33, v32, a14, v41);

  return v59;
}

void __312__HKMedicationDispenseRecord__newMedicationDispenseRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_medicationCodings_quantityDispensed_preparationDate_handOverDate_dosages_earliestDosageDate_statusCoding_daysSupplyQuantity_config___block_invoke(uint64_t a1, void *a2)
{
  v20 = a2;
  v3 = [*(a1 + 32) copy];
  v4 = v20[22];
  v20[22] = v3;

  v5 = [*(a1 + 40) copy];
  v6 = v20[23];
  v20[23] = v5;

  v7 = [*(a1 + 48) copy];
  v8 = v20[24];
  v20[24] = v7;

  v9 = [*(a1 + 56) copy];
  v10 = v20[25];
  v20[25] = v9;

  v11 = [*(a1 + 64) copy];
  v12 = v20[26];
  v20[26] = v11;

  v13 = [*(a1 + 72) copy];
  v14 = v20[27];
  v20[27] = v13;

  v15 = [*(a1 + 80) copy];
  v16 = v20[28];
  v20[28] = v15;

  v17 = [*(a1 + 88) copy];
  v18 = v20[29];
  v20[29] = v17;

  v19 = *(a1 + 96);
  if (v19)
  {
    (*(v19 + 16))(v19, v20);
  }
}

- (HKMedicationDispenseRecord)init
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
  v11.super_class = HKMedicationDispenseRecord;
  v6 = [(HKSample *)&v11 description];
  medicationCodings = self->_medicationCodings;
  statusCoding = self->_statusCoding;
  v9 = [v3 stringWithFormat:@"<%@:%p super=%@medicationCodings = %@quantityDispensed = %@preparationDate = %@handOverDate = %@dosages = %@earliestDosageDate = %@statusCoding = %@daysSupplyQuantity = %@>", v5, self, v6, medicationCodings, self->_quantityDispensed, self->_preparationDate, self->_handOverDate, self->_dosages, self->_earliestDosageDate, statusCoding, self->_daysSupplyQuantity];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKMedicationDispenseRecord;
  v4 = a3;
  [(HKMedicalRecord *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_medicationCodings forKey:{@"MedicationCodings", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_quantityDispensed forKey:@"QuantityDispensed"];
  [v4 encodeObject:self->_preparationDate forKey:@"PreparationDate"];
  [v4 encodeObject:self->_handOverDate forKey:@"HandOverDate"];
  [v4 encodeObject:self->_dosages forKey:@"Dosages"];
  [v4 encodeObject:self->_earliestDosageDate forKey:@"EarliestDosageDate"];
  [v4 encodeObject:self->_statusCoding forKey:@"StatusCoding"];
  [v4 encodeObject:self->_daysSupplyQuantity forKey:@"DaysSupplyQuantity"];
  [v4 encodeObject:self->_medication forKey:@"Medication"];
  [v4 encodeObject:self->_status forKey:@"Status"];
}

- (HKMedicationDispenseRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = HKMedicationDispenseRecord;
  v5 = [(HKMedicalRecord *)&v29 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"MedicationCodings"];
    medicationCodings = v5->_medicationCodings;
    v5->_medicationCodings = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"QuantityDispensed"];
    quantityDispensed = v5->_quantityDispensed;
    v5->_quantityDispensed = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PreparationDate"];
    preparationDate = v5->_preparationDate;
    v5->_preparationDate = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HandOverDate"];
    handOverDate = v5->_handOverDate;
    v5->_handOverDate = v13;

    v15 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"Dosages"];
    dosages = v5->_dosages;
    v5->_dosages = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EarliestDosageDate"];
    earliestDosageDate = v5->_earliestDosageDate;
    v5->_earliestDosageDate = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StatusCoding"];
    statusCoding = v5->_statusCoding;
    v5->_statusCoding = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DaysSupplyQuantity"];
    daysSupplyQuantity = v5->_daysSupplyQuantity;
    v5->_daysSupplyQuantity = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Medication"];
    medication = v5->_medication;
    v5->_medication = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Status"];
    status = v5->_status;
    v5->_status = v26;
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
    v70.receiver = self;
    v70.super_class = HKMedicationDispenseRecord;
    if (![(HKMedicalRecord *)&v70 isEquivalent:v5])
    {
      goto LABEL_54;
    }

    v6 = [(HKMedicationDispenseRecord *)self medicationCodings];
    v7 = [v5 medicationCodings];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [v5 medicationCodings];
      if (!v9)
      {
        goto LABEL_53;
      }

      v10 = v9;
      v11 = [(HKMedicationDispenseRecord *)self medicationCodings];
      v12 = [v5 medicationCodings];
      v13 = [v11 isEqualToArray:v12];

      if (!v13)
      {
        goto LABEL_54;
      }
    }

    v6 = [(HKMedicationDispenseRecord *)self quantityDispensed];
    v15 = [v5 quantityDispensed];
    v8 = v15;
    if (v6 == v15)
    {
    }

    else
    {
      v16 = [v5 quantityDispensed];
      if (!v16)
      {
        goto LABEL_53;
      }

      v17 = v16;
      v18 = [(HKMedicationDispenseRecord *)self quantityDispensed];
      v19 = [v5 quantityDispensed];
      v20 = [v18 isEqual:v19];

      if (!v20)
      {
        goto LABEL_54;
      }
    }

    v6 = [(HKMedicationDispenseRecord *)self preparationDate];
    v21 = [v5 preparationDate];
    v8 = v21;
    if (v6 == v21)
    {
    }

    else
    {
      v22 = [v5 preparationDate];
      if (!v22)
      {
        goto LABEL_53;
      }

      v23 = v22;
      v24 = [(HKMedicationDispenseRecord *)self preparationDate];
      v25 = [v5 preparationDate];
      v26 = [v24 isEqual:v25];

      if (!v26)
      {
        goto LABEL_54;
      }
    }

    v6 = [(HKMedicationDispenseRecord *)self handOverDate];
    v27 = [v5 handOverDate];
    v8 = v27;
    if (v6 == v27)
    {
    }

    else
    {
      v28 = [v5 handOverDate];
      if (!v28)
      {
        goto LABEL_53;
      }

      v29 = v28;
      v30 = [(HKMedicationDispenseRecord *)self handOverDate];
      v31 = [v5 handOverDate];
      v32 = [v30 isEqual:v31];

      if (!v32)
      {
        goto LABEL_54;
      }
    }

    v6 = [(HKMedicationDispenseRecord *)self dosages];
    v33 = [v5 dosages];
    v8 = v33;
    if (v6 == v33)
    {
    }

    else
    {
      v34 = [v5 dosages];
      if (!v34)
      {
        goto LABEL_53;
      }

      v35 = v34;
      v36 = [(HKMedicationDispenseRecord *)self dosages];
      v37 = [v5 dosages];
      v38 = [v36 isEqualToArray:v37];

      if (!v38)
      {
        goto LABEL_54;
      }
    }

    v6 = [(HKMedicationDispenseRecord *)self earliestDosageDate];
    v39 = [v5 earliestDosageDate];
    v8 = v39;
    if (v6 == v39)
    {
    }

    else
    {
      v40 = [v5 earliestDosageDate];
      if (!v40)
      {
        goto LABEL_53;
      }

      v41 = v40;
      v42 = [(HKMedicationDispenseRecord *)self earliestDosageDate];
      v43 = [v5 earliestDosageDate];
      v44 = [v42 isEqual:v43];

      if (!v44)
      {
        goto LABEL_54;
      }
    }

    v6 = [(HKMedicationDispenseRecord *)self statusCoding];
    v45 = [v5 statusCoding];
    v8 = v45;
    if (v6 == v45)
    {
    }

    else
    {
      v46 = [v5 statusCoding];
      if (!v46)
      {
        goto LABEL_53;
      }

      v47 = v46;
      v48 = [(HKMedicationDispenseRecord *)self statusCoding];
      v49 = [v5 statusCoding];
      v50 = [v48 isEqual:v49];

      if (!v50)
      {
        goto LABEL_54;
      }
    }

    v6 = [(HKMedicationDispenseRecord *)self daysSupplyQuantity];
    v51 = [v5 daysSupplyQuantity];
    v8 = v51;
    if (v6 == v51)
    {
    }

    else
    {
      v52 = [v5 daysSupplyQuantity];
      if (!v52)
      {
        goto LABEL_53;
      }

      v53 = v52;
      v54 = [(HKMedicationDispenseRecord *)self daysSupplyQuantity];
      v55 = [v5 daysSupplyQuantity];
      v56 = [v54 isEqual:v55];

      if (!v56)
      {
        goto LABEL_54;
      }
    }

    v6 = [(HKMedicationDispenseRecord *)self medication];
    v57 = [v5 medication];
    v8 = v57;
    if (v6 == v57)
    {
    }

    else
    {
      v58 = [v5 medication];
      if (!v58)
      {
        goto LABEL_53;
      }

      v59 = v58;
      v60 = [(HKMedicationDispenseRecord *)self medication];
      v61 = [v5 medication];
      v62 = [v60 isEqual:v61];

      if (!v62)
      {
        goto LABEL_54;
      }
    }

    v6 = [(HKMedicationDispenseRecord *)self status];
    v63 = [v5 status];
    v8 = v63;
    if (v6 == v63)
    {

LABEL_58:
      v14 = 1;
      goto LABEL_55;
    }

    v64 = [v5 status];
    if (v64)
    {
      v65 = v64;
      v66 = [(HKMedicationDispenseRecord *)self status];
      v67 = [v5 status];
      v68 = [v66 isEqual:v67];

      if (v68)
      {
        goto LABEL_58;
      }

LABEL_54:
      v14 = 0;
LABEL_55:

      goto LABEL_56;
    }

LABEL_53:

    goto LABEL_54;
  }

  v14 = 0;
LABEL_56:

  return v14;
}

- (id)medicationCodingsCollection
{
  v2 = [(HKMedicationDispenseRecord *)self medicationCodings];
  v3 = [HKMedicalCodingCollection collectionWithCodings:v2];

  return v3;
}

- (id)statusCodingCollection
{
  v3 = [(HKMedicationDispenseRecord *)self statusCoding];

  if (v3)
  {
    v4 = [(HKMedicationDispenseRecord *)self statusCoding];
    v5 = [HKMedicalCodingCollection collectionWithCoding:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setMedicationCodings:(id)a3
{
  v4 = [a3 copy];
  medicationCodings = self->_medicationCodings;
  self->_medicationCodings = v4;

  v8 = [(HKMedicationDispenseRecord *)self medicationCodingsCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v8];
  medication = self->_medication;
  self->_medication = v6;
}

- (void)_setQuantityDispensed:(id)a3
{
  v4 = [a3 copy];
  quantityDispensed = self->_quantityDispensed;
  self->_quantityDispensed = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setPreparationDate:(id)a3
{
  v4 = [a3 copy];
  preparationDate = self->_preparationDate;
  self->_preparationDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setHandOverDate:(id)a3
{
  v4 = [a3 copy];
  handOverDate = self->_handOverDate;
  self->_handOverDate = v4;

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

- (void)_setStatusCoding:(id)a3
{
  v4 = [a3 copy];
  statusCoding = self->_statusCoding;
  self->_statusCoding = v4;

  if (self->_statusCoding)
  {
    v9 = [(HKMedicationDispenseRecord *)self statusCodingCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v9];
    status = self->_status;
    self->_status = v6;

    v8 = v9;
  }

  else
  {
    v8 = self->_status;
    self->_status = 0;
  }
}

- (void)_setDaysSupplyQuantity:(id)a3
{
  v4 = [a3 copy];
  daysSupplyQuantity = self->_daysSupplyQuantity;
  self->_daysSupplyQuantity = v4;

  MEMORY[0x1EEE66BB8]();
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
    v4 = [(HKMedicationDispenseRecord *)self medicationCodingsCollection];
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
      [HKMedicationDispenseRecord _setMedication:v5];
    }
  }

  v6 = [v4 copy];
  medication = self->_medication;
  self->_medication = v6;
}

- (HKConcept)status
{
  if (self->_statusCoding)
  {
    status = self->_status;
    if (status)
    {
      v3 = status;
    }

    else
    {
      v4 = [(HKMedicationDispenseRecord *)self statusCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setStatus:(id)a3
{
  v4 = [a3 copy];
  status = self->_status;
  self->_status = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v10.receiver = self;
  v10.super_class = HKMedicationDispenseRecord;
  v5 = [(HKMedicalRecord *)&v10 _validateWithConfiguration:a3.var0, a3.var1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
LABEL_3:
    v8 = v7;
    goto LABEL_6;
  }

  if (!self->_medicationCodings)
  {
    v7 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"%@: medicationCodings must not be nil", self}];
    goto LABEL_3;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

+ (id)medicationDispenseRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 country:(id)a12 state:(unint64_t)a13 medicationCodings:(id)a14 quantityDispensed:(id)a15 preparationDate:(id)a16 handOverDate:(id)a17 dosages:(id)a18 earliestDosageDate:(id)a19 statusCoding:(id)a20 daysSupplyQuantity:(id)a21
{
  v43 = a5;
  v53 = a3;
  v52 = a4;
  v25 = a6;
  v51 = a7;
  v46 = a8;
  v45 = a10;
  v47 = a11;
  v50 = a12;
  v49 = a14;
  v48 = a15;
  v26 = a16;
  v27 = a17;
  v42 = a18;
  v28 = a19;
  v41 = a20;
  v40 = a21;
  v29 = @"modifiedDate";
  v30 = v25;
  v31 = v30;
  if (v28)
  {
    v32 = @"earliestDosageDate";

    v33 = [v28 dateForUTC];

    v29 = v32;
    if (!v26)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v33 = v30;
  if (v26)
  {
LABEL_3:
    v34 = @"preparationDate";

    v35 = [v26 dateForUTC];

    v33 = v35;
    v29 = v34;
  }

LABEL_4:
  if (v27)
  {
    v36 = @"handOverDate";

    v37 = [v27 dateForUTC];

    v33 = v37;
    v29 = v36;
  }

  v38 = [HKSemanticDate semanticDateWithKeyPath:v29 date:v33];
  v44 = [HKMedicationDispenseRecord medicationDispenseRecordWithType:v53 note:v52 enteredInError:v43 modifiedDate:v31 originIdentifier:v51 locale:v46 extractionVersion:a9 device:v45 metadata:v47 sortDate:v38 country:v50 state:a13 medicationCodings:v49 quantityDispensed:v48 preparationDate:v26 handOverDate:v27 dosages:v42 earliestDosageDate:v28 statusCoding:v41 daysSupplyQuantity:v40];

  return v44;
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
  v5.super_class = &OBJC_METACLASS___HKMedicationDispenseRecord;
  v2 = objc_msgSendSuper2(&v5, sel_indexableConceptKeyPaths);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"medication"];
  [v3 addObject:@"status"];

  return v3;
}

+ (id)cachedConceptRelationshipKeyPaths
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___HKMedicationDispenseRecord;
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
    v14 = 0;
    goto LABEL_11;
  }

  if ([v7 isEqualToString:@"medication"])
  {
    v9 = [(HKMedicationDispenseRecord *)self medicationCodings];
    v10 = [HKMedicalCodingCollection collectionWithCodings:v9];
    v11 = [HKIndexableObject indexableObjectWithObject:v10];
    v20[0] = v11;
    v12 = MEMORY[0x1E695DEC8];
    v13 = v20;
LABEL_8:
    v14 = [v12 arrayWithObjects:v13 count:1];

    goto LABEL_11;
  }

  if ([v8 isEqualToString:@"status"])
  {
    v15 = [(HKMedicationDispenseRecord *)self statusCoding];

    if (v15)
    {
      v9 = [(HKMedicationDispenseRecord *)self statusCoding];
      v10 = [HKMedicalCodingCollection collectionWithCoding:v9];
      v11 = [HKIndexableObject indexableObjectWithObject:v10];
      v19 = v11;
      v12 = MEMORY[0x1E695DEC8];
      v13 = &v19;
      goto LABEL_8;
    }

    v14 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = HKMedicationDispenseRecord;
    v14 = [(HKMedicalRecord *)&v18 codingsForKeyPath:v6 error:a4];
  }

LABEL_11:

  v16 = *MEMORY[0x1E69E9840];

  return v14;
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
    if (![v11 isEqualToString:@"status"])
    {
      v19.receiver = self;
      v19.super_class = HKMedicationDispenseRecord;
      v17 = [(HKMedicalRecord *)&v19 applyConcepts:v8 forKeyPath:v9 error:a5];
      goto LABEL_11;
    }

    v14 = [v8 count];
    v15 = [(HKMedicationDispenseRecord *)self statusCoding];
    v16 = HKIndexableObjectCheckCardinalityForIndexRestore(v14, v15 != 0, v9, a5);

    if (v16)
    {
      v12 = [v8 firstObject];
      v13 = [v12 object];
      [(HKMedicationDispenseRecord *)self _setStatus:v13];
      goto LABEL_8;
    }

LABEL_9:
    v17 = 0;
    goto LABEL_11;
  }

  if (!HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 1, v9, a5))
  {
    goto LABEL_9;
  }

  v12 = [v8 firstObject];
  v13 = [v12 object];
  [(HKMedicationDispenseRecord *)self _setMedication:v13];
LABEL_8:

  v17 = 1;
LABEL_11:

  return v17;
}

@end