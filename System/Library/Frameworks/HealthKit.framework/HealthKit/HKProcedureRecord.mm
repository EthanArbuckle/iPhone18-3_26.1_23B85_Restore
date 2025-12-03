@interface HKProcedureRecord
+ (id)_newProcedureRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 procedureCodingCollection:(id)self5 performers:(id)self6 executionStartDate:(id)self7 executionEndDate:(id)self8 notPerformed:(BOOL)self9 statusCoding:(id)coding categoryCodingCollection:(id)codingCollection reasonCodingCollections:(id)collections reasonsNotPerformedCodingCollections:(id)codingCollections outcomeCodingCollection:(id)outcomeCodingCollection complicationsCodingCollections:(id)complicationsCodingCollections followUpsCodingCollections:(id)upsCodingCollections bodySitesCodingCollections:(id)sitesCodingCollections config:(id)config;
+ (id)cachedConceptRelationshipKeyPaths;
+ (id)defaultDisplayString;
+ (id)indexableConceptKeyPaths;
+ (id)procedureRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 country:(id)self2 state:(unint64_t)self3 procedureCodingCollection:(id)self4 performers:(id)self5 executionStartDate:(id)self6 executionEndDate:(id)self7 notPerformed:(BOOL)self8 statusCoding:(id)self9 categoryCodingCollection:(id)codingCollection reasonCodingCollections:(id)collections reasonsNotPerformedCodingCollections:(id)codingCollections outcomeCodingCollection:(id)outcomeCodingCollection complicationsCodingCollections:(id)complicationsCodingCollections followUpsCodingCollections:(id)upsCodingCollections bodySitesCodingCollections:(id)sitesCodingCollections;
- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error;
- (BOOL)isEquivalent:(id)equivalent;
- (HKConcept)category;
- (HKConcept)outcome;
- (HKConcept)procedure;
- (HKConcept)status;
- (HKProcedureRecord)init;
- (HKProcedureRecord)initWithCoder:(id)coder;
- (NSArray)bodySites;
- (NSArray)complications;
- (NSArray)followUps;
- (NSArray)reason;
- (NSArray)reasonsNotPerformed;
- (NSString)description;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)codingsForKeyPath:(id)path error:(id *)error;
- (id)medicalRecordCodings;
- (id)statusCodingCollection;
- (void)_setBodySites:(id)sites;
- (void)_setBodySitesCodingCollections:(id)collections;
- (void)_setCategory:(id)category;
- (void)_setCategoryCodingCollection:(id)collection;
- (void)_setComplications:(id)complications;
- (void)_setComplicationsCodingCollections:(id)collections;
- (void)_setExecutionEndDate:(id)date;
- (void)_setExecutionStartDate:(id)date;
- (void)_setFollowUps:(id)ups;
- (void)_setFollowUpsCodingCollections:(id)collections;
- (void)_setOutcome:(id)outcome;
- (void)_setOutcomeCodingCollection:(id)collection;
- (void)_setPerformers:(id)performers;
- (void)_setProcedure:(id)procedure;
- (void)_setProcedureCodingCollection:(id)collection;
- (void)_setReason:(id)reason;
- (void)_setReasonCodingCollections:(id)collections;
- (void)_setReasonsNotPerformed:(id)performed;
- (void)_setReasonsNotPerformedCodingCollections:(id)collections;
- (void)_setStatus:(id)status;
- (void)_setStatusCoding:(id)coding;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKProcedureRecord

- (id)medicalRecordCodings
{
  procedureCodingCollection = [(HKProcedureRecord *)self procedureCodingCollection];
  codings = [procedureCodingCollection codings];

  return codings;
}

+ (id)defaultDisplayString
{
  v2 = HKHealthKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"UNSPECIFIED_PROCEDURE" value:&stru_1F05FF230 table:@"Localizable-Clinical-Health-Records"];

  return v3;
}

+ (id)indexableConceptKeyPaths
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___HKProcedureRecord;
  v2 = objc_msgSendSuper2(&v5, sel_indexableConceptKeyPaths);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"procedure"];
  [v3 addObject:@"status"];
  [v3 addObject:@"category"];
  [v3 addObject:@"reason"];
  [v3 addObject:@"reasonsNotPerformed"];
  [v3 addObject:@"outcome"];
  [v3 addObject:@"complications"];
  [v3 addObject:@"followUps"];
  [v3 addObject:@"bodySites"];

  return v3;
}

+ (id)cachedConceptRelationshipKeyPaths
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___HKProcedureRecord;
  v2 = objc_msgSendSuper2(&v4, sel_cachedConceptRelationshipKeyPaths);

  return v2;
}

