@interface HKSignedClinicalDataRecord
+ (id)_newSignedClinicalDataRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 credentialTypes:(id)self5 issuerIdentifier:(id)self6 issuedDate:(id)self7 relevantDate:(id)self8 expirationDate:(id)self9 signatureStatus:(int64_t)status subject:(id)subject items:(id)items dataValue:(id)value sourceType:(int64_t)sourceType config:(id)config;
+ (id)cachedConceptRelationshipKeyPaths;
+ (id)indexableConceptKeyPaths;
+ (id)signedClinicalDataRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 country:(id)self2 state:(unint64_t)self3 credentialTypes:(id)self4 issuerIdentifier:(id)self5 issuedDate:(id)self6 relevantDate:(id)self7 expirationDate:(id)self8 signatureStatus:(int64_t)self9 subject:(id)subject items:(id)items dataValue:(id)value sourceType:(int64_t)sourceType;
- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error;
- (BOOL)isEquivalent:(id)equivalent;
- (HKSignedClinicalDataRecord)init;
- (HKSignedClinicalDataRecord)initWithCoder:(id)coder;
- (NSString)description;
- (NSString)recordIssuerDisplayName;
- (NSString)recordItemsDisplayName;
- (NSString)recordTypeDisplayName;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)codingsForKeyPath:(id)path error:(id *)error;
- (void)_setCredentialTypes:(id)types;
- (void)_setDataValue:(id)value;
- (void)_setExpirationDate:(id)date;
- (void)_setIssuedDate:(id)date;
- (void)_setIssuerIdentifier:(id)identifier;
- (void)_setItems:(id)items;
- (void)_setRelevantDate:(id)date;
- (void)_setSubject:(id)subject;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSignedClinicalDataRecord

