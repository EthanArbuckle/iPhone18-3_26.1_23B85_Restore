@interface HKDiagnosticTestReport
+ (id)_newDiagnosticTestReportWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 diagnosticTestCodingCollection:(id)self5 results:(id)self6 effectiveStartDate:(id)self7 statusCoding:(id)self8 effectiveEndDate:(id)self9 issueDate:(id)issueDate config:(id)config;
+ (id)cachedConceptRelationshipKeyPaths;
+ (id)defaultDisplayString;
+ (id)diagnosticTestReportWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 country:(id)self2 state:(unint64_t)self3 diagnosticTestCodingCollection:(id)self4 results:(id)self5 effectiveStartDate:(id)self6 statusCoding:(id)self7 effectiveEndDate:(id)self8 issueDate:(id)self9;
+ (id)indexableConceptKeyPaths;
- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error;
- (BOOL)isEquivalent:(id)equivalent;
- (HKConcept)diagnosticTest;
- (HKConcept)status;
- (HKDiagnosticTestReport)init;
- (HKDiagnosticTestReport)initWithCoder:(id)coder;
- (NSString)description;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)codingsForKeyPath:(id)path error:(id *)error;
- (id)medicalRecordCodings;
- (id)statusCodingCollection;
- (void)_setDiagnosticTest:(id)test;
- (void)_setDiagnosticTestCodingCollection:(id)collection;
- (void)_setEffectiveEndDate:(id)date;
- (void)_setEffectiveStartDate:(id)date;
- (void)_setIssueDate:(id)date;
- (void)_setResults:(id)results;
- (void)_setStatus:(id)status;
- (void)_setStatusCoding:(id)coding;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKDiagnosticTestReport

+ (id)indexableConceptKeyPaths
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___HKDiagnosticTestReport;
  v2 = objc_msgSendSuper2(&v5, sel_indexableConceptKeyPaths);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"diagnosticTest"];
  [v3 addObject:@"status"];

  return v3;
}

+ (id)cachedConceptRelationshipKeyPaths
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___HKDiagnosticTestReport;
  v2 = objc_msgSendSuper2(&v4, sel_cachedConceptRelationshipKeyPaths);

  return v2;
}

- (id)codingsForKeyPath:(id)path error:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = [HKConceptIndexUtilities firstComponentForKeyPath:pathCopy error:error];
  v8 = v7;
  if (!v7)
  {
    v11 = 0;
    goto LABEL_9;
  }

  if ([v7 isEqualToString:@"diagnosticTest"])
  {
    diagnosticTestCodingCollection = [(HKDiagnosticTestReport *)self diagnosticTestCodingCollection];
    v10 = [HKIndexableObject indexableObjectWithObject:diagnosticTestCodingCollection];
    v17[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
LABEL_7:

    goto LABEL_9;
  }

  if ([v8 isEqualToString:@"status"])
  {
    diagnosticTestCodingCollection = [(HKDiagnosticTestReport *)self statusCoding];
    v10 = [HKMedicalCodingCollection collectionWithCoding:diagnosticTestCodingCollection];
    v12 = [HKIndexableObject indexableObjectWithObject:v10];
    v16 = v12;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];

    goto LABEL_7;
  }

  v15.receiver = self;
  v15.super_class = HKDiagnosticTestReport;
  v11 = [(HKMedicalRecord *)&v15 codingsForKeyPath:pathCopy error:error];
LABEL_9:

  v13 = *MEMORY[0x1E69E9840];

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
    goto LABEL_9;
  }

  if (![v10 isEqualToString:@"diagnosticTest"])
  {
    if (![v11 isEqualToString:@"status"])
    {
      v16.receiver = self;
      v16.super_class = HKDiagnosticTestReport;
      v14 = [(HKMedicalRecord *)&v16 applyConcepts:conceptsCopy forKeyPath:pathCopy error:error];
      goto LABEL_11;
    }

    if (HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 1, pathCopy, error))
    {
      firstObject = [conceptsCopy firstObject];
      object = [firstObject object];
      [(HKDiagnosticTestReport *)self _setStatus:object];
      goto LABEL_8;
    }

