@interface HKDiagnosticTestResult
+ (id)_newDiagnosticTestResultWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 diagnosticTestCodingCollection:(id)self5 value:(id)self6 referenceRanges:(id)self7 effectiveStartDate:(id)self8 category:(id)self9 categoriesCodingCollections:(id)collections issueDate:(id)issueDate effectiveEndDate:(id)endDate statusCoding:(id)coding interpretationCodingCollections:(id)codingCollections comments:(id)comments bodySiteCodingCollection:(id)codingCollection methodCodingCollection:(id)methodCodingCollection performers:(id)performers referenceRangeStatus:(int64_t)status config:(id)type0;
+ (id)cachedConceptRelationshipKeyPaths;
+ (id)defaultDisplayString;
+ (id)diagnosticTestResultWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 country:(id)self2 state:(unint64_t)self3 diagnosticTestCodingCollection:(id)self4 value:(id)self5 referenceRanges:(id)self6 effectiveStartDate:(id)self7 category:(id)self8 categoriesCodingCollections:(id)self9 issueDate:(id)issueDate effectiveEndDate:(id)endDate statusCoding:(id)coding interpretationCodingCollections:(id)codingCollections comments:(id)comments bodySiteCodingCollection:(id)codingCollection methodCodingCollection:(id)methodCodingCollection performers:(id)performers referenceRangeStatus:(int64_t)status;
+ (id)indexableConceptKeyPaths;
- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error;
- (BOOL)isEquivalent:(id)equivalent;
- (HKConcept)bodySite;
- (HKConcept)diagnosticTest;
- (HKConcept)method;
- (HKConcept)status;
- (HKDiagnosticTestResult)init;
- (HKDiagnosticTestResult)initWithCoder:(id)coder;
- (NSArray)categories;
- (NSArray)interpretation;
- (NSString)description;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)codingsForKeyPath:(id)path error:(id *)error;
- (id)medicalRecordCodings;
- (id)statusCodingCollection;
- (int64_t)recordCategoryType;
- (void)_setBodySite:(id)site;
- (void)_setBodySiteCodingCollection:(id)collection;
- (void)_setCategories:(id)categories;
- (void)_setCategoriesCodingCollections:(id)collections;
- (void)_setCategory:(id)category;
- (void)_setComments:(id)comments;
- (void)_setDiagnosticTest:(id)test;
- (void)_setDiagnosticTestCodingCollection:(id)collection;
- (void)_setEffectiveEndDate:(id)date;
- (void)_setEffectiveStartDate:(id)date;
- (void)_setInterpretation:(id)interpretation;
- (void)_setInterpretationCodingCollections:(id)collections;
- (void)_setIssueDate:(id)date;
- (void)_setMethod:(id)method;
- (void)_setMethodCodingCollection:(id)collection;
- (void)_setPerformers:(id)performers;
- (void)_setReferenceRanges:(id)ranges;
- (void)_setStatus:(id)status;
- (void)_setStatusCoding:(id)coding;
- (void)_setValue:(id)value;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKDiagnosticTestResult

- (id)medicalRecordCodings
{
  diagnosticTestCodingCollection = [(HKDiagnosticTestResult *)self diagnosticTestCodingCollection];
  codings = [diagnosticTestCodingCollection codings];

  return codings;
}

+ (id)defaultDisplayString
{
  v2 = HKHealthKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"UNSPECIFIED_DIAGNOSTIC_TEST_RESULT" value:&stru_1F05FF230 table:@"Localizable-Clinical-Health-Records"];

  return v3;
}