- (id)codingsForKeyPath:(id)path error:(id *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = [HKConceptIndexUtilities firstComponentForKeyPath:pathCopy error:error];
  v8 = v7;
  if (!v7)
  {
    v13 = 0;
    goto LABEL_10;
  }

  if ([v7 isEqualToString:@"procedure"])
  {
    procedureCodingCollection = [(HKProcedureRecord *)self procedureCodingCollection];
    v10 = [HKIndexableObject indexableObjectWithObject:procedureCodingCollection];
    v29[0] = v10;
    v11 = MEMORY[0x1E695DEC8];
    v12 = v29;
LABEL_4:
    v13 = [v11 arrayWithObjects:v12 count:1];
LABEL_8:

LABEL_9:
    goto LABEL_10;
  }

  if ([v8 isEqualToString:@"status"])
  {
    procedureCodingCollection = [(HKProcedureRecord *)self statusCoding];
    v10 = [HKMedicalCodingCollection collectionWithCoding:procedureCodingCollection];
    v14 = [HKIndexableObject indexableObjectWithObject:v10];
    v28 = v14;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];

    goto LABEL_8;
  }

  if ([v8 isEqualToString:@"category"])
  {
    categoryCodingCollection = [(HKProcedureRecord *)self categoryCodingCollection];

    if (categoryCodingCollection)
    {
      procedureCodingCollection = [(HKProcedureRecord *)self categoryCodingCollection];
      v10 = [HKIndexableObject indexableObjectWithObject:procedureCodingCollection];
      v27 = v10;
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v27;
      goto LABEL_4;
    }

    goto LABEL_35;
  }

  if ([v8 isEqualToString:@"reason"])
  {
    reasonCodingCollections = [(HKProcedureRecord *)self reasonCodingCollections];

    if (reasonCodingCollections)
    {
      reasonCodingCollections2 = [(HKProcedureRecord *)self reasonCodingCollections];
LABEL_22:
      procedureCodingCollection = reasonCodingCollections2;
      v13 = [HKConceptIndexUtilities indexedCodingsForCodingCollections:reasonCodingCollections2 context:pathCopy error:error];
      goto LABEL_9;
    }

    goto LABEL_35;
  }

  if ([v8 isEqualToString:@"reasonsNotPerformed"])
  {
    reasonsNotPerformedCodingCollections = [(HKProcedureRecord *)self reasonsNotPerformedCodingCollections];

    if (reasonsNotPerformedCodingCollections)
    {
      reasonCodingCollections2 = [(HKProcedureRecord *)self reasonsNotPerformedCodingCollections];
      goto LABEL_22;
    }

LABEL_35:
    v13 = MEMORY[0x1E695E0F0];
    goto LABEL_10;
  }

  if ([v8 isEqualToString:@"outcome"])
  {
    outcomeCodingCollection = [(HKProcedureRecord *)self outcomeCodingCollection];

    if (outcomeCodingCollection)
    {
      procedureCodingCollection = [(HKProcedureRecord *)self outcomeCodingCollection];
      v10 = [HKIndexableObject indexableObjectWithObject:procedureCodingCollection];
      v26 = v10;
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v26;
      goto LABEL_4;
    }

    goto LABEL_35;
  }

  if ([v8 isEqualToString:@"complications"])
  {
    complicationsCodingCollections = [(HKProcedureRecord *)self complicationsCodingCollections];

    if (complicationsCodingCollections)
    {
      reasonCodingCollections2 = [(HKProcedureRecord *)self complicationsCodingCollections];
      goto LABEL_22;
    }

    goto LABEL_35;
  }

  if ([v8 isEqualToString:@"followUps"])
  {
    followUpsCodingCollections = [(HKProcedureRecord *)self followUpsCodingCollections];

    if (followUpsCodingCollections)
    {
      reasonCodingCollections2 = [(HKProcedureRecord *)self followUpsCodingCollections];
      goto LABEL_22;
    }

    goto LABEL_35;
  }

  if ([v8 isEqualToString:@"bodySites"])
  {
    bodySitesCodingCollections = [(HKProcedureRecord *)self bodySitesCodingCollections];

    if (bodySitesCodingCollections)
    {
      reasonCodingCollections2 = [(HKProcedureRecord *)self bodySitesCodingCollections];
      goto LABEL_22;
    }

    goto LABEL_35;
  }

  v25.receiver = self;
  v25.super_class = HKProcedureRecord;
  v13 = [(HKMedicalRecord *)&v25 codingsForKeyPath:pathCopy error:error];
LABEL_10:

  v15 = *MEMORY[0x1E69E9840];

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
LABEL_8:
    LOBYTE(error) = 0;
    goto LABEL_13;
  }

  if ([v10 isEqualToString:@"procedure"])
  {
    if (HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 1, pathCopy, error))
    {
      error = [conceptsCopy firstObject];
      object = [error object];
      [(HKProcedureRecord *)self _setProcedure:object];
LABEL_12:

      LOBYTE(error) = 1;
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if ([v11 isEqualToString:@"status"])
  {
    if (HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 1, pathCopy, error))
    {
      error = [conceptsCopy firstObject];
      object = [error object];
      [(HKProcedureRecord *)self _setStatus:object];
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (![v11 isEqualToString:@"category"])
  {
    if ([v11 isEqualToString:@"reason"])
    {
      reasonCodingCollections = [(HKProcedureRecord *)self reasonCodingCollections];

      if (reasonCodingCollections)
      {
        reasonCodingCollections2 = [(HKProcedureRecord *)self reasonCodingCollections];
        v18 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", conceptsCopy, [reasonCodingCollections2 count], pathCopy, error);

        LOBYTE(error) = v18 != 0;
        if (v18)
        {
          [(HKProcedureRecord *)self _setReason:v18];
        }

LABEL_22:

        goto LABEL_13;
      }
    }

    else if ([v11 isEqualToString:@"reasonsNotPerformed"])
    {
      reasonsNotPerformedCodingCollections = [(HKProcedureRecord *)self reasonsNotPerformedCodingCollections];

      if (reasonsNotPerformedCodingCollections)
      {
        reasonsNotPerformedCodingCollections2 = [(HKProcedureRecord *)self reasonsNotPerformedCodingCollections];
        v18 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", conceptsCopy, [reasonsNotPerformedCodingCollections2 count], pathCopy, error);

        LOBYTE(error) = v18 != 0;
        if (v18)
        {
          [(HKProcedureRecord *)self _setReasonsNotPerformed:v18];
        }

        goto LABEL_22;
      }
    }

    else
    {
      if ([v11 isEqualToString:@"outcome"])
      {
        v21 = [conceptsCopy count];
        outcomeCodingCollection = [(HKProcedureRecord *)self outcomeCodingCollection];
        LODWORD(error) = HKIndexableObjectCheckCardinalityForIndexRestore(v21, outcomeCodingCollection != 0, pathCopy, error);

        if (!error)
        {
          goto LABEL_13;
        }

        error = [conceptsCopy firstObject];
        object = [error object];
        [(HKProcedureRecord *)self _setOutcome:object];
        goto LABEL_12;
      }

      if ([v11 isEqualToString:@"complications"])
      {
        complicationsCodingCollections = [(HKProcedureRecord *)self complicationsCodingCollections];

        if (complicationsCodingCollections)
        {
          complicationsCodingCollections2 = [(HKProcedureRecord *)self complicationsCodingCollections];
          v18 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", conceptsCopy, [complicationsCodingCollections2 count], pathCopy, error);

          LOBYTE(error) = v18 != 0;
          if (v18)
          {
            [(HKProcedureRecord *)self _setComplications:v18];
          }

          goto LABEL_22;
        }
      }

      else if ([v11 isEqualToString:@"followUps"])
      {
        followUpsCodingCollections = [(HKProcedureRecord *)self followUpsCodingCollections];

        if (followUpsCodingCollections)
        {
          followUpsCodingCollections2 = [(HKProcedureRecord *)self followUpsCodingCollections];
          v18 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", conceptsCopy, [followUpsCodingCollections2 count], pathCopy, error);

          LOBYTE(error) = v18 != 0;
          if (v18)
          {
            [(HKProcedureRecord *)self _setFollowUps:v18];
          }

          goto LABEL_22;
        }
      }

      else
      {
        if (![v11 isEqualToString:@"bodySites"])
        {
          v30.receiver = self;
          v30.super_class = HKProcedureRecord;
          v29 = [(HKMedicalRecord *)&v30 applyConcepts:conceptsCopy forKeyPath:pathCopy error:error];
          goto LABEL_39;
        }

        bodySitesCodingCollections = [(HKProcedureRecord *)self bodySitesCodingCollections];

        if (bodySitesCodingCollections)
        {
          bodySitesCodingCollections2 = [(HKProcedureRecord *)self bodySitesCodingCollections];
          v18 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", conceptsCopy, [bodySitesCodingCollections2 count], pathCopy, error);

          LOBYTE(error) = v18 != 0;
          if (v18)
          {
            [(HKProcedureRecord *)self _setBodySites:v18];
          }

          goto LABEL_22;
        }
      }
    }

    v29 = HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 0, pathCopy, error);
LABEL_39:
    LOBYTE(error) = v29;
    goto LABEL_13;
  }

  v13 = [conceptsCopy count];
  categoryCodingCollection = [(HKProcedureRecord *)self categoryCodingCollection];
  LODWORD(error) = HKIndexableObjectCheckCardinalityForIndexRestore(v13, categoryCodingCollection != 0, pathCopy, error);

  if (error)
  {
    error = [conceptsCopy firstObject];
    object = [error object];
    [(HKProcedureRecord *)self _setCategory:object];
    goto LABEL_12;
  }

LABEL_13:

  return error;
}