LABEL_9:
    v14 = 0;
    goto LABEL_11;
  }

  if (!HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 1, pathCopy, error))
  {
    goto LABEL_9;
  }

  firstObject = [conceptsCopy firstObject];
  object = [firstObject object];
  [(HKDiagnosticTestReport *)self _setDiagnosticTest:object];
LABEL_8:

  v14 = 1;
LABEL_11:

  return v14;
}

+ (id)diagnosticTestReportWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 country:(id)self2 state:(unint64_t)self3 diagnosticTestCodingCollection:(id)self4 results:(id)self5 effectiveStartDate:(id)self6 statusCoding:(id)self7 effectiveEndDate:(id)self8 issueDate:(id)self9
{
  errorCopy = error;
  startDateCopy = startDate;
  endDateCopy = endDate;
  v21 = @"issueDate";
  issueDateCopy = issueDate;
  codingCopy = coding;
  resultsCopy = results;
  collectionCopy = collection;
  v23 = endDateCopy;
  countryCopy = country;
  metadataCopy = metadata;
  deviceCopy = device;
  localeCopy = locale;
  identifierCopy = identifier;
  dateCopy = date;
  noteCopy = note;
  typeCopy = type;
  dateForUTC = [issueDateCopy dateForUTC];
  if (v23)
  {
    v26 = @"effectiveEndDate";

    dateForUTC2 = [v23 dateForUTC];

    dateForUTC = dateForUTC2;
    v21 = v26;
  }

  if (startDateCopy)
  {
    v28 = @"effectiveStartDate";

    dateForUTC3 = [startDateCopy dateForUTC];

    dateForUTC = dateForUTC3;
    v21 = v28;
  }

  v34 = v21;
  v32 = [HKSemanticDate semanticDateWithKeyPath:v21 date:dateForUTC];
  v30 = [HKDiagnosticTestReport diagnosticTestReportWithType:typeCopy note:noteCopy enteredInError:errorCopy modifiedDate:dateCopy originIdentifier:identifierCopy locale:localeCopy extractionVersion:version device:deviceCopy metadata:metadataCopy sortDate:v32 country:countryCopy state:state diagnosticTestCodingCollection:collectionCopy results:resultsCopy effectiveStartDate:startDateCopy statusCoding:codingCopy effectiveEndDate:v23 issueDate:issueDateCopy];

  return v30;
}

- (id)medicalRecordCodings
{
  diagnosticTestCodingCollection = [(HKDiagnosticTestReport *)self diagnosticTestCodingCollection];
  codings = [diagnosticTestCodingCollection codings];

  return codings;
}

+ (id)defaultDisplayString
{
  v2 = HKHealthKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"UNSPECIFIED_DIAGNOSTIC_TEST_RESULT" value:&stru_1F05FF230 table:@"Localizable-Clinical-Health-Records"];

  return v3;
}

+ (id)_newDiagnosticTestReportWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 diagnosticTestCodingCollection:(id)self5 results:(id)self6 effectiveStartDate:(id)self7 statusCoding:(id)self8 effectiveEndDate:(id)self9 issueDate:(id)issueDate config:(id)config
{
  errorCopy = error;
  collectionCopy = collection;
  resultsCopy = results;
  startDateCopy = startDate;
  codingCopy = coding;
  endDateCopy = endDate;
  issueDateCopy = issueDate;
  configCopy = config;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __278__HKDiagnosticTestReport__newDiagnosticTestReportWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_diagnosticTestCodingCollection_results_effectiveStartDate_statusCoding_effectiveEndDate_issueDate_config___block_invoke;
  aBlock[3] = &unk_1E7380EA8;
  v56 = collectionCopy;
  v57 = resultsCopy;
  v58 = startDateCopy;
  v59 = codingCopy;
  v60 = endDateCopy;
  v61 = issueDateCopy;
  v62 = configCopy;
  v53 = configCopy;
  v52 = issueDateCopy;
  v51 = endDateCopy;
  v48 = codingCopy;
  v47 = startDateCopy;
  v46 = resultsCopy;
  v45 = collectionCopy;
  countryCopy = country;
  sortDateCopy = sortDate;
  metadataCopy = metadata;
  deviceCopy = device;
  localeCopy = locale;
  identifierCopy = identifier;
  dateCopy = date;
  noteCopy = note;
  typeCopy = type;
  v37 = _Block_copy(aBlock);
  v54.receiver = self;
  v54.super_class = &OBJC_METACLASS___HKDiagnosticTestReport;
  v50 = objc_msgSendSuper2(&v54, sel__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config_, typeCopy, noteCopy, errorCopy, dateCopy, identifierCopy, localeCopy, version, deviceCopy, metadataCopy, sortDateCopy, countryCopy, state, v37);

  return v50;
}

