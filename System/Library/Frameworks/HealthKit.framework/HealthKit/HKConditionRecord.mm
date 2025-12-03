@interface HKConditionRecord
+ (id)_newConditionRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 conditionCodingCollection:(id)self5 categoriesCodingCollections:(id)self6 asserter:(id)self7 abatement:(id)self8 onset:(id)self9 recordedDate:(id)recordedDate clinicalStatusCoding:(id)coding verificationStatusCoding:(id)statusCoding severityCodingCollection:(id)codingCollection bodySitesCodingCollections:(id)codingCollections config:(id)config;
+ (id)cachedConceptRelationshipKeyPaths;
+ (id)conditionRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 country:(id)self2 state:(unint64_t)self3 conditionCodingCollection:(id)self4 categoriesCodingCollections:(id)self5 asserter:(id)self6 abatement:(id)self7 onset:(id)self8 recordedDate:(id)self9 clinicalStatusCoding:(id)coding verificationStatusCoding:(id)statusCoding severityCodingCollection:(id)codingCollection bodySitesCodingCollections:(id)codingCollections;
+ (id)defaultDisplayString;
+ (id)indexableConceptKeyPaths;
- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error;
- (BOOL)isEquivalent:(id)equivalent;
- (HKConcept)clinicalStatus;
- (HKConcept)condition;
- (HKConcept)severity;
- (HKConcept)verificationStatus;
- (HKConditionRecord)init;
- (HKConditionRecord)initWithCoder:(id)coder;
- (NSArray)bodySites;
- (NSArray)categories;
- (NSString)description;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)clinicalStatusCodingCollection;
- (id)codingsForKeyPath:(id)path error:(id *)error;
- (id)medicalRecordCodings;
- (id)verificationStatusCodingCollection;
- (void)_setAbatement:(id)abatement;
- (void)_setAsserter:(id)asserter;
- (void)_setBodySites:(id)sites;
- (void)_setBodySitesCodingCollections:(id)collections;
- (void)_setCategories:(id)categories;
- (void)_setCategoriesCodingCollections:(id)collections;
- (void)_setClinicalStatus:(id)status;
- (void)_setClinicalStatusCoding:(id)coding;
- (void)_setCondition:(id)condition;
- (void)_setConditionCodingCollection:(id)collection;
- (void)_setOnset:(id)onset;
- (void)_setRecordedDate:(id)date;
- (void)_setSeverity:(id)severity;
- (void)_setSeverityCodingCollection:(id)collection;
- (void)_setVerificationStatus:(id)status;
- (void)_setVerificationStatusCoding:(id)coding;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKConditionRecord

+ (id)conditionRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 country:(id)self2 state:(unint64_t)self3 conditionCodingCollection:(id)self4 categoriesCodingCollections:(id)self5 asserter:(id)self6 abatement:(id)self7 onset:(id)self8 recordedDate:(id)self9 clinicalStatusCoding:(id)coding verificationStatusCoding:(id)statusCoding severityCodingCollection:(id)codingCollection bodySitesCodingCollections:(id)codingCollections
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
  collectionsCopy = collections;
  asserterCopy = asserter;
  abatementCopy = abatement;
  onsetCopy = onset;
  recordedDateCopy = recordedDate;
  codingCopy = coding;
  statusCodingCopy = statusCoding;
  codingCollectionCopy = codingCollection;
  codingCollectionsCopy = codingCollections;
  v33 = @"modifiedDate";
  v34 = dateCopy;
  if (!onsetCopy || ([onsetCopy dateValueForUTC], v35 = objc_claimAutoreleasedReturnValue(), v35, !v35))
  {
    dateValueForUTC = v34;
    if (!recordedDateCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v36 = @"onset";

  dateValueForUTC = [onsetCopy dateValueForUTC];

  v33 = v36;
  if (recordedDateCopy)
  {
LABEL_6:
    v38 = @"recordedDate";

    dateForUTC = [recordedDateCopy dateForUTC];

    dateValueForUTC = dateForUTC;
    v33 = v38;
  }

LABEL_7:
  v40 = [HKSemanticDate semanticDateWithKeyPath:v33 date:dateValueForUTC];
  v45 = [HKConditionRecord conditionRecordWithType:typeCopy note:noteCopy enteredInError:errorCopy modifiedDate:v34 originIdentifier:identifierCopy locale:localeCopy extractionVersion:version device:deviceCopy metadata:metadataCopy sortDate:v40 country:countryCopy state:state conditionCodingCollection:collectionCopy categoriesCodingCollections:collectionsCopy asserter:asserterCopy abatement:abatementCopy onset:onsetCopy recordedDate:recordedDateCopy clinicalStatusCoding:codingCopy verificationStatusCoding:statusCodingCopy severityCodingCollection:codingCollectionCopy bodySitesCodingCollections:codingCollectionsCopy];

  return v45;
}

- (id)medicalRecordCodings
{
  conditionCodingCollection = [(HKConditionRecord *)self conditionCodingCollection];
  codings = [conditionCodingCollection codings];

  return codings;
}

+ (id)defaultDisplayString
{
  v2 = HKHealthKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"UNSPECIFIED_CONDITION" value:&stru_1F05FF230 table:@"Localizable-Clinical-Health-Records"];

  return v3;
}