- (int64_t)recordCategoryType
{
  category = [(HKDiagnosticTestResult *)self category];
  v3 = HKDiagnosticTestResultCategoryFromNSString(category);

  v4 = 3;
  if (v3 != @"vital-signs")
  {
    v4 = 0;
  }

  if (v3 == @"laboratory")
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

+ (id)diagnosticTestResultWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 country:(id)self2 state:(unint64_t)self3 diagnosticTestCodingCollection:(id)self4 value:(id)self5 referenceRanges:(id)self6 effectiveStartDate:(id)self7 category:(id)self8 categoriesCodingCollections:(id)self9 issueDate:(id)issueDate effectiveEndDate:(id)endDate statusCoding:(id)coding interpretationCodingCollections:(id)codingCollections comments:(id)comments bodySiteCodingCollection:(id)codingCollection methodCodingCollection:(id)methodCodingCollection performers:(id)performers referenceRangeStatus:(int64_t)status
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
  valueCopy = value;
  rangesCopy = ranges;
  startDateCopy = startDate;
  categoryCopy = category;
  collectionsCopy = collections;
  issueDateCopy = issueDate;
  endDateCopy = endDate;
  codingCopy = coding;
  codingCollectionsCopy = codingCollections;
  commentsCopy = comments;
  codingCollectionCopy = codingCollection;
  methodCodingCollectionCopy = methodCodingCollection;
  performersCopy = performers;
  v38 = @"modifiedDate";
  v39 = dateCopy;
  v40 = issueDateCopy;
  v41 = v39;
  v42 = endDateCopy;
  if (v40)
  {
    v43 = @"issueDate";

    dateForUTC = [v40 dateForUTC];

    v38 = v43;
    endDateCopy = v42;
    if (!v42)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dateForUTC = v39;
  if (endDateCopy)
  {
LABEL_3:
    v45 = @"effectiveEndDate";

    dateForUTC2 = [endDateCopy dateForUTC];

    dateForUTC = dateForUTC2;
    v38 = v45;
  }

LABEL_4:
  if (startDateCopy)
  {
    v47 = @"effectiveStartDate";

    dateForUTC3 = [startDateCopy dateForUTC];

    dateForUTC = dateForUTC3;
    v38 = v47;
  }

  v49 = startDateCopy;
  v52 = startDateCopy;
  v50 = [HKSemanticDate semanticDateWithKeyPath:v38 date:dateForUTC];
  v60 = [HKDiagnosticTestResult diagnosticTestResultWithType:typeCopy note:noteCopy enteredInError:errorCopy modifiedDate:v41 originIdentifier:identifierCopy locale:localeCopy extractionVersion:version device:deviceCopy metadata:metadataCopy sortDate:v50 country:countryCopy state:state diagnosticTestCodingCollection:collectionCopy value:valueCopy referenceRanges:rangesCopy effectiveStartDate:v49 category:categoryCopy categoriesCodingCollections:collectionsCopy issueDate:v40 effectiveEndDate:v42 statusCoding:codingCopy interpretationCodingCollections:codingCollectionsCopy comments:commentsCopy bodySiteCodingCollection:codingCollectionCopy methodCodingCollection:methodCodingCollectionCopy performers:performersCopy referenceRangeStatus:status];

  return v60;
}

+ (id)_newDiagnosticTestResultWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 diagnosticTestCodingCollection:(id)self5 value:(id)self6 referenceRanges:(id)self7 effectiveStartDate:(id)self8 category:(id)self9 categoriesCodingCollections:(id)collections issueDate:(id)issueDate effectiveEndDate:(id)endDate statusCoding:(id)coding interpretationCodingCollections:(id)codingCollections comments:(id)comments bodySiteCodingCollection:(id)codingCollection methodCodingCollection:(id)methodCodingCollection performers:(id)performers referenceRangeStatus:(int64_t)status config:(id)type0
{
  errorCopy = error;
  collectionCopy = collection;
  valueCopy = value;
  rangesCopy = ranges;
  startDateCopy = startDate;
  categoryCopy = category;
  collectionsCopy = collections;
  issueDateCopy = issueDate;
  endDateCopy = endDate;
  codingCopy = coding;
  codingCollectionsCopy = codingCollections;
  commentsCopy = comments;
  codingCollectionCopy = codingCollection;
  methodCodingCollectionCopy = methodCodingCollection;
  performersCopy = performers;
  configCopy = config;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __450__HKDiagnosticTestResult__newDiagnosticTestResultWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_diagnosticTestCodingCollection_value_referenceRanges_effectiveStartDate_category_categoriesCodingCollections_issueDate_effectiveEndDate_statusCoding_interpretationCodingCollections_comments_bodySiteCodingCollection_methodCodingCollection_performers_referenceRangeStatus_config___block_invoke;
  aBlock[3] = &unk_1E737FF50;
  v81 = collectionCopy;
  v82 = valueCopy;
  v83 = rangesCopy;
  v84 = startDateCopy;
  v85 = categoryCopy;
  v86 = collectionsCopy;
  v87 = issueDateCopy;
  v88 = endDateCopy;
  v89 = codingCopy;
  v90 = codingCollectionsCopy;
  v91 = commentsCopy;
  v92 = codingCollectionCopy;
  v93 = methodCodingCollectionCopy;
  v94 = performersCopy;
  v95 = configCopy;
  statusCopy = status;
  v68 = configCopy;
  v67 = performersCopy;
  v66 = methodCodingCollectionCopy;
  v65 = codingCollectionCopy;
  v64 = commentsCopy;
  v63 = codingCollectionsCopy;
  v62 = codingCopy;
  v61 = endDateCopy;
  v60 = issueDateCopy;
  v59 = collectionsCopy;
  v58 = categoryCopy;
  v72 = startDateCopy;
  v74 = rangesCopy;
  v76 = valueCopy;
  v78 = collectionCopy;
  countryCopy = country;
  sortDateCopy = sortDate;
  metadataCopy = metadata;
  deviceCopy = device;
  localeCopy = locale;
  identifierCopy = identifier;
  dateCopy = date;
  noteCopy = note;
  typeCopy = type;
  v49 = _Block_copy(aBlock);
  v79.receiver = self;
  v79.super_class = &OBJC_METACLASS___HKDiagnosticTestResult;
  v70 = objc_msgSendSuper2(&v79, sel__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config_, typeCopy, noteCopy, errorCopy, dateCopy, identifierCopy, localeCopy, version, deviceCopy, metadataCopy, sortDateCopy, countryCopy, state, v49);

  return v70;
}

uint64_t __450__HKDiagnosticTestResult__newDiagnosticTestResultWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_diagnosticTestCodingCollection_value_referenceRanges_effectiveStartDate_category_categoriesCodingCollections_issueDate_effectiveEndDate_statusCoding_interpretationCodingCollections_comments_bodySiteCodingCollection_methodCodingCollection_performers_referenceRangeStatus_config___block_invoke(uint64_t a1, void *a2)
{
  v33 = a2;
  v3 = [*(a1 + 32) copy];
  v4 = v33[22];
  v33[22] = v3;

  v5 = [*(a1 + 40) copy];
  v6 = v33[23];
  v33[23] = v5;

  v7 = [*(a1 + 48) copy];
  v8 = v33[24];
  v33[24] = v7;

  v9 = [*(a1 + 56) copy];
  v10 = v33[25];
  v33[25] = v9;

  v11 = [*(a1 + 64) copy];
  v12 = v33[26];
  v33[26] = v11;

  v13 = [*(a1 + 72) copy];
  v14 = v33[27];
  v33[27] = v13;

  v15 = [*(a1 + 80) copy];
  v16 = v33[28];
  v33[28] = v15;

  v17 = [*(a1 + 88) copy];
  v18 = v33[29];
  v33[29] = v17;

  v19 = [*(a1 + 96) copy];
  v20 = v33[30];
  v33[30] = v19;

  v21 = [*(a1 + 104) copy];
  v22 = v33[31];
  v33[31] = v21;

  v23 = [*(a1 + 112) copy];
  v24 = v33[32];
  v33[32] = v23;

  v25 = [*(a1 + 120) copy];
  v26 = v33[33];
  v33[33] = v25;

  v27 = [*(a1 + 128) copy];
  v28 = v33[34];
  v33[34] = v27;

  v29 = [*(a1 + 136) copy];
  v30 = v33[35];
  v33[35] = v29;

  v33[36] = *(a1 + 152);
  v31 = *(a1 + 144);
  if (v31)
  {
    (*(v31 + 16))(v31, v33);
  }

  return MEMORY[0x1EEE66BB8]();
}

- (HKDiagnosticTestResult)init
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
  v11.super_class = HKDiagnosticTestResult;
  v6 = [(HKSample *)&v11 description];
  bodySiteCodingCollection = self->_bodySiteCodingCollection;
  performers = self->_performers;
  v9 = [v3 stringWithFormat:@"<%@:%p super=%@diagnosticTestCodingCollection = %@value = %@referenceRanges = %@effectiveStartDate = %@category = %@categoriesCodingCollections = %@issueDate = %@effectiveEndDate = %@statusCoding = %@interpretationCodingCollections = %@comments = %@bodySiteCodingCollection = %@methodCodingCollection = %@performers = %@referenceRangeStatus = %ld>", v5, self, v6, self->_diagnosticTestCodingCollection, self->_value, self->_referenceRanges, self->_effectiveStartDate, self->_category, self->_categoriesCodingCollections, self->_issueDate, self->_effectiveEndDate, self->_statusCoding, self->_interpretationCodingCollections, self->_comments, bodySiteCodingCollection, self->_methodCodingCollection, performers, self->_referenceRangeStatus];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKDiagnosticTestResult;
  coderCopy = coder;
  [(HKMedicalRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_diagnosticTestCodingCollection forKey:{@"DiagnosticTestCodingCollection", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_value forKey:@"Value"];
  [coderCopy encodeObject:self->_referenceRanges forKey:@"ReferenceRanges"];
  [coderCopy encodeObject:self->_effectiveStartDate forKey:@"EffectiveStartDate"];
  [coderCopy encodeObject:self->_category forKey:@"Category"];
  [coderCopy encodeObject:self->_categoriesCodingCollections forKey:@"CategoriesCodingCollections"];
  [coderCopy encodeObject:self->_issueDate forKey:@"IssueDate"];
  [coderCopy encodeObject:self->_effectiveEndDate forKey:@"EffectiveEndDate"];
  [coderCopy encodeObject:self->_statusCoding forKey:@"StatusCoding"];
  [coderCopy encodeObject:self->_interpretationCodingCollections forKey:@"InterpretationCodingCollections"];
  [coderCopy encodeObject:self->_comments forKey:@"Comments"];
  [coderCopy encodeObject:self->_bodySiteCodingCollection forKey:@"BodySiteCodingCollection"];
  [coderCopy encodeObject:self->_methodCodingCollection forKey:@"MethodCodingCollection"];
  [coderCopy encodeObject:self->_performers forKey:@"Performers"];
  [coderCopy encodeInteger:self->_referenceRangeStatus forKey:@"ReferenceRangeStatus"];
  [coderCopy encodeObject:self->_diagnosticTest forKey:@"DiagnosticTest"];
  [coderCopy encodeObject:self->_categories forKey:@"Categories"];
  [coderCopy encodeObject:self->_status forKey:@"Status"];
  [coderCopy encodeObject:self->_interpretation forKey:@"Interpretation"];
  [coderCopy encodeObject:self->_bodySite forKey:@"BodySite"];
  [coderCopy encodeObject:self->_method forKey:@"Method"];
}

- (HKDiagnosticTestResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v53.receiver = self;
  v53.super_class = HKDiagnosticTestResult;
  v5 = [(HKMedicalRecord *)&v53 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DiagnosticTestCodingCollection"];
    diagnosticTestCodingCollection = v5->_diagnosticTestCodingCollection;
    v5->_diagnosticTestCodingCollection = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Value"];
    value = v5->_value;
    v5->_value = v8;

    v10 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"ReferenceRanges"];
    referenceRanges = v5->_referenceRanges;
    v5->_referenceRanges = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EffectiveStartDate"];
    effectiveStartDate = v5->_effectiveStartDate;
    v5->_effectiveStartDate = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Category"];
    category = v5->_category;
    v5->_category = v15;

    v17 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"CategoriesCodingCollections"];
    categoriesCodingCollections = v5->_categoriesCodingCollections;
    v5->_categoriesCodingCollections = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IssueDate"];
    issueDate = v5->_issueDate;
    v5->_issueDate = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EffectiveEndDate"];
    effectiveEndDate = v5->_effectiveEndDate;
    v5->_effectiveEndDate = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StatusCoding"];
    statusCoding = v5->_statusCoding;
    v5->_statusCoding = v24;

    v26 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"InterpretationCodingCollections"];
    interpretationCodingCollections = v5->_interpretationCodingCollections;
    v5->_interpretationCodingCollections = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Comments"];
    comments = v5->_comments;
    v5->_comments = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BodySiteCodingCollection"];
    bodySiteCodingCollection = v5->_bodySiteCodingCollection;
    v5->_bodySiteCodingCollection = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MethodCodingCollection"];
    methodCodingCollection = v5->_methodCodingCollection;
    v5->_methodCodingCollection = v33;

    v35 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v36 = [coderCopy decodeObjectOfClasses:v35 forKey:@"Performers"];
    performers = v5->_performers;
    v5->_performers = v36;

    v5->_referenceRangeStatus = [coderCopy decodeIntegerForKey:@"ReferenceRangeStatus"];
    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DiagnosticTest"];
    diagnosticTest = v5->_diagnosticTest;
    v5->_diagnosticTest = v38;

    v40 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v41 = [coderCopy decodeObjectOfClasses:v40 forKey:@"Categories"];
    categories = v5->_categories;
    v5->_categories = v41;

    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Status"];
    status = v5->_status;
    v5->_status = v43;

    v45 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v46 = [coderCopy decodeObjectOfClasses:v45 forKey:@"Interpretation"];
    interpretation = v5->_interpretation;
    v5->_interpretation = v46;

    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BodySite"];
    bodySite = v5->_bodySite;
    v5->_bodySite = v48;

    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Method"];
    method = v5->_method;
    v5->_method = v50;
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
    v131.receiver = self;
    v131.super_class = HKDiagnosticTestResult;
    if (![(HKMedicalRecord *)&v131 isEquivalent:v5])
    {
      goto LABEL_105;
    }

    diagnosticTestCodingCollection = [(HKDiagnosticTestResult *)self diagnosticTestCodingCollection];
    diagnosticTestCodingCollection2 = [v5 diagnosticTestCodingCollection];
    v8 = diagnosticTestCodingCollection2;
    if (diagnosticTestCodingCollection == diagnosticTestCodingCollection2)
    {
    }

    else
    {
      diagnosticTestCodingCollection3 = [v5 diagnosticTestCodingCollection];
      if (!diagnosticTestCodingCollection3)
      {
        goto LABEL_104;
      }

      v10 = diagnosticTestCodingCollection3;
      diagnosticTestCodingCollection4 = [(HKDiagnosticTestResult *)self diagnosticTestCodingCollection];
      diagnosticTestCodingCollection5 = [v5 diagnosticTestCodingCollection];
      v13 = [diagnosticTestCodingCollection4 isEqual:diagnosticTestCodingCollection5];

      if (!v13)
      {
        goto LABEL_105;
      }
    }

    diagnosticTestCodingCollection = [(HKDiagnosticTestResult *)self value];
    value = [v5 value];
    v8 = value;
    if (diagnosticTestCodingCollection == value)
    {
    }

    else
    {
      value2 = [v5 value];
      if (!value2)
      {
        goto LABEL_104;
      }

      v17 = value2;
      value3 = [(HKDiagnosticTestResult *)self value];
      value4 = [v5 value];
      v20 = [value3 isEqual:value4];

      if (!v20)
      {
        goto LABEL_105;
      }
    }

    diagnosticTestCodingCollection = [(HKDiagnosticTestResult *)self referenceRanges];
    referenceRanges = [v5 referenceRanges];
    v8 = referenceRanges;
    if (diagnosticTestCodingCollection == referenceRanges)
    {
    }

    else
    {
      referenceRanges2 = [v5 referenceRanges];
      if (!referenceRanges2)
      {
        goto LABEL_104;
      }

      v23 = referenceRanges2;
      referenceRanges3 = [(HKDiagnosticTestResult *)self referenceRanges];
      referenceRanges4 = [v5 referenceRanges];
      v26 = [referenceRanges3 isEqualToArray:referenceRanges4];

      if (!v26)
      {
        goto LABEL_105;
      }
    }

    diagnosticTestCodingCollection = [(HKDiagnosticTestResult *)self effectiveStartDate];
    effectiveStartDate = [v5 effectiveStartDate];
    v8 = effectiveStartDate;
    if (diagnosticTestCodingCollection == effectiveStartDate)
    {
    }

    else
    {
      effectiveStartDate2 = [v5 effectiveStartDate];
      if (!effectiveStartDate2)
      {
        goto LABEL_104;
      }

      v29 = effectiveStartDate2;
      effectiveStartDate3 = [(HKDiagnosticTestResult *)self effectiveStartDate];
      effectiveStartDate4 = [v5 effectiveStartDate];
      v32 = [effectiveStartDate3 isEqual:effectiveStartDate4];

      if (!v32)
      {
        goto LABEL_105;
      }
    }

    diagnosticTestCodingCollection = [(HKDiagnosticTestResult *)self category];
    category = [v5 category];
    v8 = category;
    if (diagnosticTestCodingCollection == category)
    {
    }

    else
    {
      category2 = [v5 category];
      if (!category2)
      {
        goto LABEL_104;
      }

      v35 = category2;
      category3 = [(HKDiagnosticTestResult *)self category];
      category4 = [v5 category];
      v38 = [category3 isEqualToString:category4];

      if (!v38)
      {
        goto LABEL_105;
      }
    }

    diagnosticTestCodingCollection = [(HKDiagnosticTestResult *)self categoriesCodingCollections];
    categoriesCodingCollections = [v5 categoriesCodingCollections];
    v8 = categoriesCodingCollections;
    if (diagnosticTestCodingCollection == categoriesCodingCollections)
    {
    }

    else
    {
      categoriesCodingCollections2 = [v5 categoriesCodingCollections];
      if (!categoriesCodingCollections2)
      {
        goto LABEL_104;
      }

      v41 = categoriesCodingCollections2;
      categoriesCodingCollections3 = [(HKDiagnosticTestResult *)self categoriesCodingCollections];
      categoriesCodingCollections4 = [v5 categoriesCodingCollections];
      v44 = [categoriesCodingCollections3 isEqualToArray:categoriesCodingCollections4];

      if (!v44)
      {
        goto LABEL_105;
      }
    }

    diagnosticTestCodingCollection = [(HKDiagnosticTestResult *)self issueDate];
    issueDate = [v5 issueDate];
    v8 = issueDate;
    if (diagnosticTestCodingCollection == issueDate)
    {
    }

    else
    {
      issueDate2 = [v5 issueDate];
      if (!issueDate2)
      {
        goto LABEL_104;
      }

      v47 = issueDate2;
      issueDate3 = [(HKDiagnosticTestResult *)self issueDate];
      issueDate4 = [v5 issueDate];
      v50 = [issueDate3 isEqual:issueDate4];

      if (!v50)
      {
        goto LABEL_105;
      }
    }

    diagnosticTestCodingCollection = [(HKDiagnosticTestResult *)self effectiveEndDate];
    effectiveEndDate = [v5 effectiveEndDate];
    v8 = effectiveEndDate;
    if (diagnosticTestCodingCollection == effectiveEndDate)
    {
    }

    else
    {
      effectiveEndDate2 = [v5 effectiveEndDate];
      if (!effectiveEndDate2)
      {
        goto LABEL_104;
      }

      v53 = effectiveEndDate2;
      effectiveEndDate3 = [(HKDiagnosticTestResult *)self effectiveEndDate];
      effectiveEndDate4 = [v5 effectiveEndDate];
      v56 = [effectiveEndDate3 isEqual:effectiveEndDate4];

      if (!v56)
      {
        goto LABEL_105;
      }
    }

    diagnosticTestCodingCollection = [(HKDiagnosticTestResult *)self statusCoding];
    statusCoding = [v5 statusCoding];
    v8 = statusCoding;
    if (diagnosticTestCodingCollection == statusCoding)
    {
    }

    else
    {
      statusCoding2 = [v5 statusCoding];
      if (!statusCoding2)
      {
        goto LABEL_104;
      }

      v59 = statusCoding2;
      statusCoding3 = [(HKDiagnosticTestResult *)self statusCoding];
      statusCoding4 = [v5 statusCoding];
      v62 = [statusCoding3 isEqual:statusCoding4];

      if (!v62)
      {
        goto LABEL_105;
      }
    }

    diagnosticTestCodingCollection = [(HKDiagnosticTestResult *)self interpretationCodingCollections];
    interpretationCodingCollections = [v5 interpretationCodingCollections];
    v8 = interpretationCodingCollections;
    if (diagnosticTestCodingCollection == interpretationCodingCollections)
    {
    }

    else
    {
      interpretationCodingCollections2 = [v5 interpretationCodingCollections];
      if (!interpretationCodingCollections2)
      {
        goto LABEL_104;
      }

      v65 = interpretationCodingCollections2;
      interpretationCodingCollections3 = [(HKDiagnosticTestResult *)self interpretationCodingCollections];
      interpretationCodingCollections4 = [v5 interpretationCodingCollections];
      v68 = [interpretationCodingCollections3 isEqualToArray:interpretationCodingCollections4];

      if (!v68)
      {
        goto LABEL_105;
      }
    }

    diagnosticTestCodingCollection = [(HKDiagnosticTestResult *)self comments];
    comments = [v5 comments];
    v8 = comments;
    if (diagnosticTestCodingCollection == comments)
    {
    }

    else
    {
      comments2 = [v5 comments];
      if (!comments2)
      {
        goto LABEL_104;
      }

      v71 = comments2;
      comments3 = [(HKDiagnosticTestResult *)self comments];
      comments4 = [v5 comments];
      v74 = [comments3 isEqualToString:comments4];

      if (!v74)
      {
        goto LABEL_105;
      }
    }

    diagnosticTestCodingCollection = [(HKDiagnosticTestResult *)self bodySiteCodingCollection];
    bodySiteCodingCollection = [v5 bodySiteCodingCollection];
    v8 = bodySiteCodingCollection;
    if (diagnosticTestCodingCollection == bodySiteCodingCollection)
    {
    }

    else
    {
      bodySiteCodingCollection2 = [v5 bodySiteCodingCollection];
      if (!bodySiteCodingCollection2)
      {
        goto LABEL_104;
      }

      v77 = bodySiteCodingCollection2;
      bodySiteCodingCollection3 = [(HKDiagnosticTestResult *)self bodySiteCodingCollection];
      bodySiteCodingCollection4 = [v5 bodySiteCodingCollection];
      v80 = [bodySiteCodingCollection3 isEqual:bodySiteCodingCollection4];

      if (!v80)
      {
        goto LABEL_105;
      }
    }

    diagnosticTestCodingCollection = [(HKDiagnosticTestResult *)self methodCodingCollection];
    methodCodingCollection = [v5 methodCodingCollection];
    v8 = methodCodingCollection;
    if (diagnosticTestCodingCollection == methodCodingCollection)
    {
    }

    else
    {
      methodCodingCollection2 = [v5 methodCodingCollection];
      if (!methodCodingCollection2)
      {
        goto LABEL_104;
      }

      v83 = methodCodingCollection2;
      methodCodingCollection3 = [(HKDiagnosticTestResult *)self methodCodingCollection];
      methodCodingCollection4 = [v5 methodCodingCollection];
      v86 = [methodCodingCollection3 isEqual:methodCodingCollection4];

      if (!v86)
      {
        goto LABEL_105;
      }
    }

    diagnosticTestCodingCollection = [(HKDiagnosticTestResult *)self performers];
    performers = [v5 performers];
    v8 = performers;
    if (diagnosticTestCodingCollection == performers)
    {
    }

    else
    {
      performers2 = [v5 performers];
      if (!performers2)
      {
        goto LABEL_104;
      }

      v89 = performers2;
      performers3 = [(HKDiagnosticTestResult *)self performers];
      performers4 = [v5 performers];
      v92 = [performers3 isEqualToArray:performers4];

      if (!v92)
      {
        goto LABEL_105;
      }
    }

    referenceRangeStatus = [(HKDiagnosticTestResult *)self referenceRangeStatus];
    if (referenceRangeStatus != [v5 referenceRangeStatus])
    {
      goto LABEL_105;
    }

    diagnosticTestCodingCollection = [(HKDiagnosticTestResult *)self diagnosticTest];
    diagnosticTest = [v5 diagnosticTest];
    v8 = diagnosticTest;
    if (diagnosticTestCodingCollection == diagnosticTest)
    {
    }

    else
    {
      diagnosticTest2 = [v5 diagnosticTest];
      if (!diagnosticTest2)
      {
        goto LABEL_104;
      }

      v96 = diagnosticTest2;
      diagnosticTest3 = [(HKDiagnosticTestResult *)self diagnosticTest];
      diagnosticTest4 = [v5 diagnosticTest];
      v99 = [diagnosticTest3 isEqual:diagnosticTest4];

      if (!v99)
      {
        goto LABEL_105;
      }
    }

    diagnosticTestCodingCollection = [(HKDiagnosticTestResult *)self categories];
    categories = [v5 categories];
    v8 = categories;
    if (diagnosticTestCodingCollection == categories)
    {
    }

    else
    {
      categories2 = [v5 categories];
      if (!categories2)
      {
        goto LABEL_104;
      }

      v102 = categories2;
      categories3 = [(HKDiagnosticTestResult *)self categories];
      categories4 = [v5 categories];
      v105 = [categories3 isEqualToArray:categories4];

      if (!v105)
      {
        goto LABEL_105;
      }
    }

    diagnosticTestCodingCollection = [(HKDiagnosticTestResult *)self status];
    status = [v5 status];
    v8 = status;
    if (diagnosticTestCodingCollection == status)
    {
    }

    else
    {
      status2 = [v5 status];
      if (!status2)
      {
        goto LABEL_104;
      }

      v108 = status2;
      status3 = [(HKDiagnosticTestResult *)self status];
      status4 = [v5 status];
      v111 = [status3 isEqual:status4];

      if (!v111)
      {
        goto LABEL_105;
      }
    }

    diagnosticTestCodingCollection = [(HKDiagnosticTestResult *)self interpretation];
    interpretation = [v5 interpretation];
    v8 = interpretation;
    if (diagnosticTestCodingCollection == interpretation)
    {
    }

    else
    {
      interpretation2 = [v5 interpretation];
      if (!interpretation2)
      {
        goto LABEL_104;
      }

      v114 = interpretation2;
      interpretation3 = [(HKDiagnosticTestResult *)self interpretation];
      interpretation4 = [v5 interpretation];
      v117 = [interpretation3 isEqualToArray:interpretation4];

      if (!v117)
      {
        goto LABEL_105;
      }
    }

    diagnosticTestCodingCollection = [(HKDiagnosticTestResult *)self bodySite];
    bodySite = [v5 bodySite];
    v8 = bodySite;
    if (diagnosticTestCodingCollection == bodySite)
    {
    }

    else
    {
      bodySite2 = [v5 bodySite];
      if (!bodySite2)
      {
        goto LABEL_104;
      }

      v120 = bodySite2;
      bodySite3 = [(HKDiagnosticTestResult *)self bodySite];
      bodySite4 = [v5 bodySite];
      v123 = [bodySite3 isEqual:bodySite4];

      if (!v123)
      {
        goto LABEL_105;
      }
    }

    diagnosticTestCodingCollection = [(HKDiagnosticTestResult *)self method];
    method = [v5 method];
    v8 = method;
    if (diagnosticTestCodingCollection == method)
    {

LABEL_109:
      v14 = 1;
      goto LABEL_106;
    }

    method2 = [v5 method];
    if (method2)
    {
      v126 = method2;
      method3 = [(HKDiagnosticTestResult *)self method];
      method4 = [v5 method];
      v129 = [method3 isEqual:method4];

      if (v129)
      {
        goto LABEL_109;
      }

LABEL_105:
      v14 = 0;
LABEL_106:

      goto LABEL_107;
    }

LABEL_104:

    goto LABEL_105;
  }

  v14 = 0;
