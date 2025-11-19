@interface HKMedicalRecord
+ (id)_newMedicalRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 config:(id)a15;
+ (id)_sortDateIntervalFromStartDateComponents:(id)a3 endDateComponents:(id)a4 error:(id *)a5;
+ (id)cachedConceptRelationshipKeyPaths;
+ (id)indexableConceptKeyPaths;
+ (id)indexableKeyPathsWithPrefix:(id)a3;
- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
- (BOOL)isEquivalent:(id)a3;
- (HKConcept)primaryConcept;
- (HKMedicalRecord)initWithCoder:(id)a3;
- (id)_init;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)codingsForKeyPath:(id)a3 error:(id *)a4;
- (id)fallbackDisplayString;
- (unint64_t)medicalRecordOriginType;
- (void)_setCountry:(id)a3;
- (void)_setLocale:(id)a3;
- (void)_setModifiedDate:(id)a3;
- (void)_setNote:(id)a3;
- (void)_setOriginIdentifier:(id)a3;
- (void)_setPrimaryConcept:(id)a3;
- (void)_setSortDate:(id)a3;
- (void)encodeWithCoder:(id)a3;
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
  v2 = [(HKSample *)&v5 _init];
  v3 = v2[12];
  v2[12] = 0;

  return v2;
}

+ (id)_newMedicalRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 config:(id)a15
{
  v38 = a4;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a12;
  v23 = a13;
  v24 = a15;
  v43 = a11;
  v25 = a10;
  v26 = a3;
  [v19 timeIntervalSinceReferenceDate];
  v28 = v27;
  [v19 timeIntervalSinceReferenceDate];
  v30 = v29;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __166__HKMedicalRecord__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config___block_invoke;
  v45[3] = &unk_1E737DB68;
  v55 = a5;
  v46 = v38;
  v47 = v19;
  v48 = v20;
  v49 = v21;
  v50 = v22;
  v51 = v23;
  v53 = a9;
  v54 = a14;
  v52 = v24;
  v44.receiver = a1;
  v44.super_class = &OBJC_METACLASS___HKMedicalRecord;
  v42 = v24;
  v40 = v23;
  v31 = v22;
  v32 = v21;
  v33 = v20;
  v34 = v19;
  v35 = v38;
  v36 = objc_msgSendSuper2(&v44, sel__newSampleWithType_startDate_endDate_device_metadata_config_, v26, v25, v43, v45, v28, v30);

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
  v2 = [(HKMedicalRecordOriginIdentifier *)self->_originIdentifier signedClinicalDataRecordIdentifier];

  if (v2)
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
    v4 = [(HKMedicalRecord *)self medicalRecordCodings];
    v5 = [HKMedicalCodingCollection collectionWithCodings:v4];
    v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v5];
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKMedicalRecord;
  v4 = a3;
  [(HKSample *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_note forKey:{@"Note", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_enteredInError forKey:@"EnteredInError"];
  [v4 encodeObject:self->_modifiedDate forKey:@"ModifiedDate"];
  [v4 encodeObject:self->_originIdentifier forKey:@"MedicalRecordOriginIdentifier"];
  [v4 encodeObject:self->_locale forKey:@"Locale"];
  [v4 encodeInteger:self->_extractionVersion forKey:@"ExtractionVersion"];
  [v4 encodeObject:self->_sortDate forKey:@"SortDate"];
  [v4 encodeObject:self->_primaryConcept forKey:@"PrimaryConcept"];
  [v4 encodeObject:self->_country forKey:@"Country"];
  [v4 encodeInteger:self->_state forKey:@"State"];
}

- (HKMedicalRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = HKMedicalRecord;
  v5 = [(HKSample *)&v21 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Note"];
    note = v5->_note;
    v5->_note = v6;

    v5->_enteredInError = [v4 decodeBoolForKey:@"EnteredInError"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ModifiedDate"];
    modifiedDate = v5->_modifiedDate;
    v5->_modifiedDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MedicalRecordOriginIdentifier"];
    originIdentifier = v5->_originIdentifier;
    v5->_originIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Locale"];
    locale = v5->_locale;
    v5->_locale = v12;

    v5->_extractionVersion = [v4 decodeIntegerForKey:@"ExtractionVersion"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SortDate"];
    sortDate = v5->_sortDate;
    v5->_sortDate = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrimaryConcept"];
    primaryConcept = v5->_primaryConcept;
    v5->_primaryConcept = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Country"];
    country = v5->_country;
    v5->_country = v18;

    v5->_state = [v4 decodeIntegerForKey:@"State"];
  }

  return v5;
}

- (BOOL)isEquivalent:(id)a3
{
  v4 = a3;
  if (self == v4)
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
      if ([(HKSample *)&v39 isEquivalent:v4])
      {
        v6 = v4;
        v7 = [(HKMedicalRecord *)self enteredInError];
        if (v7 != [(HKMedicalRecord *)v6 enteredInError])
        {
          goto LABEL_28;
        }

        v8 = [(HKMedicalRecord *)self sortDate];
        v9 = [(HKMedicalRecord *)v6 sortDate];
        v10 = [v8 isEqual:v9];

        if (!v10)
        {
          goto LABEL_28;
        }

        v11 = [(HKMedicalRecord *)self modifiedDate];
        v12 = [(HKMedicalRecord *)v6 modifiedDate];
        v13 = v12;
        if (v11 == v12)
        {
        }

        else
        {
          v14 = [(HKMedicalRecord *)v6 modifiedDate];
          if (!v14)
          {
            goto LABEL_27;
          }

          v15 = v14;
          v16 = [(HKMedicalRecord *)self modifiedDate];
          v17 = [(HKMedicalRecord *)v6 modifiedDate];
          v18 = [v16 isEqual:v17];

          if (!v18)
          {
            goto LABEL_28;
          }
        }

        v11 = [(HKMedicalRecord *)self locale];
        v13 = [(HKMedicalRecord *)v6 locale];
        if ((v11 == 0) != (v13 != 0))
        {
          v20 = [(HKMedicalRecord *)v6 locale];
          if (v20)
          {
            v21 = v20;
            v22 = [(HKMedicalRecord *)self locale];
            v23 = [(HKMedicalRecord *)v6 locale];
            v24 = [v22 hk_isEquivalent:v23];

            if (!v24)
            {
              goto LABEL_28;
            }
          }

          else
          {
          }

          v11 = [(HKMedicalRecord *)self note];
          v25 = [(HKMedicalRecord *)v6 note];
          v13 = v25;
          if (v11 == v25)
          {
          }

          else
          {
            v26 = [(HKMedicalRecord *)v6 note];
            if (!v26)
            {
              goto LABEL_27;
            }

            v27 = v26;
            v28 = [(HKMedicalRecord *)self note];
            v29 = [(HKMedicalRecord *)v6 note];
            v30 = [v28 isEqualToString:v29];

            if (!v30)
            {
              goto LABEL_28;
            }
          }

          v11 = [(HKMedicalRecord *)self country];
          v31 = [(HKMedicalRecord *)v6 country];
          v13 = v31;
          if (v11 == v31)
          {

LABEL_32:
            v38 = [(HKMedicalRecord *)self state];
            v19 = v38 == [(HKMedicalRecord *)v6 state];
            goto LABEL_29;
          }

          v32 = [(HKMedicalRecord *)v6 country];
          if (v32)
          {
            v33 = v32;
            v34 = [(HKMedicalRecord *)self country];
            v35 = [(HKMedicalRecord *)v6 country];
            v36 = [v34 isEqualToString:v35];

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

- (void)_setNote:(id)a3
{
  v4 = [a3 copy];
  note = self->_note;
  self->_note = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setModifiedDate:(id)a3
{
  v4 = [a3 copy];
  modifiedDate = self->_modifiedDate;
  self->_modifiedDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setOriginIdentifier:(id)a3
{
  v4 = [a3 copy];
  originIdentifier = self->_originIdentifier;
  self->_originIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setLocale:(id)a3
{
  v4 = [a3 copy];
  locale = self->_locale;
  self->_locale = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setSortDate:(id)a3
{
  v4 = [a3 copy];
  sortDate = self->_sortDate;
  self->_sortDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setPrimaryConcept:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      [HKMedicalRecord _setPrimaryConcept:v5];
    }
  }

  primaryConcept = self->_primaryConcept;
  self->_primaryConcept = v4;
}

- (void)_setCountry:(id)a3
{
  v4 = [a3 copy];
  country = self->_country;
  self->_country = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v13.receiver = self;
  v13.super_class = HKMedicalRecord;
  v5 = [(HKSample *)&v13 _validateWithConfiguration:a3.var0, a3.var1];
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

+ (id)_sortDateIntervalFromStartDateComponents:(id)a3 endDateComponents:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7 || !v8)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a5 code:3 format:@"start and end date components must be nonnull"];
    v13 = 0;
    goto LABEL_14;
  }

  v10 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithUTCTimeZone];
  if ([v7 isValidDateInCalendar:v10])
  {
    if ([v9 isValidDateInCalendar:v10])
    {
      v11 = [v10 dateFromComponents:v7];
      v12 = [v10 dateFromComponents:v9];
      if ([v11 hk_isAfterDate:v12])
      {
        [MEMORY[0x1E696ABC0] hk_assignError:a5 code:3 format:@"start date components after end date components"];
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

  [v14 hk_assignError:a5 code:3 format:v15];
  v13 = 0;
LABEL_13:

LABEL_14:

  return v13;
}

+ (id)indexableKeyPathsWithPrefix:(id)a3
{
  v4 = a3;
  v5 = [a1 indexableConceptKeyPaths];
  v6 = [HKConceptIndexUtilities keyPaths:v5 prefix:v4];

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

- (id)codingsForKeyPath:(id)a3 error:(id *)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 isEqualToString:@"primaryConcept"])
  {
    v7 = [(HKMedicalRecord *)self medicalRecordCodings];
    v8 = [HKMedicalCodingCollection collectionWithCodings:v7];

    v9 = [HKIndexableObject indexableObjectWithObject:v8];
    v13[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  }

  else
  {
    [HKConceptIndexUtilities assignError:a4 forInvalidKeyPath:v6 inClass:objc_opt_class()];
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 isEqualToString:@"primaryConcept"];
  if (v10)
  {
    v11 = HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 1, v9, a5);

    if (!v11)
    {
      LOBYTE(v10) = 0;
      goto LABEL_7;
    }

    v12 = [v8 firstObject];
    v9 = [v12 object];
    [(HKMedicalRecord *)self _setPrimaryConcept:v9];
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = objc_opt_class();
    v12 = NSStringFromClass(v14);
    [v13 hk_assignError:a5 code:3 format:{@"%@ does not support applying concepts for key-path %@", v12, v9}];
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