+ (id)indexableConceptKeyPaths
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___HKConditionRecord;
  v2 = objc_msgSendSuper2(&v5, sel_indexableConceptKeyPaths);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"condition"];
  [v3 addObject:@"categories"];
  [v3 addObject:@"clinicalStatus"];
  [v3 addObject:@"verificationStatus"];
  [v3 addObject:@"severity"];
  [v3 addObject:@"bodySites"];

  return v3;
}

+ (id)cachedConceptRelationshipKeyPaths
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___HKConditionRecord;
  v2 = objc_msgSendSuper2(&v4, sel_cachedConceptRelationshipKeyPaths);

  return v2;
}

- (id)codingsForKeyPath:(id)path error:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = [HKConceptIndexUtilities firstComponentForKeyPath:pathCopy error:error];
  v8 = v7;
  if (!v7)
  {
    v13 = 0;
    goto LABEL_17;
  }

  if ([v7 isEqualToString:@"condition"])
  {
    conditionCodingCollection = [(HKConditionRecord *)self conditionCodingCollection];
    v10 = [HKIndexableObject indexableObjectWithObject:conditionCodingCollection];
    v30[0] = v10;
    v11 = MEMORY[0x1E695DEC8];
    v12 = v30;
LABEL_4:
    v13 = [v11 arrayWithObjects:v12 count:1];

    goto LABEL_17;
  }

  if ([v8 isEqualToString:@"categories"])
  {
    categoriesCodingCollections = [(HKConditionRecord *)self categoriesCodingCollections];
LABEL_8:
    clinicalStatusCoding2 = categoriesCodingCollections;
    v13 = [HKConceptIndexUtilities indexedCodingsForCodingCollections:categoriesCodingCollections context:pathCopy error:error];
LABEL_16:

    goto LABEL_17;
  }

  if ([v8 isEqualToString:@"clinicalStatus"])
  {
    clinicalStatusCoding = [(HKConditionRecord *)self clinicalStatusCoding];

    if (clinicalStatusCoding)
    {
      clinicalStatusCoding2 = [(HKConditionRecord *)self clinicalStatusCoding];
      v17 = [HKMedicalCodingCollection collectionWithCoding:clinicalStatusCoding2];
      v18 = [HKIndexableObject indexableObjectWithObject:v17];
      v29 = v18;
      v19 = MEMORY[0x1E695DEC8];
      v20 = &v29;
LABEL_15:
      v13 = [v19 arrayWithObjects:v20 count:1];

      goto LABEL_16;
    }

    goto LABEL_26;
  }

  if ([v8 isEqualToString:@"verificationStatus"])
  {
    verificationStatusCoding = [(HKConditionRecord *)self verificationStatusCoding];

    if (verificationStatusCoding)
    {
      clinicalStatusCoding2 = [(HKConditionRecord *)self verificationStatusCoding];
      v17 = [HKMedicalCodingCollection collectionWithCoding:clinicalStatusCoding2];
      v18 = [HKIndexableObject indexableObjectWithObject:v17];
      v28 = v18;
      v19 = MEMORY[0x1E695DEC8];
      v20 = &v28;
      goto LABEL_15;
    }

    goto LABEL_26;
  }

  if ([v8 isEqualToString:@"severity"])
  {
    severityCodingCollection = [(HKConditionRecord *)self severityCodingCollection];

    if (severityCodingCollection)
    {
      conditionCodingCollection = [(HKConditionRecord *)self severityCodingCollection];
      v10 = [HKIndexableObject indexableObjectWithObject:conditionCodingCollection];
      v27 = v10;
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v27;
      goto LABEL_4;
    }

LABEL_26:
    v13 = MEMORY[0x1E695E0F0];
    goto LABEL_17;
  }

  if ([v8 isEqualToString:@"bodySites"])
  {
    bodySitesCodingCollections = [(HKConditionRecord *)self bodySitesCodingCollections];

    if (bodySitesCodingCollections)
    {
      categoriesCodingCollections = [(HKConditionRecord *)self bodySitesCodingCollections];
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  v26.receiver = self;
  v26.super_class = HKConditionRecord;
  v13 = [(HKMedicalRecord *)&v26 codingsForKeyPath:pathCopy error:error];
LABEL_17:

  v22 = *MEMORY[0x1E69E9840];

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
    goto LABEL_6;
  }

  if (![v10 isEqualToString:@"condition"])
  {
    if ([v11 isEqualToString:@"categories"])
    {
      categoriesCodingCollections = [(HKConditionRecord *)self categoriesCodingCollections];
      v14 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", conceptsCopy, [categoriesCodingCollections count], pathCopy, error);

      LOBYTE(error) = v14 != 0;
      if (v14)
      {
        [(HKConditionRecord *)self _setCategories:v14];
      }

LABEL_10:

      goto LABEL_11;
    }

    if ([v11 isEqualToString:@"clinicalStatus"])
    {
      v16 = [conceptsCopy count];
      clinicalStatusCoding = [(HKConditionRecord *)self clinicalStatusCoding];
      LODWORD(error) = HKIndexableObjectCheckCardinalityForIndexRestore(v16, clinicalStatusCoding != 0, pathCopy, error);

      if (!error)
      {
        goto LABEL_11;
      }

      error = [conceptsCopy firstObject];
      object = [error object];
      [(HKConditionRecord *)self _setClinicalStatus:object];
      goto LABEL_5;
    }

    if ([v11 isEqualToString:@"verificationStatus"])
    {
      v18 = [conceptsCopy count];
      verificationStatusCoding = [(HKConditionRecord *)self verificationStatusCoding];
      LODWORD(error) = HKIndexableObjectCheckCardinalityForIndexRestore(v18, verificationStatusCoding != 0, pathCopy, error);

      if (!error)
      {
        goto LABEL_11;
      }

      error = [conceptsCopy firstObject];
      object = [error object];
      [(HKConditionRecord *)self _setVerificationStatus:object];
      goto LABEL_5;
    }

    if ([v11 isEqualToString:@"severity"])
    {
      v20 = [conceptsCopy count];
      severityCodingCollection = [(HKConditionRecord *)self severityCodingCollection];
      LODWORD(error) = HKIndexableObjectCheckCardinalityForIndexRestore(v20, severityCodingCollection != 0, pathCopy, error);

      if (!error)
      {
        goto LABEL_11;
      }

      error = [conceptsCopy firstObject];
      object = [error object];
      [(HKConditionRecord *)self _setSeverity:object];
      goto LABEL_5;
    }

    if ([v11 isEqualToString:@"bodySites"])
    {
      bodySitesCodingCollections = [(HKConditionRecord *)self bodySitesCodingCollections];

      if (bodySitesCodingCollections)
      {
        bodySitesCodingCollections2 = [(HKConditionRecord *)self bodySitesCodingCollections];
        v14 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", conceptsCopy, [bodySitesCodingCollections2 count], pathCopy, error);

        LOBYTE(error) = v14 != 0;
        if (v14)
        {
          [(HKConditionRecord *)self _setBodySites:v14];
        }

        goto LABEL_10;
      }

      v24 = HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 0, pathCopy, error);
    }

    else
    {
      v25.receiver = self;
      v25.super_class = HKConditionRecord;
      v24 = [(HKMedicalRecord *)&v25 applyConcepts:conceptsCopy forKeyPath:pathCopy error:error];
    }

    LOBYTE(error) = v24;
    goto LABEL_11;
  }

  if (!HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 1, pathCopy, error))
  {
LABEL_6:
    LOBYTE(error) = 0;
    goto LABEL_11;
  }

  error = [conceptsCopy firstObject];
  object = [error object];
  [(HKConditionRecord *)self _setCondition:object];