void __278__HKDiagnosticTestReport__newDiagnosticTestReportWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_diagnosticTestCodingCollection_results_effectiveStartDate_statusCoding_effectiveEndDate_issueDate_config___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [*(a1 + 32) copy];
  v4 = v16[22];
  v16[22] = v3;

  v5 = [*(a1 + 40) copy];
  v6 = v16[23];
  v16[23] = v5;

  v7 = [*(a1 + 48) copy];
  v8 = v16[24];
  v16[24] = v7;

  v9 = [*(a1 + 56) copy];
  v10 = v16[25];
  v16[25] = v9;

  v11 = [*(a1 + 64) copy];
  v12 = v16[26];
  v16[26] = v11;

  v13 = [*(a1 + 72) copy];
  v14 = v16[27];
  v16[27] = v13;

  v15 = *(a1 + 80);
  if (v15)
  {
    (*(v15 + 16))(v15, v16);
  }
}

- (HKDiagnosticTestReport)init
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
  v11.super_class = HKDiagnosticTestReport;
  v6 = [(HKSample *)&v11 description];
  diagnosticTestCodingCollection = self->_diagnosticTestCodingCollection;
  effectiveEndDate = self->_effectiveEndDate;
  v9 = [v3 stringWithFormat:@"<%@:%p super=%@diagnosticTestCodingCollection = %@results = %@effectiveStartDate = %@statusCoding = %@effectiveEndDate = %@issueDate = %@>", v5, self, v6, diagnosticTestCodingCollection, self->_results, self->_effectiveStartDate, self->_statusCoding, effectiveEndDate, self->_issueDate];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKDiagnosticTestReport;
  coderCopy = coder;
  [(HKMedicalRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_diagnosticTestCodingCollection forKey:{@"DiagnosticTestCodingCollection", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_results forKey:@"Results"];
  [coderCopy encodeObject:self->_effectiveStartDate forKey:@"EffectiveStartDate"];
  [coderCopy encodeObject:self->_statusCoding forKey:@"StatusCoding"];
  [coderCopy encodeObject:self->_effectiveEndDate forKey:@"EffectiveEndDate"];
  [coderCopy encodeObject:self->_issueDate forKey:@"IssueDate"];
  [coderCopy encodeObject:self->_diagnosticTest forKey:@"DiagnosticTest"];
  [coderCopy encodeObject:self->_status forKey:@"Status"];
}

- (HKDiagnosticTestReport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = HKDiagnosticTestReport;
  v5 = [(HKMedicalRecord *)&v24 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DiagnosticTestCodingCollection"];
    diagnosticTestCodingCollection = v5->_diagnosticTestCodingCollection;
    v5->_diagnosticTestCodingCollection = v6;

    v8 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Results"];
    results = v5->_results;
    v5->_results = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EffectiveStartDate"];
    effectiveStartDate = v5->_effectiveStartDate;
    v5->_effectiveStartDate = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StatusCoding"];
    statusCoding = v5->_statusCoding;
    v5->_statusCoding = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EffectiveEndDate"];
    effectiveEndDate = v5->_effectiveEndDate;
    v5->_effectiveEndDate = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IssueDate"];
    issueDate = v5->_issueDate;
    v5->_issueDate = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DiagnosticTest"];
    diagnosticTest = v5->_diagnosticTest;
    v5->_diagnosticTest = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Status"];
    status = v5->_status;
    v5->_status = v21;
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
    v58.receiver = self;
    v58.super_class = HKDiagnosticTestReport;
    if (![(HKMedicalRecord *)&v58 isEquivalent:v5])
    {
      goto LABEL_44;
    }

    diagnosticTestCodingCollection = [(HKDiagnosticTestReport *)self diagnosticTestCodingCollection];
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
        goto LABEL_43;
      }

      v10 = diagnosticTestCodingCollection3;
      diagnosticTestCodingCollection4 = [(HKDiagnosticTestReport *)self diagnosticTestCodingCollection];
      diagnosticTestCodingCollection5 = [v5 diagnosticTestCodingCollection];
      v13 = [diagnosticTestCodingCollection4 isEqual:diagnosticTestCodingCollection5];

      if (!v13)
      {
        goto LABEL_44;
      }
    }

    diagnosticTestCodingCollection = [(HKDiagnosticTestReport *)self results];
    results = [v5 results];
    v8 = results;
    if (diagnosticTestCodingCollection == results)
    {
    }

    else
    {
      results2 = [v5 results];
      if (!results2)
      {
        goto LABEL_43;
      }

      v17 = results2;
      results3 = [(HKDiagnosticTestReport *)self results];
      results4 = [v5 results];
      v20 = [results3 isEqualToArray:results4];

      if (!v20)
      {
        goto LABEL_44;
      }
    }

    diagnosticTestCodingCollection = [(HKDiagnosticTestReport *)self effectiveStartDate];
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
        goto LABEL_43;
      }

      v23 = effectiveStartDate2;
      effectiveStartDate3 = [(HKDiagnosticTestReport *)self effectiveStartDate];
      effectiveStartDate4 = [v5 effectiveStartDate];
      v26 = [effectiveStartDate3 isEqual:effectiveStartDate4];

      if (!v26)
      {
        goto LABEL_44;
      }
    }

    diagnosticTestCodingCollection = [(HKDiagnosticTestReport *)self statusCoding];
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
        goto LABEL_43;
      }

      v29 = statusCoding2;
      statusCoding3 = [(HKDiagnosticTestReport *)self statusCoding];
      statusCoding4 = [v5 statusCoding];
      v32 = [statusCoding3 isEqual:statusCoding4];

      if (!v32)
      {
        goto LABEL_44;
      }
    }

    diagnosticTestCodingCollection = [(HKDiagnosticTestReport *)self effectiveEndDate];
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
        goto LABEL_43;
      }

      v35 = effectiveEndDate2;
      effectiveEndDate3 = [(HKDiagnosticTestReport *)self effectiveEndDate];
      effectiveEndDate4 = [v5 effectiveEndDate];
      v38 = [effectiveEndDate3 isEqual:effectiveEndDate4];

      if (!v38)
      {
        goto LABEL_44;
      }
    }

    diagnosticTestCodingCollection = [(HKDiagnosticTestReport *)self issueDate];
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
        goto LABEL_43;
      }

      v41 = issueDate2;
      issueDate3 = [(HKDiagnosticTestReport *)self issueDate];
      issueDate4 = [v5 issueDate];
      v44 = [issueDate3 isEqual:issueDate4];

      if (!v44)
      {
        goto LABEL_44;
      }
    }

    diagnosticTestCodingCollection = [(HKDiagnosticTestReport *)self diagnosticTest];
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
        goto LABEL_43;
      }

      v47 = diagnosticTest2;
      diagnosticTest3 = [(HKDiagnosticTestReport *)self diagnosticTest];
      diagnosticTest4 = [v5 diagnosticTest];
      v50 = [diagnosticTest3 isEqual:diagnosticTest4];

      if (!v50)
      {
        goto LABEL_44;
      }
    }

    diagnosticTestCodingCollection = [(HKDiagnosticTestReport *)self status];
    status = [v5 status];
    v8 = status;
    if (diagnosticTestCodingCollection == status)
    {

LABEL_48:
      v14 = 1;
      goto LABEL_45;
    }

    status2 = [v5 status];
    if (status2)
    {
      v53 = status2;
      status3 = [(HKDiagnosticTestReport *)self status];
      status4 = [v5 status];
      v56 = [status3 isEqual:status4];

      if (v56)
      {
        goto LABEL_48;
      }

LABEL_44:
      v14 = 0;
LABEL_45:

      goto LABEL_46;
    }