+ (id)procedureRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 country:(id)self2 state:(unint64_t)self3 procedureCodingCollection:(id)self4 performers:(id)self5 executionStartDate:(id)self6 executionEndDate:(id)self7 notPerformed:(BOOL)self8 statusCoding:(id)self9 categoryCodingCollection:(id)codingCollection reasonCodingCollections:(id)collections reasonsNotPerformedCodingCollections:(id)codingCollections outcomeCodingCollection:(id)outcomeCodingCollection complicationsCodingCollections:(id)complicationsCodingCollections followUpsCodingCollections:(id)upsCodingCollections bodySitesCodingCollections:(id)sitesCodingCollections
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
  performersCopy = performers;
  startDateCopy = startDate;
  endDateCopy = endDate;
  codingCopy = coding;
  codingCollectionCopy = codingCollection;
  collectionsCopy = collections;
  codingCollectionsCopy = codingCollections;
  outcomeCodingCollectionCopy = outcomeCodingCollection;
  complicationsCodingCollectionsCopy = complicationsCodingCollections;
  upsCodingCollectionsCopy = upsCodingCollections;
  sitesCodingCollectionsCopy = sitesCodingCollections;
  v36 = @"modifiedDate";
  v37 = dateCopy;
  v38 = v37;
  if (endDateCopy)
  {
    v39 = @"executionEndDate";

    dateForUTC = [endDateCopy dateForUTC];

    v36 = v39;
  }

  else
  {
    dateForUTC = v37;
  }

  if (startDateCopy)
  {
    v41 = @"executionStartDate";

    dateForUTC2 = [startDateCopy dateForUTC];

    dateForUTC = dateForUTC2;
    v36 = v41;
  }

  v43 = [HKSemanticDate semanticDateWithKeyPath:v36 date:dateForUTC];
  LOBYTE(v45) = performed;
  v52 = [HKProcedureRecord procedureRecordWithType:typeCopy note:noteCopy enteredInError:errorCopy modifiedDate:v38 originIdentifier:identifierCopy locale:localeCopy extractionVersion:version device:deviceCopy metadata:metadataCopy sortDate:v43 country:countryCopy state:state procedureCodingCollection:collectionCopy performers:performersCopy executionStartDate:startDateCopy executionEndDate:endDateCopy notPerformed:v45 statusCoding:codingCopy categoryCodingCollection:codingCollectionCopy reasonCodingCollections:collectionsCopy reasonsNotPerformedCodingCollections:codingCollectionsCopy outcomeCodingCollection:outcomeCodingCollectionCopy complicationsCodingCollections:complicationsCodingCollectionsCopy followUpsCodingCollections:upsCodingCollectionsCopy bodySitesCodingCollections:sitesCodingCollectionsCopy];

  return v52;
}

+ (id)_newProcedureRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 procedureCodingCollection:(id)self5 performers:(id)self6 executionStartDate:(id)self7 executionEndDate:(id)self8 notPerformed:(BOOL)self9 statusCoding:(id)coding categoryCodingCollection:(id)codingCollection reasonCodingCollections:(id)collections reasonsNotPerformedCodingCollections:(id)codingCollections outcomeCodingCollection:(id)outcomeCodingCollection complicationsCodingCollections:(id)complicationsCodingCollections followUpsCodingCollections:(id)upsCodingCollections bodySitesCodingCollections:(id)sitesCodingCollections config:(id)config
{
  errorCopy = error;
  collectionCopy = collection;
  performersCopy = performers;
  startDateCopy = startDate;
  endDateCopy = endDate;
  codingCopy = coding;
  codingCollectionCopy = codingCollection;
  collectionsCopy = collections;
  codingCollectionsCopy = codingCollections;
  outcomeCodingCollectionCopy = outcomeCodingCollection;
  complicationsCodingCollectionsCopy = complicationsCodingCollections;
  upsCodingCollectionsCopy = upsCodingCollections;
  sitesCodingCollectionsCopy = sitesCodingCollections;
  configCopy = config;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __464__HKProcedureRecord__newProcedureRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_procedureCodingCollection_performers_executionStartDate_executionEndDate_notPerformed_statusCoding_categoryCodingCollection_reasonCodingCollections_reasonsNotPerformedCodingCollections_outcomeCodingCollection_complicationsCodingCollections_followUpsCodingCollections_bodySitesCodingCollections_config___block_invoke;
  aBlock[3] = &unk_1E7384FC0;
  v75 = collectionCopy;
  v76 = performersCopy;
  v77 = startDateCopy;
  v78 = endDateCopy;
  performedCopy = performed;
  v79 = codingCopy;
  v80 = codingCollectionCopy;
  v81 = collectionsCopy;
  v82 = codingCollectionsCopy;
  v83 = outcomeCodingCollectionCopy;
  v84 = complicationsCodingCollectionsCopy;
  v85 = upsCodingCollectionsCopy;
  v86 = sitesCodingCollectionsCopy;
  v87 = configCopy;
  v66 = configCopy;
  v65 = sitesCodingCollectionsCopy;
  v64 = upsCodingCollectionsCopy;
  v63 = complicationsCodingCollectionsCopy;
  v62 = outcomeCodingCollectionCopy;
  v60 = codingCollectionsCopy;
  v58 = collectionsCopy;
  v56 = codingCollectionCopy;
  v55 = codingCopy;
  v53 = endDateCopy;
  v52 = startDateCopy;
  v70 = performersCopy;
  v72 = collectionCopy;
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
  v73.receiver = self;
  v73.super_class = &OBJC_METACLASS___HKProcedureRecord;
  v68 = objc_msgSendSuper2(&v73, sel__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config_, typeCopy, noteCopy, errorCopy, dateCopy, identifierCopy, localeCopy, version, deviceCopy, metadataCopy, sortDateCopy, countryCopy, state, v44);

  return v68;
}