LABEL_5:

  LOBYTE(error) = 1;
LABEL_11:

  return error;
}

+ (id)_newConditionRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 conditionCodingCollection:(id)self5 categoriesCodingCollections:(id)self6 asserter:(id)self7 abatement:(id)self8 onset:(id)self9 recordedDate:(id)recordedDate clinicalStatusCoding:(id)coding verificationStatusCoding:(id)statusCoding severityCodingCollection:(id)codingCollection bodySitesCodingCollections:(id)codingCollections config:(id)config
{
  errorCopy = error;
  collectionCopy = collection;
  collectionsCopy = collections;
  asserterCopy = asserter;
  abatementCopy = abatement;
  onsetCopy = onset;
  recordedDateCopy = recordedDate;
  codingCopy = coding;
  statusCodingCopy = statusCoding;
  codingCollectionCopy = codingCollection;
  codingCollectionsCopy = codingCollections;
  configCopy = config;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __360__HKConditionRecord__newConditionRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_conditionCodingCollection_categoriesCodingCollections_asserter_abatement_onset_recordedDate_clinicalStatusCoding_verificationStatusCoding_severityCodingCollection_bodySitesCodingCollections_config___block_invoke;
  aBlock[3] = &unk_1E7384A40;
  v68 = collectionCopy;
  v69 = collectionsCopy;
  v70 = asserterCopy;
  v71 = abatementCopy;
  v72 = onsetCopy;
  v73 = recordedDateCopy;
  v74 = codingCopy;
  v75 = statusCodingCopy;
  v76 = codingCollectionCopy;
  v77 = codingCollectionsCopy;
  v78 = configCopy;
  v63 = configCopy;
  v62 = codingCollectionsCopy;
  v61 = codingCollectionCopy;
  v60 = statusCodingCopy;
  v59 = codingCopy;
  v58 = recordedDateCopy;
  v57 = onsetCopy;
  v56 = abatementCopy;
  v55 = asserterCopy;
  v54 = collectionsCopy;
  v53 = collectionCopy;
  countryCopy = country;
  sortDateCopy = sortDate;
  metadataCopy = metadata;
  deviceCopy = device;
  localeCopy = locale;
  identifierCopy = identifier;
  dateCopy = date;
  noteCopy = note;
  typeCopy = type;
  v44 = _Block_copy(aBlock);
  v66.receiver = self;
  v66.super_class = &OBJC_METACLASS___HKConditionRecord;
  v65 = objc_msgSendSuper2(&v66, sel__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config_, typeCopy, noteCopy, errorCopy, dateCopy, identifierCopy, localeCopy, version, deviceCopy, metadataCopy, sortDateCopy, countryCopy, state, v44);

  return v65;
}

