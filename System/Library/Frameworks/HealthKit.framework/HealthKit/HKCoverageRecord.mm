@interface HKCoverageRecord
+ (id)_newCoverageRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 statusCoding:(id)self5 coverageTypeCodingCollection:(id)self6 subscriber:(id)self7 subscriberId:(id)self8 beneficiary:(id)self9 policyHolder:(id)holder payor:(id)payor relationshipCodingCollection:(id)codingCollection classification:(id)classification network:(id)network periodStartDate:(id)startDate periodEndDate:(id)endDate subscriberIdentifier:(id)subscriberIdentifier beneficiaryIdentifier:(id)beneficiaryIdentifier config:(id)config;
+ (id)cachedConceptRelationshipKeyPaths;
+ (id)coverageRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 country:(id)self2 state:(unint64_t)self3 statusCoding:(id)self4 coverageTypeCodingCollection:(id)self5 subscriber:(id)self6 subscriberId:(id)self7 beneficiary:(id)self8 policyHolder:(id)self9 payor:(id)payor relationshipCodingCollection:(id)codingCollection classification:(id)classification network:(id)network periodStartDate:(id)startDate periodEndDate:(id)endDate subscriberIdentifier:(id)subscriberIdentifier beneficiaryIdentifier:(id)beneficiaryIdentifier;
+ (id)defaultDisplayString;
+ (id)indexableConceptKeyPaths;
- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error;
- (BOOL)isEquivalent:(id)equivalent;
- (HKConcept)coverageType;
- (HKConcept)relationship;
- (HKConcept)status;
- (HKCoverageRecord)init;
- (HKCoverageRecord)initWithCoder:(id)coder;
- (NSString)description;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)codingsForKeyPath:(id)path error:(id *)error;
- (id)medicalRecordCodings;
- (id)statusCodingCollection;
- (void)_setBeneficiary:(id)beneficiary;
- (void)_setBeneficiaryIdentifier:(id)identifier;
- (void)_setClassification:(id)classification;
- (void)_setCoverageType:(id)type;
- (void)_setCoverageTypeCodingCollection:(id)collection;
- (void)_setNetwork:(id)network;
- (void)_setPayor:(id)payor;
- (void)_setPeriodEndDate:(id)date;
- (void)_setPeriodStartDate:(id)date;
- (void)_setPolicyHolder:(id)holder;
- (void)_setRelationship:(id)relationship;
- (void)_setRelationshipCodingCollection:(id)collection;
- (void)_setStatus:(id)status;
- (void)_setStatusCoding:(id)coding;
- (void)_setSubscriber:(id)subscriber;
- (void)_setSubscriberId:(id)id;
- (void)_setSubscriberIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKCoverageRecord

- (id)medicalRecordCodings
{
  coverageTypeCodingCollection = [(HKCoverageRecord *)self coverageTypeCodingCollection];
  codings = [coverageTypeCodingCollection codings];

  return codings;
}

+ (id)defaultDisplayString
{
  v2 = HKHealthKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"UNSPECIFIED_COVERAGE" value:&stru_1F05FF230 table:@"Localizable-Clinical-Health-Records"];

  return v3;
}

+ (id)indexableConceptKeyPaths
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___HKCoverageRecord;
  v2 = objc_msgSendSuper2(&v6, sel_indexableConceptKeyPaths);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"status"];
  [v3 addObject:@"coverageType"];
  [v3 addObject:@"relationship"];
  v4 = [HKCoverageClassification indexableKeyPathsWithPrefix:@"classification"];
  [v3 addObjectsFromArray:v4];

  return v3;
}

+ (id)cachedConceptRelationshipKeyPaths
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___HKCoverageRecord;
  v2 = objc_msgSendSuper2(&v4, sel_cachedConceptRelationshipKeyPaths);

  return v2;
}