void __464__HKProcedureRecord__newProcedureRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_procedureCodingCollection_performers_executionStartDate_executionEndDate_notPerformed_statusCoding_categoryCodingCollection_reasonCodingCollections_reasonsNotPerformedCodingCollections_outcomeCodingCollection_complicationsCodingCollections_followUpsCodingCollections_bodySitesCodingCollections_config___block_invoke(uint64_t a1, void *a2)
{
  v28 = a2;
  v3 = [*(a1 + 32) copy];
  v4 = v28[22];
  v28[22] = v3;

  v5 = [*(a1 + 40) copy];
  v6 = v28[23];
  v28[23] = v5;

  v7 = [*(a1 + 48) copy];
  v8 = v28[24];
  v28[24] = v7;

  v9 = [*(a1 + 56) copy];
  v10 = v28[25];
  v28[25] = v9;

  *(v28 + 208) = *(a1 + 136);
  v11 = [*(a1 + 64) copy];
  v12 = v28[27];
  v28[27] = v11;

  v13 = [*(a1 + 72) copy];
  v14 = v28[28];
  v28[28] = v13;

  v15 = [*(a1 + 80) copy];
  v16 = v28[29];
  v28[29] = v15;

  v17 = [*(a1 + 88) copy];
  v18 = v28[30];
  v28[30] = v17;

  v19 = [*(a1 + 96) copy];
  v20 = v28[31];
  v28[31] = v19;

  v21 = [*(a1 + 104) copy];
  v22 = v28[32];
  v28[32] = v21;

  v23 = [*(a1 + 112) copy];
  v24 = v28[33];
  v28[33] = v23;

  v25 = [*(a1 + 120) copy];
  v26 = v28[34];
  v28[34] = v25;

  v27 = *(a1 + 128);
  if (v27)
  {
    (*(v27 + 16))(v27, v28);
  }
}