void __360__HKConditionRecord__newConditionRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_conditionCodingCollection_categoriesCodingCollections_asserter_abatement_onset_recordedDate_clinicalStatusCoding_verificationStatusCoding_severityCodingCollection_bodySitesCodingCollections_config___block_invoke(uint64_t a1, void *a2)
{
  v24 = a2;
  v3 = [*(a1 + 32) copy];
  v4 = v24[22];
  v24[22] = v3;

  v5 = [*(a1 + 40) copy];
  v6 = v24[23];
  v24[23] = v5;

  v7 = [*(a1 + 48) copy];
  v8 = v24[24];
  v24[24] = v7;

  v9 = [*(a1 + 56) copy];
  v10 = v24[25];
  v24[25] = v9;

  v11 = [*(a1 + 64) copy];
  v12 = v24[26];
  v24[26] = v11;

  v13 = [*(a1 + 72) copy];
  v14 = v24[27];
  v24[27] = v13;

  v15 = [*(a1 + 80) copy];
  v16 = v24[28];
  v24[28] = v15;

  v17 = [*(a1 + 88) copy];
  v18 = v24[29];
  v24[29] = v17;

  v19 = [*(a1 + 96) copy];
  v20 = v24[30];
  v24[30] = v19;

  v21 = [*(a1 + 104) copy];
  v22 = v24[31];
  v24[31] = v21;

  v23 = *(a1 + 112);
  if (v23)
  {
    (*(v23 + 16))(v23, v24);
  }
}

