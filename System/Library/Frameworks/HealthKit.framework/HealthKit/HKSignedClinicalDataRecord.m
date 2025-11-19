@interface HKSignedClinicalDataRecord
+ (id)_newSignedClinicalDataRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 credentialTypes:(id)a15 issuerIdentifier:(id)a16 issuedDate:(id)a17 relevantDate:(id)a18 expirationDate:(id)a19 signatureStatus:(int64_t)a20 subject:(id)a21 items:(id)a22 dataValue:(id)a23 sourceType:(int64_t)a24 config:(id)a25;
+ (id)cachedConceptRelationshipKeyPaths;
+ (id)indexableConceptKeyPaths;
+ (id)signedClinicalDataRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 country:(id)a12 state:(unint64_t)a13 credentialTypes:(id)a14 issuerIdentifier:(id)a15 issuedDate:(id)a16 relevantDate:(id)a17 expirationDate:(id)a18 signatureStatus:(int64_t)a19 subject:(id)a20 items:(id)a21 dataValue:(id)a22 sourceType:(int64_t)a23;
- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
- (BOOL)isEquivalent:(id)a3;
- (HKSignedClinicalDataRecord)init;
- (HKSignedClinicalDataRecord)initWithCoder:(id)a3;
- (NSString)description;
- (NSString)recordIssuerDisplayName;
- (NSString)recordItemsDisplayName;
- (NSString)recordTypeDisplayName;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)codingsForKeyPath:(id)a3 error:(id *)a4;
- (void)_setCredentialTypes:(id)a3;
- (void)_setDataValue:(id)a3;
- (void)_setExpirationDate:(id)a3;
- (void)_setIssuedDate:(id)a3;
- (void)_setIssuerIdentifier:(id)a3;
- (void)_setItems:(id)a3;
- (void)_setRelevantDate:(id)a3;
- (void)_setSubject:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSignedClinicalDataRecord

+ (id)_newSignedClinicalDataRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 credentialTypes:(id)a15 issuerIdentifier:(id)a16 issuedDate:(id)a17 relevantDate:(id)a18 expirationDate:(id)a19 signatureStatus:(int64_t)a20 subject:(id)a21 items:(id)a22 dataValue:(id)a23 sourceType:(int64_t)a24 config:(id)a25
{
  v60 = a5;
  v25 = a15;
  v26 = a16;
  v27 = a17;
  v28 = a18;
  v29 = a19;
  v30 = a21;
  v31 = a22;
  v32 = a23;
  v33 = a25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __311__HKSignedClinicalDataRecord__newSignedClinicalDataRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_credentialTypes_issuerIdentifier_issuedDate_relevantDate_expirationDate_signatureStatus_subject_items_dataValue_sourceType_config___block_invoke;
  aBlock[3] = &unk_1E737A1F8;
  v64 = v25;
  v65 = v26;
  v66 = v27;
  v67 = v28;
  v68 = v29;
  v69 = v30;
  v70 = v31;
  v71 = v32;
  v73 = a20;
  v74 = a24;
  v72 = v33;
  v59 = v33;
  v58 = v32;
  v57 = v31;
  v56 = v30;
  v55 = v29;
  v54 = v28;
  v53 = v27;
  v52 = v26;
  v51 = v25;
  v34 = a13;
  v35 = a12;
  v36 = a11;
  v37 = a10;
  v38 = a8;
  v39 = a7;
  v40 = a6;
  v41 = a4;
  v42 = a3;
  v43 = _Block_copy(aBlock);
  v62.receiver = a1;
  v62.super_class = &OBJC_METACLASS___HKSignedClinicalDataRecord;
  v61 = objc_msgSendSuper2(&v62, sel__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config_, v42, v41, v60, v40, v39, v38, a9, v37, v36, v35, v34, a14, v43);

  return v61;
}