- (HKProcedureRecord)init
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
  v10.super_class = HKProcedureRecord;
  v6 = [(HKSample *)&v10 description];
  followUpsCodingCollections = self->_followUpsCodingCollections;
  v8 = [v3 stringWithFormat:@"<%@:%p super=%@procedureCodingCollection = %@performers = %@executionStartDate = %@executionEndDate = %@notPerformed = %ldstatusCoding = %@categoryCodingCollection = %@reasonCodingCollections = %@reasonsNotPerformedCodingCollections = %@outcomeCodingCollection = %@complicationsCodingCollections = %@followUpsCodingCollections = %@bodySitesCodingCollections = %@>", v5, self, v6, self->_procedureCodingCollection, self->_performers, self->_executionStartDate, self->_executionEndDate, self->_notPerformed, self->_statusCoding, self->_categoryCodingCollection, self->_reasonCodingCollections, self->_reasonsNotPerformedCodingCollections, self->_outcomeCodingCollection, self->_complicationsCodingCollections, followUpsCodingCollections, self->_bodySitesCodingCollections];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKProcedureRecord;
  coderCopy = coder;
  [(HKMedicalRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_procedureCodingCollection forKey:{@"ProcedureCodingCollection", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_performers forKey:@"Performers"];
  [coderCopy encodeObject:self->_executionStartDate forKey:@"ExecutionStartDate"];
  [coderCopy encodeObject:self->_executionEndDate forKey:@"ExecutionEndDate"];
  [coderCopy encodeBool:self->_notPerformed forKey:@"NotPerformed"];
  [coderCopy encodeObject:self->_statusCoding forKey:@"StatusCoding"];
  [coderCopy encodeObject:self->_categoryCodingCollection forKey:@"CategoryCodingCollection"];
  [coderCopy encodeObject:self->_reasonCodingCollections forKey:@"ReasonCodingCollections"];
  [coderCopy encodeObject:self->_reasonsNotPerformedCodingCollections forKey:@"ReasonsNotPerformedCodingCollections"];
  [coderCopy encodeObject:self->_outcomeCodingCollection forKey:@"OutcomeCodingCollection"];
  [coderCopy encodeObject:self->_complicationsCodingCollections forKey:@"ComplicationsCodingCollections"];
  [coderCopy encodeObject:self->_followUpsCodingCollections forKey:@"FollowUpsCodingCollections"];
  [coderCopy encodeObject:self->_bodySitesCodingCollections forKey:@"BodySitesCodingCollections"];
  [coderCopy encodeObject:self->_procedure forKey:@"Procedure"];
  [coderCopy encodeObject:self->_status forKey:@"Status"];
  [coderCopy encodeObject:self->_category forKey:@"Category"];
  [coderCopy encodeObject:self->_reason forKey:@"Reason"];
  [coderCopy encodeObject:self->_reasonsNotPerformed forKey:@"ReasonsNotPerformed"];
  [coderCopy encodeObject:self->_outcome forKey:@"Outcome"];
  [coderCopy encodeObject:self->_complications forKey:@"Complications"];
  [coderCopy encodeObject:self->_followUps forKey:@"FollowUps"];
  [coderCopy encodeObject:self->_bodySites forKey:@"BodySites"];
}

- (HKProcedureRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v60.receiver = self;
  v60.super_class = HKProcedureRecord;
  v5 = [(HKMedicalRecord *)&v60 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProcedureCodingCollection"];
    procedureCodingCollection = v5->_procedureCodingCollection;
    v5->_procedureCodingCollection = v6;

    v8 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Performers"];
    performers = v5->_performers;
    v5->_performers = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ExecutionStartDate"];
    executionStartDate = v5->_executionStartDate;
    v5->_executionStartDate = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ExecutionEndDate"];
    executionEndDate = v5->_executionEndDate;
    v5->_executionEndDate = v13;

    v5->_notPerformed = [coderCopy decodeBoolForKey:@"NotPerformed"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StatusCoding"];
    statusCoding = v5->_statusCoding;
    v5->_statusCoding = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CategoryCodingCollection"];
    categoryCodingCollection = v5->_categoryCodingCollection;
    v5->_categoryCodingCollection = v17;

    v19 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"ReasonCodingCollections"];
    reasonCodingCollections = v5->_reasonCodingCollections;
    v5->_reasonCodingCollections = v20;

    v22 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"ReasonsNotPerformedCodingCollections"];
    reasonsNotPerformedCodingCollections = v5->_reasonsNotPerformedCodingCollections;
    v5->_reasonsNotPerformedCodingCollections = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OutcomeCodingCollection"];
    outcomeCodingCollection = v5->_outcomeCodingCollection;
    v5->_outcomeCodingCollection = v25;

    v27 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"ComplicationsCodingCollections"];
    complicationsCodingCollections = v5->_complicationsCodingCollections;
    v5->_complicationsCodingCollections = v28;

    v30 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"FollowUpsCodingCollections"];
    followUpsCodingCollections = v5->_followUpsCodingCollections;
    v5->_followUpsCodingCollections = v31;

    v33 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"BodySitesCodingCollections"];
    bodySitesCodingCollections = v5->_bodySitesCodingCollections;
    v5->_bodySitesCodingCollections = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Procedure"];
    procedure = v5->_procedure;
    v5->_procedure = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Status"];
    status = v5->_status;
    v5->_status = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Category"];
    category = v5->_category;
    v5->_category = v40;

    v42 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v43 = [coderCopy decodeObjectOfClasses:v42 forKey:@"Reason"];
    reason = v5->_reason;
    v5->_reason = v43;

    v45 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v46 = [coderCopy decodeObjectOfClasses:v45 forKey:@"ReasonsNotPerformed"];
    reasonsNotPerformed = v5->_reasonsNotPerformed;
    v5->_reasonsNotPerformed = v46;

    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Outcome"];
    outcome = v5->_outcome;
    v5->_outcome = v48;

    v50 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v51 = [coderCopy decodeObjectOfClasses:v50 forKey:@"Complications"];
    complications = v5->_complications;
    v5->_complications = v51;

    v53 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v54 = [coderCopy decodeObjectOfClasses:v53 forKey:@"FollowUps"];
    followUps = v5->_followUps;
    v5->_followUps = v54;

    v56 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v57 = [coderCopy decodeObjectOfClasses:v56 forKey:@"BodySites"];
    bodySites = v5->_bodySites;
    v5->_bodySites = v57;
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
    v137.receiver = self;
    v137.super_class = HKProcedureRecord;
    if (![(HKMedicalRecord *)&v137 isEquivalent:v5])
    {
      goto LABEL_110;
    }

    procedureCodingCollection = [(HKProcedureRecord *)self procedureCodingCollection];
    procedureCodingCollection2 = [v5 procedureCodingCollection];
    v8 = procedureCodingCollection2;
    if (procedureCodingCollection == procedureCodingCollection2)
    {
    }

    else
    {
      procedureCodingCollection3 = [v5 procedureCodingCollection];
      if (!procedureCodingCollection3)
      {
        goto LABEL_109;
      }

      v10 = procedureCodingCollection3;
      procedureCodingCollection4 = [(HKProcedureRecord *)self procedureCodingCollection];
      procedureCodingCollection5 = [v5 procedureCodingCollection];
      v13 = [procedureCodingCollection4 isEqual:procedureCodingCollection5];

      if (!v13)
      {
        goto LABEL_110;
      }
    }

    procedureCodingCollection = [(HKProcedureRecord *)self performers];
    performers = [v5 performers];
    v8 = performers;
    if (procedureCodingCollection == performers)
    {
    }

    else
    {
      performers2 = [v5 performers];
      if (!performers2)
      {
        goto LABEL_109;
      }

      v17 = performers2;
      performers3 = [(HKProcedureRecord *)self performers];
      performers4 = [v5 performers];
      v20 = [performers3 isEqualToArray:performers4];

      if (!v20)
      {
        goto LABEL_110;
      }
    }

    procedureCodingCollection = [(HKProcedureRecord *)self executionStartDate];
    executionStartDate = [v5 executionStartDate];
    v8 = executionStartDate;
    if (procedureCodingCollection == executionStartDate)
    {
    }

    else
    {
      executionStartDate2 = [v5 executionStartDate];
      if (!executionStartDate2)
      {
        goto LABEL_109;
      }

      v23 = executionStartDate2;
      executionStartDate3 = [(HKProcedureRecord *)self executionStartDate];
      executionStartDate4 = [v5 executionStartDate];
      v26 = [executionStartDate3 isEqual:executionStartDate4];

      if (!v26)
      {
        goto LABEL_110;
      }
    }

    procedureCodingCollection = [(HKProcedureRecord *)self executionEndDate];
    executionEndDate = [v5 executionEndDate];
    v8 = executionEndDate;
    if (procedureCodingCollection == executionEndDate)
    {
    }

    else
    {
      executionEndDate2 = [v5 executionEndDate];
      if (!executionEndDate2)
      {
        goto LABEL_109;
      }

      v29 = executionEndDate2;
      executionEndDate3 = [(HKProcedureRecord *)self executionEndDate];
      executionEndDate4 = [v5 executionEndDate];
      v32 = [executionEndDate3 isEqual:executionEndDate4];

      if (!v32)
      {
        goto LABEL_110;
      }
    }

    notPerformed = [(HKProcedureRecord *)self notPerformed];
    if (notPerformed != [v5 notPerformed])
    {
      goto LABEL_110;
    }

    procedureCodingCollection = [(HKProcedureRecord *)self statusCoding];
    statusCoding = [v5 statusCoding];
    v8 = statusCoding;
    if (procedureCodingCollection == statusCoding)
    {
    }

    else
    {
      statusCoding2 = [v5 statusCoding];
      if (!statusCoding2)
      {
        goto LABEL_109;
      }

      v36 = statusCoding2;
      statusCoding3 = [(HKProcedureRecord *)self statusCoding];
      statusCoding4 = [v5 statusCoding];
      v39 = [statusCoding3 isEqual:statusCoding4];

      if (!v39)
      {
        goto LABEL_110;
      }
    }

    procedureCodingCollection = [(HKProcedureRecord *)self categoryCodingCollection];
    categoryCodingCollection = [v5 categoryCodingCollection];
    v8 = categoryCodingCollection;
    if (procedureCodingCollection == categoryCodingCollection)
    {
    }

    else
    {
      categoryCodingCollection2 = [v5 categoryCodingCollection];
      if (!categoryCodingCollection2)
      {
        goto LABEL_109;
      }

      v42 = categoryCodingCollection2;
      categoryCodingCollection3 = [(HKProcedureRecord *)self categoryCodingCollection];
      categoryCodingCollection4 = [v5 categoryCodingCollection];
      v45 = [categoryCodingCollection3 isEqual:categoryCodingCollection4];

      if (!v45)
      {
        goto LABEL_110;
      }
    }

    procedureCodingCollection = [(HKProcedureRecord *)self reasonCodingCollections];
    reasonCodingCollections = [v5 reasonCodingCollections];
    v8 = reasonCodingCollections;
    if (procedureCodingCollection == reasonCodingCollections)
    {
    }

    else
    {
      reasonCodingCollections2 = [v5 reasonCodingCollections];
      if (!reasonCodingCollections2)
      {
        goto LABEL_109;
      }

      v48 = reasonCodingCollections2;
      reasonCodingCollections3 = [(HKProcedureRecord *)self reasonCodingCollections];
      reasonCodingCollections4 = [v5 reasonCodingCollections];
      v51 = [reasonCodingCollections3 isEqualToArray:reasonCodingCollections4];

      if (!v51)
      {
        goto LABEL_110;
      }
    }

    procedureCodingCollection = [(HKProcedureRecord *)self reasonsNotPerformedCodingCollections];
    reasonsNotPerformedCodingCollections = [v5 reasonsNotPerformedCodingCollections];
    v8 = reasonsNotPerformedCodingCollections;
    if (procedureCodingCollection == reasonsNotPerformedCodingCollections)
    {
    }

    else
    {
      reasonsNotPerformedCodingCollections2 = [v5 reasonsNotPerformedCodingCollections];
      if (!reasonsNotPerformedCodingCollections2)
      {
        goto LABEL_109;
      }

      v54 = reasonsNotPerformedCodingCollections2;
      reasonsNotPerformedCodingCollections3 = [(HKProcedureRecord *)self reasonsNotPerformedCodingCollections];
      reasonsNotPerformedCodingCollections4 = [v5 reasonsNotPerformedCodingCollections];
      v57 = [reasonsNotPerformedCodingCollections3 isEqualToArray:reasonsNotPerformedCodingCollections4];

      if (!v57)
      {
        goto LABEL_110;
      }
    }

    procedureCodingCollection = [(HKProcedureRecord *)self outcomeCodingCollection];
    outcomeCodingCollection = [v5 outcomeCodingCollection];
    v8 = outcomeCodingCollection;
    if (procedureCodingCollection == outcomeCodingCollection)
    {
    }

    else
    {
      outcomeCodingCollection2 = [v5 outcomeCodingCollection];
      if (!outcomeCodingCollection2)
      {
        goto LABEL_109;
      }

      v60 = outcomeCodingCollection2;
      outcomeCodingCollection3 = [(HKProcedureRecord *)self outcomeCodingCollection];
      outcomeCodingCollection4 = [v5 outcomeCodingCollection];
      v63 = [outcomeCodingCollection3 isEqual:outcomeCodingCollection4];

      if (!v63)
      {
        goto LABEL_110;
      }
    }

    procedureCodingCollection = [(HKProcedureRecord *)self complicationsCodingCollections];
    complicationsCodingCollections = [v5 complicationsCodingCollections];
    v8 = complicationsCodingCollections;
    if (procedureCodingCollection == complicationsCodingCollections)
    {
    }

    else
    {
      complicationsCodingCollections2 = [v5 complicationsCodingCollections];
      if (!complicationsCodingCollections2)
      {
        goto LABEL_109;
      }

      v66 = complicationsCodingCollections2;
      complicationsCodingCollections3 = [(HKProcedureRecord *)self complicationsCodingCollections];
      complicationsCodingCollections4 = [v5 complicationsCodingCollections];
      v69 = [complicationsCodingCollections3 isEqualToArray:complicationsCodingCollections4];

      if (!v69)
      {
        goto LABEL_110;
      }
    }

    procedureCodingCollection = [(HKProcedureRecord *)self followUpsCodingCollections];
    followUpsCodingCollections = [v5 followUpsCodingCollections];
    v8 = followUpsCodingCollections;
    if (procedureCodingCollection == followUpsCodingCollections)
    {
    }

    else
    {
      followUpsCodingCollections2 = [v5 followUpsCodingCollections];
      if (!followUpsCodingCollections2)
      {
        goto LABEL_109;
      }

      v72 = followUpsCodingCollections2;
      followUpsCodingCollections3 = [(HKProcedureRecord *)self followUpsCodingCollections];
      followUpsCodingCollections4 = [v5 followUpsCodingCollections];
      v75 = [followUpsCodingCollections3 isEqualToArray:followUpsCodingCollections4];

      if (!v75)
      {
        goto LABEL_110;
      }
    }

    procedureCodingCollection = [(HKProcedureRecord *)self bodySitesCodingCollections];
    bodySitesCodingCollections = [v5 bodySitesCodingCollections];
    v8 = bodySitesCodingCollections;
    if (procedureCodingCollection == bodySitesCodingCollections)
    {
    }

    else
    {
      bodySitesCodingCollections2 = [v5 bodySitesCodingCollections];
      if (!bodySitesCodingCollections2)
      {
        goto LABEL_109;
      }

      v78 = bodySitesCodingCollections2;
      bodySitesCodingCollections3 = [(HKProcedureRecord *)self bodySitesCodingCollections];
      bodySitesCodingCollections4 = [v5 bodySitesCodingCollections];
      v81 = [bodySitesCodingCollections3 isEqualToArray:bodySitesCodingCollections4];

      if (!v81)
      {
        goto LABEL_110;
      }
    }

    procedureCodingCollection = [(HKProcedureRecord *)self procedure];
    procedure = [v5 procedure];
    v8 = procedure;
    if (procedureCodingCollection == procedure)
    {
    }

    else
    {
      procedure2 = [v5 procedure];
      if (!procedure2)
      {
        goto LABEL_109;
      }

      v84 = procedure2;
      procedure3 = [(HKProcedureRecord *)self procedure];
      procedure4 = [v5 procedure];
      v87 = [procedure3 isEqual:procedure4];

      if (!v87)
      {
        goto LABEL_110;
      }
    }

    procedureCodingCollection = [(HKProcedureRecord *)self status];
    status = [v5 status];
    v8 = status;
    if (procedureCodingCollection == status)
    {
    }

    else
    {
      status2 = [v5 status];
      if (!status2)
      {
        goto LABEL_109;
      }

      v90 = status2;
      status3 = [(HKProcedureRecord *)self status];
      status4 = [v5 status];
      v93 = [status3 isEqual:status4];

      if (!v93)
      {
        goto LABEL_110;
      }
    }

    procedureCodingCollection = [(HKProcedureRecord *)self category];
    category = [v5 category];
    v8 = category;
    if (procedureCodingCollection == category)
    {
    }

    else
    {
      category2 = [v5 category];
      if (!category2)
      {
        goto LABEL_109;
      }

      v96 = category2;
      category3 = [(HKProcedureRecord *)self category];
      category4 = [v5 category];
      v99 = [category3 isEqual:category4];

      if (!v99)
      {
        goto LABEL_110;
      }
    }

    procedureCodingCollection = [(HKProcedureRecord *)self reason];
    reason = [v5 reason];
    v8 = reason;
    if (procedureCodingCollection == reason)
    {
    }

    else
    {
      reason2 = [v5 reason];
      if (!reason2)
      {
        goto LABEL_109;
      }

      v102 = reason2;
      reason3 = [(HKProcedureRecord *)self reason];
      reason4 = [v5 reason];
      v105 = [reason3 isEqualToArray:reason4];

      if (!v105)
      {
        goto LABEL_110;
      }
    }

    procedureCodingCollection = [(HKProcedureRecord *)self reasonsNotPerformed];
    reasonsNotPerformed = [v5 reasonsNotPerformed];
    v8 = reasonsNotPerformed;
    if (procedureCodingCollection == reasonsNotPerformed)
    {
    }

    else
    {
      reasonsNotPerformed2 = [v5 reasonsNotPerformed];
      if (!reasonsNotPerformed2)
      {
        goto LABEL_109;
      }

      v108 = reasonsNotPerformed2;
      reasonsNotPerformed3 = [(HKProcedureRecord *)self reasonsNotPerformed];
      reasonsNotPerformed4 = [v5 reasonsNotPerformed];
      v111 = [reasonsNotPerformed3 isEqualToArray:reasonsNotPerformed4];

      if (!v111)
      {
        goto LABEL_110;
      }
    }

    procedureCodingCollection = [(HKProcedureRecord *)self outcome];
    outcome = [v5 outcome];
    v8 = outcome;
    if (procedureCodingCollection == outcome)
    {
    }

    else
    {
      outcome2 = [v5 outcome];
      if (!outcome2)
      {
        goto LABEL_109;
      }

      v114 = outcome2;
      outcome3 = [(HKProcedureRecord *)self outcome];
      outcome4 = [v5 outcome];
      v117 = [outcome3 isEqual:outcome4];

      if (!v117)
      {
        goto LABEL_110;
      }
    }

    procedureCodingCollection = [(HKProcedureRecord *)self complications];
    complications = [v5 complications];
    v8 = complications;
    if (procedureCodingCollection == complications)
    {
    }

    else
    {
      complications2 = [v5 complications];
      if (!complications2)
      {
        goto LABEL_109;
      }

      v120 = complications2;
      complications3 = [(HKProcedureRecord *)self complications];
      complications4 = [v5 complications];
      v123 = [complications3 isEqualToArray:complications4];

      if (!v123)
      {
        goto LABEL_110;
      }
    }

    procedureCodingCollection = [(HKProcedureRecord *)self followUps];
    followUps = [v5 followUps];
    v8 = followUps;
    if (procedureCodingCollection == followUps)
    {
    }

    else
    {
      followUps2 = [v5 followUps];
      if (!followUps2)
      {
        goto LABEL_109;
      }

      v126 = followUps2;
      followUps3 = [(HKProcedureRecord *)self followUps];
      followUps4 = [v5 followUps];
      v129 = [followUps3 isEqualToArray:followUps4];

      if (!v129)
      {
        goto LABEL_110;
      }
    }

    procedureCodingCollection = [(HKProcedureRecord *)self bodySites];
    bodySites = [v5 bodySites];
    v8 = bodySites;
    if (procedureCodingCollection == bodySites)
    {

LABEL_114:
      v14 = 1;
      goto LABEL_111;
    }

    bodySites2 = [v5 bodySites];
    if (bodySites2)
    {
      v132 = bodySites2;
      bodySites3 = [(HKProcedureRecord *)self bodySites];
      bodySites4 = [v5 bodySites];
      v135 = [bodySites3 isEqualToArray:bodySites4];

      if (v135)
      {
        goto LABEL_114;
      }

LABEL_110:
      v14 = 0;
LABEL_111:

      goto LABEL_112;
    }

