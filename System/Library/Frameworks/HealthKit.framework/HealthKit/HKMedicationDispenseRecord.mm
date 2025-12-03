@interface HKMedicationDispenseRecord
+ (id)_newMedicationDispenseRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 medicationCodings:(id)self5 quantityDispensed:(id)self6 preparationDate:(id)self7 handOverDate:(id)self8 dosages:(id)self9 earliestDosageDate:(id)dosageDate statusCoding:(id)coding daysSupplyQuantity:(id)quantity config:(id)config;
+ (id)cachedConceptRelationshipKeyPaths;
+ (id)defaultDisplayString;
+ (id)indexableConceptKeyPaths;
+ (id)medicationDispenseRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 country:(id)self2 state:(unint64_t)self3 medicationCodings:(id)self4 quantityDispensed:(id)self5 preparationDate:(id)self6 handOverDate:(id)self7 dosages:(id)self8 earliestDosageDate:(id)self9 statusCoding:(id)coding daysSupplyQuantity:(id)quantity;
- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error;
- (BOOL)isEquivalent:(id)equivalent;
- (HKConcept)medication;
- (HKConcept)status;
- (HKMedicationDispenseRecord)init;
- (HKMedicationDispenseRecord)initWithCoder:(id)coder;
- (NSString)description;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)codingsForKeyPath:(id)path error:(id *)error;
- (id)medicationCodingsCollection;
- (id)statusCodingCollection;
- (void)_setDaysSupplyQuantity:(id)quantity;
- (void)_setDosages:(id)dosages;
- (void)_setEarliestDosageDate:(id)date;
- (void)_setHandOverDate:(id)date;
- (void)_setMedication:(id)medication;
- (void)_setMedicationCodings:(id)codings;
- (void)_setPreparationDate:(id)date;
- (void)_setQuantityDispensed:(id)dispensed;
- (void)_setStatus:(id)status;
- (void)_setStatusCoding:(id)coding;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMedicationDispenseRecord

