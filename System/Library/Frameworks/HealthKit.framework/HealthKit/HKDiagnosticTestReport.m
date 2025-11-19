@interface HKDiagnosticTestReport
+ (id)_newDiagnosticTestReportWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 diagnosticTestCodingCollection:(id)a15 results:(id)a16 effectiveStartDate:(id)a17 statusCoding:(id)a18 effectiveEndDate:(id)a19 issueDate:(id)a20 config:(id)a21;
+ (id)cachedConceptRelationshipKeyPaths;
+ (id)defaultDisplayString;
+ (id)diagnosticTestReportWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 country:(id)a12 state:(unint64_t)a13 diagnosticTestCodingCollection:(id)a14 results:(id)a15 effectiveStartDate:(id)a16 statusCoding:(id)a17 effectiveEndDate:(id)a18 issueDate:(id)a19;
+ (id)indexableConceptKeyPaths;
- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
- (BOOL)isEquivalent:(id)a3;
- (HKConcept)diagnosticTest;
- (HKConcept)status;
- (HKDiagnosticTestReport)init;
- (HKDiagnosticTestReport)initWithCoder:(id)a3;
- (NSString)description;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)codingsForKeyPath:(id)a3 error:(id *)a4;
- (id)medicalRecordCodings;
- (id)statusCodingCollection;
- (void)_setDiagnosticTest:(id)a3;
- (void)_setDiagnosticTestCodingCollection:(id)a3;
- (void)_setEffectiveEndDate:(id)a3;
- (void)_setEffectiveStartDate:(id)a3;
- (void)_setIssueDate:(id)a3;
- (void)_setResults:(id)a3;
- (void)_setStatus:(id)a3;
- (void)_setStatusCoding:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKDiagnosticTestReport

+ (id)indexableConceptKeyPaths
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___HKDiagnosticTestReport;
  v2 = objc_msgSendSuper2(&v5, sel_indexableConceptKeyPaths);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"diagnosticTest"];
  [v3 addObject:@"status"];

  return v3;
}

+ (id)cachedConceptRelationshipKeyPaths
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___HKDiagnosticTestReport;
  v2 = objc_msgSendSuper2(&v4, sel_cachedConceptRelationshipKeyPaths);

  return v2;
}

- (id)codingsForKeyPath:(id)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [HKConceptIndexUtilities firstComponentForKeyPath:v6 error:a4];
  v8 = v7;
  if (!v7)
  {
    v11 = 0;
    goto LABEL_9;
  }

  if ([v7 isEqualToString:@"diagnosticTest"])
  {
    v9 = [(HKDiagnosticTestReport *)self diagnosticTestCodingCollection];
    v10 = [HKIndexableObject indexableObjectWithObject:v9];
    v17[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
LABEL_7:

    goto LABEL_9;
  }

  if ([v8 isEqualToString:@"status"])
  {
    v9 = [(HKDiagnosticTestReport *)self statusCoding];
    v10 = [HKMedicalCodingCollection collectionWithCoding:v9];
    v12 = [HKIndexableObject indexableObjectWithObject:v10];
    v16 = v12;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];

    goto LABEL_7;
  }

  v15.receiver = self;
  v15.super_class = HKDiagnosticTestReport;
  v11 = [(HKMedicalRecord *)&v15 codingsForKeyPath:v6 error:a4];
LABEL_9:

  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [HKConceptIndexUtilities firstComponentForKeyPath:v9 error:a5];
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
      v14 = [(HKMedicalRecord *)&v16 applyConcepts:v8 forKeyPath:v9 error:a5];
      goto LABEL_11;
    }

    if (HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 1, v9, a5))
    {
      v12 = [v8 firstObject];
      v13 = [v12 object];
      [(HKDiagnosticTestReport *)self _setStatus:v13];
      goto LABEL_8;
    }

LABEL_9:
    v14 = 0;
    goto LABEL_11;
  }

  if (!HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 1, v9, a5))
  {
    goto LABEL_9;
  }

  v12 = [v8 firstObject];
  v13 = [v12 object];
  [(HKDiagnosticTestReport *)self _setDiagnosticTest:v13];
LABEL_8:

  v14 = 1;