uint64_t __311__HKSignedClinicalDataRecord__newSignedClinicalDataRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_credentialTypes_issuerIdentifier_issuedDate_relevantDate_expirationDate_signatureStatus_subject_items_dataValue_sourceType_config___block_invoke(uint64_t a1, void *a2)
{
  v21 = a2;
  v3 = [*(a1 + 32) copy];
  v4 = v21[22];
  v21[22] = v3;

  v5 = [*(a1 + 40) copy];
  v6 = v21[23];
  v21[23] = v5;

  v7 = [*(a1 + 48) copy];
  v8 = v21[24];
  v21[24] = v7;

  v9 = [*(a1 + 56) copy];
  v10 = v21[25];
  v21[25] = v9;

  v11 = [*(a1 + 64) copy];
  v12 = v21[26];
  v21[26] = v11;

  v21[27] = *(a1 + 104);
  v13 = [*(a1 + 72) copy];
  v14 = v21[28];
  v21[28] = v13;

  v15 = [*(a1 + 80) copy];
  v16 = v21[29];
  v21[29] = v15;

  v17 = [*(a1 + 88) copy];
  v18 = v21[30];
  v21[30] = v17;

  v21[31] = *(a1 + 112);
  v19 = *(a1 + 96);
  if (v19)
  {
    (*(v19 + 16))(v19, v21);
  }

  return MEMORY[0x1EEE66BB8]();
}

