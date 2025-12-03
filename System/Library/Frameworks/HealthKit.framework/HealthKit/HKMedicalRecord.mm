@interface HKMedicalRecord
+ (id)_newMedicalRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 config:(id)self5;
+ (id)_sortDateIntervalFromStartDateComponents:(id)components endDateComponents:(id)dateComponents error:(id *)error;
+ (id)cachedConceptRelationshipKeyPaths;
+ (id)indexableConceptKeyPaths;
+ (id)indexableKeyPathsWithPrefix:(id)prefix;
- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error;
- (BOOL)isEquivalent:(id)equivalent;
- (HKConcept)primaryConcept;
- (HKMedicalRecord)initWithCoder:(id)coder;
- (id)_init;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)codingsForKeyPath:(id)path error:(id *)error;
- (id)fallbackDisplayString;
- (unint64_t)medicalRecordOriginType;
- (void)_setCountry:(id)country;
- (void)_setLocale:(id)locale;
- (void)_setModifiedDate:(id)date;
- (void)_setNote:(id)note;
- (void)_setOriginIdentifier:(id)identifier;
- (void)_setPrimaryConcept:(id)concept;
- (void)_setSortDate:(id)date;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMedicalRecord

- (id)fallbackDisplayString
{
  v2 = objc_opt_class();

  return [v2 defaultDisplayString];
}

- (id)_init
{
  v5.receiver = self;
  v5.super_class = HKMedicalRecord;
  _init = [(HKSample *)&v5 _init];
  v3 = _init[12];
  _init[12] = 0;

  return _init;
}

+ (id)_newMedicalRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 config:(id)self5
{
  noteCopy = note;
  dateCopy = date;
  identifierCopy = identifier;
  localeCopy = locale;
  sortDateCopy = sortDate;
  countryCopy = country;
  configCopy = config;
  metadataCopy = metadata;
  deviceCopy = device;
  typeCopy = type;
  [dateCopy timeIntervalSinceReferenceDate];
  v28 = v27;
  [dateCopy timeIntervalSinceReferenceDate];
  v30 = v29;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __166__HKMedicalRecord__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config___block_invoke;
  v45[3] = &unk_1E737DB68;
  errorCopy = error;
  v46 = noteCopy;
  v47 = dateCopy;
  v48 = identifierCopy;
  v49 = localeCopy;
  v50 = sortDateCopy;
  v51 = countryCopy;
  versionCopy = version;
  stateCopy = state;
  v52 = configCopy;
  v44.receiver = self;
  v44.super_class = &OBJC_METACLASS___HKMedicalRecord;
  v42 = configCopy;
  v40 = countryCopy;
  v31 = sortDateCopy;
  v32 = localeCopy;
  v33 = identifierCopy;
  v34 = dateCopy;
  v35 = noteCopy;
  v36 = objc_msgSendSuper2(&v44, sel__newSampleWithType_startDate_endDate_device_metadata_config_, typeCopy, deviceCopy, metadataCopy, v45, v28, v30);

  return v36;
}

uint64_t __166__HKMedicalRecord__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config___block_invoke(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = [*(a1 + 32) copy];
  v4 = v17[14];
  v17[14] = v3;

  *(v17 + 104) = *(a1 + 104);
  v5 = [*(a1 + 40) copy];
  v6 = v17[15];
  v17[15] = v5;

  v7 = [*(a1 + 48) copy];
  v8 = v17[16];
  v17[16] = v7;

  v9 = [*(a1 + 56) copy];
  v10 = v17[17];
  v17[17] = v9;

  v17[18] = *(a1 + 88);
  v11 = [*(a1 + 64) copy];
  v12 = v17[19];
  v17[19] = v11;

  v13 = [*(a1 + 72) copy];
  v14 = v17[20];
  v17[20] = v13;

  v17[21] = *(a1 + 96);
  v15 = *(a1 + 80);
  if (v15)
  {
    (*(v15 + 16))(v15, v17);
  }

  return MEMORY[0x1EEE66BB8]();
}