LABEL_11:

  return v14;
}

+ (id)diagnosticTestReportWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 country:(id)a12 state:(unint64_t)a13 diagnosticTestCodingCollection:(id)a14 results:(id)a15 effectiveStartDate:(id)a16 statusCoding:(id)a17 effectiveEndDate:(id)a18 issueDate:(id)a19
{
  v46 = a5;
  v49 = a16;
  v20 = a18;
  v21 = @"issueDate";
  v22 = a19;
  v45 = a17;
  v44 = a15;
  v43 = a14;
  v23 = v20;
  v35 = a12;
  v42 = a11;
  v41 = a10;
  v40 = a8;
  v48 = a7;
  v24 = a6;
  v39 = a4;
  v37 = a3;
  v25 = [v22 dateForUTC];
  if (v23)
  {
    v26 = @"effectiveEndDate";

    v27 = [v23 dateForUTC];

    v25 = v27;
    v21 = v26;
  }

  if (v49)
  {
    v28 = @"effectiveStartDate";

    v29 = [v49 dateForUTC];

    v25 = v29;
    v21 = v28;
  }

  v34 = v21;
  v32 = [HKSemanticDate semanticDateWithKeyPath:v21 date:v25];
  v30 = [HKDiagnosticTestReport diagnosticTestReportWithType:v37 note:v39 enteredInError:v46 modifiedDate:v24 originIdentifier:v48 locale:v40 extractionVersion:a9 device:v41 metadata:v42 sortDate:v32 country:v35 state:a13 diagnosticTestCodingCollection:v43 results:v44 effectiveStartDate:v49 statusCoding:v45 effectiveEndDate:v23 issueDate:v22];

  return v30;
}

- (id)medicalRecordCodings
{
  v2 = [(HKDiagnosticTestReport *)self diagnosticTestCodingCollection];
  v3 = [v2 codings];

  return v3;
}

+ (id)defaultDisplayString
{
  v2 = HKHealthKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"UNSPECIFIED_DIAGNOSTIC_TEST_RESULT" value:&stru_1F05FF230 table:@"Localizable-Clinical-Health-Records"];

  return v3;
}

