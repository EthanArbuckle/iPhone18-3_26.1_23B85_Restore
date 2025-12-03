@interface HKAllergyRecord
+ (id)_newAllergyRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 allergyCodingCollection:(id)self5 onsetDate:(id)self6 asserter:(id)self7 reactions:(id)self8 criticalityCoding:(id)self9 lastOccurrenceDate:(id)occurrenceDate recordedDate:(id)recordedDate verificationStatusCoding:(id)statusCoding clinicalStatusCoding:(id)clinicalStatusCoding allergyTypeCoding:(id)typeCoding categoryCoding:(id)categoryCoding config:(id)config;
+ (id)allergyRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 country:(id)self2 state:(unint64_t)self3 allergyCodingCollection:(id)self4 onsetDate:(id)self5 asserter:(id)self6 reactions:(id)self7 criticalityCoding:(id)self8 lastOccurrenceDate:(id)self9 recordedDate:(id)recordedDate verificationStatusCoding:(id)statusCoding clinicalStatusCoding:(id)clinicalStatusCoding allergyTypeCoding:(id)typeCoding categoryCoding:(id)categoryCoding;
+ (id)cachedConceptRelationshipKeyPaths;
+ (id)defaultDisplayString;
+ (id)indexableConceptKeyPaths;
- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error;
- (BOOL)isEquivalent:(id)equivalent;
- (HKAllergyRecord)init;
- (HKAllergyRecord)initWithCoder:(id)coder;
- (HKConcept)allergy;
- (HKConcept)allergyType;
- (HKConcept)category;
- (HKConcept)clinicalStatus;
- (HKConcept)criticality;
- (HKConcept)verificationStatus;
- (NSString)description;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)allergyTypeCodingCollection;
- (id)categoryCodingCollection;
- (id)clinicalStatusCodingCollection;
- (id)codingsForKeyPath:(id)path error:(id *)error;
- (id)criticalityCodingCollection;
- (id)medicalRecordCodings;
- (id)verificationStatusCodingCollection;
- (void)_setAllergy:(id)allergy;
- (void)_setAllergyCodingCollection:(id)collection;
- (void)_setAllergyType:(id)type;
- (void)_setAllergyTypeCoding:(id)coding;
- (void)_setAsserter:(id)asserter;
- (void)_setCategory:(id)category;
- (void)_setCategoryCoding:(id)coding;
- (void)_setClinicalStatus:(id)status;
- (void)_setClinicalStatusCoding:(id)coding;
- (void)_setCriticality:(id)criticality;
- (void)_setCriticalityCoding:(id)coding;
- (void)_setLastOccurrenceDate:(id)date;
- (void)_setOnsetDate:(id)date;
- (void)_setReactions:(id)reactions;
- (void)_setRecordedDate:(id)date;
- (void)_setVerificationStatus:(id)status;
- (void)_setVerificationStatusCoding:(id)coding;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKAllergyRecord

- (id)medicalRecordCodings
{
  allergyCodingCollection = [(HKAllergyRecord *)self allergyCodingCollection];
  codings = [allergyCodingCollection codings];

  return codings;
}

+ (id)defaultDisplayString
{
  v2 = HKHealthKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"UNSPECIFIED_ALLERGY" value:&stru_1F05FF230 table:@"Localizable-Clinical-Health-Records"];

  return v3;
}

+ (id)allergyRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 country:(id)self2 state:(unint64_t)self3 allergyCodingCollection:(id)self4 onsetDate:(id)self5 asserter:(id)self6 reactions:(id)self7 criticalityCoding:(id)self8 lastOccurrenceDate:(id)self9 recordedDate:(id)recordedDate verificationStatusCoding:(id)statusCoding clinicalStatusCoding:(id)clinicalStatusCoding allergyTypeCoding:(id)typeCoding categoryCoding:(id)categoryCoding
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
  onsetDateCopy = onsetDate;
  asserterCopy = asserter;
  reactionsCopy = reactions;
  codingCopy = coding;
  occurrenceDateCopy = occurrenceDate;
  recordedDateCopy = recordedDate;
  statusCodingCopy = statusCoding;
  clinicalStatusCodingCopy = clinicalStatusCoding;
  typeCodingCopy = typeCoding;
  categoryCodingCopy = categoryCoding;
  v33 = @"modifiedDate";
  v34 = dateCopy;
  v35 = v34;
  if (occurrenceDateCopy)
  {
    v36 = @"lastOccurrenceDate";

    v37 = occurrenceDateCopy;
    dateForUTC = [occurrenceDateCopy dateForUTC];

    v33 = v36;
  }

  else
  {
    v37 = 0;
    dateForUTC = v34;
  }

  if (onsetDateCopy)
  {
    v39 = @"onsetDate";

    dateForUTC2 = [onsetDateCopy dateForUTC];

    dateForUTC = dateForUTC2;
    v33 = v39;
  }

  if (recordedDateCopy)
  {
    v41 = @"recordedDate";

    dateForUTC3 = [recordedDateCopy dateForUTC];

    dateForUTC = dateForUTC3;
    v33 = v41;
  }

  v43 = [HKSemanticDate semanticDateWithKeyPath:v33 date:dateForUTC];
  v50 = [HKAllergyRecord allergyRecordWithType:typeCopy note:noteCopy enteredInError:errorCopy modifiedDate:v35 originIdentifier:identifierCopy locale:localeCopy extractionVersion:version device:deviceCopy metadata:metadataCopy sortDate:v43 country:countryCopy state:state allergyCodingCollection:collectionCopy onsetDate:onsetDateCopy asserter:asserterCopy reactions:reactionsCopy criticalityCoding:codingCopy lastOccurrenceDate:v37 recordedDate:recordedDateCopy verificationStatusCoding:statusCodingCopy clinicalStatusCoding:clinicalStatusCodingCopy allergyTypeCoding:typeCodingCopy categoryCoding:categoryCodingCopy];

  return v50;
}