LABEL_43:

    goto LABEL_44;
  }

  v14 = 0;
LABEL_46:

  return v14;
}

- (id)statusCodingCollection
{
  statusCoding = [(HKDiagnosticTestReport *)self statusCoding];
  v3 = [HKMedicalCodingCollection collectionWithCoding:statusCoding];

  return v3;
}

- (void)_setDiagnosticTestCodingCollection:(id)collection
{
  v4 = [collection copy];
  diagnosticTestCodingCollection = self->_diagnosticTestCodingCollection;
  self->_diagnosticTestCodingCollection = v4;

  diagnosticTestCodingCollection = [(HKDiagnosticTestReport *)self diagnosticTestCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:diagnosticTestCodingCollection];
  diagnosticTest = self->_diagnosticTest;
  self->_diagnosticTest = v6;
}

- (void)_setResults:(id)results
{
  v4 = [results copy];
  results = self->_results;
  self->_results = v4;

  MEMORY[0x1EEE66BB8](v4, results);
}

- (void)_setEffectiveStartDate:(id)date
{
  v4 = [date copy];
  effectiveStartDate = self->_effectiveStartDate;
  self->_effectiveStartDate = v4;

  MEMORY[0x1EEE66BB8](v4, effectiveStartDate);
}

- (void)_setStatusCoding:(id)coding
{
  v4 = [coding copy];
  statusCoding = self->_statusCoding;
  self->_statusCoding = v4;

  statusCodingCollection = [(HKDiagnosticTestReport *)self statusCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:statusCodingCollection];
  status = self->_status;
  self->_status = v6;
}