LABEL_107:

  return v14;
}

- (id)statusCodingCollection
{
  statusCoding = [(HKDiagnosticTestResult *)self statusCoding];
  v3 = [HKMedicalCodingCollection collectionWithCoding:statusCoding];

  return v3;
}

- (void)_setDiagnosticTestCodingCollection:(id)collection
{
  v4 = [collection copy];
  diagnosticTestCodingCollection = self->_diagnosticTestCodingCollection;
  self->_diagnosticTestCodingCollection = v4;

  diagnosticTestCodingCollection = [(HKDiagnosticTestResult *)self diagnosticTestCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:diagnosticTestCodingCollection];
  diagnosticTest = self->_diagnosticTest;
  self->_diagnosticTest = v6;
}

- (void)_setValue:(id)value
{
  v4 = [value copy];
  value = self->_value;
  self->_value = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setReferenceRanges:(id)ranges
{
  v4 = [ranges copy];
  referenceRanges = self->_referenceRanges;
  self->_referenceRanges = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setEffectiveStartDate:(id)date
{
  v4 = [date copy];
  effectiveStartDate = self->_effectiveStartDate;
  self->_effectiveStartDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setCategory:(id)category
{
  v4 = [category copy];
  category = self->_category;
  self->_category = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setCategoriesCodingCollections:(id)collections
{
  v4 = [collections copy];
  categoriesCodingCollections = self->_categoriesCodingCollections;
  self->_categoriesCodingCollections = v4;

  categoriesCodingCollections = [(HKDiagnosticTestResult *)self categoriesCodingCollections];
  v6 = [categoriesCodingCollections hk_map:&__block_literal_global_72];
  categories = self->_categories;
  self->_categories = v6;
}

- (void)_setIssueDate:(id)date
{
  v4 = [date copy];
  issueDate = self->_issueDate;
  self->_issueDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setEffectiveEndDate:(id)date
{
  v4 = [date copy];
  effectiveEndDate = self->_effectiveEndDate;
  self->_effectiveEndDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setStatusCoding:(id)coding
{
  v4 = [coding copy];
  statusCoding = self->_statusCoding;
  self->_statusCoding = v4;

  statusCodingCollection = [(HKDiagnosticTestResult *)self statusCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:statusCodingCollection];
  status = self->_status;
  self->_status = v6;
}

- (void)_setInterpretationCodingCollections:(id)collections
{
  v4 = [collections copy];
  interpretationCodingCollections = self->_interpretationCodingCollections;
  self->_interpretationCodingCollections = v4;

  if (self->_interpretationCodingCollections)
  {
    interpretationCodingCollections = [(HKDiagnosticTestResult *)self interpretationCodingCollections];
    v6 = [(NSArray *)interpretationCodingCollections hk_map:&__block_literal_global_157];
    interpretation = self->_interpretation;
    self->_interpretation = v6;

    v8 = interpretationCodingCollections;
  }

  else
  {
    v8 = self->_interpretation;
    self->_interpretation = 0;
  }
}

- (void)_setComments:(id)comments
{
  v4 = [comments copy];
  comments = self->_comments;
  self->_comments = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setBodySiteCodingCollection:(id)collection
{
  v4 = [collection copy];
  bodySiteCodingCollection = self->_bodySiteCodingCollection;
  self->_bodySiteCodingCollection = v4;

  if (self->_bodySiteCodingCollection)
  {
    bodySiteCodingCollection = [(HKDiagnosticTestResult *)self bodySiteCodingCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:bodySiteCodingCollection];
    bodySite = self->_bodySite;
    self->_bodySite = v6;

    v8 = bodySiteCodingCollection;
  }

  else
  {
    v8 = self->_bodySite;
    self->_bodySite = 0;
  }
}

- (void)_setMethodCodingCollection:(id)collection
{
  v4 = [collection copy];
  methodCodingCollection = self->_methodCodingCollection;
  self->_methodCodingCollection = v4;

  if (self->_methodCodingCollection)
  {
    methodCodingCollection = [(HKDiagnosticTestResult *)self methodCodingCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:methodCodingCollection];
    method = self->_method;
    self->_method = v6;

    v8 = methodCodingCollection;
  }

  else
  {
    v8 = self->_method;
    self->_method = 0;
  }
}

- (void)_setPerformers:(id)performers
{
  v4 = [performers copy];
  performers = self->_performers;
  self->_performers = v4;

  MEMORY[0x1EEE66BB8]();
}

- (HKConcept)diagnosticTest
{
  diagnosticTest = self->_diagnosticTest;
  if (diagnosticTest)
  {
    v3 = diagnosticTest;
  }

  else
  {
    diagnosticTestCodingCollection = [(HKDiagnosticTestResult *)self diagnosticTestCodingCollection];
    v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:diagnosticTestCodingCollection];
  }

  return v3;
}

- (void)_setDiagnosticTest:(id)test
{
  testCopy = test;
  if (!testCopy)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      [(HKDiagnosticTestResult *)v5 _setDiagnosticTest:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  v13 = [testCopy copy];
  diagnosticTest = self->_diagnosticTest;
  self->_diagnosticTest = v13;
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
    categoriesCodingCollections = [(HKDiagnosticTestResult *)self categoriesCodingCollections];
    v3 = [categoriesCodingCollections hk_map:&__block_literal_global_159];
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
      [(HKDiagnosticTestResult *)v5 _setCategories:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  v13 = [categoriesCopy copy];
  categories = self->_categories;
  self->_categories = v13;
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
    statusCodingCollection = [(HKDiagnosticTestResult *)self statusCodingCollection];
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
      [(HKDiagnosticTestResult *)v5 _setStatus:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  v13 = [statusCopy copy];
  status = self->_status;
  self->_status = v13;
}

- (NSArray)interpretation
{
  if (self->_interpretationCodingCollections)
  {
    interpretation = self->_interpretation;
    if (interpretation)
    {
      v3 = interpretation;
    }

    else
    {
      interpretationCodingCollections = [(HKDiagnosticTestResult *)self interpretationCodingCollections];
      v3 = [interpretationCodingCollections hk_map:&__block_literal_global_161];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setInterpretation:(id)interpretation
{
  v4 = [interpretation copy];
  interpretation = self->_interpretation;
  self->_interpretation = v4;

  MEMORY[0x1EEE66BB8]();
}

- (HKConcept)bodySite
{
  if (self->_bodySiteCodingCollection)
  {
    bodySite = self->_bodySite;
    if (bodySite)
    {
      v3 = bodySite;
    }

    else
    {
      bodySiteCodingCollection = [(HKDiagnosticTestResult *)self bodySiteCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:bodySiteCodingCollection];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setBodySite:(id)site
{
  v4 = [site copy];
  bodySite = self->_bodySite;
  self->_bodySite = v4;

  MEMORY[0x1EEE66BB8]();
}

- (HKConcept)method
{
  if (self->_methodCodingCollection)
  {
    method = self->_method;
    if (method)
    {
      v3 = method;
    }

    else
    {
      methodCodingCollection = [(HKDiagnosticTestResult *)self methodCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:methodCodingCollection];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setMethod:(id)method
{
  v4 = [method copy];
  method = self->_method;
  self->_method = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v13.receiver = self;
  v13.super_class = HKDiagnosticTestResult;
  v5 = [(HKMedicalRecord *)&v13 _validateWithConfiguration:configuration.var0, configuration.var1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    if (self->_diagnosticTestCodingCollection)
    {
      if (self->_category)
      {
        if (self->_categoriesCodingCollections)
        {
          if (self->_statusCoding)
          {
            v8 = 0;
            goto LABEL_14;
          }

          v9 = MEMORY[0x1E696ABC0];
          v10 = objc_opt_class();
          v11 = @"%@: statusCoding must not be nil";
        }

        else
        {
          v9 = MEMORY[0x1E696ABC0];
          v10 = objc_opt_class();
          v11 = @"%@: categoriesCodingCollections must not be nil";
        }
      }

      else
      {
        v9 = MEMORY[0x1E696ABC0];
        v10 = objc_opt_class();
        v11 = @"%@: category must not be nil";
      }
    }

    else
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = objc_opt_class();
      v11 = @"%@: diagnosticTestCodingCollection must not be nil";
    }

    v7 = [v9 hk_errorForInvalidArgument:@"@" class:v10 selector:a2 format:{v11, self}];
  }

  v8 = v7;
LABEL_14:

  return v8;
}

+ (id)indexableConceptKeyPaths
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___HKDiagnosticTestResult;
  v2 = objc_msgSendSuper2(&v5, sel_indexableConceptKeyPaths);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"diagnosticTest"];
  [v3 addObject:@"categories"];
  [v3 addObject:@"status"];
  [v3 addObject:@"interpretation"];
  [v3 addObject:@"bodySite"];
  [v3 addObject:@"method"];

  return v3;
}

+ (id)cachedConceptRelationshipKeyPaths
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___HKDiagnosticTestResult;
  v2 = objc_msgSendSuper2(&v4, sel_cachedConceptRelationshipKeyPaths);

  return v2;
}

- (id)codingsForKeyPath:(id)path error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = [HKConceptIndexUtilities firstComponentForKeyPath:pathCopy error:error];
  v8 = v7;
  if (!v7)
  {
    v13 = 0;
    goto LABEL_12;
  }

  if ([v7 isEqualToString:@"diagnosticTest"])
  {
    diagnosticTestCodingCollection = [(HKDiagnosticTestResult *)self diagnosticTestCodingCollection];
    v10 = [HKIndexableObject indexableObjectWithObject:diagnosticTestCodingCollection];
    v27[0] = v10;
    v11 = MEMORY[0x1E695DEC8];
    v12 = v27;
LABEL_4:
    v13 = [v11 arrayWithObjects:v12 count:1];

    goto LABEL_12;
  }

  if ([v8 isEqualToString:@"categories"])
  {
    categoriesCodingCollections = [(HKDiagnosticTestResult *)self categoriesCodingCollections];
LABEL_8:
    statusCoding = categoriesCodingCollections;
    v13 = [HKConceptIndexUtilities indexedCodingsForCodingCollections:categoriesCodingCollections context:pathCopy error:error];
LABEL_11:

    goto LABEL_12;
  }

  if ([v8 isEqualToString:@"status"])
  {
    statusCoding = [(HKDiagnosticTestResult *)self statusCoding];
    v16 = [HKMedicalCodingCollection collectionWithCoding:statusCoding];
    v17 = [HKIndexableObject indexableObjectWithObject:v16];
    v26 = v17;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];

    goto LABEL_11;
  }

  if ([v8 isEqualToString:@"interpretation"])
  {
    interpretationCodingCollections = [(HKDiagnosticTestResult *)self interpretationCodingCollections];

    if (interpretationCodingCollections)
    {
      categoriesCodingCollections = [(HKDiagnosticTestResult *)self interpretationCodingCollections];
      goto LABEL_8;
    }

    goto LABEL_24;
  }

  if ([v8 isEqualToString:@"bodySite"])
  {
    bodySiteCodingCollection = [(HKDiagnosticTestResult *)self bodySiteCodingCollection];

    if (bodySiteCodingCollection)
    {
      diagnosticTestCodingCollection = [(HKDiagnosticTestResult *)self bodySiteCodingCollection];
      v10 = [HKIndexableObject indexableObjectWithObject:diagnosticTestCodingCollection];
      v25 = v10;
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v25;
      goto LABEL_4;
    }

    goto LABEL_24;
  }

  if ([v8 isEqualToString:@"method"])
  {
    methodCodingCollection = [(HKDiagnosticTestResult *)self methodCodingCollection];

    if (methodCodingCollection)
    {
      diagnosticTestCodingCollection = [(HKDiagnosticTestResult *)self methodCodingCollection];
      v10 = [HKIndexableObject indexableObjectWithObject:diagnosticTestCodingCollection];
      v24 = v10;
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v24;
      goto LABEL_4;
    }

LABEL_24:
    v13 = MEMORY[0x1E695E0F0];
    goto LABEL_12;
  }

  v23.receiver = self;
  v23.super_class = HKDiagnosticTestResult;
  v13 = [(HKMedicalRecord *)&v23 codingsForKeyPath:pathCopy error:error];
LABEL_12:

  v18 = *MEMORY[0x1E69E9840];

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
    goto LABEL_13;
  }

  if (![v10 isEqualToString:@"diagnosticTest"])
  {
    if ([v11 isEqualToString:@"categories"])
    {
      categoriesCodingCollections = [(HKDiagnosticTestResult *)self categoriesCodingCollections];
      v14 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", conceptsCopy, [categoriesCodingCollections count], pathCopy, error);

      LOBYTE(error) = v14 != 0;
      if (v14)
      {
        [(HKDiagnosticTestResult *)self _setCategories:v14];
      }

LABEL_9:

      goto LABEL_14;
    }

    if ([v11 isEqualToString:@"status"])
    {
      if (HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 1, pathCopy, error))
      {
        error = [conceptsCopy firstObject];
        object = [error object];
        [(HKDiagnosticTestResult *)self _setStatus:object];
        goto LABEL_5;
      }

LABEL_13:
      LOBYTE(error) = 0;
      goto LABEL_14;
    }

    if ([v11 isEqualToString:@"interpretation"])
    {
      interpretationCodingCollections = [(HKDiagnosticTestResult *)self interpretationCodingCollections];

      if (interpretationCodingCollections)
      {
        interpretationCodingCollections2 = [(HKDiagnosticTestResult *)self interpretationCodingCollections];
        v14 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", conceptsCopy, [interpretationCodingCollections2 count], pathCopy, error);

        LOBYTE(error) = v14 != 0;
        if (v14)
        {
          [(HKDiagnosticTestResult *)self _setInterpretation:v14];
        }

        goto LABEL_9;
      }

      v22 = HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 0, pathCopy, error);
    }

    else
    {
      if ([v11 isEqualToString:@"bodySite"])
      {
        v18 = [conceptsCopy count];
        bodySiteCodingCollection = [(HKDiagnosticTestResult *)self bodySiteCodingCollection];
        LODWORD(error) = HKIndexableObjectCheckCardinalityForIndexRestore(v18, bodySiteCodingCollection != 0, pathCopy, error);

        if (!error)
        {
          goto LABEL_14;
        }

        error = [conceptsCopy firstObject];
        object = [error object];
        [(HKDiagnosticTestResult *)self _setBodySite:object];
        goto LABEL_5;
      }

      if ([v11 isEqualToString:@"method"])
      {
        v20 = [conceptsCopy count];
        methodCodingCollection = [(HKDiagnosticTestResult *)self methodCodingCollection];
        LODWORD(error) = HKIndexableObjectCheckCardinalityForIndexRestore(v20, methodCodingCollection != 0, pathCopy, error);

        if (!error)
        {
          goto LABEL_14;
        }

        error = [conceptsCopy firstObject];
        object = [error object];
        [(HKDiagnosticTestResult *)self _setMethod:object];
        goto LABEL_5;
      }

      v23.receiver = self;
      v23.super_class = HKDiagnosticTestResult;
      v22 = [(HKMedicalRecord *)&v23 applyConcepts:conceptsCopy forKeyPath:pathCopy error:error];
    }

    LOBYTE(error) = v22;
    goto LABEL_14;
  }

  if (!HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 1, pathCopy, error))
  {
    goto LABEL_13;
  }

  error = [conceptsCopy firstObject];
  object = [error object];
  [(HKDiagnosticTestResult *)self _setDiagnosticTest:object];
LABEL_5:

  LOBYTE(error) = 1;
LABEL_14:

  return error;
}

@end