- (unint64_t)medicalRecordOriginType
{
  signedClinicalDataRecordIdentifier = [(HKMedicalRecordOriginIdentifier *)self->_originIdentifier signedClinicalDataRecordIdentifier];

  if (signedClinicalDataRecordIdentifier)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (HKConcept)primaryConcept
{
  primaryConcept = self->_primaryConcept;
  if (primaryConcept)
  {
    v3 = primaryConcept;
  }

  else
  {
    medicalRecordCodings = [(HKMedicalRecord *)self medicalRecordCodings];
    v5 = [HKMedicalCodingCollection collectionWithCodings:medicalRecordCodings];
    v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v5];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKMedicalRecord;
  coderCopy = coder;
  [(HKSample *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_note forKey:{@"Note", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_enteredInError forKey:@"EnteredInError"];
  [coderCopy encodeObject:self->_modifiedDate forKey:@"ModifiedDate"];
  [coderCopy encodeObject:self->_originIdentifier forKey:@"MedicalRecordOriginIdentifier"];
  [coderCopy encodeObject:self->_locale forKey:@"Locale"];
  [coderCopy encodeInteger:self->_extractionVersion forKey:@"ExtractionVersion"];
  [coderCopy encodeObject:self->_sortDate forKey:@"SortDate"];
  [coderCopy encodeObject:self->_primaryConcept forKey:@"PrimaryConcept"];
  [coderCopy encodeObject:self->_country forKey:@"Country"];
  [coderCopy encodeInteger:self->_state forKey:@"State"];
}

- (HKMedicalRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = HKMedicalRecord;
  v5 = [(HKSample *)&v21 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Note"];
    note = v5->_note;
    v5->_note = v6;

    v5->_enteredInError = [coderCopy decodeBoolForKey:@"EnteredInError"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ModifiedDate"];
    modifiedDate = v5->_modifiedDate;
    v5->_modifiedDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MedicalRecordOriginIdentifier"];
    originIdentifier = v5->_originIdentifier;
    v5->_originIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Locale"];
    locale = v5->_locale;
    v5->_locale = v12;

    v5->_extractionVersion = [coderCopy decodeIntegerForKey:@"ExtractionVersion"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SortDate"];
    sortDate = v5->_sortDate;
    v5->_sortDate = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrimaryConcept"];
    primaryConcept = v5->_primaryConcept;
    v5->_primaryConcept = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Country"];
    country = v5->_country;
    v5->_country = v18;

    v5->_state = [coderCopy decodeIntegerForKey:@"State"];
  }

  return v5;
}

- (BOOL)isEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  if (self == equivalentCopy)
  {
    v19 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v40.receiver = self;
    v40.super_class = HKMedicalRecord;
    if ([(HKMedicalRecord *)&v40 isKindOfClass:v5])
    {
      v39.receiver = self;
      v39.super_class = HKMedicalRecord;
      if ([(HKSample *)&v39 isEquivalent:equivalentCopy])
      {
        v6 = equivalentCopy;
        enteredInError = [(HKMedicalRecord *)self enteredInError];
        if (enteredInError != [(HKMedicalRecord *)v6 enteredInError])
        {
          goto LABEL_28;
        }

        sortDate = [(HKMedicalRecord *)self sortDate];
        sortDate2 = [(HKMedicalRecord *)v6 sortDate];
        v10 = [sortDate isEqual:sortDate2];

        if (!v10)
        {
          goto LABEL_28;
        }

        modifiedDate = [(HKMedicalRecord *)self modifiedDate];
        modifiedDate2 = [(HKMedicalRecord *)v6 modifiedDate];
        locale = modifiedDate2;
        if (modifiedDate == modifiedDate2)
        {
        }

        else
        {
          modifiedDate3 = [(HKMedicalRecord *)v6 modifiedDate];
          if (!modifiedDate3)
          {
            goto LABEL_27;
          }

          v15 = modifiedDate3;
          modifiedDate4 = [(HKMedicalRecord *)self modifiedDate];
          modifiedDate5 = [(HKMedicalRecord *)v6 modifiedDate];
          v18 = [modifiedDate4 isEqual:modifiedDate5];

          if (!v18)
          {
            goto LABEL_28;
          }
        }

        modifiedDate = [(HKMedicalRecord *)self locale];
        locale = [(HKMedicalRecord *)v6 locale];
        if ((modifiedDate == 0) != (locale != 0))
        {
          locale2 = [(HKMedicalRecord *)v6 locale];
          if (locale2)
          {
            v21 = locale2;
            locale3 = [(HKMedicalRecord *)self locale];
            locale4 = [(HKMedicalRecord *)v6 locale];
            v24 = [locale3 hk_isEquivalent:locale4];

            if (!v24)
            {
              goto LABEL_28;
            }
          }

          else
          {
          }

          modifiedDate = [(HKMedicalRecord *)self note];
          note = [(HKMedicalRecord *)v6 note];
          locale = note;
          if (modifiedDate == note)
          {
          }

          else
          {
            note2 = [(HKMedicalRecord *)v6 note];
            if (!note2)
            {
              goto LABEL_27;
            }

            v27 = note2;
            note3 = [(HKMedicalRecord *)self note];
            note4 = [(HKMedicalRecord *)v6 note];
            v30 = [note3 isEqualToString:note4];

            if (!v30)
            {
              goto LABEL_28;
            }
          }

          modifiedDate = [(HKMedicalRecord *)self country];
          country = [(HKMedicalRecord *)v6 country];
          locale = country;
          if (modifiedDate == country)
          {

LABEL_32:
            state = [(HKMedicalRecord *)self state];
            v19 = state == [(HKMedicalRecord *)v6 state];
            goto LABEL_29;
          }

          country2 = [(HKMedicalRecord *)v6 country];
          if (country2)
          {
            v33 = country2;
            country3 = [(HKMedicalRecord *)self country];
            country4 = [(HKMedicalRecord *)v6 country];
            v36 = [country3 isEqualToString:country4];

            if (v36)
            {
              goto LABEL_32;
            }

LABEL_28:
            v19 = 0;
LABEL_29:

            goto LABEL_30;
          }
        }

LABEL_27:

        goto LABEL_28;
      }
    }

    v19 = 0;
  }

LABEL_30:

  return v19;
}

- (void)_setNote:(id)note
{
  v4 = [note copy];
  note = self->_note;
  self->_note = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setModifiedDate:(id)date
{
  v4 = [date copy];
  modifiedDate = self->_modifiedDate;
  self->_modifiedDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setOriginIdentifier:(id)identifier
{
  v4 = [identifier copy];
  originIdentifier = self->_originIdentifier;
  self->_originIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setLocale:(id)locale
{
  v4 = [locale copy];
  locale = self->_locale;
  self->_locale = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setSortDate:(id)date
{
  v4 = [date copy];
  sortDate = self->_sortDate;
  self->_sortDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setPrimaryConcept:(id)concept
{
  conceptCopy = concept;
  if (!conceptCopy)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      [HKMedicalRecord _setPrimaryConcept:v5];
    }
  }

  primaryConcept = self->_primaryConcept;
  self->_primaryConcept = conceptCopy;
}

- (void)_setCountry:(id)country
{
  v4 = [country copy];
  country = self->_country;
  self->_country = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v13.receiver = self;
  v13.super_class = HKMedicalRecord;
  v5 = [(HKSample *)&v13 _validateWithConfiguration:configuration.var0, configuration.var1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    if (self->_modifiedDate)
    {
      if (self->_sortDate)
      {
        if (self->_originIdentifier)
        {
          if (self->_extractionVersion)
          {
            v8 = 0;
            goto LABEL_14;
          }

          v9 = MEMORY[0x1E696ABC0];
          v10 = objc_opt_class();
          v11 = @"%@: _extractionVersion must not be nil";
        }

        else
        {
          v9 = MEMORY[0x1E696ABC0];
          v10 = objc_opt_class();
          v11 = @"%@: originIdentifier must not be nil";
        }
      }

      else
      {
        v9 = MEMORY[0x1E696ABC0];
        v10 = objc_opt_class();
        v11 = @"%@: sortDate must not be nil";
      }
    }

    else
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = objc_opt_class();
      v11 = @"%@: modifiedDate must not be nil";
    }

    v7 = [v9 hk_errorForInvalidArgument:@"@" class:v10 selector:a2 format:{v11, self}];
  }

  v8 = v7;
LABEL_14:

  return v8;
}

+ (id)_sortDateIntervalFromStartDateComponents:(id)components endDateComponents:(id)dateComponents error:(id *)error
{
  componentsCopy = components;
  dateComponentsCopy = dateComponents;
  v9 = dateComponentsCopy;
  if (!componentsCopy || !dateComponentsCopy)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:@"start and end date components must be nonnull"];
    v13 = 0;
    goto LABEL_14;
  }

  hk_gregorianCalendarWithUTCTimeZone = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithUTCTimeZone];
  if ([componentsCopy isValidDateInCalendar:hk_gregorianCalendarWithUTCTimeZone])
  {
    if ([v9 isValidDateInCalendar:hk_gregorianCalendarWithUTCTimeZone])
    {
      v11 = [hk_gregorianCalendarWithUTCTimeZone dateFromComponents:componentsCopy];
      v12 = [hk_gregorianCalendarWithUTCTimeZone dateFromComponents:v9];
      if ([v11 hk_isAfterDate:v12])
      {
        [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:@"start date components after end date components"];
        v13 = 0;
      }

      else
      {
        v13 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v11 endDate:v12];
      }

      goto LABEL_13;
    }

    v14 = MEMORY[0x1E696ABC0];
    v15 = @"end date components are not a valid date";
  }

  else
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = @"start date components are not a valid date";
  }

  [v14 hk_assignError:error code:3 format:v15];
  v13 = 0;
LABEL_13:

LABEL_14:

  return v13;
}

+ (id)indexableKeyPathsWithPrefix:(id)prefix
{
  prefixCopy = prefix;
  indexableConceptKeyPaths = [self indexableConceptKeyPaths];
  v6 = [HKConceptIndexUtilities keyPaths:indexableConceptKeyPaths prefix:prefixCopy];

  return v6;
}

+ (id)indexableConceptKeyPaths
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"primaryConcept";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)cachedConceptRelationshipKeyPaths
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"primaryConcept.groupByConcept";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)codingsForKeyPath:(id)path error:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if ([pathCopy isEqualToString:@"primaryConcept"])
  {
    medicalRecordCodings = [(HKMedicalRecord *)self medicalRecordCodings];
    v8 = [HKMedicalCodingCollection collectionWithCodings:medicalRecordCodings];

    v9 = [HKIndexableObject indexableObjectWithObject:v8];
    v13[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  }

  else
  {
    [HKConceptIndexUtilities assignError:error forInvalidKeyPath:pathCopy inClass:objc_opt_class()];
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error
{
  conceptsCopy = concepts;
  pathCopy = path;
  v10 = [pathCopy isEqualToString:@"primaryConcept"];
  if (v10)
  {
    v11 = HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 1, pathCopy, error);

    if (!v11)
    {
      LOBYTE(v10) = 0;
      goto LABEL_7;
    }

    firstObject = [conceptsCopy firstObject];
    pathCopy = [firstObject object];
    [(HKMedicalRecord *)self _setPrimaryConcept:pathCopy];
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = objc_opt_class();
    firstObject = NSStringFromClass(v14);
    [v13 hk_assignError:error code:3 format:{@"%@ does not support applying concepts for key-path %@", firstObject, pathCopy}];
  }

LABEL_7:
  return v10;
}

- (void)_setPrimaryConcept:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v5 = 138412290;
  v6 = v3;
  _os_log_fault_impl(&dword_19197B000, v1, OS_LOG_TYPE_FAULT, "Tried to set a nil primaryConcept in class %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end