LABEL_109:

    goto LABEL_110;
  }

  v14 = 0;
LABEL_112:

  return v14;
}

- (id)statusCodingCollection
{
  statusCoding = [(HKProcedureRecord *)self statusCoding];
  v3 = [HKMedicalCodingCollection collectionWithCoding:statusCoding];

  return v3;
}

- (void)_setProcedureCodingCollection:(id)collection
{
  v4 = [collection copy];
  procedureCodingCollection = self->_procedureCodingCollection;
  self->_procedureCodingCollection = v4;

  procedureCodingCollection = [(HKProcedureRecord *)self procedureCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:procedureCodingCollection];
  procedure = self->_procedure;
  self->_procedure = v6;
}

- (void)_setPerformers:(id)performers
{
  v4 = [performers copy];
  performers = self->_performers;
  self->_performers = v4;

  MEMORY[0x1EEE66BB8](v4, performers);
}

- (void)_setExecutionStartDate:(id)date
{
  v4 = [date copy];
  executionStartDate = self->_executionStartDate;
  self->_executionStartDate = v4;

  MEMORY[0x1EEE66BB8](v4, executionStartDate);
}

- (void)_setExecutionEndDate:(id)date
{
  v4 = [date copy];
  executionEndDate = self->_executionEndDate;
  self->_executionEndDate = v4;

  MEMORY[0x1EEE66BB8](v4, executionEndDate);
}