- (HKSignedClinicalDataRecord)init
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
  v11.super_class = HKSignedClinicalDataRecord;
  v6 = [(HKSample *)&v11 description];
  credentialTypes = self->_credentialTypes;
  dataValue = self->_dataValue;
  v9 = [v3 stringWithFormat:@"<%@:%p super=%@credentialTypes = %@issuerIdentifier = %@issuedDate = %@relevantDate = %@expirationDate = %@signatureStatus = %ldsubject = %@items = %@dataValue = %@sourceType = %ld>", v5, self, v6, credentialTypes, self->_issuerIdentifier, self->_issuedDate, self->_relevantDate, self->_expirationDate, self->_signatureStatus, self->_subject, self->_items, dataValue, self->_sourceType];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKSignedClinicalDataRecord;
  v4 = a3;
  [(HKMedicalRecord *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_credentialTypes forKey:{@"CredentialTypes", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_issuerIdentifier forKey:@"IssuerIdentifier"];
  [v4 encodeObject:self->_issuedDate forKey:@"IssuedDate"];
  [v4 encodeObject:self->_relevantDate forKey:@"RelevantDate"];
  [v4 encodeObject:self->_expirationDate forKey:@"ExpirationDate"];
  [v4 encodeInteger:self->_signatureStatus forKey:@"SignatureStatus"];
  [v4 encodeObject:self->_subject forKey:@"Subject"];
  [v4 encodeObject:self->_items forKey:@"Items"];
  [v4 encodeObject:self->_dataValue forKey:@"DataValue"];
  [v4 encodeInteger:self->_sourceType forKey:@"SourceType"];
}

- (HKSignedClinicalDataRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = HKSignedClinicalDataRecord;
  v5 = [(HKMedicalRecord *)&v25 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"CredentialTypes"];
    credentialTypes = v5->_credentialTypes;
    v5->_credentialTypes = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IssuerIdentifier"];
    issuerIdentifier = v5->_issuerIdentifier;
    v5->_issuerIdentifier = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IssuedDate"];
    issuedDate = v5->_issuedDate;
    v5->_issuedDate = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RelevantDate"];
    relevantDate = v5->_relevantDate;
    v5->_relevantDate = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ExpirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v15;

    v5->_signatureStatus = [v4 decodeIntegerForKey:@"SignatureStatus"];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Subject"];
    subject = v5->_subject;
    v5->_subject = v17;

    v19 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"Items"];
    items = v5->_items;
    v5->_items = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DataValue"];
    dataValue = v5->_dataValue;
    v5->_dataValue = v22;

    v5->_sourceType = [v4 decodeIntegerForKey:@"SourceType"];
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
    v60.receiver = self;
    v60.super_class = HKSignedClinicalDataRecord;
    if (![(HKMedicalRecord *)&v60 isEquivalent:v5])
    {
      goto LABEL_45;
    }

    v6 = [(HKSignedClinicalDataRecord *)self credentialTypes];
    v7 = [v5 credentialTypes];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [v5 credentialTypes];
      if (!v9)
      {
        goto LABEL_44;
      }

      v10 = v9;
      v11 = [(HKSignedClinicalDataRecord *)self credentialTypes];
      v12 = [v5 credentialTypes];
      v13 = [v11 isEqualToArray:v12];

      if (!v13)
      {
        goto LABEL_45;
      }
    }

    v6 = [(HKSignedClinicalDataRecord *)self issuerIdentifier];
    v15 = [v5 issuerIdentifier];
    v8 = v15;
    if (v6 == v15)
    {
    }

    else
    {
      v16 = [v5 issuerIdentifier];
      if (!v16)
      {
        goto LABEL_44;
      }

      v17 = v16;
      v18 = [(HKSignedClinicalDataRecord *)self issuerIdentifier];
      v19 = [v5 issuerIdentifier];
      v20 = [v18 isEqualToString:v19];

      if (!v20)
      {
        goto LABEL_45;
      }
    }

    v6 = [(HKSignedClinicalDataRecord *)self issuedDate];
    v21 = [v5 issuedDate];
    v8 = v21;
    if (v6 == v21)
    {
    }

    else
    {
      v22 = [v5 issuedDate];
      if (!v22)
      {
        goto LABEL_44;
      }

      v23 = v22;
      v24 = [(HKSignedClinicalDataRecord *)self issuedDate];
      v25 = [v5 issuedDate];
      v26 = [v24 isEqual:v25];

      if (!v26)
      {
        goto LABEL_45;
      }
    }

    v6 = [(HKSignedClinicalDataRecord *)self relevantDate];
    v27 = [v5 relevantDate];
    v8 = v27;
    if (v6 == v27)
    {
    }

    else
    {
      v28 = [v5 relevantDate];
      if (!v28)
      {
        goto LABEL_44;
      }

      v29 = v28;
      v30 = [(HKSignedClinicalDataRecord *)self relevantDate];
      v31 = [v5 relevantDate];
      v32 = [v30 isEqual:v31];

      if (!v32)
      {
        goto LABEL_45;
      }
    }

    v6 = [(HKSignedClinicalDataRecord *)self expirationDate];
    v33 = [v5 expirationDate];
    v8 = v33;
    if (v6 == v33)
    {
    }

    else
    {
      v34 = [v5 expirationDate];
      if (!v34)
      {
        goto LABEL_44;
      }

      v35 = v34;
      v36 = [(HKSignedClinicalDataRecord *)self expirationDate];
      v37 = [v5 expirationDate];
      v38 = [v36 isEqual:v37];

      if (!v38)
      {
        goto LABEL_45;
      }
    }

    v39 = [(HKSignedClinicalDataRecord *)self signatureStatus];
    if (v39 != [v5 signatureStatus])
    {
      goto LABEL_45;
    }

    v6 = [(HKSignedClinicalDataRecord *)self subject];
    v40 = [v5 subject];
    v8 = v40;
    if (v6 == v40)
    {
    }

    else
    {
      v41 = [v5 subject];
      if (!v41)
      {
        goto LABEL_44;
      }

      v42 = v41;
      v43 = [(HKSignedClinicalDataRecord *)self subject];
      v44 = [v5 subject];
      v45 = [v43 isEqual:v44];

      if (!v45)
      {
        goto LABEL_45;
      }
    }

    v6 = [(HKSignedClinicalDataRecord *)self items];
    v46 = [v5 items];
    v8 = v46;
    if (v6 == v46)
    {
    }

    else
    {
      v47 = [v5 items];
      if (!v47)
      {
        goto LABEL_44;
      }

      v48 = v47;
      v49 = [(HKSignedClinicalDataRecord *)self items];
      v50 = [v5 items];
      v51 = [v49 isEqualToArray:v50];

      if (!v51)
      {
        goto LABEL_45;
      }
    }

    v6 = [(HKSignedClinicalDataRecord *)self dataValue];
    v52 = [v5 dataValue];
    v8 = v52;
    if (v6 == v52)
    {

LABEL_49:
      v59 = [(HKSignedClinicalDataRecord *)self sourceType];
      v14 = v59 == [v5 sourceType];
      goto LABEL_46;
    }

    v53 = [v5 dataValue];
    if (v53)
    {
      v54 = v53;
      v55 = [(HKSignedClinicalDataRecord *)self dataValue];
      v56 = [v5 dataValue];
      v57 = [v55 isEqual:v56];

      if (v57)
      {
        goto LABEL_49;
      }

LABEL_45:
      v14 = 0;
LABEL_46:

      goto LABEL_47;
    }