- (id)codingsForKeyPath:(id)path error:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = [HKConceptIndexUtilities firstComponentForKeyPath:pathCopy error:error];
  v8 = v7;
  if (!v7)
  {
    v12 = 0;
    goto LABEL_12;
  }

  if ([v7 isEqualToString:@"status"])
  {
    statusCoding = [(HKCoverageRecord *)self statusCoding];
    v10 = [HKMedicalCodingCollection collectionWithCoding:statusCoding];
    v11 = [HKIndexableObject indexableObjectWithObject:v10];
    v25[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];

    goto LABEL_12;
  }

  if ([v8 isEqualToString:@"coverageType"])
  {
    coverageTypeCodingCollection = [(HKCoverageRecord *)self coverageTypeCodingCollection];
    v14 = [HKIndexableObject indexableObjectWithObject:coverageTypeCodingCollection];
    v24 = v14;
    v15 = MEMORY[0x1E695DEC8];
    v16 = &v24;
LABEL_10:
    v12 = [v15 arrayWithObjects:v16 count:1];

LABEL_11:
    goto LABEL_12;
  }

  if ([v8 isEqualToString:@"relationship"])
  {
    relationshipCodingCollection = [(HKCoverageRecord *)self relationshipCodingCollection];

    if (relationshipCodingCollection)
    {
      coverageTypeCodingCollection = [(HKCoverageRecord *)self relationshipCodingCollection];
      v14 = [HKIndexableObject indexableObjectWithObject:coverageTypeCodingCollection];
      v23 = v14;
      v15 = MEMORY[0x1E695DEC8];
      v16 = &v23;
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  if ([v8 isEqualToString:@"classification"])
  {
    classification = [(HKCoverageRecord *)self classification];

    if (classification)
    {
      coverageTypeCodingCollection = [HKConceptIndexUtilities keyPathRemovingFirstComponentFromKeyPath:pathCopy error:error];
      if (coverageTypeCodingCollection)
      {
        classification2 = [(HKCoverageRecord *)self classification];
        v12 = [classification2 codingsForKeyPath:coverageTypeCodingCollection error:error];
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_11;
    }

LABEL_19:
    v12 = MEMORY[0x1E695E0F0];
    goto LABEL_12;
  }

  v22.receiver = self;
  v22.super_class = HKCoverageRecord;
  v12 = [(HKMedicalRecord *)&v22 codingsForKeyPath:pathCopy error:error];
LABEL_12:

  v18 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error
{
  conceptsCopy = concepts;
  pathCopy = path;
  v10 = [HKConceptIndexUtilities firstComponentForKeyPath:pathCopy error:error];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_12;
  }

  if ([v10 isEqualToString:@"status"])
  {
    if (HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 1, pathCopy, error))
    {
      firstObject = [conceptsCopy firstObject];
      object = [firstObject object];
      [(HKCoverageRecord *)self _setStatus:object];
LABEL_11:

      v17 = 1;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if ([v11 isEqualToString:@"coverageType"])
  {
    if (HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 1, pathCopy, error))
    {
      firstObject = [conceptsCopy firstObject];
      object = [firstObject object];
      [(HKCoverageRecord *)self _setCoverageType:object];
      goto LABEL_11;
    }

LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  if ([v11 isEqualToString:@"relationship"])
  {
    v14 = [conceptsCopy count];
    relationshipCodingCollection = [(HKCoverageRecord *)self relationshipCodingCollection];
    v16 = HKIndexableObjectCheckCardinalityForIndexRestore(v14, relationshipCodingCollection != 0, pathCopy, error);

    if (v16)
    {
      firstObject = [conceptsCopy firstObject];
      object = [firstObject object];
      [(HKCoverageRecord *)self _setRelationship:object];
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if ([v11 isEqualToString:@"classification"])
  {
    v19 = [HKConceptIndexUtilities keyPathRemovingFirstComponentFromKeyPath:pathCopy error:error];
    if (v19)
    {
      classification = [(HKCoverageRecord *)self classification];

      if (classification)
      {
        classification2 = [(HKCoverageRecord *)self classification];
        v17 = [classification2 applyConcepts:conceptsCopy forKeyPath:v19 error:error];
      }

      else
      {
        v17 = HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 0, pathCopy, error);
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v22.receiver = self;
    v22.super_class = HKCoverageRecord;
    v17 = [(HKMedicalRecord *)&v22 applyConcepts:conceptsCopy forKeyPath:pathCopy error:error];
  }

LABEL_13:

  return v17;
}

+ (id)coverageRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 country:(id)self2 state:(unint64_t)self3 statusCoding:(id)self4 coverageTypeCodingCollection:(id)self5 subscriber:(id)self6 subscriberId:(id)self7 beneficiary:(id)self8 policyHolder:(id)self9 payor:(id)payor relationshipCodingCollection:(id)codingCollection classification:(id)classification network:(id)network periodStartDate:(id)startDate periodEndDate:(id)endDate subscriberIdentifier:(id)subscriberIdentifier beneficiaryIdentifier:(id)beneficiaryIdentifier
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
  codingCopy = coding;
  collectionCopy = collection;
  subscriberCopy = subscriber;
  idCopy = id;
  beneficiaryCopy = beneficiary;
  holderCopy = holder;
  payorCopy = payor;
  codingCollectionCopy = codingCollection;
  classificationCopy = classification;
  networkCopy = network;
  startDateCopy = startDate;
  endDateCopy = endDate;
  subscriberIdentifierCopy = subscriberIdentifier;
  beneficiaryIdentifierCopy = beneficiaryIdentifier;
  v36 = @"modifiedDate";
  v66 = dateCopy;
  if (startDateCopy)
  {
    v37 = @"periodStartDate";

    dateForUTC = [startDateCopy dateForUTC];

    v36 = v37;
    if (!endDateCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    dateForUTC = v66;
    if (!endDateCopy)
    {
      goto LABEL_7;
    }
  }

  dateForUTC2 = [endDateCopy dateForUTC];
  [dateForUTC2 timeIntervalSinceNow];
  v41 = v40;

  if (v41 < 0.0)
  {
    v42 = @"periodEndDate";

    v43 = endDateCopy;
    dateForUTC3 = [endDateCopy dateForUTC];

    dateForUTC = dateForUTC3;
    v36 = v42;
    goto LABEL_8;
  }

LABEL_7:
  v43 = endDateCopy;
LABEL_8:
  v45 = [HKSemanticDate semanticDateWithKeyPath:v36 date:dateForUTC];
  v53 = [HKCoverageRecord coverageRecordWithType:typeCopy note:noteCopy enteredInError:errorCopy modifiedDate:v66 originIdentifier:identifierCopy locale:localeCopy extractionVersion:version device:deviceCopy metadata:metadataCopy sortDate:v45 country:countryCopy state:state statusCoding:codingCopy coverageTypeCodingCollection:collectionCopy subscriber:subscriberCopy subscriberId:idCopy beneficiary:beneficiaryCopy policyHolder:holderCopy payor:payorCopy relationshipCodingCollection:codingCollectionCopy classification:classificationCopy network:networkCopy periodStartDate:startDateCopy periodEndDate:v43 subscriberIdentifier:subscriberIdentifierCopy beneficiaryIdentifier:beneficiaryIdentifierCopy];

  return v53;
}

+ (id)_newCoverageRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 statusCoding:(id)self5 coverageTypeCodingCollection:(id)self6 subscriber:(id)self7 subscriberId:(id)self8 beneficiary:(id)self9 policyHolder:(id)holder payor:(id)payor relationshipCodingCollection:(id)codingCollection classification:(id)classification network:(id)network periodStartDate:(id)startDate periodEndDate:(id)endDate subscriberIdentifier:(id)subscriberIdentifier beneficiaryIdentifier:(id)beneficiaryIdentifier config:(id)config
{
  errorCopy = error;
  codingCopy = coding;
  collectionCopy = collection;
  subscriberCopy = subscriber;
  idCopy = id;
  beneficiaryCopy = beneficiary;
  holderCopy = holder;
  payorCopy = payor;
  codingCollectionCopy = codingCollection;
  classificationCopy = classification;
  networkCopy = network;
  startDateCopy = startDate;
  endDateCopy = endDate;
  subscriberIdentifierCopy = subscriberIdentifier;
  beneficiaryIdentifierCopy = beneficiaryIdentifier;
  configCopy = config;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __390__HKCoverageRecord__newCoverageRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_statusCoding_coverageTypeCodingCollection_subscriber_subscriberId_beneficiary_policyHolder_payor_relationshipCodingCollection_classification_network_periodStartDate_periodEndDate_subscriberIdentifier_beneficiaryIdentifier_config___block_invoke;
  aBlock[3] = &unk_1E7380FA0;
  v80 = codingCopy;
  v81 = collectionCopy;
  v82 = subscriberCopy;
  v83 = idCopy;
  v84 = beneficiaryCopy;
  v85 = holderCopy;
  v86 = payorCopy;
  v87 = codingCollectionCopy;
  v88 = classificationCopy;
  v89 = networkCopy;
  v90 = startDateCopy;
  v91 = endDateCopy;
  v92 = subscriberIdentifierCopy;
  v93 = beneficiaryIdentifierCopy;
  v94 = configCopy;
  v67 = configCopy;
  v66 = beneficiaryIdentifierCopy;
  v65 = subscriberIdentifierCopy;
  v64 = endDateCopy;
  v63 = startDateCopy;
  v62 = networkCopy;
  v61 = classificationCopy;
  v60 = codingCollectionCopy;
  v59 = payorCopy;
  v58 = holderCopy;
  v57 = beneficiaryCopy;
  v71 = idCopy;
  v73 = subscriberCopy;
  v75 = collectionCopy;
  v77 = codingCopy;
  countryCopy = country;
  sortDateCopy = sortDate;
  metadataCopy = metadata;
  deviceCopy = device;
  localeCopy = locale;
  identifierCopy = identifier;
  dateCopy = date;
  noteCopy = note;
  typeCopy = type;
  v48 = _Block_copy(aBlock);
  v78.receiver = self;
  v78.super_class = &OBJC_METACLASS___HKCoverageRecord;
  v69 = objc_msgSendSuper2(&v78, sel__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config_, typeCopy, noteCopy, errorCopy, dateCopy, identifierCopy, localeCopy, version, deviceCopy, metadataCopy, sortDateCopy, countryCopy, state, v48);

  return v69;
}

void __390__HKCoverageRecord__newCoverageRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_statusCoding_coverageTypeCodingCollection_subscriber_subscriberId_beneficiary_policyHolder_payor_relationshipCodingCollection_classification_network_periodStartDate_periodEndDate_subscriberIdentifier_beneficiaryIdentifier_config___block_invoke(uint64_t a1, void *a2)
{
  v32 = a2;
  v3 = [*(a1 + 32) copy];
  v4 = v32[22];
  v32[22] = v3;

  v5 = [*(a1 + 40) copy];
  v6 = v32[23];
  v32[23] = v5;

  v7 = [*(a1 + 48) copy];
  v8 = v32[24];
  v32[24] = v7;

  v9 = [*(a1 + 56) copy];
  v10 = v32[25];
  v32[25] = v9;

  v11 = [*(a1 + 64) copy];
  v12 = v32[26];
  v32[26] = v11;

  v13 = [*(a1 + 72) copy];
  v14 = v32[27];
  v32[27] = v13;

  v15 = [*(a1 + 80) copy];
  v16 = v32[28];
  v32[28] = v15;

  v17 = [*(a1 + 88) copy];
  v18 = v32[29];
  v32[29] = v17;

  v19 = [*(a1 + 96) copy];
  v20 = v32[30];
  v32[30] = v19;

  v21 = [*(a1 + 104) copy];
  v22 = v32[31];
  v32[31] = v21;

  v23 = [*(a1 + 112) copy];
  v24 = v32[32];
  v32[32] = v23;

  v25 = [*(a1 + 120) copy];
  v26 = v32[33];
  v32[33] = v25;

  v27 = [*(a1 + 128) copy];
  v28 = v32[34];
  v32[34] = v27;

  v29 = [*(a1 + 136) copy];
  v30 = v32[35];
  v32[35] = v29;

  v31 = *(a1 + 144);
  if (v31)
  {
    (*(v31 + 16))(v31, v32);
  }
}

- (HKCoverageRecord)init
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
  v10.super_class = HKCoverageRecord;
  v6 = [(HKSample *)&v10 description];
  statusCoding = self->_statusCoding;
  v8 = [v3 stringWithFormat:@"<%@:%p super=%@statusCoding = %@coverageTypeCodingCollection = %@subscriber = %@subscriberId = %@beneficiary = %@policyHolder = %@payor = %@relationshipCodingCollection = %@classification = %@network = %@periodStartDate = %@periodEndDate = %@subscriberIdentifier = %@beneficiaryIdentifier = %@>", v5, self, v6, statusCoding, self->_coverageTypeCodingCollection, self->_subscriber, self->_subscriberId, self->_beneficiary, self->_policyHolder, self->_payor, self->_relationshipCodingCollection, self->_classification, self->_network, self->_periodStartDate, self->_periodEndDate, self->_subscriberIdentifier, self->_beneficiaryIdentifier];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKCoverageRecord;
  coderCopy = coder;
  [(HKMedicalRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_statusCoding forKey:{@"StatusCoding", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_coverageTypeCodingCollection forKey:@"CoverageTypeCodingCollection"];
  [coderCopy encodeObject:self->_subscriber forKey:@"Subscriber"];
  [coderCopy encodeObject:self->_subscriberId forKey:@"SubscriberId"];
  [coderCopy encodeObject:self->_beneficiary forKey:@"Beneficiary"];
  [coderCopy encodeObject:self->_policyHolder forKey:@"PolicyHolder"];
  [coderCopy encodeObject:self->_payor forKey:@"Payor"];
  [coderCopy encodeObject:self->_relationshipCodingCollection forKey:@"RelationshipCodingCollection"];
  [coderCopy encodeObject:self->_classification forKey:@"Classification"];
  [coderCopy encodeObject:self->_network forKey:@"Network"];
  [coderCopy encodeObject:self->_periodStartDate forKey:@"PeriodStartDate"];
  [coderCopy encodeObject:self->_periodEndDate forKey:@"PeriodEndDate"];
  [coderCopy encodeObject:self->_subscriberIdentifier forKey:@"SubscriberIdentifier"];
  [coderCopy encodeObject:self->_beneficiaryIdentifier forKey:@"BeneficiaryIdentifier"];
  [coderCopy encodeObject:self->_status forKey:@"Status"];
  [coderCopy encodeObject:self->_coverageType forKey:@"CoverageType"];
  [coderCopy encodeObject:self->_relationship forKey:@"Relationship"];
}

- (HKCoverageRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v43.receiver = self;
  v43.super_class = HKCoverageRecord;
  v5 = [(HKMedicalRecord *)&v43 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StatusCoding"];
    statusCoding = v5->_statusCoding;
    v5->_statusCoding = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CoverageTypeCodingCollection"];
    coverageTypeCodingCollection = v5->_coverageTypeCodingCollection;
    v5->_coverageTypeCodingCollection = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Subscriber"];
    subscriber = v5->_subscriber;
    v5->_subscriber = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SubscriberId"];
    subscriberId = v5->_subscriberId;
    v5->_subscriberId = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Beneficiary"];
    beneficiary = v5->_beneficiary;
    v5->_beneficiary = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PolicyHolder"];
    policyHolder = v5->_policyHolder;
    v5->_policyHolder = v16;

    v18 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"Payor"];
    payor = v5->_payor;
    v5->_payor = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RelationshipCodingCollection"];
    relationshipCodingCollection = v5->_relationshipCodingCollection;
    v5->_relationshipCodingCollection = v21;

    v23 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"Classification"];
    classification = v5->_classification;
    v5->_classification = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Network"];
    network = v5->_network;
    v5->_network = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PeriodStartDate"];
    periodStartDate = v5->_periodStartDate;
    v5->_periodStartDate = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PeriodEndDate"];
    periodEndDate = v5->_periodEndDate;
    v5->_periodEndDate = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SubscriberIdentifier"];
    subscriberIdentifier = v5->_subscriberIdentifier;
    v5->_subscriberIdentifier = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BeneficiaryIdentifier"];
    beneficiaryIdentifier = v5->_beneficiaryIdentifier;
    v5->_beneficiaryIdentifier = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Status"];
    status = v5->_status;
    v5->_status = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CoverageType"];
    coverageType = v5->_coverageType;
    v5->_coverageType = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Relationship"];
    relationship = v5->_relationship;
    v5->_relationship = v40;
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
    v112.receiver = self;
    v112.super_class = HKCoverageRecord;
    if (![(HKMedicalRecord *)&v112 isEquivalent:v5])
    {
      goto LABEL_89;
    }

    statusCoding = [(HKCoverageRecord *)self statusCoding];
    statusCoding2 = [v5 statusCoding];
    v8 = statusCoding2;
    if (statusCoding == statusCoding2)
    {
    }

    else
    {
      statusCoding3 = [v5 statusCoding];
      if (!statusCoding3)
      {
        goto LABEL_88;
      }

      v10 = statusCoding3;
      statusCoding4 = [(HKCoverageRecord *)self statusCoding];
      statusCoding5 = [v5 statusCoding];
      v13 = [statusCoding4 isEqual:statusCoding5];

      if (!v13)
      {
        goto LABEL_89;
      }
    }

    statusCoding = [(HKCoverageRecord *)self coverageTypeCodingCollection];
    coverageTypeCodingCollection = [v5 coverageTypeCodingCollection];
    v8 = coverageTypeCodingCollection;
    if (statusCoding == coverageTypeCodingCollection)
    {
    }

    else
    {
      coverageTypeCodingCollection2 = [v5 coverageTypeCodingCollection];
      if (!coverageTypeCodingCollection2)
      {
        goto LABEL_88;
      }

      v17 = coverageTypeCodingCollection2;
      coverageTypeCodingCollection3 = [(HKCoverageRecord *)self coverageTypeCodingCollection];
      coverageTypeCodingCollection4 = [v5 coverageTypeCodingCollection];
      v20 = [coverageTypeCodingCollection3 isEqual:coverageTypeCodingCollection4];

      if (!v20)
      {
        goto LABEL_89;
      }
    }

    statusCoding = [(HKCoverageRecord *)self subscriber];
    subscriber = [v5 subscriber];
    v8 = subscriber;
    if (statusCoding == subscriber)
    {
    }

    else
    {
      subscriber2 = [v5 subscriber];
      if (!subscriber2)
      {
        goto LABEL_88;
      }

      v23 = subscriber2;
      subscriber3 = [(HKCoverageRecord *)self subscriber];
      subscriber4 = [v5 subscriber];
      v26 = [subscriber3 isEqualToString:subscriber4];

      if (!v26)
      {
        goto LABEL_89;
      }
    }

    statusCoding = [(HKCoverageRecord *)self subscriberId];
    subscriberId = [v5 subscriberId];
    v8 = subscriberId;
    if (statusCoding == subscriberId)
    {
    }

    else
    {
      subscriberId2 = [v5 subscriberId];
      if (!subscriberId2)
      {
        goto LABEL_88;
      }

      v29 = subscriberId2;
      subscriberId3 = [(HKCoverageRecord *)self subscriberId];
      subscriberId4 = [v5 subscriberId];
      v32 = [subscriberId3 isEqualToString:subscriberId4];

      if (!v32)
      {
        goto LABEL_89;
      }
    }

    statusCoding = [(HKCoverageRecord *)self beneficiary];
    beneficiary = [v5 beneficiary];
    v8 = beneficiary;
    if (statusCoding == beneficiary)
    {
    }

    else
    {
      beneficiary2 = [v5 beneficiary];
      if (!beneficiary2)
      {
        goto LABEL_88;
      }

      v35 = beneficiary2;
      beneficiary3 = [(HKCoverageRecord *)self beneficiary];
      beneficiary4 = [v5 beneficiary];
      v38 = [beneficiary3 isEqualToString:beneficiary4];

      if (!v38)
      {
        goto LABEL_89;
      }
    }

    statusCoding = [(HKCoverageRecord *)self policyHolder];
    policyHolder = [v5 policyHolder];
    v8 = policyHolder;
    if (statusCoding == policyHolder)
    {
    }

    else
    {
      policyHolder2 = [v5 policyHolder];
      if (!policyHolder2)
      {
        goto LABEL_88;
      }

      v41 = policyHolder2;
      policyHolder3 = [(HKCoverageRecord *)self policyHolder];
      policyHolder4 = [v5 policyHolder];
      v44 = [policyHolder3 isEqualToString:policyHolder4];

      if (!v44)
      {
        goto LABEL_89;
      }
    }

    statusCoding = [(HKCoverageRecord *)self payor];
    payor = [v5 payor];
    v8 = payor;
    if (statusCoding == payor)
    {
    }

    else
    {
      payor2 = [v5 payor];
      if (!payor2)
      {
        goto LABEL_88;
      }

      v47 = payor2;
      payor3 = [(HKCoverageRecord *)self payor];
      payor4 = [v5 payor];
      v50 = [payor3 isEqualToArray:payor4];

      if (!v50)
      {
        goto LABEL_89;
      }
    }

    statusCoding = [(HKCoverageRecord *)self relationshipCodingCollection];
    relationshipCodingCollection = [v5 relationshipCodingCollection];
    v8 = relationshipCodingCollection;
    if (statusCoding == relationshipCodingCollection)
    {
    }

    else
    {
      relationshipCodingCollection2 = [v5 relationshipCodingCollection];
      if (!relationshipCodingCollection2)
      {
        goto LABEL_88;
      }

      v53 = relationshipCodingCollection2;
      relationshipCodingCollection3 = [(HKCoverageRecord *)self relationshipCodingCollection];
      relationshipCodingCollection4 = [v5 relationshipCodingCollection];
      v56 = [relationshipCodingCollection3 isEqual:relationshipCodingCollection4];

      if (!v56)
      {
        goto LABEL_89;
      }
    }

    statusCoding = [(HKCoverageRecord *)self classification];
    classification = [v5 classification];
    v8 = classification;
    if (statusCoding == classification)
    {
    }

    else
    {
      classification2 = [v5 classification];
      if (!classification2)
      {
        goto LABEL_88;
      }

      v59 = classification2;
      classification3 = [(HKCoverageRecord *)self classification];
      classification4 = [v5 classification];
      v62 = [classification3 isEqualToArray:classification4];

      if (!v62)
      {
        goto LABEL_89;
      }
    }

    statusCoding = [(HKCoverageRecord *)self network];
    network = [v5 network];
    v8 = network;
    if (statusCoding == network)
    {
    }

    else
    {
      network2 = [v5 network];
      if (!network2)
      {
        goto LABEL_88;
      }

      v65 = network2;
      network3 = [(HKCoverageRecord *)self network];
      network4 = [v5 network];
      v68 = [network3 isEqualToString:network4];

      if (!v68)
      {
        goto LABEL_89;
      }
    }

    statusCoding = [(HKCoverageRecord *)self periodStartDate];
    periodStartDate = [v5 periodStartDate];
    v8 = periodStartDate;
    if (statusCoding == periodStartDate)
    {
    }

    else
    {
      periodStartDate2 = [v5 periodStartDate];
      if (!periodStartDate2)
      {
        goto LABEL_88;
      }

      v71 = periodStartDate2;
      periodStartDate3 = [(HKCoverageRecord *)self periodStartDate];
      periodStartDate4 = [v5 periodStartDate];
      v74 = [periodStartDate3 isEqual:periodStartDate4];

      if (!v74)
      {
        goto LABEL_89;
      }
    }

    statusCoding = [(HKCoverageRecord *)self periodEndDate];
    periodEndDate = [v5 periodEndDate];
    v8 = periodEndDate;
    if (statusCoding == periodEndDate)
    {
    }

    else
    {
      periodEndDate2 = [v5 periodEndDate];
      if (!periodEndDate2)
      {
        goto LABEL_88;
      }

      v77 = periodEndDate2;
      periodEndDate3 = [(HKCoverageRecord *)self periodEndDate];
      periodEndDate4 = [v5 periodEndDate];
      v80 = [periodEndDate3 isEqual:periodEndDate4];

      if (!v80)
      {
        goto LABEL_89;
      }
    }

    statusCoding = [(HKCoverageRecord *)self subscriberIdentifier];
    subscriberIdentifier = [v5 subscriberIdentifier];
    v8 = subscriberIdentifier;
    if (statusCoding == subscriberIdentifier)
    {
    }

    else
    {
      subscriberIdentifier2 = [v5 subscriberIdentifier];
      if (!subscriberIdentifier2)
      {
        goto LABEL_88;
      }

      v83 = subscriberIdentifier2;
      subscriberIdentifier3 = [(HKCoverageRecord *)self subscriberIdentifier];
      subscriberIdentifier4 = [v5 subscriberIdentifier];
      v86 = [subscriberIdentifier3 isEqual:subscriberIdentifier4];

      if (!v86)
      {
        goto LABEL_89;
      }
    }

    statusCoding = [(HKCoverageRecord *)self beneficiaryIdentifier];
    beneficiaryIdentifier = [v5 beneficiaryIdentifier];
    v8 = beneficiaryIdentifier;
    if (statusCoding == beneficiaryIdentifier)
    {
    }

    else
    {
      beneficiaryIdentifier2 = [v5 beneficiaryIdentifier];
      if (!beneficiaryIdentifier2)
      {
        goto LABEL_88;
      }

      v89 = beneficiaryIdentifier2;
      beneficiaryIdentifier3 = [(HKCoverageRecord *)self beneficiaryIdentifier];
      beneficiaryIdentifier4 = [v5 beneficiaryIdentifier];
      v92 = [beneficiaryIdentifier3 isEqual:beneficiaryIdentifier4];

      if (!v92)
      {
        goto LABEL_89;
      }
    }

    statusCoding = [(HKCoverageRecord *)self status];
    status = [v5 status];
    v8 = status;
    if (statusCoding == status)
    {
    }

    else
    {
      status2 = [v5 status];
      if (!status2)
      {
        goto LABEL_88;
      }

      v95 = status2;
      status3 = [(HKCoverageRecord *)self status];
      status4 = [v5 status];
      v98 = [status3 isEqual:status4];

      if (!v98)
      {
        goto LABEL_89;
      }
    }

    statusCoding = [(HKCoverageRecord *)self coverageType];
    coverageType = [v5 coverageType];
    v8 = coverageType;
    if (statusCoding == coverageType)
    {
    }

    else
    {
      coverageType2 = [v5 coverageType];
      if (!coverageType2)
      {
        goto LABEL_88;
      }

      v101 = coverageType2;
      coverageType3 = [(HKCoverageRecord *)self coverageType];
      coverageType4 = [v5 coverageType];
      v104 = [coverageType3 isEqual:coverageType4];

      if (!v104)
      {
        goto LABEL_89;
      }
    }

    statusCoding = [(HKCoverageRecord *)self relationship];
    relationship = [v5 relationship];
    v8 = relationship;
    if (statusCoding == relationship)
    {

LABEL_93:
      v14 = 1;
      goto LABEL_90;
    }

    relationship2 = [v5 relationship];
    if (relationship2)
    {
      v107 = relationship2;
      relationship3 = [(HKCoverageRecord *)self relationship];
      relationship4 = [v5 relationship];
      v110 = [relationship3 isEqual:relationship4];

      if (v110)
      {
        goto LABEL_93;
      }

LABEL_89:
      v14 = 0;
LABEL_90:

      goto LABEL_91;
    }

LABEL_88:

    goto LABEL_89;
  }

  v14 = 0;
LABEL_91:

  return v14;
}

- (id)statusCodingCollection
{
  statusCoding = [(HKCoverageRecord *)self statusCoding];
  v3 = [HKMedicalCodingCollection collectionWithCoding:statusCoding];

  return v3;
}

- (void)_setStatusCoding:(id)coding
{
  v4 = [coding copy];
  statusCoding = self->_statusCoding;
  self->_statusCoding = v4;

  statusCodingCollection = [(HKCoverageRecord *)self statusCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:statusCodingCollection];
  status = self->_status;
  self->_status = v6;
}

- (void)_setCoverageTypeCodingCollection:(id)collection
{
  v4 = [collection copy];
  coverageTypeCodingCollection = self->_coverageTypeCodingCollection;
  self->_coverageTypeCodingCollection = v4;

  coverageTypeCodingCollection = [(HKCoverageRecord *)self coverageTypeCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:coverageTypeCodingCollection];
  coverageType = self->_coverageType;
  self->_coverageType = v6;
}

- (void)_setSubscriber:(id)subscriber
{
  v4 = [subscriber copy];
  subscriber = self->_subscriber;
  self->_subscriber = v4;

  MEMORY[0x1EEE66BB8](v4, subscriber);
}

- (void)_setSubscriberId:(id)id
{
  v4 = [id copy];
  subscriberId = self->_subscriberId;
  self->_subscriberId = v4;

  MEMORY[0x1EEE66BB8](v4, subscriberId);
}

- (void)_setBeneficiary:(id)beneficiary
{
  v4 = [beneficiary copy];
  beneficiary = self->_beneficiary;
  self->_beneficiary = v4;

  MEMORY[0x1EEE66BB8](v4, beneficiary);
}

- (void)_setPolicyHolder:(id)holder
{
  v4 = [holder copy];
  policyHolder = self->_policyHolder;
  self->_policyHolder = v4;

  MEMORY[0x1EEE66BB8](v4, policyHolder);
}

- (void)_setPayor:(id)payor
{
  v4 = [payor copy];
  payor = self->_payor;
  self->_payor = v4;

  MEMORY[0x1EEE66BB8](v4, payor);
}

- (void)_setRelationshipCodingCollection:(id)collection
{
  v4 = [collection copy];
  relationshipCodingCollection = self->_relationshipCodingCollection;
  self->_relationshipCodingCollection = v4;

  if (self->_relationshipCodingCollection)
  {
    relationshipCodingCollection = [(HKCoverageRecord *)self relationshipCodingCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:relationshipCodingCollection];
    relationship = self->_relationship;
    self->_relationship = v6;

    v8 = relationshipCodingCollection;
  }

  else
  {
    v8 = self->_relationship;
    self->_relationship = 0;
  }
}

- (void)_setClassification:(id)classification
{
  v4 = [classification copy];
  classification = self->_classification;
  self->_classification = v4;

  MEMORY[0x1EEE66BB8](v4, classification);
}

- (void)_setNetwork:(id)network
{
  v4 = [network copy];
  network = self->_network;
  self->_network = v4;

  MEMORY[0x1EEE66BB8](v4, network);
}

- (void)_setPeriodStartDate:(id)date
{
  v4 = [date copy];
  periodStartDate = self->_periodStartDate;
  self->_periodStartDate = v4;

  MEMORY[0x1EEE66BB8](v4, periodStartDate);
}

- (void)_setPeriodEndDate:(id)date
{
  v4 = [date copy];
  periodEndDate = self->_periodEndDate;
  self->_periodEndDate = v4;

  MEMORY[0x1EEE66BB8](v4, periodEndDate);
}

- (void)_setSubscriberIdentifier:(id)identifier
{
  v4 = [identifier copy];
  subscriberIdentifier = self->_subscriberIdentifier;
  self->_subscriberIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, subscriberIdentifier);
}

- (void)_setBeneficiaryIdentifier:(id)identifier
{
  v4 = [identifier copy];
  beneficiaryIdentifier = self->_beneficiaryIdentifier;
  self->_beneficiaryIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, beneficiaryIdentifier);
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
    statusCodingCollection = [(HKCoverageRecord *)self statusCodingCollection];
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
      [HKCoverageRecord _setStatus:v5];
    }
  }

  v6 = [statusCopy copy];
  status = self->_status;
  self->_status = v6;
}

- (HKConcept)coverageType
{
  coverageType = self->_coverageType;
  if (coverageType)
  {
    v3 = coverageType;
  }

  else
  {
    coverageTypeCodingCollection = [(HKCoverageRecord *)self coverageTypeCodingCollection];
    v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:coverageTypeCodingCollection];
  }

  return v3;
}