- (void)_setStatusCoding:(id)coding
{
  v4 = [coding copy];
  statusCoding = self->_statusCoding;
  self->_statusCoding = v4;

  statusCodingCollection = [(HKProcedureRecord *)self statusCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:statusCodingCollection];
  status = self->_status;
  self->_status = v6;
}

- (void)_setCategoryCodingCollection:(id)collection
{
  v4 = [collection copy];
  categoryCodingCollection = self->_categoryCodingCollection;
  self->_categoryCodingCollection = v4;

  if (self->_categoryCodingCollection)
  {
    categoryCodingCollection = [(HKProcedureRecord *)self categoryCodingCollection];
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

- (void)_setReasonCodingCollections:(id)collections
{
  v4 = [collections copy];
  reasonCodingCollections = self->_reasonCodingCollections;
  self->_reasonCodingCollections = v4;

  if (self->_reasonCodingCollections)
  {
    reasonCodingCollections = [(HKProcedureRecord *)self reasonCodingCollections];
    v6 = [(NSArray *)reasonCodingCollections hk_map:&__block_literal_global_133];
    reason = self->_reason;
    self->_reason = v6;

    v8 = reasonCodingCollections;
  }

  else
  {
    v8 = self->_reason;
    self->_reason = 0;
  }
}

- (void)_setReasonsNotPerformedCodingCollections:(id)collections
{
  v4 = [collections copy];
  reasonsNotPerformedCodingCollections = self->_reasonsNotPerformedCodingCollections;
  self->_reasonsNotPerformedCodingCollections = v4;

  if (self->_reasonsNotPerformedCodingCollections)
  {
    reasonsNotPerformedCodingCollections = [(HKProcedureRecord *)self reasonsNotPerformedCodingCollections];
    v6 = [(NSArray *)reasonsNotPerformedCodingCollections hk_map:&__block_literal_global_161_1];
    reasonsNotPerformed = self->_reasonsNotPerformed;
    self->_reasonsNotPerformed = v6;

    v8 = reasonsNotPerformedCodingCollections;
  }

  else
  {
    v8 = self->_reasonsNotPerformed;
    self->_reasonsNotPerformed = 0;
  }
}

- (void)_setOutcomeCodingCollection:(id)collection
{
  v4 = [collection copy];
  outcomeCodingCollection = self->_outcomeCodingCollection;
  self->_outcomeCodingCollection = v4;

  if (self->_outcomeCodingCollection)
  {
    outcomeCodingCollection = [(HKProcedureRecord *)self outcomeCodingCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:outcomeCodingCollection];
    outcome = self->_outcome;
    self->_outcome = v6;

    v8 = outcomeCodingCollection;
  }

  else
  {
    v8 = self->_outcome;
    self->_outcome = 0;
  }
}

- (void)_setComplicationsCodingCollections:(id)collections
{
  v4 = [collections copy];
  complicationsCodingCollections = self->_complicationsCodingCollections;
  self->_complicationsCodingCollections = v4;

  if (self->_complicationsCodingCollections)
  {
    complicationsCodingCollections = [(HKProcedureRecord *)self complicationsCodingCollections];
    v6 = [(NSArray *)complicationsCodingCollections hk_map:&__block_literal_global_163_0];
    complications = self->_complications;
    self->_complications = v6;

    v8 = complicationsCodingCollections;
  }

  else
  {
    v8 = self->_complications;
    self->_complications = 0;
  }
}

- (void)_setFollowUpsCodingCollections:(id)collections
{
  v4 = [collections copy];
  followUpsCodingCollections = self->_followUpsCodingCollections;
  self->_followUpsCodingCollections = v4;

  if (self->_followUpsCodingCollections)
  {
    followUpsCodingCollections = [(HKProcedureRecord *)self followUpsCodingCollections];
    v6 = [(NSArray *)followUpsCodingCollections hk_map:&__block_literal_global_165_0];
    followUps = self->_followUps;
    self->_followUps = v6;

    v8 = followUpsCodingCollections;
  }

  else
  {
    v8 = self->_followUps;
    self->_followUps = 0;
  }
}

- (void)_setBodySitesCodingCollections:(id)collections
{
  v4 = [collections copy];
  bodySitesCodingCollections = self->_bodySitesCodingCollections;
  self->_bodySitesCodingCollections = v4;

  if (self->_bodySitesCodingCollections)
  {
    bodySitesCodingCollections = [(HKProcedureRecord *)self bodySitesCodingCollections];
    v6 = [(NSArray *)bodySitesCodingCollections hk_map:&__block_literal_global_167];
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

- (HKConcept)procedure
{
  procedure = self->_procedure;
  if (procedure)
  {
    v3 = procedure;
  }

  else
  {
    procedureCodingCollection = [(HKProcedureRecord *)self procedureCodingCollection];
    v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:procedureCodingCollection];
  }

  return v3;
}

- (void)_setProcedure:(id)procedure
{
  procedureCopy = procedure;
  if (!procedureCopy)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      [HKProcedureRecord _setProcedure:v5];
    }
  }

  v6 = [procedureCopy copy];
  procedure = self->_procedure;
  self->_procedure = v6;
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
    statusCodingCollection = [(HKProcedureRecord *)self statusCodingCollection];
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
      [HKProcedureRecord _setStatus:v5];
    }
  }

  v6 = [statusCopy copy];
  status = self->_status;
  self->_status = v6;
}