+ (id)_newSignedClinicalDataRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 credentialTypes:(id)self5 issuerIdentifier:(id)self6 issuedDate:(id)self7 relevantDate:(id)self8 expirationDate:(id)self9 signatureStatus:(int64_t)status subject:(id)subject items:(id)items dataValue:(id)value sourceType:(int64_t)sourceType config:(id)config
{
  errorCopy = error;
  typesCopy = types;
  issuerIdentifierCopy = issuerIdentifier;
  issuedDateCopy = issuedDate;
  relevantDateCopy = relevantDate;
  expirationDateCopy = expirationDate;
  subjectCopy = subject;
  itemsCopy = items;
  valueCopy = value;
  configCopy = config;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __311__HKSignedClinicalDataRecord__newSignedClinicalDataRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_credentialTypes_issuerIdentifier_issuedDate_relevantDate_expirationDate_signatureStatus_subject_items_dataValue_sourceType_config___block_invoke;
  aBlock[3] = &unk_1E737A1F8;
  v64 = typesCopy;
  v65 = issuerIdentifierCopy;
  v66 = issuedDateCopy;
  v67 = relevantDateCopy;
  v68 = expirationDateCopy;
  v69 = subjectCopy;
  v70 = itemsCopy;
  v71 = valueCopy;
  statusCopy = status;
  sourceTypeCopy = sourceType;
  v72 = configCopy;
  v59 = configCopy;
  v58 = valueCopy;
  v57 = itemsCopy;
  v56 = subjectCopy;
  v55 = expirationDateCopy;
  v54 = relevantDateCopy;
  v53 = issuedDateCopy;
  v52 = issuerIdentifierCopy;
  v51 = typesCopy;
  countryCopy = country;
  sortDateCopy = sortDate;
  metadataCopy = metadata;
  deviceCopy = device;
  localeCopy = locale;
  identifierCopy = identifier;
  dateCopy = date;
  noteCopy = note;
  typeCopy = type;
  v43 = _Block_copy(aBlock);
  v62.receiver = self;
  v62.super_class = &OBJC_METACLASS___HKSignedClinicalDataRecord;
  v61 = objc_msgSendSuper2(&v62, sel__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config_, typeCopy, noteCopy, errorCopy, dateCopy, identifierCopy, localeCopy, version, deviceCopy, metadataCopy, sortDateCopy, countryCopy, state, v43);

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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKSignedClinicalDataRecord;
  coderCopy = coder;
  [(HKMedicalRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_credentialTypes forKey:{@"CredentialTypes", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_issuerIdentifier forKey:@"IssuerIdentifier"];
  [coderCopy encodeObject:self->_issuedDate forKey:@"IssuedDate"];
  [coderCopy encodeObject:self->_relevantDate forKey:@"RelevantDate"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"ExpirationDate"];
  [coderCopy encodeInteger:self->_signatureStatus forKey:@"SignatureStatus"];
  [coderCopy encodeObject:self->_subject forKey:@"Subject"];
  [coderCopy encodeObject:self->_items forKey:@"Items"];
  [coderCopy encodeObject:self->_dataValue forKey:@"DataValue"];
  [coderCopy encodeInteger:self->_sourceType forKey:@"SourceType"];
}

- (HKSignedClinicalDataRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = HKSignedClinicalDataRecord;
  v5 = [(HKMedicalRecord *)&v25 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"CredentialTypes"];
    credentialTypes = v5->_credentialTypes;
    v5->_credentialTypes = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IssuerIdentifier"];
    issuerIdentifier = v5->_issuerIdentifier;
    v5->_issuerIdentifier = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IssuedDate"];
    issuedDate = v5->_issuedDate;
    v5->_issuedDate = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RelevantDate"];
    relevantDate = v5->_relevantDate;
    v5->_relevantDate = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ExpirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v15;

    v5->_signatureStatus = [coderCopy decodeIntegerForKey:@"SignatureStatus"];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Subject"];
    subject = v5->_subject;
    v5->_subject = v17;

    v19 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"Items"];
    items = v5->_items;
    v5->_items = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DataValue"];
    dataValue = v5->_dataValue;
    v5->_dataValue = v22;

    v5->_sourceType = [coderCopy decodeIntegerForKey:@"SourceType"];
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
    v60.receiver = self;
    v60.super_class = HKSignedClinicalDataRecord;
    if (![(HKMedicalRecord *)&v60 isEquivalent:v5])
    {
      goto LABEL_45;
    }

    credentialTypes = [(HKSignedClinicalDataRecord *)self credentialTypes];
    credentialTypes2 = [v5 credentialTypes];
    v8 = credentialTypes2;
    if (credentialTypes == credentialTypes2)
    {
    }

    else
    {
      credentialTypes3 = [v5 credentialTypes];
      if (!credentialTypes3)
      {
        goto LABEL_44;
      }

      v10 = credentialTypes3;
      credentialTypes4 = [(HKSignedClinicalDataRecord *)self credentialTypes];
      credentialTypes5 = [v5 credentialTypes];
      v13 = [credentialTypes4 isEqualToArray:credentialTypes5];

      if (!v13)
      {
        goto LABEL_45;
      }
    }

    credentialTypes = [(HKSignedClinicalDataRecord *)self issuerIdentifier];
    issuerIdentifier = [v5 issuerIdentifier];
    v8 = issuerIdentifier;
    if (credentialTypes == issuerIdentifier)
    {
    }

    else
    {
      issuerIdentifier2 = [v5 issuerIdentifier];
      if (!issuerIdentifier2)
      {
        goto LABEL_44;
      }

      v17 = issuerIdentifier2;
      issuerIdentifier3 = [(HKSignedClinicalDataRecord *)self issuerIdentifier];
      issuerIdentifier4 = [v5 issuerIdentifier];
      v20 = [issuerIdentifier3 isEqualToString:issuerIdentifier4];

      if (!v20)
      {
        goto LABEL_45;
      }
    }

    credentialTypes = [(HKSignedClinicalDataRecord *)self issuedDate];
    issuedDate = [v5 issuedDate];
    v8 = issuedDate;
    if (credentialTypes == issuedDate)
    {
    }

    else
    {
      issuedDate2 = [v5 issuedDate];
      if (!issuedDate2)
      {
        goto LABEL_44;
      }

      v23 = issuedDate2;
      issuedDate3 = [(HKSignedClinicalDataRecord *)self issuedDate];
      issuedDate4 = [v5 issuedDate];
      v26 = [issuedDate3 isEqual:issuedDate4];

      if (!v26)
      {
        goto LABEL_45;
      }
    }

    credentialTypes = [(HKSignedClinicalDataRecord *)self relevantDate];
    relevantDate = [v5 relevantDate];
    v8 = relevantDate;
    if (credentialTypes == relevantDate)
    {
    }

    else
    {
      relevantDate2 = [v5 relevantDate];
      if (!relevantDate2)
      {
        goto LABEL_44;
      }

      v29 = relevantDate2;
      relevantDate3 = [(HKSignedClinicalDataRecord *)self relevantDate];
      relevantDate4 = [v5 relevantDate];
      v32 = [relevantDate3 isEqual:relevantDate4];

      if (!v32)
      {
        goto LABEL_45;
      }
    }

    credentialTypes = [(HKSignedClinicalDataRecord *)self expirationDate];
    expirationDate = [v5 expirationDate];
    v8 = expirationDate;
    if (credentialTypes == expirationDate)
    {
    }

    else
    {
      expirationDate2 = [v5 expirationDate];
      if (!expirationDate2)
      {
        goto LABEL_44;
      }

      v35 = expirationDate2;
      expirationDate3 = [(HKSignedClinicalDataRecord *)self expirationDate];
      expirationDate4 = [v5 expirationDate];
      v38 = [expirationDate3 isEqual:expirationDate4];

      if (!v38)
      {
        goto LABEL_45;
      }
    }

    signatureStatus = [(HKSignedClinicalDataRecord *)self signatureStatus];
    if (signatureStatus != [v5 signatureStatus])
    {
      goto LABEL_45;
    }

    credentialTypes = [(HKSignedClinicalDataRecord *)self subject];
    subject = [v5 subject];
    v8 = subject;
    if (credentialTypes == subject)
    {
    }

    else
    {
      subject2 = [v5 subject];
      if (!subject2)
      {
        goto LABEL_44;
      }

      v42 = subject2;
      subject3 = [(HKSignedClinicalDataRecord *)self subject];
      subject4 = [v5 subject];
      v45 = [subject3 isEqual:subject4];

      if (!v45)
      {
        goto LABEL_45;
      }
    }

    credentialTypes = [(HKSignedClinicalDataRecord *)self items];
    items = [v5 items];
    v8 = items;
    if (credentialTypes == items)
    {
    }

    else
    {
      items2 = [v5 items];
      if (!items2)
      {
        goto LABEL_44;
      }

      v48 = items2;
      items3 = [(HKSignedClinicalDataRecord *)self items];
      items4 = [v5 items];
      v51 = [items3 isEqualToArray:items4];

      if (!v51)
      {
        goto LABEL_45;
      }
    }

    credentialTypes = [(HKSignedClinicalDataRecord *)self dataValue];
    dataValue = [v5 dataValue];
    v8 = dataValue;
    if (credentialTypes == dataValue)
    {

LABEL_49:
      sourceType = [(HKSignedClinicalDataRecord *)self sourceType];
      v14 = sourceType == [v5 sourceType];
      goto LABEL_46;
    }

    dataValue2 = [v5 dataValue];
    if (dataValue2)
    {
      v54 = dataValue2;
      dataValue3 = [(HKSignedClinicalDataRecord *)self dataValue];
      dataValue4 = [v5 dataValue];
      v57 = [dataValue3 isEqual:dataValue4];

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

- (void)_setCredentialTypes:(id)types
{
  v4 = [types copy];
  credentialTypes = self->_credentialTypes;
  self->_credentialTypes = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setIssuerIdentifier:(id)identifier
{
  v4 = [identifier copy];
  issuerIdentifier = self->_issuerIdentifier;
  self->_issuerIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setIssuedDate:(id)date
{
  v4 = [date copy];
  issuedDate = self->_issuedDate;
  self->_issuedDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setRelevantDate:(id)date
{
  v4 = [date copy];
  relevantDate = self->_relevantDate;
  self->_relevantDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setExpirationDate:(id)date
{
  v4 = [date copy];
  expirationDate = self->_expirationDate;
  self->_expirationDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setSubject:(id)subject
{
  v4 = [subject copy];
  subject = self->_subject;
  self->_subject = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setItems:(id)items
{
  v4 = [items copy];
  items = self->_items;
  self->_items = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setDataValue:(id)value
{
  v4 = [value copy];
  dataValue = self->_dataValue;
  self->_dataValue = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v13.receiver = self;
  v13.super_class = HKSignedClinicalDataRecord;
  v5 = [(HKMedicalRecord *)&v13 _validateWithConfiguration:configuration.var0, configuration.var1];
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
  credentialTypes = [(HKSignedClinicalDataRecord *)self credentialTypes];
  v3 = [HKSignedClinicalDataUtilities recordTypeDisplayNameWithTypes:credentialTypes];

  return v3;
}

- (NSString)recordItemsDisplayName
{
  items = [(HKSignedClinicalDataRecord *)self items];
  v3 = [items hk_map:&__block_literal_global_56];
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
  issuerIdentifier = [(HKSignedClinicalDataRecord *)self issuerIdentifier];
  v4 = [HKSignedClinicalDataUtilities preferredRecordIssuerDisplayNameWithIssuerIdentifier:issuerIdentifier];

  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    sourceRevision = [(HKObject *)self sourceRevision];
    source = [sourceRevision source];
    name = [source name];

    if ([name length])
    {
      v5 = name;
    }

    else
    {
      issuerIdentifier2 = [(HKSignedClinicalDataRecord *)self issuerIdentifier];
      v5 = [HKSignedClinicalDataUtilities recordIssuerDisplayNameWithIssuerIdentifier:issuerIdentifier2];
    }
  }

  return v5;
}

+ (id)indexableConceptKeyPaths
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___HKSignedClinicalDataRecord;
  v2 = objc_msgSendSuper2(&v6, sel_indexableConceptKeyPaths);
  v3 = [v2 mutableCopy];

  v4 = [HKSignedClinicalDataItem indexableKeyPathsWithPrefix:@"items"];
  [v3 addObjectsFromArray:v4];

  return v3;
}

+ (id)cachedConceptRelationshipKeyPaths
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___HKSignedClinicalDataRecord;
  v2 = objc_msgSendSuper2(&v4, sel_cachedConceptRelationshipKeyPaths);

  return v2;
}

- (id)codingsForKeyPath:(id)path error:(id *)error
{
  pathCopy = path;
  v7 = [HKConceptIndexUtilities firstComponentForKeyPath:pathCopy error:error];
  v8 = v7;
  if (v7)
  {
    if ([v7 isEqualToString:@"items"])
    {
      v9 = [HKConceptIndexUtilities keyPathRemovingFirstComponentFromKeyPath:pathCopy error:error];
      if (v9)
      {
        items = [(HKSignedClinicalDataRecord *)self items];
        v11 = [items codingsForKeyPath:v9 error:error];
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
      v11 = [(HKMedicalRecord *)&v13 codingsForKeyPath:pathCopy error:error];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error
{
  conceptsCopy = concepts;
  pathCopy = path;
  v10 = [HKConceptIndexUtilities firstComponentForKeyPath:pathCopy error:error];
  v11 = v10;
  if (v10)
  {
    if ([v10 isEqualToString:@"items"])
    {
      v12 = [HKConceptIndexUtilities keyPathRemovingFirstComponentFromKeyPath:pathCopy error:error];
      if (v12)
      {
        items = [(HKSignedClinicalDataRecord *)self items];

        if (items)
        {
          items2 = [(HKSignedClinicalDataRecord *)self items];
          v15 = [items2 applyConcepts:conceptsCopy forKeyPath:v12 error:error];
        }

        else
        {
          v15 = HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 0, pathCopy, error);
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
      v15 = [(HKMedicalRecord *)&v17 applyConcepts:conceptsCopy forKeyPath:pathCopy error:error];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)signedClinicalDataRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 country:(id)self2 state:(unint64_t)self3 credentialTypes:(id)self4 issuerIdentifier:(id)self5 issuedDate:(id)self6 relevantDate:(id)self7 expirationDate:(id)self8 signatureStatus:(int64_t)self9 subject:(id)subject items:(id)items dataValue:(id)value sourceType:(int64_t)sourceType
{
  errorCopy = error;
  issuedDateCopy = issuedDate;
  valueCopy = value;
  itemsCopy = items;
  subjectCopy = subject;
  expirationDateCopy = expirationDate;
  relevantDateCopy = relevantDate;
  issuerIdentifierCopy = issuerIdentifier;
  typesCopy = types;
  countryCopy = country;
  metadataCopy = metadata;
  deviceCopy = device;
  localeCopy = locale;
  identifierCopy = identifier;
  dateCopy = date;
  noteCopy = note;
  typeCopy = type;
  v39 = [HKSemanticDate semanticDateWithKeyPath:@"issuedDate" date:issuedDateCopy];
  v41 = [HKSignedClinicalDataRecord signedClinicalDataRecordWithType:typeCopy note:noteCopy enteredInError:errorCopy modifiedDate:dateCopy originIdentifier:identifierCopy locale:localeCopy extractionVersion:version device:deviceCopy metadata:metadataCopy sortDate:v39 country:countryCopy state:state credentialTypes:typesCopy issuerIdentifier:issuerIdentifierCopy issuedDate:issuedDateCopy relevantDate:relevantDateCopy expirationDate:expirationDateCopy signatureStatus:status subject:subjectCopy items:itemsCopy dataValue:valueCopy sourceType:sourceType];

  return v41;
}

@end