- (void)_setCoverageType:(id)type
{
  typeCopy = type;
  if (!typeCopy)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      [HKCoverageRecord _setCoverageType:v5];
    }
  }

  v6 = [typeCopy copy];
  coverageType = self->_coverageType;
  self->_coverageType = v6;
}

- (HKConcept)relationship
{
  if (self->_relationshipCodingCollection)
  {
    relationship = self->_relationship;
    if (relationship)
    {
      v3 = relationship;
    }

    else
    {
      relationshipCodingCollection = [(HKCoverageRecord *)self relationshipCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:relationshipCodingCollection];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setRelationship:(id)relationship
{
  v4 = [relationship copy];
  relationship = self->_relationship;
  self->_relationship = v4;

  MEMORY[0x1EEE66BB8](v4, relationship);
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v13.receiver = self;
  v13.super_class = HKCoverageRecord;
  v5 = [(HKMedicalRecord *)&v13 _validateWithConfiguration:configuration.var0, configuration.var1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    if (self->_statusCoding)
    {
      if (self->_coverageTypeCodingCollection)
      {
        if (self->_subscriberId)
        {
          v8 = 0;
          goto LABEL_12;
        }

        v9 = MEMORY[0x1E696ABC0];
        v10 = objc_opt_class();
        v11 = @"%@: subscriberId must not be nil";
      }

      else
      {
        v9 = MEMORY[0x1E696ABC0];
        v10 = objc_opt_class();
        v11 = @"%@: coverageTypeCodingCollection must not be nil";
      }
    }

    else
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = objc_opt_class();
      v11 = @"%@: statusCoding must not be nil";
    }

    v7 = [v9 hk_errorForInvalidArgument:@"@" class:v10 selector:a2 format:{v11, self}];
  }

  v8 = v7;
LABEL_12:

  return v8;
}

@end