+ (id)_newMedicationDispenseRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 medicationCodings:(id)self5 quantityDispensed:(id)self6 preparationDate:(id)self7 handOverDate:(id)self8 dosages:(id)self9 earliestDosageDate:(id)dosageDate statusCoding:(id)coding daysSupplyQuantity:(id)quantity config:(id)config
{
  errorCopy = error;
  codingsCopy = codings;
  dispensedCopy = dispensed;
  preparationDateCopy = preparationDate;
  overDateCopy = overDate;
  dosagesCopy = dosages;
  dosageDateCopy = dosageDate;
  codingCopy = coding;
  quantityCopy = quantity;
  configCopy = config;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __312__HKMedicationDispenseRecord__newMedicationDispenseRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_medicationCodings_quantityDispensed_preparationDate_handOverDate_dosages_earliestDosageDate_statusCoding_daysSupplyQuantity_config___block_invoke;
  aBlock[3] = &unk_1E7376C28;
  v62 = codingsCopy;
  v63 = dispensedCopy;
  v64 = preparationDateCopy;
  v65 = overDateCopy;
  v66 = dosagesCopy;
  v67 = dosageDateCopy;
  v68 = codingCopy;
  v69 = quantityCopy;
  v70 = configCopy;
  v57 = configCopy;
  v56 = quantityCopy;
  v55 = codingCopy;
  v54 = dosageDateCopy;
  v53 = dosagesCopy;
  v52 = overDateCopy;
  v51 = preparationDateCopy;
  v50 = dispensedCopy;
  v49 = codingsCopy;
  countryCopy = country;
  sortDateCopy = sortDate;
  metadataCopy = metadata;
  deviceCopy = device;
  localeCopy = locale;
  identifierCopy = identifier;
  dateCopy = date;
  noteCopy = note;
  typeCopy = type;
  v41 = _Block_copy(aBlock);
  v60.receiver = self;
  v60.super_class = &OBJC_METACLASS___HKMedicationDispenseRecord;
  v59 = objc_msgSendSuper2(&v60, sel__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config_, typeCopy, noteCopy, errorCopy, dateCopy, identifierCopy, localeCopy, version, deviceCopy, metadataCopy, sortDateCopy, countryCopy, state, v41);

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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKMedicationDispenseRecord;
  coderCopy = coder;
  [(HKMedicalRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_medicationCodings forKey:{@"MedicationCodings", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_quantityDispensed forKey:@"QuantityDispensed"];
  [coderCopy encodeObject:self->_preparationDate forKey:@"PreparationDate"];
  [coderCopy encodeObject:self->_handOverDate forKey:@"HandOverDate"];
  [coderCopy encodeObject:self->_dosages forKey:@"Dosages"];
  [coderCopy encodeObject:self->_earliestDosageDate forKey:@"EarliestDosageDate"];
  [coderCopy encodeObject:self->_statusCoding forKey:@"StatusCoding"];
  [coderCopy encodeObject:self->_daysSupplyQuantity forKey:@"DaysSupplyQuantity"];
  [coderCopy encodeObject:self->_medication forKey:@"Medication"];
  [coderCopy encodeObject:self->_status forKey:@"Status"];
}

- (HKMedicationDispenseRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = HKMedicationDispenseRecord;
  v5 = [(HKMedicalRecord *)&v29 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"MedicationCodings"];
    medicationCodings = v5->_medicationCodings;
    v5->_medicationCodings = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"QuantityDispensed"];
    quantityDispensed = v5->_quantityDispensed;
    v5->_quantityDispensed = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PreparationDate"];
    preparationDate = v5->_preparationDate;
    v5->_preparationDate = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HandOverDate"];
    handOverDate = v5->_handOverDate;
    v5->_handOverDate = v13;

    v15 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"Dosages"];
    dosages = v5->_dosages;
    v5->_dosages = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EarliestDosageDate"];
    earliestDosageDate = v5->_earliestDosageDate;
    v5->_earliestDosageDate = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StatusCoding"];
    statusCoding = v5->_statusCoding;
    v5->_statusCoding = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DaysSupplyQuantity"];
    daysSupplyQuantity = v5->_daysSupplyQuantity;
    v5->_daysSupplyQuantity = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Medication"];
    medication = v5->_medication;
    v5->_medication = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Status"];
    status = v5->_status;
    v5->_status = v26;
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
    v70.receiver = self;
    v70.super_class = HKMedicationDispenseRecord;
    if (![(HKMedicalRecord *)&v70 isEquivalent:v5])
    {
      goto LABEL_54;
    }

    medicationCodings = [(HKMedicationDispenseRecord *)self medicationCodings];
    medicationCodings2 = [v5 medicationCodings];
    v8 = medicationCodings2;
    if (medicationCodings == medicationCodings2)
    {
    }

    else
    {
      medicationCodings3 = [v5 medicationCodings];
      if (!medicationCodings3)
      {
        goto LABEL_53;
      }

      v10 = medicationCodings3;
      medicationCodings4 = [(HKMedicationDispenseRecord *)self medicationCodings];
      medicationCodings5 = [v5 medicationCodings];
      v13 = [medicationCodings4 isEqualToArray:medicationCodings5];

      if (!v13)
      {
        goto LABEL_54;
      }
    }

    medicationCodings = [(HKMedicationDispenseRecord *)self quantityDispensed];
    quantityDispensed = [v5 quantityDispensed];
    v8 = quantityDispensed;
    if (medicationCodings == quantityDispensed)
    {
    }

    else
    {
      quantityDispensed2 = [v5 quantityDispensed];
      if (!quantityDispensed2)
      {
        goto LABEL_53;
      }

      v17 = quantityDispensed2;
      quantityDispensed3 = [(HKMedicationDispenseRecord *)self quantityDispensed];
      quantityDispensed4 = [v5 quantityDispensed];
      v20 = [quantityDispensed3 isEqual:quantityDispensed4];

      if (!v20)
      {
        goto LABEL_54;
      }
    }

    medicationCodings = [(HKMedicationDispenseRecord *)self preparationDate];
    preparationDate = [v5 preparationDate];
    v8 = preparationDate;
    if (medicationCodings == preparationDate)
    {
    }

    else
    {
      preparationDate2 = [v5 preparationDate];
      if (!preparationDate2)
      {
        goto LABEL_53;
      }

      v23 = preparationDate2;
      preparationDate3 = [(HKMedicationDispenseRecord *)self preparationDate];
      preparationDate4 = [v5 preparationDate];
      v26 = [preparationDate3 isEqual:preparationDate4];

      if (!v26)
      {
        goto LABEL_54;
      }
    }

    medicationCodings = [(HKMedicationDispenseRecord *)self handOverDate];
    handOverDate = [v5 handOverDate];
    v8 = handOverDate;
    if (medicationCodings == handOverDate)
    {
    }

    else
    {
      handOverDate2 = [v5 handOverDate];
      if (!handOverDate2)
      {
        goto LABEL_53;
      }

      v29 = handOverDate2;
      handOverDate3 = [(HKMedicationDispenseRecord *)self handOverDate];
      handOverDate4 = [v5 handOverDate];
      v32 = [handOverDate3 isEqual:handOverDate4];

      if (!v32)
      {
        goto LABEL_54;
      }
    }

    medicationCodings = [(HKMedicationDispenseRecord *)self dosages];
    dosages = [v5 dosages];
    v8 = dosages;
    if (medicationCodings == dosages)
    {
    }

    else
    {
      dosages2 = [v5 dosages];
      if (!dosages2)
      {
        goto LABEL_53;
      }

      v35 = dosages2;
      dosages3 = [(HKMedicationDispenseRecord *)self dosages];
      dosages4 = [v5 dosages];
      v38 = [dosages3 isEqualToArray:dosages4];

      if (!v38)
      {
        goto LABEL_54;
      }
    }

    medicationCodings = [(HKMedicationDispenseRecord *)self earliestDosageDate];
    earliestDosageDate = [v5 earliestDosageDate];
    v8 = earliestDosageDate;
    if (medicationCodings == earliestDosageDate)
    {
    }

    else
    {
      earliestDosageDate2 = [v5 earliestDosageDate];
      if (!earliestDosageDate2)
      {
        goto LABEL_53;
      }

      v41 = earliestDosageDate2;
      earliestDosageDate3 = [(HKMedicationDispenseRecord *)self earliestDosageDate];
      earliestDosageDate4 = [v5 earliestDosageDate];
      v44 = [earliestDosageDate3 isEqual:earliestDosageDate4];

      if (!v44)
      {
        goto LABEL_54;
      }
    }

    medicationCodings = [(HKMedicationDispenseRecord *)self statusCoding];
    statusCoding = [v5 statusCoding];
    v8 = statusCoding;
    if (medicationCodings == statusCoding)
    {
    }

    else
    {
      statusCoding2 = [v5 statusCoding];
      if (!statusCoding2)
      {
        goto LABEL_53;
      }

      v47 = statusCoding2;
      statusCoding3 = [(HKMedicationDispenseRecord *)self statusCoding];
      statusCoding4 = [v5 statusCoding];
      v50 = [statusCoding3 isEqual:statusCoding4];

      if (!v50)
      {
        goto LABEL_54;
      }
    }

    medicationCodings = [(HKMedicationDispenseRecord *)self daysSupplyQuantity];
    daysSupplyQuantity = [v5 daysSupplyQuantity];
    v8 = daysSupplyQuantity;
    if (medicationCodings == daysSupplyQuantity)
    {
    }

    else
    {
      daysSupplyQuantity2 = [v5 daysSupplyQuantity];
      if (!daysSupplyQuantity2)
      {
        goto LABEL_53;
      }

      v53 = daysSupplyQuantity2;
      daysSupplyQuantity3 = [(HKMedicationDispenseRecord *)self daysSupplyQuantity];
      daysSupplyQuantity4 = [v5 daysSupplyQuantity];
      v56 = [daysSupplyQuantity3 isEqual:daysSupplyQuantity4];

      if (!v56)
      {
        goto LABEL_54;
      }
    }

    medicationCodings = [(HKMedicationDispenseRecord *)self medication];
    medication = [v5 medication];
    v8 = medication;
    if (medicationCodings == medication)
    {
    }

    else
    {
      medication2 = [v5 medication];
      if (!medication2)
      {
        goto LABEL_53;
      }

      v59 = medication2;
      medication3 = [(HKMedicationDispenseRecord *)self medication];
      medication4 = [v5 medication];
      v62 = [medication3 isEqual:medication4];

      if (!v62)
      {
        goto LABEL_54;
      }
    }

    medicationCodings = [(HKMedicationDispenseRecord *)self status];
    status = [v5 status];
    v8 = status;
    if (medicationCodings == status)
    {

LABEL_58:
      v14 = 1;
      goto LABEL_55;
    }

    status2 = [v5 status];
    if (status2)
    {
      v65 = status2;
      status3 = [(HKMedicationDispenseRecord *)self status];
      status4 = [v5 status];
      v68 = [status3 isEqual:status4];

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
  medicationCodings = [(HKMedicationDispenseRecord *)self medicationCodings];
  v3 = [HKMedicalCodingCollection collectionWithCodings:medicationCodings];

  return v3;
}

- (id)statusCodingCollection
{
  statusCoding = [(HKMedicationDispenseRecord *)self statusCoding];

  if (statusCoding)
  {
    statusCoding2 = [(HKMedicationDispenseRecord *)self statusCoding];
    v5 = [HKMedicalCodingCollection collectionWithCoding:statusCoding2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setMedicationCodings:(id)codings
{
  v4 = [codings copy];
  medicationCodings = self->_medicationCodings;
  self->_medicationCodings = v4;

  medicationCodingsCollection = [(HKMedicationDispenseRecord *)self medicationCodingsCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:medicationCodingsCollection];
  medication = self->_medication;
  self->_medication = v6;
}

- (void)_setQuantityDispensed:(id)dispensed
{
  v4 = [dispensed copy];
  quantityDispensed = self->_quantityDispensed;
  self->_quantityDispensed = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setPreparationDate:(id)date
{
  v4 = [date copy];
  preparationDate = self->_preparationDate;
  self->_preparationDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setHandOverDate:(id)date
{
  v4 = [date copy];
  handOverDate = self->_handOverDate;
  self->_handOverDate = v4;

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

- (void)_setStatusCoding:(id)coding
{
  v4 = [coding copy];
  statusCoding = self->_statusCoding;
  self->_statusCoding = v4;

  if (self->_statusCoding)
  {
    statusCodingCollection = [(HKMedicationDispenseRecord *)self statusCodingCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:statusCodingCollection];
    status = self->_status;
    self->_status = v6;

    v8 = statusCodingCollection;
  }

  else
  {
    v8 = self->_status;
    self->_status = 0;
  }
}

- (void)_setDaysSupplyQuantity:(id)quantity
{
  v4 = [quantity copy];
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
    medicationCodingsCollection = [(HKMedicationDispenseRecord *)self medicationCodingsCollection];
    v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:medicationCodingsCollection];
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
      [HKMedicationDispenseRecord _setMedication:v5];
    }
  }

  v6 = [medicationCopy copy];
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
      statusCodingCollection = [(HKMedicationDispenseRecord *)self statusCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:statusCodingCollection];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setStatus:(id)status
{
  v4 = [status copy];
  status = self->_status;
  self->_status = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v10.receiver = self;
  v10.super_class = HKMedicationDispenseRecord;
  v5 = [(HKMedicalRecord *)&v10 _validateWithConfiguration:configuration.var0, configuration.var1];
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

+ (id)medicationDispenseRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 country:(id)self2 state:(unint64_t)self3 medicationCodings:(id)self4 quantityDispensed:(id)self5 preparationDate:(id)self6 handOverDate:(id)self7 dosages:(id)self8 earliestDosageDate:(id)self9 statusCoding:(id)coding daysSupplyQuantity:(id)quantity
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
  codingsCopy = codings;
  dispensedCopy = dispensed;
  preparationDateCopy = preparationDate;
  overDateCopy = overDate;
  dosagesCopy = dosages;
  dosageDateCopy = dosageDate;
  codingCopy = coding;
  quantityCopy = quantity;
  v29 = @"modifiedDate";
  v30 = dateCopy;
  v31 = v30;
  if (dosageDateCopy)
  {
    v32 = @"earliestDosageDate";

    dateForUTC = [dosageDateCopy dateForUTC];

    v29 = v32;
    if (!preparationDateCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dateForUTC = v30;
  if (preparationDateCopy)
  {
LABEL_3:
    v34 = @"preparationDate";

    dateForUTC2 = [preparationDateCopy dateForUTC];

    dateForUTC = dateForUTC2;
    v29 = v34;
  }

LABEL_4:
  if (overDateCopy)
  {
    v36 = @"handOverDate";

    dateForUTC3 = [overDateCopy dateForUTC];

    dateForUTC = dateForUTC3;
    v29 = v36;
  }

  v38 = [HKSemanticDate semanticDateWithKeyPath:v29 date:dateForUTC];
  v44 = [HKMedicationDispenseRecord medicationDispenseRecordWithType:typeCopy note:noteCopy enteredInError:errorCopy modifiedDate:v31 originIdentifier:identifierCopy locale:localeCopy extractionVersion:version device:deviceCopy metadata:metadataCopy sortDate:v38 country:countryCopy state:state medicationCodings:codingsCopy quantityDispensed:dispensedCopy preparationDate:preparationDateCopy handOverDate:overDateCopy dosages:dosagesCopy earliestDosageDate:dosageDateCopy statusCoding:codingCopy daysSupplyQuantity:quantityCopy];

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
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___HKMedicationDispenseRecord;
  v2 = objc_msgSendSuper2(&v5, sel_indexableConceptKeyPaths);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"medication"];
  [v3 addObject:@"status"];

  return v3;
}

+ (id)cachedConceptRelationshipKeyPaths
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___HKMedicationDispenseRecord;
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
    v14 = 0;
    goto LABEL_11;
  }

  if ([v7 isEqualToString:@"medication"])
  {
    medicationCodings = [(HKMedicationDispenseRecord *)self medicationCodings];
    v10 = [HKMedicalCodingCollection collectionWithCodings:medicationCodings];
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
    statusCoding = [(HKMedicationDispenseRecord *)self statusCoding];

    if (statusCoding)
    {
      medicationCodings = [(HKMedicationDispenseRecord *)self statusCoding];
      v10 = [HKMedicalCodingCollection collectionWithCoding:medicationCodings];
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
    v14 = [(HKMedicalRecord *)&v18 codingsForKeyPath:pathCopy error:error];
  }

LABEL_11:

  v16 = *MEMORY[0x1E69E9840];

  return v14;
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
    if (![v11 isEqualToString:@"status"])
    {
      v19.receiver = self;
      v19.super_class = HKMedicationDispenseRecord;
      v17 = [(HKMedicalRecord *)&v19 applyConcepts:conceptsCopy forKeyPath:pathCopy error:error];
      goto LABEL_11;
    }

    v14 = [conceptsCopy count];
    statusCoding = [(HKMedicationDispenseRecord *)self statusCoding];
    v16 = HKIndexableObjectCheckCardinalityForIndexRestore(v14, statusCoding != 0, pathCopy, error);

    if (v16)
    {
      firstObject = [conceptsCopy firstObject];
      object = [firstObject object];
      [(HKMedicationDispenseRecord *)self _setStatus:object];
      goto LABEL_8;
    }

LABEL_9:
    v17 = 0;
    goto LABEL_11;
  }

  if (!HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 1, pathCopy, error))
  {
    goto LABEL_9;
  }

  firstObject = [conceptsCopy firstObject];
  object = [firstObject object];
  [(HKMedicationDispenseRecord *)self _setMedication:object];
LABEL_8:

  v17 = 1;
LABEL_11:

  return v17;
}

@end