+ (id)indexableConceptKeyPaths
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___HKAllergyRecord;
  v2 = objc_msgSendSuper2(&v6, sel_indexableConceptKeyPaths);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"allergy"];
  v4 = [HKAllergyReaction indexableKeyPathsWithPrefix:@"reactions"];
  [v3 addObjectsFromArray:v4];

  [v3 addObject:@"criticality"];
  [v3 addObject:@"verificationStatus"];
  [v3 addObject:@"clinicalStatus"];
  [v3 addObject:@"allergyType"];
  [v3 addObject:@"category"];

  return v3;
}

+ (id)cachedConceptRelationshipKeyPaths
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___HKAllergyRecord;
  v2 = objc_msgSendSuper2(&v4, sel_cachedConceptRelationshipKeyPaths);

  return v2;
}

- (id)codingsForKeyPath:(id)path error:(id *)error
{
  v32[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = [HKConceptIndexUtilities firstComponentForKeyPath:pathCopy error:error];
  v8 = v7;
  if (!v7)
  {
    v11 = 0;
    goto LABEL_28;
  }

  if ([v7 isEqualToString:@"allergy"])
  {
    allergyCodingCollection = [(HKAllergyRecord *)self allergyCodingCollection];
    v10 = [HKIndexableObject indexableObjectWithObject:allergyCodingCollection];
    v32[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];

LABEL_4:
    goto LABEL_28;
  }

  if ([v8 isEqualToString:@"reactions"])
  {
    reactions = [(HKAllergyRecord *)self reactions];

    if (reactions)
    {
      allergyCodingCollection = [HKConceptIndexUtilities keyPathRemovingFirstComponentFromKeyPath:pathCopy error:error];
      if (allergyCodingCollection)
      {
        reactions2 = [(HKAllergyRecord *)self reactions];
        v11 = [reactions2 codingsForKeyPath:allergyCodingCollection error:error];
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_4;
    }

    goto LABEL_27;
  }

  if ([v8 isEqualToString:@"criticality"])
  {
    criticalityCoding = [(HKAllergyRecord *)self criticalityCoding];

    if (criticalityCoding)
    {
      criticalityCoding2 = [(HKAllergyRecord *)self criticalityCoding];
      v16 = [HKMedicalCodingCollection collectionWithCoding:criticalityCoding2];
      v17 = [HKIndexableObject indexableObjectWithObject:v16];
      v31 = v17;
      v18 = MEMORY[0x1E695DEC8];
      v19 = &v31;
LABEL_26:
      v11 = [v18 arrayWithObjects:v19 count:1];

      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if ([v8 isEqualToString:@"verificationStatus"])
  {
    verificationStatusCoding = [(HKAllergyRecord *)self verificationStatusCoding];

    if (verificationStatusCoding)
    {
      criticalityCoding2 = [(HKAllergyRecord *)self verificationStatusCoding];
      v16 = [HKMedicalCodingCollection collectionWithCoding:criticalityCoding2];
      v17 = [HKIndexableObject indexableObjectWithObject:v16];
      v30 = v17;
      v18 = MEMORY[0x1E695DEC8];
      v19 = &v30;
      goto LABEL_26;
    }

LABEL_27:
    v11 = MEMORY[0x1E695E0F0];
    goto LABEL_28;
  }

  if ([v8 isEqualToString:@"clinicalStatus"])
  {
    clinicalStatusCoding = [(HKAllergyRecord *)self clinicalStatusCoding];

    if (clinicalStatusCoding)
    {
      criticalityCoding2 = [(HKAllergyRecord *)self clinicalStatusCoding];
      v16 = [HKMedicalCodingCollection collectionWithCoding:criticalityCoding2];
      v17 = [HKIndexableObject indexableObjectWithObject:v16];
      v29 = v17;
      v18 = MEMORY[0x1E695DEC8];
      v19 = &v29;
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if ([v8 isEqualToString:@"allergyType"])
  {
    allergyTypeCoding = [(HKAllergyRecord *)self allergyTypeCoding];

    if (allergyTypeCoding)
    {
      criticalityCoding2 = [(HKAllergyRecord *)self allergyTypeCoding];
      v16 = [HKMedicalCodingCollection collectionWithCoding:criticalityCoding2];
      v17 = [HKIndexableObject indexableObjectWithObject:v16];
      v28 = v17;
      v18 = MEMORY[0x1E695DEC8];
      v19 = &v28;
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if ([v8 isEqualToString:@"category"])
  {
    categoryCoding = [(HKAllergyRecord *)self categoryCoding];

    if (categoryCoding)
    {
      criticalityCoding2 = [(HKAllergyRecord *)self categoryCoding];
      v16 = [HKMedicalCodingCollection collectionWithCoding:criticalityCoding2];
      v17 = [HKIndexableObject indexableObjectWithObject:v16];
      v27 = v17;
      v18 = MEMORY[0x1E695DEC8];
      v19 = &v27;
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v26.receiver = self;
  v26.super_class = HKAllergyRecord;
  v11 = [(HKMedicalRecord *)&v26 codingsForKeyPath:pathCopy error:error];
LABEL_28:

  v24 = *MEMORY[0x1E69E9840];

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
    goto LABEL_28;
  }

  if ([v10 isEqualToString:@"allergy"])
  {
    if (HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 1, pathCopy, error))
    {
      firstObject = [conceptsCopy firstObject];
      object = [firstObject object];
      [(HKAllergyRecord *)self _setAllergy:object];
LABEL_5:

      v14 = 1;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (![v11 isEqualToString:@"reactions"])
  {
    if ([v11 isEqualToString:@"criticality"])
    {
      v18 = [conceptsCopy count];
      criticalityCoding = [(HKAllergyRecord *)self criticalityCoding];
      v20 = HKIndexableObjectCheckCardinalityForIndexRestore(v18, criticalityCoding != 0, pathCopy, error);

      if (v20)
      {
        firstObject = [conceptsCopy firstObject];
        object = [firstObject object];
        [(HKAllergyRecord *)self _setCriticality:object];
        goto LABEL_5;
      }
    }

    else if ([v11 isEqualToString:@"verificationStatus"])
    {
      v21 = [conceptsCopy count];
      verificationStatusCoding = [(HKAllergyRecord *)self verificationStatusCoding];
      v23 = HKIndexableObjectCheckCardinalityForIndexRestore(v21, verificationStatusCoding != 0, pathCopy, error);

      if (v23)
      {
        firstObject = [conceptsCopy firstObject];
        object = [firstObject object];
        [(HKAllergyRecord *)self _setVerificationStatus:object];
        goto LABEL_5;
      }
    }

    else if ([v11 isEqualToString:@"clinicalStatus"])
    {
      v24 = [conceptsCopy count];
      clinicalStatusCoding = [(HKAllergyRecord *)self clinicalStatusCoding];
      v26 = HKIndexableObjectCheckCardinalityForIndexRestore(v24, clinicalStatusCoding != 0, pathCopy, error);

      if (v26)
      {
        firstObject = [conceptsCopy firstObject];
        object = [firstObject object];
        [(HKAllergyRecord *)self _setClinicalStatus:object];
        goto LABEL_5;
      }
    }

    else if ([v11 isEqualToString:@"allergyType"])
    {
      v27 = [conceptsCopy count];
      allergyTypeCoding = [(HKAllergyRecord *)self allergyTypeCoding];
      v29 = HKIndexableObjectCheckCardinalityForIndexRestore(v27, allergyTypeCoding != 0, pathCopy, error);

      if (v29)
      {
        firstObject = [conceptsCopy firstObject];
        object = [firstObject object];
        [(HKAllergyRecord *)self _setAllergyType:object];
        goto LABEL_5;
      }
    }

    else
    {
      if (![v11 isEqualToString:@"category"])
      {
        v34.receiver = self;
        v34.super_class = HKAllergyRecord;
        v14 = [(HKMedicalRecord *)&v34 applyConcepts:conceptsCopy forKeyPath:pathCopy error:error];
        goto LABEL_29;
      }

      v30 = [conceptsCopy count];
      categoryCoding = [(HKAllergyRecord *)self categoryCoding];
      v32 = HKIndexableObjectCheckCardinalityForIndexRestore(v30, categoryCoding != 0, pathCopy, error);

      if (v32)
      {
        firstObject = [conceptsCopy firstObject];
        object = [firstObject object];
        [(HKAllergyRecord *)self _setCategory:object];
        goto LABEL_5;
      }
    }

LABEL_28:
    v14 = 0;
    goto LABEL_29;
  }

  v15 = [HKConceptIndexUtilities keyPathRemovingFirstComponentFromKeyPath:pathCopy error:error];
  if (v15)
  {
    reactions = [(HKAllergyRecord *)self reactions];

    if (reactions)
    {
      reactions2 = [(HKAllergyRecord *)self reactions];
      v14 = [reactions2 applyConcepts:conceptsCopy forKeyPath:v15 error:error];
    }

    else
    {
      v14 = HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 0, pathCopy, error);
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_29:
  return v14;
}

+ (id)_newAllergyRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 allergyCodingCollection:(id)self5 onsetDate:(id)self6 asserter:(id)self7 reactions:(id)self8 criticalityCoding:(id)self9 lastOccurrenceDate:(id)occurrenceDate recordedDate:(id)recordedDate verificationStatusCoding:(id)statusCoding clinicalStatusCoding:(id)clinicalStatusCoding allergyTypeCoding:(id)typeCoding categoryCoding:(id)categoryCoding config:(id)config
{
  errorCopy = error;
  collectionCopy = collection;
  onsetDateCopy = onsetDate;
  asserterCopy = asserter;
  reactionsCopy = reactions;
  codingCopy = coding;
  occurrenceDateCopy = occurrenceDate;
  recordedDateCopy = recordedDate;
  statusCodingCopy = statusCoding;
  clinicalStatusCodingCopy = clinicalStatusCoding;
  typeCodingCopy = typeCoding;
  categoryCodingCopy = categoryCoding;
  configCopy = config;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __348__HKAllergyRecord__newAllergyRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_allergyCodingCollection_onsetDate_asserter_reactions_criticalityCoding_lastOccurrenceDate_recordedDate_verificationStatusCoding_clinicalStatusCoding_allergyTypeCoding_categoryCoding_config___block_invoke;
  aBlock[3] = &unk_1E7385128;
  v71 = collectionCopy;
  v72 = onsetDateCopy;
  v73 = asserterCopy;
  v74 = reactionsCopy;
  v75 = codingCopy;
  v76 = occurrenceDateCopy;
  v77 = recordedDateCopy;
  v78 = statusCodingCopy;
  v79 = clinicalStatusCodingCopy;
  v80 = typeCodingCopy;
  v81 = categoryCodingCopy;
  v82 = configCopy;
  v64 = configCopy;
  v63 = categoryCodingCopy;
  v62 = typeCodingCopy;
  v61 = clinicalStatusCodingCopy;
  v60 = statusCodingCopy;
  v58 = recordedDateCopy;
  v56 = occurrenceDateCopy;
  v54 = codingCopy;
  v52 = reactionsCopy;
  v50 = asserterCopy;
  v48 = onsetDateCopy;
  v68 = collectionCopy;
  countryCopy = country;
  sortDateCopy = sortDate;
  metadataCopy = metadata;
  deviceCopy = device;
  localeCopy = locale;
  identifierCopy = identifier;
  dateCopy = date;
  noteCopy = note;
  typeCopy = type;
  v40 = _Block_copy(aBlock);
  v69.receiver = self;
  v69.super_class = &OBJC_METACLASS___HKAllergyRecord;
  v66 = objc_msgSendSuper2(&v69, sel__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config_, typeCopy, noteCopy, errorCopy, dateCopy, identifierCopy, localeCopy, version, deviceCopy, metadataCopy, sortDateCopy, countryCopy, state, v40);

  return v66;
}

void __348__HKAllergyRecord__newAllergyRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_allergyCodingCollection_onsetDate_asserter_reactions_criticalityCoding_lastOccurrenceDate_recordedDate_verificationStatusCoding_clinicalStatusCoding_allergyTypeCoding_categoryCoding_config___block_invoke(uint64_t a1, void *a2)
{
  v26 = a2;
  v3 = [*(a1 + 32) copy];
  v4 = v26[22];
  v26[22] = v3;

  v5 = [*(a1 + 40) copy];
  v6 = v26[23];
  v26[23] = v5;

  v7 = [*(a1 + 48) copy];
  v8 = v26[24];
  v26[24] = v7;

  v9 = [*(a1 + 56) copy];
  v10 = v26[25];
  v26[25] = v9;

  v11 = [*(a1 + 64) copy];
  v12 = v26[26];
  v26[26] = v11;

  v13 = [*(a1 + 72) copy];
  v14 = v26[27];
  v26[27] = v13;

  v15 = [*(a1 + 80) copy];
  v16 = v26[28];
  v26[28] = v15;

  v17 = [*(a1 + 88) copy];
  v18 = v26[29];
  v26[29] = v17;

  v19 = [*(a1 + 96) copy];
  v20 = v26[30];
  v26[30] = v19;

  v21 = [*(a1 + 104) copy];
  v22 = v26[31];
  v26[31] = v21;

  v23 = [*(a1 + 112) copy];
  v24 = v26[32];
  v26[32] = v23;

  v25 = *(a1 + 120);
  if (v25)
  {
    (*(v25 + 16))(v25, v26);
  }
}

- (HKAllergyRecord)init
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
  v10.super_class = HKAllergyRecord;
  v6 = [(HKSample *)&v10 description];
  allergyTypeCoding = self->_allergyTypeCoding;
  v8 = [v3 stringWithFormat:@"<%@:%p super=%@allergyCodingCollection = %@onsetDate = %@asserter = %@reactions = %@criticalityCoding = %@lastOccurrenceDate = %@recordedDate = %@verificationStatusCoding = %@clinicalStatusCoding = %@allergyTypeCoding = %@categoryCoding = %@>", v5, self, v6, self->_allergyCodingCollection, self->_onsetDate, self->_asserter, self->_reactions, self->_criticalityCoding, self->_lastOccurrenceDate, self->_recordedDate, self->_verificationStatusCoding, self->_clinicalStatusCoding, allergyTypeCoding, self->_categoryCoding];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKAllergyRecord;
  coderCopy = coder;
  [(HKMedicalRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_allergyCodingCollection forKey:{@"AllergyCodingCollection", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_onsetDate forKey:@"OnsetDate"];
  [coderCopy encodeObject:self->_asserter forKey:@"Asserter"];
  [coderCopy encodeObject:self->_reactions forKey:@"Reactions"];
  [coderCopy encodeObject:self->_criticalityCoding forKey:@"CriticalityCoding"];
  [coderCopy encodeObject:self->_lastOccurrenceDate forKey:@"LastOccurrenceDate"];
  [coderCopy encodeObject:self->_recordedDate forKey:@"RecordedDate"];
  [coderCopy encodeObject:self->_verificationStatusCoding forKey:@"VerificationStatusCoding"];
  [coderCopy encodeObject:self->_clinicalStatusCoding forKey:@"ClinicalStatusCoding"];
  [coderCopy encodeObject:self->_allergyTypeCoding forKey:@"AllergyTypeCoding"];
  [coderCopy encodeObject:self->_categoryCoding forKey:@"CategoryCoding"];
  [coderCopy encodeObject:self->_allergy forKey:@"Allergy"];
  [coderCopy encodeObject:self->_criticality forKey:@"Criticality"];
  [coderCopy encodeObject:self->_verificationStatus forKey:@"VerificationStatus"];
  [coderCopy encodeObject:self->_clinicalStatus forKey:@"ClinicalStatus"];
  [coderCopy encodeObject:self->_allergyType forKey:@"AllergyType"];
  [coderCopy encodeObject:self->_category forKey:@"Category"];
}

- (HKAllergyRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v42.receiver = self;
  v42.super_class = HKAllergyRecord;
  v5 = [(HKMedicalRecord *)&v42 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AllergyCodingCollection"];
    allergyCodingCollection = v5->_allergyCodingCollection;
    v5->_allergyCodingCollection = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OnsetDate"];
    onsetDate = v5->_onsetDate;
    v5->_onsetDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Asserter"];
    asserter = v5->_asserter;
    v5->_asserter = v10;

    v12 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"Reactions"];
    reactions = v5->_reactions;
    v5->_reactions = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CriticalityCoding"];
    criticalityCoding = v5->_criticalityCoding;
    v5->_criticalityCoding = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastOccurrenceDate"];
    lastOccurrenceDate = v5->_lastOccurrenceDate;
    v5->_lastOccurrenceDate = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RecordedDate"];
    recordedDate = v5->_recordedDate;
    v5->_recordedDate = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VerificationStatusCoding"];
    verificationStatusCoding = v5->_verificationStatusCoding;
    v5->_verificationStatusCoding = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ClinicalStatusCoding"];
    clinicalStatusCoding = v5->_clinicalStatusCoding;
    v5->_clinicalStatusCoding = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AllergyTypeCoding"];
    allergyTypeCoding = v5->_allergyTypeCoding;
    v5->_allergyTypeCoding = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CategoryCoding"];
    categoryCoding = v5->_categoryCoding;
    v5->_categoryCoding = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Allergy"];
    allergy = v5->_allergy;
    v5->_allergy = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Criticality"];
    criticality = v5->_criticality;
    v5->_criticality = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VerificationStatus"];
    verificationStatus = v5->_verificationStatus;
    v5->_verificationStatus = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ClinicalStatus"];
    clinicalStatus = v5->_clinicalStatus;
    v5->_clinicalStatus = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AllergyType"];
    allergyType = v5->_allergyType;
    v5->_allergyType = v37;

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Category"];
    category = v5->_category;
    v5->_category = v39;
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
    v112.super_class = HKAllergyRecord;
    if (![(HKMedicalRecord *)&v112 isEquivalent:v5])
    {
      goto LABEL_89;
    }

    allergyCodingCollection = [(HKAllergyRecord *)self allergyCodingCollection];
    allergyCodingCollection2 = [v5 allergyCodingCollection];
    v8 = allergyCodingCollection2;
    if (allergyCodingCollection == allergyCodingCollection2)
    {
    }

    else
    {
      allergyCodingCollection3 = [v5 allergyCodingCollection];
      if (!allergyCodingCollection3)
      {
        goto LABEL_88;
      }

      v10 = allergyCodingCollection3;
      allergyCodingCollection4 = [(HKAllergyRecord *)self allergyCodingCollection];
      allergyCodingCollection5 = [v5 allergyCodingCollection];
      v13 = [allergyCodingCollection4 isEqual:allergyCodingCollection5];

      if (!v13)
      {
        goto LABEL_89;
      }
    }

    allergyCodingCollection = [(HKAllergyRecord *)self onsetDate];
    onsetDate = [v5 onsetDate];
    v8 = onsetDate;
    if (allergyCodingCollection == onsetDate)
    {
    }

    else
    {
      onsetDate2 = [v5 onsetDate];
      if (!onsetDate2)
      {
        goto LABEL_88;
      }

      v17 = onsetDate2;
      onsetDate3 = [(HKAllergyRecord *)self onsetDate];
      onsetDate4 = [v5 onsetDate];
      v20 = [onsetDate3 isEqual:onsetDate4];

      if (!v20)
      {
        goto LABEL_89;
      }
    }

    allergyCodingCollection = [(HKAllergyRecord *)self asserter];
    asserter = [v5 asserter];
    v8 = asserter;
    if (allergyCodingCollection == asserter)
    {
    }

    else
    {
      asserter2 = [v5 asserter];
      if (!asserter2)
      {
        goto LABEL_88;
      }

      v23 = asserter2;
      asserter3 = [(HKAllergyRecord *)self asserter];
      asserter4 = [v5 asserter];
      v26 = [asserter3 isEqualToString:asserter4];

      if (!v26)
      {
        goto LABEL_89;
      }
    }

    allergyCodingCollection = [(HKAllergyRecord *)self reactions];
    reactions = [v5 reactions];
    v8 = reactions;
    if (allergyCodingCollection == reactions)
    {
    }

    else
    {
      reactions2 = [v5 reactions];
      if (!reactions2)
      {
        goto LABEL_88;
      }

      v29 = reactions2;
      reactions3 = [(HKAllergyRecord *)self reactions];
      reactions4 = [v5 reactions];
      v32 = [reactions3 isEqualToArray:reactions4];

      if (!v32)
      {
        goto LABEL_89;
      }
    }

    allergyCodingCollection = [(HKAllergyRecord *)self criticalityCoding];
    criticalityCoding = [v5 criticalityCoding];
    v8 = criticalityCoding;
    if (allergyCodingCollection == criticalityCoding)
    {
    }

    else
    {
      criticalityCoding2 = [v5 criticalityCoding];
      if (!criticalityCoding2)
      {
        goto LABEL_88;
      }

      v35 = criticalityCoding2;
      criticalityCoding3 = [(HKAllergyRecord *)self criticalityCoding];
      criticalityCoding4 = [v5 criticalityCoding];
      v38 = [criticalityCoding3 isEqual:criticalityCoding4];

      if (!v38)
      {
        goto LABEL_89;
      }
    }

    allergyCodingCollection = [(HKAllergyRecord *)self lastOccurrenceDate];
    lastOccurrenceDate = [v5 lastOccurrenceDate];
    v8 = lastOccurrenceDate;
    if (allergyCodingCollection == lastOccurrenceDate)
    {
    }

    else
    {
      lastOccurrenceDate2 = [v5 lastOccurrenceDate];
      if (!lastOccurrenceDate2)
      {
        goto LABEL_88;
      }

      v41 = lastOccurrenceDate2;
      lastOccurrenceDate3 = [(HKAllergyRecord *)self lastOccurrenceDate];
      lastOccurrenceDate4 = [v5 lastOccurrenceDate];
      v44 = [lastOccurrenceDate3 isEqual:lastOccurrenceDate4];

      if (!v44)
      {
        goto LABEL_89;
      }
    }

    allergyCodingCollection = [(HKAllergyRecord *)self recordedDate];
    recordedDate = [v5 recordedDate];
    v8 = recordedDate;
    if (allergyCodingCollection == recordedDate)
    {
    }

    else
    {
      recordedDate2 = [v5 recordedDate];
      if (!recordedDate2)
      {
        goto LABEL_88;
      }

      v47 = recordedDate2;
      recordedDate3 = [(HKAllergyRecord *)self recordedDate];
      recordedDate4 = [v5 recordedDate];
      v50 = [recordedDate3 isEqual:recordedDate4];

      if (!v50)
      {
        goto LABEL_89;
      }
    }

    allergyCodingCollection = [(HKAllergyRecord *)self verificationStatusCoding];
    verificationStatusCoding = [v5 verificationStatusCoding];
    v8 = verificationStatusCoding;
    if (allergyCodingCollection == verificationStatusCoding)
    {
    }

    else
    {
      verificationStatusCoding2 = [v5 verificationStatusCoding];
      if (!verificationStatusCoding2)
      {
        goto LABEL_88;
      }

      v53 = verificationStatusCoding2;
      verificationStatusCoding3 = [(HKAllergyRecord *)self verificationStatusCoding];
      verificationStatusCoding4 = [v5 verificationStatusCoding];
      v56 = [verificationStatusCoding3 isEqual:verificationStatusCoding4];

      if (!v56)
      {
        goto LABEL_89;
      }
    }

    allergyCodingCollection = [(HKAllergyRecord *)self clinicalStatusCoding];
    clinicalStatusCoding = [v5 clinicalStatusCoding];
    v8 = clinicalStatusCoding;
    if (allergyCodingCollection == clinicalStatusCoding)
    {
    }

    else
    {
      clinicalStatusCoding2 = [v5 clinicalStatusCoding];
      if (!clinicalStatusCoding2)
      {
        goto LABEL_88;
      }

      v59 = clinicalStatusCoding2;
      clinicalStatusCoding3 = [(HKAllergyRecord *)self clinicalStatusCoding];
      clinicalStatusCoding4 = [v5 clinicalStatusCoding];
      v62 = [clinicalStatusCoding3 isEqual:clinicalStatusCoding4];

      if (!v62)
      {
        goto LABEL_89;
      }
    }

    allergyCodingCollection = [(HKAllergyRecord *)self allergyTypeCoding];
    allergyTypeCoding = [v5 allergyTypeCoding];
    v8 = allergyTypeCoding;
    if (allergyCodingCollection == allergyTypeCoding)
    {
    }

    else
    {
      allergyTypeCoding2 = [v5 allergyTypeCoding];
      if (!allergyTypeCoding2)
      {
        goto LABEL_88;
      }

      v65 = allergyTypeCoding2;
      allergyTypeCoding3 = [(HKAllergyRecord *)self allergyTypeCoding];
      allergyTypeCoding4 = [v5 allergyTypeCoding];
      v68 = [allergyTypeCoding3 isEqual:allergyTypeCoding4];

      if (!v68)
      {
        goto LABEL_89;
      }
    }

    allergyCodingCollection = [(HKAllergyRecord *)self categoryCoding];
    categoryCoding = [v5 categoryCoding];
    v8 = categoryCoding;
    if (allergyCodingCollection == categoryCoding)
    {
    }

    else
    {
      categoryCoding2 = [v5 categoryCoding];
      if (!categoryCoding2)
      {
        goto LABEL_88;
      }

      v71 = categoryCoding2;
      categoryCoding3 = [(HKAllergyRecord *)self categoryCoding];
      categoryCoding4 = [v5 categoryCoding];
      v74 = [categoryCoding3 isEqual:categoryCoding4];

      if (!v74)
      {
        goto LABEL_89;
      }
    }

    allergyCodingCollection = [(HKAllergyRecord *)self allergy];
    allergy = [v5 allergy];
    v8 = allergy;
    if (allergyCodingCollection == allergy)
    {
    }

    else
    {
      allergy2 = [v5 allergy];
      if (!allergy2)
      {
        goto LABEL_88;
      }

      v77 = allergy2;
      allergy3 = [(HKAllergyRecord *)self allergy];
      allergy4 = [v5 allergy];
      v80 = [allergy3 isEqual:allergy4];

      if (!v80)
      {
        goto LABEL_89;
      }
    }

    allergyCodingCollection = [(HKAllergyRecord *)self criticality];
    criticality = [v5 criticality];
    v8 = criticality;
    if (allergyCodingCollection == criticality)
    {
    }

    else
    {
      criticality2 = [v5 criticality];
      if (!criticality2)
      {
        goto LABEL_88;
      }

      v83 = criticality2;
      criticality3 = [(HKAllergyRecord *)self criticality];
      criticality4 = [v5 criticality];
      v86 = [criticality3 isEqual:criticality4];

      if (!v86)
      {
        goto LABEL_89;
      }
    }

    allergyCodingCollection = [(HKAllergyRecord *)self verificationStatus];
    verificationStatus = [v5 verificationStatus];
    v8 = verificationStatus;
    if (allergyCodingCollection == verificationStatus)
    {
    }

    else
    {
      verificationStatus2 = [v5 verificationStatus];
      if (!verificationStatus2)
      {
        goto LABEL_88;
      }

      v89 = verificationStatus2;
      verificationStatus3 = [(HKAllergyRecord *)self verificationStatus];
      verificationStatus4 = [v5 verificationStatus];
      v92 = [verificationStatus3 isEqual:verificationStatus4];

      if (!v92)
      {
        goto LABEL_89;
      }
    }

    allergyCodingCollection = [(HKAllergyRecord *)self clinicalStatus];
    clinicalStatus = [v5 clinicalStatus];
    v8 = clinicalStatus;
    if (allergyCodingCollection == clinicalStatus)
    {
    }

    else
    {
      clinicalStatus2 = [v5 clinicalStatus];
      if (!clinicalStatus2)
      {
        goto LABEL_88;
      }

      v95 = clinicalStatus2;
      clinicalStatus3 = [(HKAllergyRecord *)self clinicalStatus];
      clinicalStatus4 = [v5 clinicalStatus];
      v98 = [clinicalStatus3 isEqual:clinicalStatus4];

      if (!v98)
      {
        goto LABEL_89;
      }
    }

    allergyCodingCollection = [(HKAllergyRecord *)self allergyType];
    allergyType = [v5 allergyType];
    v8 = allergyType;
    if (allergyCodingCollection == allergyType)
    {
    }

    else
    {
      allergyType2 = [v5 allergyType];
      if (!allergyType2)
      {
        goto LABEL_88;
      }

      v101 = allergyType2;
      allergyType3 = [(HKAllergyRecord *)self allergyType];
      allergyType4 = [v5 allergyType];
      v104 = [allergyType3 isEqual:allergyType4];

      if (!v104)
      {
        goto LABEL_89;
      }
    }

    allergyCodingCollection = [(HKAllergyRecord *)self category];
    category = [v5 category];
    v8 = category;
    if (allergyCodingCollection == category)
    {

LABEL_93:
      v14 = 1;
      goto LABEL_90;
    }

    category2 = [v5 category];
    if (category2)
    {
      v107 = category2;
      category3 = [(HKAllergyRecord *)self category];
      category4 = [v5 category];
      v110 = [category3 isEqual:category4];

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

- (id)criticalityCodingCollection
{
  criticalityCoding = [(HKAllergyRecord *)self criticalityCoding];

  if (criticalityCoding)
  {
    criticalityCoding2 = [(HKAllergyRecord *)self criticalityCoding];
    v5 = [HKMedicalCodingCollection collectionWithCoding:criticalityCoding2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)verificationStatusCodingCollection
{
  verificationStatusCoding = [(HKAllergyRecord *)self verificationStatusCoding];

  if (verificationStatusCoding)
  {
    verificationStatusCoding2 = [(HKAllergyRecord *)self verificationStatusCoding];
    v5 = [HKMedicalCodingCollection collectionWithCoding:verificationStatusCoding2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)clinicalStatusCodingCollection
{
  clinicalStatusCoding = [(HKAllergyRecord *)self clinicalStatusCoding];

  if (clinicalStatusCoding)
  {
    clinicalStatusCoding2 = [(HKAllergyRecord *)self clinicalStatusCoding];
    v5 = [HKMedicalCodingCollection collectionWithCoding:clinicalStatusCoding2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)allergyTypeCodingCollection
{
  allergyTypeCoding = [(HKAllergyRecord *)self allergyTypeCoding];

  if (allergyTypeCoding)
  {
    allergyTypeCoding2 = [(HKAllergyRecord *)self allergyTypeCoding];
    v5 = [HKMedicalCodingCollection collectionWithCoding:allergyTypeCoding2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)categoryCodingCollection
{
  categoryCoding = [(HKAllergyRecord *)self categoryCoding];

  if (categoryCoding)
  {
    categoryCoding2 = [(HKAllergyRecord *)self categoryCoding];
    v5 = [HKMedicalCodingCollection collectionWithCoding:categoryCoding2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setAllergyCodingCollection:(id)collection
{
  v4 = [collection copy];
  allergyCodingCollection = self->_allergyCodingCollection;
  self->_allergyCodingCollection = v4;

  allergyCodingCollection = [(HKAllergyRecord *)self allergyCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:allergyCodingCollection];
  allergy = self->_allergy;
  self->_allergy = v6;
}

- (void)_setOnsetDate:(id)date
{
  v4 = [date copy];
  onsetDate = self->_onsetDate;
  self->_onsetDate = v4;

  MEMORY[0x1EEE66BB8](v4, onsetDate);
}

- (void)_setAsserter:(id)asserter
{
  v4 = [asserter copy];
  asserter = self->_asserter;
  self->_asserter = v4;

  MEMORY[0x1EEE66BB8](v4, asserter);
}

- (void)_setReactions:(id)reactions
{
  v4 = [reactions copy];
  reactions = self->_reactions;
  self->_reactions = v4;

  MEMORY[0x1EEE66BB8](v4, reactions);
}

- (void)_setCriticalityCoding:(id)coding
{
  v4 = [coding copy];
  criticalityCoding = self->_criticalityCoding;
  self->_criticalityCoding = v4;

  if (self->_criticalityCoding)
  {
    criticalityCodingCollection = [(HKAllergyRecord *)self criticalityCodingCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:criticalityCodingCollection];
    criticality = self->_criticality;
    self->_criticality = v6;

    v8 = criticalityCodingCollection;
  }

  else
  {
    v8 = self->_criticality;
    self->_criticality = 0;
  }
}

- (void)_setLastOccurrenceDate:(id)date
{
  v4 = [date copy];
  lastOccurrenceDate = self->_lastOccurrenceDate;
  self->_lastOccurrenceDate = v4;

  MEMORY[0x1EEE66BB8](v4, lastOccurrenceDate);
}

- (void)_setRecordedDate:(id)date
{
  v4 = [date copy];
  recordedDate = self->_recordedDate;
  self->_recordedDate = v4;

  MEMORY[0x1EEE66BB8](v4, recordedDate);
}

- (void)_setVerificationStatusCoding:(id)coding
{
  v4 = [coding copy];
  verificationStatusCoding = self->_verificationStatusCoding;
  self->_verificationStatusCoding = v4;

  if (self->_verificationStatusCoding)
  {
    verificationStatusCodingCollection = [(HKAllergyRecord *)self verificationStatusCodingCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:verificationStatusCodingCollection];
    verificationStatus = self->_verificationStatus;
    self->_verificationStatus = v6;

    v8 = verificationStatusCodingCollection;
  }

  else
  {
    v8 = self->_verificationStatus;
    self->_verificationStatus = 0;
  }
}

- (void)_setClinicalStatusCoding:(id)coding
{
  v4 = [coding copy];
  clinicalStatusCoding = self->_clinicalStatusCoding;
  self->_clinicalStatusCoding = v4;

  if (self->_clinicalStatusCoding)
  {
    clinicalStatusCodingCollection = [(HKAllergyRecord *)self clinicalStatusCodingCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:clinicalStatusCodingCollection];
    clinicalStatus = self->_clinicalStatus;
    self->_clinicalStatus = v6;

    v8 = clinicalStatusCodingCollection;
  }

  else
  {
    v8 = self->_clinicalStatus;
    self->_clinicalStatus = 0;
  }
}

- (void)_setAllergyTypeCoding:(id)coding
{
  v4 = [coding copy];
  allergyTypeCoding = self->_allergyTypeCoding;
  self->_allergyTypeCoding = v4;

  if (self->_allergyTypeCoding)
  {
    allergyTypeCodingCollection = [(HKAllergyRecord *)self allergyTypeCodingCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:allergyTypeCodingCollection];
    allergyType = self->_allergyType;
    self->_allergyType = v6;

    v8 = allergyTypeCodingCollection;
  }

  else
  {
    v8 = self->_allergyType;
    self->_allergyType = 0;
  }
}

- (void)_setCategoryCoding:(id)coding
{
  v4 = [coding copy];
  categoryCoding = self->_categoryCoding;
  self->_categoryCoding = v4;

  if (self->_categoryCoding)
  {
    categoryCodingCollection = [(HKAllergyRecord *)self categoryCodingCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:categoryCodingCollection];
    category = self->_category;
    self->_category = v6;

    v8 = categoryCodingCollection;
  }

  else
  {
    v8 = self->_category;
    self->_category = 0;
  }
}

- (HKConcept)allergy
{
  allergy = self->_allergy;
  if (allergy)
  {
    v3 = allergy;
  }

  else
  {
    allergyCodingCollection = [(HKAllergyRecord *)self allergyCodingCollection];
    v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:allergyCodingCollection];
  }

  return v3;
}

- (void)_setAllergy:(id)allergy
{
  allergyCopy = allergy;
  if (!allergyCopy)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      [HKAllergyRecord _setAllergy:v5];
    }
  }

  v6 = [allergyCopy copy];
  allergy = self->_allergy;
  self->_allergy = v6;
}

- (HKConcept)criticality
{
  if (self->_criticalityCoding)
  {
    criticality = self->_criticality;
    if (criticality)
    {
      v3 = criticality;
    }

    else
    {
      criticalityCodingCollection = [(HKAllergyRecord *)self criticalityCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:criticalityCodingCollection];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setCriticality:(id)criticality
{
  v4 = [criticality copy];
  criticality = self->_criticality;
  self->_criticality = v4;

  MEMORY[0x1EEE66BB8](v4, criticality);
}

- (HKConcept)verificationStatus
{
  if (self->_verificationStatusCoding)
  {
    verificationStatus = self->_verificationStatus;
    if (verificationStatus)
    {
      v3 = verificationStatus;
    }

    else
    {
      verificationStatusCodingCollection = [(HKAllergyRecord *)self verificationStatusCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:verificationStatusCodingCollection];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setVerificationStatus:(id)status
{
  v4 = [status copy];
  verificationStatus = self->_verificationStatus;
  self->_verificationStatus = v4;

  MEMORY[0x1EEE66BB8](v4, verificationStatus);
}

- (HKConcept)clinicalStatus
{
  if (self->_clinicalStatusCoding)
  {
    clinicalStatus = self->_clinicalStatus;
    if (clinicalStatus)
    {
      v3 = clinicalStatus;
    }

    else
    {
      clinicalStatusCodingCollection = [(HKAllergyRecord *)self clinicalStatusCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:clinicalStatusCodingCollection];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setClinicalStatus:(id)status
{
  v4 = [status copy];
  clinicalStatus = self->_clinicalStatus;
  self->_clinicalStatus = v4;

  MEMORY[0x1EEE66BB8](v4, clinicalStatus);
}

- (HKConcept)allergyType
{
  if (self->_allergyTypeCoding)
  {
    allergyType = self->_allergyType;
    if (allergyType)
    {
      v3 = allergyType;
    }

    else
    {
      allergyTypeCodingCollection = [(HKAllergyRecord *)self allergyTypeCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:allergyTypeCodingCollection];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setAllergyType:(id)type
{
  v4 = [type copy];
  allergyType = self->_allergyType;
  self->_allergyType = v4;

  MEMORY[0x1EEE66BB8](v4, allergyType);
}

- (HKConcept)category
{
  if (self->_categoryCoding)
  {
    category = self->_category;
    if (category)
    {
      v3 = category;
    }

    else
    {
      categoryCodingCollection = [(HKAllergyRecord *)self categoryCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:categoryCodingCollection];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setCategory:(id)category
{
  v4 = [category copy];
  category = self->_category;
  self->_category = v4;

  MEMORY[0x1EEE66BB8](v4, category);
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v10.receiver = self;
  v10.super_class = HKAllergyRecord;
  v5 = [(HKMedicalRecord *)&v10 _validateWithConfiguration:configuration.var0, configuration.var1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
LABEL_3:
    v8 = v7;
    goto LABEL_6;
  }

  if (!self->_allergyCodingCollection)
  {
    v7 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"%@: allergyCodingCollection must not be nil", self}];
    goto LABEL_3;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

@end