LABEL_44:

    goto LABEL_45;
  }

  v14 = 0;
LABEL_47:

  return v14;
}

- (void)_setCredentialTypes:(id)a3
{
  v4 = [a3 copy];
  credentialTypes = self->_credentialTypes;
  self->_credentialTypes = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setIssuerIdentifier:(id)a3
{
  v4 = [a3 copy];
  issuerIdentifier = self->_issuerIdentifier;
  self->_issuerIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setIssuedDate:(id)a3
{
  v4 = [a3 copy];
  issuedDate = self->_issuedDate;
  self->_issuedDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setRelevantDate:(id)a3
{
  v4 = [a3 copy];
  relevantDate = self->_relevantDate;
  self->_relevantDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setExpirationDate:(id)a3
{
  v4 = [a3 copy];
  expirationDate = self->_expirationDate;
  self->_expirationDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setSubject:(id)a3
{
  v4 = [a3 copy];
  subject = self->_subject;
  self->_subject = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setItems:(id)a3
{
  v4 = [a3 copy];
  items = self->_items;
  self->_items = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setDataValue:(id)a3
{
  v4 = [a3 copy];
  dataValue = self->_dataValue;
  self->_dataValue = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v13.receiver = self;
  v13.super_class = HKSignedClinicalDataRecord;
  v5 = [(HKMedicalRecord *)&v13 _validateWithConfiguration:a3.var0, a3.var1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    if (self->_credentialTypes)
    {
      if (self->_issuerIdentifier)
      {
        if (self->_issuedDate)
        {
          if (self->_relevantDate)
          {
            if (self->_subject)
            {
              if (self->_items)
              {
                v8 = 0;
                goto LABEL_18;
              }

              v9 = MEMORY[0x1E696ABC0];
              v10 = objc_opt_class();
              v11 = @"%@: items must not be nil";
            }

            else
            {
              v9 = MEMORY[0x1E696ABC0];
              v10 = objc_opt_class();
              v11 = @"%@: subject must not be nil";
            }
          }

          else
          {
            v9 = MEMORY[0x1E696ABC0];
            v10 = objc_opt_class();
            v11 = @"%@: relevantDate must not be nil";
          }
        }

        else
        {
          v9 = MEMORY[0x1E696ABC0];
          v10 = objc_opt_class();
          v11 = @"%@: issuedDate must not be nil";
        }
      }

      else
      {
        v9 = MEMORY[0x1E696ABC0];
        v10 = objc_opt_class();
        v11 = @"%@: issuerIdentifier must not be nil";
      }
    }

    else
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = objc_opt_class();
      v11 = @"%@: credentialTypes must not be nil";
    }

    v7 = [v9 hk_errorForInvalidArgument:@"@" class:v10 selector:a2 format:{v11, self}];
  }

  v8 = v7;
LABEL_18:

  return v8;
}

- (NSString)recordTypeDisplayName
{
  v2 = [(HKSignedClinicalDataRecord *)self credentialTypes];
  v3 = [HKSignedClinicalDataUtilities recordTypeDisplayNameWithTypes:v2];

  return v3;
}

- (NSString)recordItemsDisplayName
{
  v2 = [(HKSignedClinicalDataRecord *)self items];
  v3 = [v2 hk_map:&__block_literal_global_56];
  v4 = [HKSignedClinicalDataUtilities recordItemsDisplayNameWithItems:v3];

  return v4;
}

id __67__HKSignedClinicalDataRecord_HealthRecords__recordItemsDisplayName__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 primaryConcept];
  v3 = [v2 preferredName];

  return v3;
}

- (NSString)recordIssuerDisplayName
{
  v3 = [(HKSignedClinicalDataRecord *)self issuerIdentifier];
  v4 = [HKSignedClinicalDataUtilities preferredRecordIssuerDisplayNameWithIssuerIdentifier:v3];

  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v6 = [(HKObject *)self sourceRevision];
    v7 = [v6 source];
    v8 = [v7 name];

    if ([v8 length])
    {
      v5 = v8;
    }

    else
    {
      v9 = [(HKSignedClinicalDataRecord *)self issuerIdentifier];
      v5 = [HKSignedClinicalDataUtilities recordIssuerDisplayNameWithIssuerIdentifier:v9];
    }
  }

  return v5;
}

+ (id)indexableConceptKeyPaths
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___HKSignedClinicalDataRecord;
  v2 = objc_msgSendSuper2(&v6, sel_indexableConceptKeyPaths);
  v3 = [v2 mutableCopy];

  v4 = [HKSignedClinicalDataItem indexableKeyPathsWithPrefix:@"items"];
  [v3 addObjectsFromArray:v4];

  return v3;
}

+ (id)cachedConceptRelationshipKeyPaths
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___HKSignedClinicalDataRecord;
  v2 = objc_msgSendSuper2(&v4, sel_cachedConceptRelationshipKeyPaths);

  return v2;
}

- (id)codingsForKeyPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [HKConceptIndexUtilities firstComponentForKeyPath:v6 error:a4];
  v8 = v7;
  if (v7)
  {
    if ([v7 isEqualToString:@"items"])
    {
      v9 = [HKConceptIndexUtilities keyPathRemovingFirstComponentFromKeyPath:v6 error:a4];
      if (v9)
      {
        v10 = [(HKSignedClinicalDataRecord *)self items];
        v11 = [v10 codingsForKeyPath:v9 error:a4];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v13.receiver = self;
      v13.super_class = HKSignedClinicalDataRecord;
      v11 = [(HKMedicalRecord *)&v13 codingsForKeyPath:v6 error:a4];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [HKConceptIndexUtilities firstComponentForKeyPath:v9 error:a5];
  v11 = v10;
  if (v10)
  {
    if ([v10 isEqualToString:@"items"])
    {
      v12 = [HKConceptIndexUtilities keyPathRemovingFirstComponentFromKeyPath:v9 error:a5];
      if (v12)
      {
        v13 = [(HKSignedClinicalDataRecord *)self items];

        if (v13)
        {
          v14 = [(HKSignedClinicalDataRecord *)self items];
          v15 = [v14 applyConcepts:v8 forKeyPath:v12 error:a5];
        }

        else
        {
          v15 = HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 0, v9, a5);
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v17.receiver = self;
      v17.super_class = HKSignedClinicalDataRecord;
      v15 = [(HKMedicalRecord *)&v17 applyConcepts:v8 forKeyPath:v9 error:a5];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)signedClinicalDataRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 country:(id)a12 state:(unint64_t)a13 credentialTypes:(id)a14 issuerIdentifier:(id)a15 issuedDate:(id)a16 relevantDate:(id)a17 expirationDate:(id)a18 signatureStatus:(int64_t)a19 subject:(id)a20 items:(id)a21 dataValue:(id)a22 sourceType:(int64_t)a23
{
  v40 = a5;
  v42 = a16;
  v23 = a22;
  v24 = a21;
  v32 = a20;
  v31 = a18;
  v25 = a17;
  v30 = a15;
  v29 = a14;
  v43 = a12;
  v44 = a11;
  v47 = a10;
  v34 = a8;
  v46 = a7;
  v26 = a6;
  v37 = a4;
  v27 = a3;
  v39 = [HKSemanticDate semanticDateWithKeyPath:@"issuedDate" date:v42];
  v41 = [HKSignedClinicalDataRecord signedClinicalDataRecordWithType:v27 note:v37 enteredInError:v40 modifiedDate:v26 originIdentifier:v46 locale:v34 extractionVersion:a9 device:v47 metadata:v44 sortDate:v39 country:v43 state:a13 credentialTypes:v29 issuerIdentifier:v30 issuedDate:v42 relevantDate:v25 expirationDate:v31 signatureStatus:a19 subject:v32 items:v24 dataValue:v23 sourceType:a23];

  return v41;
}

@end