- (void)_setEffectiveEndDate:(id)date
{
  v4 = [date copy];
  effectiveEndDate = self->_effectiveEndDate;
  self->_effectiveEndDate = v4;

  MEMORY[0x1EEE66BB8](v4, effectiveEndDate);
}

- (void)_setIssueDate:(id)date
{
  v4 = [date copy];
  issueDate = self->_issueDate;
  self->_issueDate = v4;

  MEMORY[0x1EEE66BB8](v4, issueDate);
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
    diagnosticTestCodingCollection = [(HKDiagnosticTestReport *)self diagnosticTestCodingCollection];
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
      [HKDiagnosticTestReport _setDiagnosticTest:v5];
    }
  }

  v6 = [testCopy copy];
  diagnosticTest = self->_diagnosticTest;
  self->_diagnosticTest = v6;
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
    statusCodingCollection = [(HKDiagnosticTestReport *)self statusCodingCollection];
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
      [HKDiagnosticTestReport _setStatus:v5];
    }
  }

  v6 = [statusCopy copy];
  status = self->_status;
  self->_status = v6;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v13.receiver = self;
  v13.super_class = HKDiagnosticTestReport;
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
      if (self->_statusCoding)
      {
        if (self->_issueDate)
        {
          v8 = 0;
          goto LABEL_12;
        }

        v9 = MEMORY[0x1E696ABC0];
        v10 = objc_opt_class();
        v11 = @"%@: issueDate must not be nil";
      }

      else
      {
        v9 = MEMORY[0x1E696ABC0];
        v10 = objc_opt_class();
        v11 = @"%@: statusCoding must not be nil";
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
LABEL_12:

  return v8;
}

@end