- (HKConditionRecord)init
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
  v11.super_class = HKConditionRecord;
  v6 = [(HKSample *)&v11 description];
  conditionCodingCollection = self->_conditionCodingCollection;
  severityCodingCollection = self->_severityCodingCollection;
  v9 = [v3 stringWithFormat:@"<%@:%p super=%@conditionCodingCollection = %@categoriesCodingCollections = %@asserter = %@abatement = %@onset = %@recordedDate = %@clinicalStatusCoding = %@verificationStatusCoding = %@severityCodingCollection = %@bodySitesCodingCollections = %@>", v5, self, v6, conditionCodingCollection, self->_categoriesCodingCollections, self->_asserter, self->_abatement, self->_onset, self->_recordedDate, self->_clinicalStatusCoding, self->_verificationStatusCoding, severityCodingCollection, self->_bodySitesCodingCollections];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKConditionRecord;
  coderCopy = coder;
  [(HKMedicalRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_conditionCodingCollection forKey:{@"ConditionCodingCollection", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_categoriesCodingCollections forKey:@"CategoriesCodingCollections"];
  [coderCopy encodeObject:self->_asserter forKey:@"Asserter"];
  [coderCopy encodeObject:self->_abatement forKey:@"Abatement"];
  [coderCopy encodeObject:self->_onset forKey:@"Onset"];
  [coderCopy encodeObject:self->_recordedDate forKey:@"RecordedDate"];
  [coderCopy encodeObject:self->_clinicalStatusCoding forKey:@"ClinicalStatusCoding"];
  [coderCopy encodeObject:self->_verificationStatusCoding forKey:@"VerificationStatusCoding"];
  [coderCopy encodeObject:self->_severityCodingCollection forKey:@"SeverityCodingCollection"];
  [coderCopy encodeObject:self->_bodySitesCodingCollections forKey:@"BodySitesCodingCollections"];
  [coderCopy encodeObject:self->_condition forKey:@"Condition"];
  [coderCopy encodeObject:self->_categories forKey:@"Categories"];
  [coderCopy encodeObject:self->_clinicalStatus forKey:@"ClinicalStatus"];
  [coderCopy encodeObject:self->_verificationStatus forKey:@"VerificationStatus"];
  [coderCopy encodeObject:self->_severity forKey:@"Severity"];
  [coderCopy encodeObject:self->_bodySites forKey:@"BodySites"];
}

- (HKConditionRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v43.receiver = self;
  v43.super_class = HKConditionRecord;
  v5 = [(HKMedicalRecord *)&v43 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ConditionCodingCollection"];
    conditionCodingCollection = v5->_conditionCodingCollection;
    v5->_conditionCodingCollection = v6;

    v8 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"CategoriesCodingCollections"];
    categoriesCodingCollections = v5->_categoriesCodingCollections;
    v5->_categoriesCodingCollections = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Asserter"];
    asserter = v5->_asserter;
    v5->_asserter = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Abatement"];
    abatement = v5->_abatement;
    v5->_abatement = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Onset"];
    onset = v5->_onset;
    v5->_onset = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RecordedDate"];
    recordedDate = v5->_recordedDate;
    v5->_recordedDate = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ClinicalStatusCoding"];
    clinicalStatusCoding = v5->_clinicalStatusCoding;
    v5->_clinicalStatusCoding = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VerificationStatusCoding"];
    verificationStatusCoding = v5->_verificationStatusCoding;
    v5->_verificationStatusCoding = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SeverityCodingCollection"];
    severityCodingCollection = v5->_severityCodingCollection;
    v5->_severityCodingCollection = v23;

    v25 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"BodySitesCodingCollections"];
    bodySitesCodingCollections = v5->_bodySitesCodingCollections;
    v5->_bodySitesCodingCollections = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Condition"];
    condition = v5->_condition;
    v5->_condition = v28;

    v30 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"Categories"];
    categories = v5->_categories;
    v5->_categories = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ClinicalStatus"];
    clinicalStatus = v5->_clinicalStatus;
    v5->_clinicalStatus = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VerificationStatus"];
    verificationStatus = v5->_verificationStatus;
    v5->_verificationStatus = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Severity"];
    severity = v5->_severity;
    v5->_severity = v37;

    v39 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v40 = [coderCopy decodeObjectOfClasses:v39 forKey:@"BodySites"];
    bodySites = v5->_bodySites;
    v5->_bodySites = v40;
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
    v106.receiver = self;
    v106.super_class = HKConditionRecord;
    if (![(HKMedicalRecord *)&v106 isEquivalent:v5])
    {
      goto LABEL_84;
    }

    conditionCodingCollection = [(HKConditionRecord *)self conditionCodingCollection];
    conditionCodingCollection2 = [v5 conditionCodingCollection];
    v8 = conditionCodingCollection2;
    if (conditionCodingCollection == conditionCodingCollection2)
    {
    }

    else
    {
      conditionCodingCollection3 = [v5 conditionCodingCollection];
      if (!conditionCodingCollection3)
      {
        goto LABEL_83;
      }

      v10 = conditionCodingCollection3;
      conditionCodingCollection4 = [(HKConditionRecord *)self conditionCodingCollection];
      conditionCodingCollection5 = [v5 conditionCodingCollection];
      v13 = [conditionCodingCollection4 isEqual:conditionCodingCollection5];

      if (!v13)
      {
        goto LABEL_84;
      }
    }

    conditionCodingCollection = [(HKConditionRecord *)self categoriesCodingCollections];
    categoriesCodingCollections = [v5 categoriesCodingCollections];
    v8 = categoriesCodingCollections;
    if (conditionCodingCollection == categoriesCodingCollections)
    {
    }

    else
    {
      categoriesCodingCollections2 = [v5 categoriesCodingCollections];
      if (!categoriesCodingCollections2)
      {
        goto LABEL_83;
      }

      v17 = categoriesCodingCollections2;
      categoriesCodingCollections3 = [(HKConditionRecord *)self categoriesCodingCollections];
      categoriesCodingCollections4 = [v5 categoriesCodingCollections];
      v20 = [categoriesCodingCollections3 isEqualToArray:categoriesCodingCollections4];

      if (!v20)
      {
        goto LABEL_84;
      }
    }

    conditionCodingCollection = [(HKConditionRecord *)self asserter];
    asserter = [v5 asserter];
    v8 = asserter;
    if (conditionCodingCollection == asserter)
    {
    }

    else
    {
      asserter2 = [v5 asserter];
      if (!asserter2)
      {
        goto LABEL_83;
      }

      v23 = asserter2;
      asserter3 = [(HKConditionRecord *)self asserter];
      asserter4 = [v5 asserter];
      v26 = [asserter3 isEqualToString:asserter4];

      if (!v26)
      {
        goto LABEL_84;
      }
    }

    conditionCodingCollection = [(HKConditionRecord *)self abatement];
    abatement = [v5 abatement];
    v8 = abatement;
    if (conditionCodingCollection == abatement)
    {
    }

    else
    {
      abatement2 = [v5 abatement];
      if (!abatement2)
      {
        goto LABEL_83;
      }

      v29 = abatement2;
      abatement3 = [(HKConditionRecord *)self abatement];
      abatement4 = [v5 abatement];
      v32 = [abatement3 isEqual:abatement4];

      if (!v32)
      {
        goto LABEL_84;
      }
    }

    conditionCodingCollection = [(HKConditionRecord *)self onset];
    onset = [v5 onset];
    v8 = onset;
    if (conditionCodingCollection == onset)
    {
    }

    else
    {
      onset2 = [v5 onset];
      if (!onset2)
      {
        goto LABEL_83;
      }

      v35 = onset2;
      onset3 = [(HKConditionRecord *)self onset];
      onset4 = [v5 onset];
      v38 = [onset3 isEqual:onset4];

      if (!v38)
      {
        goto LABEL_84;
      }
    }

    conditionCodingCollection = [(HKConditionRecord *)self recordedDate];
    recordedDate = [v5 recordedDate];
    v8 = recordedDate;
    if (conditionCodingCollection == recordedDate)
    {
    }

    else
    {
      recordedDate2 = [v5 recordedDate];
      if (!recordedDate2)
      {
        goto LABEL_83;
      }

      v41 = recordedDate2;
      recordedDate3 = [(HKConditionRecord *)self recordedDate];
      recordedDate4 = [v5 recordedDate];
      v44 = [recordedDate3 isEqual:recordedDate4];

      if (!v44)
      {
        goto LABEL_84;
      }
    }

    conditionCodingCollection = [(HKConditionRecord *)self clinicalStatusCoding];
    clinicalStatusCoding = [v5 clinicalStatusCoding];
    v8 = clinicalStatusCoding;
    if (conditionCodingCollection == clinicalStatusCoding)
    {
    }

    else
    {
      clinicalStatusCoding2 = [v5 clinicalStatusCoding];
      if (!clinicalStatusCoding2)
      {
        goto LABEL_83;
      }

      v47 = clinicalStatusCoding2;
      clinicalStatusCoding3 = [(HKConditionRecord *)self clinicalStatusCoding];
      clinicalStatusCoding4 = [v5 clinicalStatusCoding];
      v50 = [clinicalStatusCoding3 isEqual:clinicalStatusCoding4];

      if (!v50)
      {
        goto LABEL_84;
      }
    }

    conditionCodingCollection = [(HKConditionRecord *)self verificationStatusCoding];
    verificationStatusCoding = [v5 verificationStatusCoding];
    v8 = verificationStatusCoding;
    if (conditionCodingCollection == verificationStatusCoding)
    {
    }

    else
    {
      verificationStatusCoding2 = [v5 verificationStatusCoding];
      if (!verificationStatusCoding2)
      {
        goto LABEL_83;
      }

      v53 = verificationStatusCoding2;
      verificationStatusCoding3 = [(HKConditionRecord *)self verificationStatusCoding];
      verificationStatusCoding4 = [v5 verificationStatusCoding];
      v56 = [verificationStatusCoding3 isEqual:verificationStatusCoding4];

      if (!v56)
      {
        goto LABEL_84;
      }
    }

    conditionCodingCollection = [(HKConditionRecord *)self severityCodingCollection];
    severityCodingCollection = [v5 severityCodingCollection];
    v8 = severityCodingCollection;
    if (conditionCodingCollection == severityCodingCollection)
    {
    }

    else
    {
      severityCodingCollection2 = [v5 severityCodingCollection];
      if (!severityCodingCollection2)
      {
        goto LABEL_83;
      }

      v59 = severityCodingCollection2;
      severityCodingCollection3 = [(HKConditionRecord *)self severityCodingCollection];
      severityCodingCollection4 = [v5 severityCodingCollection];
      v62 = [severityCodingCollection3 isEqual:severityCodingCollection4];

      if (!v62)
      {
        goto LABEL_84;
      }
    }

    conditionCodingCollection = [(HKConditionRecord *)self bodySitesCodingCollections];
    bodySitesCodingCollections = [v5 bodySitesCodingCollections];
    v8 = bodySitesCodingCollections;
    if (conditionCodingCollection == bodySitesCodingCollections)
    {
    }

    else
    {
      bodySitesCodingCollections2 = [v5 bodySitesCodingCollections];
      if (!bodySitesCodingCollections2)
      {
        goto LABEL_83;
      }

      v65 = bodySitesCodingCollections2;
      bodySitesCodingCollections3 = [(HKConditionRecord *)self bodySitesCodingCollections];
      bodySitesCodingCollections4 = [v5 bodySitesCodingCollections];
      v68 = [bodySitesCodingCollections3 isEqualToArray:bodySitesCodingCollections4];

      if (!v68)
      {
        goto LABEL_84;
      }
    }

    conditionCodingCollection = [(HKConditionRecord *)self condition];
    condition = [v5 condition];
    v8 = condition;
    if (conditionCodingCollection == condition)
    {
    }

    else
    {
      condition2 = [v5 condition];
      if (!condition2)
      {
        goto LABEL_83;
      }

      v71 = condition2;
      condition3 = [(HKConditionRecord *)self condition];
      condition4 = [v5 condition];
      v74 = [condition3 isEqual:condition4];

      if (!v74)
      {
        goto LABEL_84;
      }
    }

    conditionCodingCollection = [(HKConditionRecord *)self categories];
    categories = [v5 categories];
    v8 = categories;
    if (conditionCodingCollection == categories)
    {
    }

    else
    {
      categories2 = [v5 categories];
      if (!categories2)
      {
        goto LABEL_83;
      }

      v77 = categories2;
      categories3 = [(HKConditionRecord *)self categories];
      categories4 = [v5 categories];
      v80 = [categories3 isEqualToArray:categories4];

      if (!v80)
      {
        goto LABEL_84;
      }
    }

    conditionCodingCollection = [(HKConditionRecord *)self clinicalStatus];
    clinicalStatus = [v5 clinicalStatus];
    v8 = clinicalStatus;
    if (conditionCodingCollection == clinicalStatus)
    {
    }

    else
    {
      clinicalStatus2 = [v5 clinicalStatus];
      if (!clinicalStatus2)
      {
        goto LABEL_83;
      }

      v83 = clinicalStatus2;
      clinicalStatus3 = [(HKConditionRecord *)self clinicalStatus];
      clinicalStatus4 = [v5 clinicalStatus];
      v86 = [clinicalStatus3 isEqual:clinicalStatus4];

      if (!v86)
      {
        goto LABEL_84;
      }
    }

    conditionCodingCollection = [(HKConditionRecord *)self verificationStatus];
    verificationStatus = [v5 verificationStatus];
    v8 = verificationStatus;
    if (conditionCodingCollection == verificationStatus)
    {
    }

    else
    {
      verificationStatus2 = [v5 verificationStatus];
      if (!verificationStatus2)
      {
        goto LABEL_83;
      }

      v89 = verificationStatus2;
      verificationStatus3 = [(HKConditionRecord *)self verificationStatus];
      verificationStatus4 = [v5 verificationStatus];
      v92 = [verificationStatus3 isEqual:verificationStatus4];

      if (!v92)
      {
        goto LABEL_84;
      }
    }

    conditionCodingCollection = [(HKConditionRecord *)self severity];
    severity = [v5 severity];
    v8 = severity;
    if (conditionCodingCollection == severity)
    {
    }

    else
    {
      severity2 = [v5 severity];
      if (!severity2)
      {
        goto LABEL_83;
      }

      v95 = severity2;
      severity3 = [(HKConditionRecord *)self severity];
      severity4 = [v5 severity];
      v98 = [severity3 isEqual:severity4];

      if (!v98)
      {
        goto LABEL_84;
      }
    }

    conditionCodingCollection = [(HKConditionRecord *)self bodySites];
    bodySites = [v5 bodySites];
    v8 = bodySites;
    if (conditionCodingCollection == bodySites)
    {

LABEL_88:
      v14 = 1;
      goto LABEL_85;
    }

    bodySites2 = [v5 bodySites];
    if (bodySites2)
    {
      v101 = bodySites2;
      bodySites3 = [(HKConditionRecord *)self bodySites];
      bodySites4 = [v5 bodySites];
      v104 = [bodySites3 isEqualToArray:bodySites4];

      if (v104)
      {
        goto LABEL_88;
      }

LABEL_84:
      v14 = 0;
LABEL_85:

      goto LABEL_86;
    }