+ (id)_newDiagnosticTestReportWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 diagnosticTestCodingCollection:(id)a15 results:(id)a16 effectiveStartDate:(id)a17 statusCoding:(id)a18 effectiveEndDate:(id)a19 issueDate:(id)a20 config:(id)a21
{
  v49 = a5;
  v21 = a15;
  v22 = a16;
  v23 = a17;
  v24 = a18;
  v25 = a19;
  v26 = a20;
  v27 = a21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __278__HKDiagnosticTestReport__newDiagnosticTestReportWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_diagnosticTestCodingCollection_results_effectiveStartDate_statusCoding_effectiveEndDate_issueDate_config___block_invoke;
  aBlock[3] = &unk_1E7380EA8;
  v56 = v21;
  v57 = v22;
  v58 = v23;
  v59 = v24;
  v60 = v25;
  v61 = v26;
  v62 = v27;
  v53 = v27;
  v52 = v26;
  v51 = v25;
  v48 = v24;
  v47 = v23;
  v46 = v22;
  v45 = v21;
  v28 = a13;
  v29 = a12;
  v30 = a11;
  v31 = a10;
  v32 = a8;
  v33 = a7;
  v34 = a6;
  v35 = a4;
  v36 = a3;
  v37 = _Block_copy(aBlock);
  v54.receiver = a1;
  v54.super_class = &OBJC_METACLASS___HKDiagnosticTestReport;
  v50 = objc_msgSendSuper2(&v54, sel__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config_, v36, v35, v49, v34, v33, v32, a9, v31, v30, v29, v28, a14, v37);

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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKDiagnosticTestReport;
  v4 = a3;
  [(HKMedicalRecord *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_diagnosticTestCodingCollection forKey:{@"DiagnosticTestCodingCollection", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_results forKey:@"Results"];
  [v4 encodeObject:self->_effectiveStartDate forKey:@"EffectiveStartDate"];
  [v4 encodeObject:self->_statusCoding forKey:@"StatusCoding"];
  [v4 encodeObject:self->_effectiveEndDate forKey:@"EffectiveEndDate"];
  [v4 encodeObject:self->_issueDate forKey:@"IssueDate"];
  [v4 encodeObject:self->_diagnosticTest forKey:@"DiagnosticTest"];
  [v4 encodeObject:self->_status forKey:@"Status"];
}

- (HKDiagnosticTestReport)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = HKDiagnosticTestReport;
  v5 = [(HKMedicalRecord *)&v24 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DiagnosticTestCodingCollection"];
    diagnosticTestCodingCollection = v5->_diagnosticTestCodingCollection;
    v5->_diagnosticTestCodingCollection = v6;

    v8 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"Results"];
    results = v5->_results;
    v5->_results = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EffectiveStartDate"];
    effectiveStartDate = v5->_effectiveStartDate;
    v5->_effectiveStartDate = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StatusCoding"];
    statusCoding = v5->_statusCoding;
    v5->_statusCoding = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EffectiveEndDate"];
    effectiveEndDate = v5->_effectiveEndDate;
    v5->_effectiveEndDate = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IssueDate"];
    issueDate = v5->_issueDate;
    v5->_issueDate = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DiagnosticTest"];
    diagnosticTest = v5->_diagnosticTest;
    v5->_diagnosticTest = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Status"];
    status = v5->_status;
    v5->_status = v21;
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
    v58.receiver = self;
    v58.super_class = HKDiagnosticTestReport;
    if (![(HKMedicalRecord *)&v58 isEquivalent:v5])
    {
      goto LABEL_44;
    }

    v6 = [(HKDiagnosticTestReport *)self diagnosticTestCodingCollection];
    v7 = [v5 diagnosticTestCodingCollection];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [v5 diagnosticTestCodingCollection];
      if (!v9)
      {
        goto LABEL_43;
      }

      v10 = v9;
      v11 = [(HKDiagnosticTestReport *)self diagnosticTestCodingCollection];
      v12 = [v5 diagnosticTestCodingCollection];
      v13 = [v11 isEqual:v12];

      if (!v13)
      {
        goto LABEL_44;
      }
    }

    v6 = [(HKDiagnosticTestReport *)self results];
    v15 = [v5 results];
    v8 = v15;
    if (v6 == v15)
    {
    }

    else
    {
      v16 = [v5 results];
      if (!v16)
      {
        goto LABEL_43;
      }

      v17 = v16;
      v18 = [(HKDiagnosticTestReport *)self results];
      v19 = [v5 results];
      v20 = [v18 isEqualToArray:v19];

      if (!v20)
      {
        goto LABEL_44;
      }
    }

    v6 = [(HKDiagnosticTestReport *)self effectiveStartDate];
    v21 = [v5 effectiveStartDate];
    v8 = v21;
    if (v6 == v21)
    {
    }

    else
    {
      v22 = [v5 effectiveStartDate];
      if (!v22)
      {
        goto LABEL_43;
      }

      v23 = v22;
      v24 = [(HKDiagnosticTestReport *)self effectiveStartDate];
      v25 = [v5 effectiveStartDate];
      v26 = [v24 isEqual:v25];

      if (!v26)
      {
        goto LABEL_44;
      }
    }

    v6 = [(HKDiagnosticTestReport *)self statusCoding];
    v27 = [v5 statusCoding];
    v8 = v27;
    if (v6 == v27)
    {
    }

    else
    {
      v28 = [v5 statusCoding];
      if (!v28)
      {
        goto LABEL_43;
      }

      v29 = v28;
      v30 = [(HKDiagnosticTestReport *)self statusCoding];
      v31 = [v5 statusCoding];
      v32 = [v30 isEqual:v31];

      if (!v32)
      {
        goto LABEL_44;
      }
    }

    v6 = [(HKDiagnosticTestReport *)self effectiveEndDate];
    v33 = [v5 effectiveEndDate];
    v8 = v33;
    if (v6 == v33)
    {
    }

    else
    {
      v34 = [v5 effectiveEndDate];
      if (!v34)
      {
        goto LABEL_43;
      }

      v35 = v34;
      v36 = [(HKDiagnosticTestReport *)self effectiveEndDate];
      v37 = [v5 effectiveEndDate];
      v38 = [v36 isEqual:v37];

      if (!v38)
      {
        goto LABEL_44;
      }
    }

    v6 = [(HKDiagnosticTestReport *)self issueDate];
    v39 = [v5 issueDate];
    v8 = v39;
    if (v6 == v39)
    {
    }

    else
    {
      v40 = [v5 issueDate];
      if (!v40)
      {
        goto LABEL_43;
      }

      v41 = v40;
      v42 = [(HKDiagnosticTestReport *)self issueDate];
      v43 = [v5 issueDate];
      v44 = [v42 isEqual:v43];

      if (!v44)
      {
        goto LABEL_44;
      }
    }

    v6 = [(HKDiagnosticTestReport *)self diagnosticTest];
    v45 = [v5 diagnosticTest];
    v8 = v45;
    if (v6 == v45)
    {
    }

    else
    {
      v46 = [v5 diagnosticTest];
      if (!v46)
      {
        goto LABEL_43;
      }

      v47 = v46;
      v48 = [(HKDiagnosticTestReport *)self diagnosticTest];
      v49 = [v5 diagnosticTest];
      v50 = [v48 isEqual:v49];

      if (!v50)
      {
        goto LABEL_44;
      }
    }

    v6 = [(HKDiagnosticTestReport *)self status];
    v51 = [v5 status];
    v8 = v51;
    if (v6 == v51)
    {

LABEL_48:
      v14 = 1;
      goto LABEL_45;
    }

    v52 = [v5 status];
    if (v52)
    {
      v53 = v52;
      v54 = [(HKDiagnosticTestReport *)self status];
      v55 = [v5 status];
      v56 = [v54 isEqual:v55];

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
  v2 = [(HKDiagnosticTestReport *)self statusCoding];
  v3 = [HKMedicalCodingCollection collectionWithCoding:v2];

  return v3;
}

- (void)_setDiagnosticTestCodingCollection:(id)a3
{
  v4 = [a3 copy];
  diagnosticTestCodingCollection = self->_diagnosticTestCodingCollection;
  self->_diagnosticTestCodingCollection = v4;

  v8 = [(HKDiagnosticTestReport *)self diagnosticTestCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v8];
  diagnosticTest = self->_diagnosticTest;
  self->_diagnosticTest = v6;
}

- (void)_setResults:(id)a3
{
  v4 = [a3 copy];
  results = self->_results;
  self->_results = v4;

  MEMORY[0x1EEE66BB8](v4, results);
}

- (void)_setEffectiveStartDate:(id)a3
{
  v4 = [a3 copy];
  effectiveStartDate = self->_effectiveStartDate;
  self->_effectiveStartDate = v4;

  MEMORY[0x1EEE66BB8](v4, effectiveStartDate);
}

- (void)_setStatusCoding:(id)a3
{
  v4 = [a3 copy];
  statusCoding = self->_statusCoding;
  self->_statusCoding = v4;

  v8 = [(HKDiagnosticTestReport *)self statusCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v8];
  status = self->_status;
  self->_status = v6;
}

- (void)_setEffectiveEndDate:(id)a3
{
  v4 = [a3 copy];
  effectiveEndDate = self->_effectiveEndDate;
  self->_effectiveEndDate = v4;

  MEMORY[0x1EEE66BB8](v4, effectiveEndDate);
}

- (void)_setIssueDate:(id)a3
{
  v4 = [a3 copy];
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
    v4 = [(HKDiagnosticTestReport *)self diagnosticTestCodingCollection];
    v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
  }

  return v3;
}

- (void)_setDiagnosticTest:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      [HKDiagnosticTestReport _setDiagnosticTest:v5];
    }
  }

  v6 = [v4 copy];
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
    v4 = [(HKDiagnosticTestReport *)self statusCodingCollection];
    v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
  }

  return v3;
}

- (void)_setStatus:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      [HKDiagnosticTestReport _setStatus:v5];
    }
  }

  v6 = [v4 copy];
  status = self->_status;
  self->_status = v6;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v13.receiver = self;
  v13.super_class = HKDiagnosticTestReport;
  v5 = [(HKMedicalRecord *)&v13 _validateWithConfiguration:a3.var0, a3.var1];
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