- (HKConcept)category
{
  if (self->_categoryCodingCollection)
  {
    category = self->_category;
    if (category)
    {
      v3 = category;
    }

    else
    {
      categoryCodingCollection = [(HKProcedureRecord *)self categoryCodingCollection];
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
      reasonCodingCollections = [(HKProcedureRecord *)self reasonCodingCollections];
      v3 = [reasonCodingCollections hk_map:&__block_literal_global_169_1];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setReason:(id)reason
{
  v4 = [reason copy];
  reason = self->_reason;
  self->_reason = v4;

  MEMORY[0x1EEE66BB8](v4, reason);
}

- (NSArray)reasonsNotPerformed
{
  if (self->_reasonsNotPerformedCodingCollections)
  {
    reasonsNotPerformed = self->_reasonsNotPerformed;
    if (reasonsNotPerformed)
    {
      v3 = reasonsNotPerformed;
    }

    else
    {
      reasonsNotPerformedCodingCollections = [(HKProcedureRecord *)self reasonsNotPerformedCodingCollections];
      v3 = [reasonsNotPerformedCodingCollections hk_map:&__block_literal_global_171];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setReasonsNotPerformed:(id)performed
{
  v4 = [performed copy];
  reasonsNotPerformed = self->_reasonsNotPerformed;
  self->_reasonsNotPerformed = v4;

  MEMORY[0x1EEE66BB8](v4, reasonsNotPerformed);
}

- (HKConcept)outcome
{
  if (self->_outcomeCodingCollection)
  {
    outcome = self->_outcome;
    if (outcome)
    {
      v3 = outcome;
    }

    else
    {
      outcomeCodingCollection = [(HKProcedureRecord *)self outcomeCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:outcomeCodingCollection];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setOutcome:(id)outcome
{
  v4 = [outcome copy];
  outcome = self->_outcome;
  self->_outcome = v4;

  MEMORY[0x1EEE66BB8](v4, outcome);
}

- (NSArray)complications
{
  if (self->_complicationsCodingCollections)
  {
    complications = self->_complications;
    if (complications)
    {
      v3 = complications;
    }

    else
    {
      complicationsCodingCollections = [(HKProcedureRecord *)self complicationsCodingCollections];
      v3 = [complicationsCodingCollections hk_map:&__block_literal_global_173_0];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setComplications:(id)complications
{
  v4 = [complications copy];
  complications = self->_complications;
  self->_complications = v4;

  MEMORY[0x1EEE66BB8](v4, complications);
}

- (NSArray)followUps
{
  if (self->_followUpsCodingCollections)
  {
    followUps = self->_followUps;
    if (followUps)
    {
      v3 = followUps;
    }

    else
    {
      followUpsCodingCollections = [(HKProcedureRecord *)self followUpsCodingCollections];
      v3 = [followUpsCodingCollections hk_map:&__block_literal_global_175];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setFollowUps:(id)ups
{
  v4 = [ups copy];
  followUps = self->_followUps;
  self->_followUps = v4;

  MEMORY[0x1EEE66BB8](v4, followUps);
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
      bodySitesCodingCollections = [(HKProcedureRecord *)self bodySitesCodingCollections];
      v3 = [bodySitesCodingCollections hk_map:&__block_literal_global_177_0];
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
  v13.super_class = HKProcedureRecord;
  v5 = [(HKMedicalRecord *)&v13 _validateWithConfiguration:configuration.var0, configuration.var1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    if (self->_procedureCodingCollection)
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
      v11 = @"%@: procedureCodingCollection must not be nil";
    }

    v7 = [v9 hk_errorForInvalidArgument:@"@" class:v10 selector:a2 format:{v11, self}];
  }

  v8 = v7;
LABEL_10:

  return v8;
}

@end