LABEL_83:

    goto LABEL_84;
  }

  v14 = 0;
LABEL_86:

  return v14;
}

- (id)clinicalStatusCodingCollection
{
  clinicalStatusCoding = [(HKConditionRecord *)self clinicalStatusCoding];

  if (clinicalStatusCoding)
  {
    clinicalStatusCoding2 = [(HKConditionRecord *)self clinicalStatusCoding];
    v5 = [HKMedicalCodingCollection collectionWithCoding:clinicalStatusCoding2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)verificationStatusCodingCollection
{
  verificationStatusCoding = [(HKConditionRecord *)self verificationStatusCoding];

  if (verificationStatusCoding)
  {
    verificationStatusCoding2 = [(HKConditionRecord *)self verificationStatusCoding];
    v5 = [HKMedicalCodingCollection collectionWithCoding:verificationStatusCoding2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setConditionCodingCollection:(id)collection
{
  v4 = [collection copy];
  conditionCodingCollection = self->_conditionCodingCollection;
  self->_conditionCodingCollection = v4;

  conditionCodingCollection = [(HKConditionRecord *)self conditionCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:conditionCodingCollection];
  condition = self->_condition;
  self->_condition = v6;
}

- (void)_setCategoriesCodingCollections:(id)collections
{
  v4 = [collections copy];
  categoriesCodingCollections = self->_categoriesCodingCollections;
  self->_categoriesCodingCollections = v4;

  categoriesCodingCollections = [(HKConditionRecord *)self categoriesCodingCollections];
  v6 = [categoriesCodingCollections hk_map:&__block_literal_global_128];
  categories = self->_categories;
  self->_categories = v6;
}

- (void)_setAsserter:(id)asserter
{
  v4 = [asserter copy];
  asserter = self->_asserter;
  self->_asserter = v4;

  MEMORY[0x1EEE66BB8](v4, asserter);
}

- (void)_setAbatement:(id)abatement
{
  v4 = [abatement copy];
  abatement = self->_abatement;
  self->_abatement = v4;

  MEMORY[0x1EEE66BB8](v4, abatement);
}

- (void)_setOnset:(id)onset
{
  v4 = [onset copy];
  onset = self->_onset;
  self->_onset = v4;

  MEMORY[0x1EEE66BB8](v4, onset);
}

- (void)_setRecordedDate:(id)date
{
  v4 = [date copy];
  recordedDate = self->_recordedDate;
  self->_recordedDate = v4;

  MEMORY[0x1EEE66BB8](v4, recordedDate);
}

- (void)_setClinicalStatusCoding:(id)coding
{
  v4 = [coding copy];
  clinicalStatusCoding = self->_clinicalStatusCoding;
  self->_clinicalStatusCoding = v4;

  if (self->_clinicalStatusCoding)
  {
    clinicalStatusCodingCollection = [(HKConditionRecord *)self clinicalStatusCodingCollection];
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

- (void)_setVerificationStatusCoding:(id)coding
{
  v4 = [coding copy];
  verificationStatusCoding = self->_verificationStatusCoding;
  self->_verificationStatusCoding = v4;

  if (self->_verificationStatusCoding)
  {
    verificationStatusCodingCollection = [(HKConditionRecord *)self verificationStatusCodingCollection];
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

- (void)_setSeverityCodingCollection:(id)collection
{
  v4 = [collection copy];
  severityCodingCollection = self->_severityCodingCollection;
  self->_severityCodingCollection = v4;

  if (self->_severityCodingCollection)
  {
    severityCodingCollection = [(HKConditionRecord *)self severityCodingCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:severityCodingCollection];
    severity = self->_severity;
    self->_severity = v6;

    v8 = severityCodingCollection;
  }

  else
  {
    v8 = self->_severity;
    self->_severity = 0;
  }
}

- (void)_setBodySitesCodingCollections:(id)collections
{
  v4 = [collections copy];
  bodySitesCodingCollections = self->_bodySitesCodingCollections;
  self->_bodySitesCodingCollections = v4;

  if (self->_bodySitesCodingCollections)
  {
    bodySitesCodingCollections = [(HKConditionRecord *)self bodySitesCodingCollections];
    v6 = [(NSArray *)bodySitesCodingCollections hk_map:&__block_literal_global_126_1];
    bodySites = self->_bodySites;
    self->_bodySites = v6;

    v8 = bodySitesCodingCollections;
  }

  else
  {
    v8 = self->_bodySites;
    self->_bodySites = 0;
  }
}

- (HKConcept)condition
{
  condition = self->_condition;
  if (condition)
  {
    v3 = condition;
  }

  else
  {
    conditionCodingCollection = [(HKConditionRecord *)self conditionCodingCollection];
    v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:conditionCodingCollection];
  }

  return v3;
}

- (void)_setCondition:(id)condition
{
  conditionCopy = condition;
  if (!conditionCopy)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      [HKConditionRecord _setCondition:v5];
    }
  }

  v6 = [conditionCopy copy];
  condition = self->_condition;
  self->_condition = v6;
}

- (NSArray)categories
{
  categories = self->_categories;
  if (categories)
  {
    v3 = categories;
  }

  else
  {
    categoriesCodingCollections = [(HKConditionRecord *)self categoriesCodingCollections];
    v3 = [categoriesCodingCollections hk_map:&__block_literal_global_128_1];
  }

  return v3;
}

- (void)_setCategories:(id)categories
{
  categoriesCopy = categories;
  if (!categoriesCopy)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      [HKConditionRecord _setCategories:v5];
    }
  }

  v6 = [categoriesCopy copy];
  categories = self->_categories;
  self->_categories = v6;
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
      clinicalStatusCodingCollection = [(HKConditionRecord *)self clinicalStatusCodingCollection];
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
      verificationStatusCodingCollection = [(HKConditionRecord *)self verificationStatusCodingCollection];
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

- (HKConcept)severity
{
  if (self->_severityCodingCollection)
  {
    severity = self->_severity;
    if (severity)
    {
      v3 = severity;
    }

    else
    {
      severityCodingCollection = [(HKConditionRecord *)self severityCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:severityCodingCollection];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setSeverity:(id)severity
{
  v4 = [severity copy];
  severity = self->_severity;
  self->_severity = v4;

  MEMORY[0x1EEE66BB8](v4, severity);
}

- (NSArray)bodySites
{
  if (self->_bodySitesCodingCollections)
  {
    bodySites = self->_bodySites;
    if (bodySites)
    {
      v3 = bodySites;
    }

    else
    {
      bodySitesCodingCollections = [(HKConditionRecord *)self bodySitesCodingCollections];
      v3 = [bodySitesCodingCollections hk_map:&__block_literal_global_130_0];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setBodySites:(id)sites
{
  v4 = [sites copy];
  bodySites = self->_bodySites;
  self->_bodySites = v4;

  MEMORY[0x1EEE66BB8](v4, bodySites);
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v13.receiver = self;
  v13.super_class = HKConditionRecord;
  v5 = [(HKMedicalRecord *)&v13 _validateWithConfiguration:configuration.var0, configuration.var1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    if (self->_conditionCodingCollection)
    {
      if (self->_categoriesCodingCollections)
      {
        v8 = 0;
        goto LABEL_10;
      }

      v9 = MEMORY[0x1E696ABC0];
      v10 = objc_opt_class();
      v11 = @"%@: categoriesCodingCollections must not be nil";
    }

    else
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = objc_opt_class();
      v11 = @"%@: conditionCodingCollection must not be nil";
    }

    v7 = [v9 hk_errorForInvalidArgument:@"@" class:v10 selector:a2 format:{v11, self}];
  }

  v8 = v7;
LABEL_10:

  return v8;
}

@end