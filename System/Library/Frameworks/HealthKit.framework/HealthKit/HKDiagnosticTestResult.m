@interface HKDiagnosticTestResult
+ (id)_newDiagnosticTestResultWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 diagnosticTestCodingCollection:(id)a15 value:(id)a16 referenceRanges:(id)a17 effectiveStartDate:(id)a18 category:(id)a19 categoriesCodingCollections:(id)a20 issueDate:(id)a21 effectiveEndDate:(id)a22 statusCoding:(id)a23 interpretationCodingCollections:(id)a24 comments:(id)a25 bodySiteCodingCollection:(id)a26 methodCodingCollection:(id)a27 performers:(id)a28 referenceRangeStatus:(int64_t)a29 config:(id)a30;
+ (id)cachedConceptRelationshipKeyPaths;
+ (id)defaultDisplayString;
+ (id)diagnosticTestResultWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 country:(id)a12 state:(unint64_t)a13 diagnosticTestCodingCollection:(id)a14 value:(id)a15 referenceRanges:(id)a16 effectiveStartDate:(id)a17 category:(id)a18 categoriesCodingCollections:(id)a19 issueDate:(id)a20 effectiveEndDate:(id)a21 statusCoding:(id)a22 interpretationCodingCollections:(id)a23 comments:(id)a24 bodySiteCodingCollection:(id)a25 methodCodingCollection:(id)a26 performers:(id)a27 referenceRangeStatus:(int64_t)a28;
+ (id)indexableConceptKeyPaths;
- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
- (BOOL)isEquivalent:(id)a3;
- (HKConcept)bodySite;
- (HKConcept)diagnosticTest;
- (HKConcept)method;
- (HKConcept)status;
- (HKDiagnosticTestResult)init;
- (HKDiagnosticTestResult)initWithCoder:(id)a3;
- (NSArray)categories;
- (NSArray)interpretation;
- (NSString)description;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)codingsForKeyPath:(id)a3 error:(id *)a4;
- (id)medicalRecordCodings;
- (id)statusCodingCollection;
- (int64_t)recordCategoryType;
- (void)_setBodySite:(id)a3;
- (void)_setBodySiteCodingCollection:(id)a3;
- (void)_setCategories:(id)a3;
- (void)_setCategoriesCodingCollections:(id)a3;
- (void)_setCategory:(id)a3;
- (void)_setComments:(id)a3;
- (void)_setDiagnosticTest:(id)a3;
- (void)_setDiagnosticTestCodingCollection:(id)a3;
- (void)_setEffectiveEndDate:(id)a3;
- (void)_setEffectiveStartDate:(id)a3;
- (void)_setInterpretation:(id)a3;
- (void)_setInterpretationCodingCollections:(id)a3;
- (void)_setIssueDate:(id)a3;
- (void)_setMethod:(id)a3;
- (void)_setMethodCodingCollection:(id)a3;
- (void)_setPerformers:(id)a3;
- (void)_setReferenceRanges:(id)a3;
- (void)_setStatus:(id)a3;
- (void)_setStatusCoding:(id)a3;
- (void)_setValue:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKDiagnosticTestResult

- (id)medicalRecordCodings
{
  v2 = [(HKDiagnosticTestResult *)self diagnosticTestCodingCollection];
  v3 = [v2 codings];

  return v3;
}

+ (id)defaultDisplayString
{
  v2 = HKHealthKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"UNSPECIFIED_DIAGNOSTIC_TEST_RESULT" value:&stru_1F05FF230 table:@"Localizable-Clinical-Health-Records"];

  return v3;
}

- (int64_t)recordCategoryType
{
  v2 = [(HKDiagnosticTestResult *)self category];
  v3 = HKDiagnosticTestResultCategoryFromNSString(v2);

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

+ (id)diagnosticTestResultWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 country:(id)a12 state:(unint64_t)a13 diagnosticTestCodingCollection:(id)a14 value:(id)a15 referenceRanges:(id)a16 effectiveStartDate:(id)a17 category:(id)a18 categoriesCodingCollections:(id)a19 issueDate:(id)a20 effectiveEndDate:(id)a21 statusCoding:(id)a22 interpretationCodingCollections:(id)a23 comments:(id)a24 bodySiteCodingCollection:(id)a25 methodCodingCollection:(id)a26 performers:(id)a27 referenceRangeStatus:(int64_t)a28
{
  v59 = a5;
  v70 = a3;
  v69 = a4;
  v32 = a6;
  v68 = a7;
  v67 = a8;
  v66 = a10;
  v65 = a11;
  v64 = a12;
  v63 = a14;
  v62 = a15;
  v58 = a16;
  v33 = a17;
  v57 = a18;
  v61 = a19;
  v34 = a20;
  v35 = a21;
  v56 = a22;
  v55 = a23;
  v36 = a24;
  v54 = a25;
  v37 = a26;
  v53 = a27;
  v38 = @"modifiedDate";
  v39 = v32;
  v40 = v34;
  v41 = v39;
  v42 = v35;
  if (v40)
  {
    v43 = @"issueDate";

    v44 = [v40 dateForUTC];

    v38 = v43;
    v35 = v42;
    if (!v42)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v44 = v39;
  if (v35)
  {
LABEL_3:
    v45 = @"effectiveEndDate";

    v46 = [v35 dateForUTC];

    v44 = v46;
    v38 = v45;
  }

LABEL_4:
  if (v33)
  {
    v47 = @"effectiveStartDate";

    v48 = [v33 dateForUTC];

    v44 = v48;
    v38 = v47;
  }

  v49 = v33;
  v52 = v33;
  v50 = [HKSemanticDate semanticDateWithKeyPath:v38 date:v44];
  v60 = [HKDiagnosticTestResult diagnosticTestResultWithType:v70 note:v69 enteredInError:v59 modifiedDate:v41 originIdentifier:v68 locale:v67 extractionVersion:a9 device:v66 metadata:v65 sortDate:v50 country:v64 state:a13 diagnosticTestCodingCollection:v63 value:v62 referenceRanges:v58 effectiveStartDate:v49 category:v57 categoriesCodingCollections:v61 issueDate:v40 effectiveEndDate:v42 statusCoding:v56 interpretationCodingCollections:v55 comments:v36 bodySiteCodingCollection:v54 methodCodingCollection:v37 performers:v53 referenceRangeStatus:a28];

  return v60;
}

+ (id)_newDiagnosticTestResultWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 diagnosticTestCodingCollection:(id)a15 value:(id)a16 referenceRanges:(id)a17 effectiveStartDate:(id)a18 category:(id)a19 categoriesCodingCollections:(id)a20 issueDate:(id)a21 effectiveEndDate:(id)a22 statusCoding:(id)a23 interpretationCodingCollections:(id)a24 comments:(id)a25 bodySiteCodingCollection:(id)a26 methodCodingCollection:(id)a27 performers:(id)a28 referenceRangeStatus:(int64_t)a29 config:(id)a30
{
  v69 = a5;
  v77 = a15;
  v75 = a16;
  v73 = a17;
  v71 = a18;
  v57 = a19;
  v30 = a20;
  v31 = a21;
  v32 = a22;
  v33 = a23;
  v34 = a24;
  v35 = a25;
  v36 = a26;
  v37 = a27;
  v38 = a28;
  v39 = a30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __450__HKDiagnosticTestResult__newDiagnosticTestResultWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_diagnosticTestCodingCollection_value_referenceRanges_effectiveStartDate_category_categoriesCodingCollections_issueDate_effectiveEndDate_statusCoding_interpretationCodingCollections_comments_bodySiteCodingCollection_methodCodingCollection_performers_referenceRangeStatus_config___block_invoke;
  aBlock[3] = &unk_1E737FF50;
  v81 = v77;
  v82 = v75;
  v83 = v73;
  v84 = v71;
  v85 = v57;
  v86 = v30;
  v87 = v31;
  v88 = v32;
  v89 = v33;
  v90 = v34;
  v91 = v35;
  v92 = v36;
  v93 = v37;
  v94 = v38;
  v95 = v39;
  v96 = a29;
  v68 = v39;
  v67 = v38;
  v66 = v37;
  v65 = v36;
  v64 = v35;
  v63 = v34;
  v62 = v33;
  v61 = v32;
  v60 = v31;
  v59 = v30;
  v58 = v57;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v40 = a13;
  v41 = a12;
  v42 = a11;
  v43 = a10;
  v44 = a8;
  v45 = a7;
  v46 = a6;
  v47 = a4;
  v48 = a3;
  v49 = _Block_copy(aBlock);
  v79.receiver = a1;
  v79.super_class = &OBJC_METACLASS___HKDiagnosticTestResult;
  v70 = objc_msgSendSuper2(&v79, sel__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config_, v48, v47, v69, v46, v45, v44, a9, v43, v42, v41, v40, a14, v49);

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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKDiagnosticTestResult;
  v4 = a3;
  [(HKMedicalRecord *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_diagnosticTestCodingCollection forKey:{@"DiagnosticTestCodingCollection", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_value forKey:@"Value"];
  [v4 encodeObject:self->_referenceRanges forKey:@"ReferenceRanges"];
  [v4 encodeObject:self->_effectiveStartDate forKey:@"EffectiveStartDate"];
  [v4 encodeObject:self->_category forKey:@"Category"];
  [v4 encodeObject:self->_categoriesCodingCollections forKey:@"CategoriesCodingCollections"];
  [v4 encodeObject:self->_issueDate forKey:@"IssueDate"];
  [v4 encodeObject:self->_effectiveEndDate forKey:@"EffectiveEndDate"];
  [v4 encodeObject:self->_statusCoding forKey:@"StatusCoding"];
  [v4 encodeObject:self->_interpretationCodingCollections forKey:@"InterpretationCodingCollections"];
  [v4 encodeObject:self->_comments forKey:@"Comments"];
  [v4 encodeObject:self->_bodySiteCodingCollection forKey:@"BodySiteCodingCollection"];
  [v4 encodeObject:self->_methodCodingCollection forKey:@"MethodCodingCollection"];
  [v4 encodeObject:self->_performers forKey:@"Performers"];
  [v4 encodeInteger:self->_referenceRangeStatus forKey:@"ReferenceRangeStatus"];
  [v4 encodeObject:self->_diagnosticTest forKey:@"DiagnosticTest"];
  [v4 encodeObject:self->_categories forKey:@"Categories"];
  [v4 encodeObject:self->_status forKey:@"Status"];
  [v4 encodeObject:self->_interpretation forKey:@"Interpretation"];
  [v4 encodeObject:self->_bodySite forKey:@"BodySite"];
  [v4 encodeObject:self->_method forKey:@"Method"];
}

- (HKDiagnosticTestResult)initWithCoder:(id)a3
{
  v4 = a3;
  v53.receiver = self;
  v53.super_class = HKDiagnosticTestResult;
  v5 = [(HKMedicalRecord *)&v53 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DiagnosticTestCodingCollection"];
    diagnosticTestCodingCollection = v5->_diagnosticTestCodingCollection;
    v5->_diagnosticTestCodingCollection = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Value"];
    value = v5->_value;
    v5->_value = v8;

    v10 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"ReferenceRanges"];
    referenceRanges = v5->_referenceRanges;
    v5->_referenceRanges = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EffectiveStartDate"];
    effectiveStartDate = v5->_effectiveStartDate;
    v5->_effectiveStartDate = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Category"];
    category = v5->_category;
    v5->_category = v15;

    v17 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"CategoriesCodingCollections"];
    categoriesCodingCollections = v5->_categoriesCodingCollections;
    v5->_categoriesCodingCollections = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IssueDate"];
    issueDate = v5->_issueDate;
    v5->_issueDate = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EffectiveEndDate"];
    effectiveEndDate = v5->_effectiveEndDate;
    v5->_effectiveEndDate = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StatusCoding"];
    statusCoding = v5->_statusCoding;
    v5->_statusCoding = v24;

    v26 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v27 = [v4 decodeObjectOfClasses:v26 forKey:@"InterpretationCodingCollections"];
    interpretationCodingCollections = v5->_interpretationCodingCollections;
    v5->_interpretationCodingCollections = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Comments"];
    comments = v5->_comments;
    v5->_comments = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BodySiteCodingCollection"];
    bodySiteCodingCollection = v5->_bodySiteCodingCollection;
    v5->_bodySiteCodingCollection = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MethodCodingCollection"];
    methodCodingCollection = v5->_methodCodingCollection;
    v5->_methodCodingCollection = v33;

    v35 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v36 = [v4 decodeObjectOfClasses:v35 forKey:@"Performers"];
    performers = v5->_performers;
    v5->_performers = v36;

    v5->_referenceRangeStatus = [v4 decodeIntegerForKey:@"ReferenceRangeStatus"];
    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DiagnosticTest"];
    diagnosticTest = v5->_diagnosticTest;
    v5->_diagnosticTest = v38;

    v40 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v41 = [v4 decodeObjectOfClasses:v40 forKey:@"Categories"];
    categories = v5->_categories;
    v5->_categories = v41;

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Status"];
    status = v5->_status;
    v5->_status = v43;

    v45 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v46 = [v4 decodeObjectOfClasses:v45 forKey:@"Interpretation"];
    interpretation = v5->_interpretation;
    v5->_interpretation = v46;

    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BodySite"];
    bodySite = v5->_bodySite;
    v5->_bodySite = v48;

    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Method"];
    method = v5->_method;
    v5->_method = v50;
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
    v131.receiver = self;
    v131.super_class = HKDiagnosticTestResult;
    if (![(HKMedicalRecord *)&v131 isEquivalent:v5])
    {
      goto LABEL_105;
    }

    v6 = [(HKDiagnosticTestResult *)self diagnosticTestCodingCollection];
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
        goto LABEL_104;
      }

      v10 = v9;
      v11 = [(HKDiagnosticTestResult *)self diagnosticTestCodingCollection];
      v12 = [v5 diagnosticTestCodingCollection];
      v13 = [v11 isEqual:v12];

      if (!v13)
      {
        goto LABEL_105;
      }
    }

    v6 = [(HKDiagnosticTestResult *)self value];
    v15 = [v5 value];
    v8 = v15;
    if (v6 == v15)
    {
    }

    else
    {
      v16 = [v5 value];
      if (!v16)
      {
        goto LABEL_104;
      }

      v17 = v16;
      v18 = [(HKDiagnosticTestResult *)self value];
      v19 = [v5 value];
      v20 = [v18 isEqual:v19];

      if (!v20)
      {
        goto LABEL_105;
      }
    }

    v6 = [(HKDiagnosticTestResult *)self referenceRanges];
    v21 = [v5 referenceRanges];
    v8 = v21;
    if (v6 == v21)
    {
    }

    else
    {
      v22 = [v5 referenceRanges];
      if (!v22)
      {
        goto LABEL_104;
      }

      v23 = v22;
      v24 = [(HKDiagnosticTestResult *)self referenceRanges];
      v25 = [v5 referenceRanges];
      v26 = [v24 isEqualToArray:v25];

      if (!v26)
      {
        goto LABEL_105;
      }
    }

    v6 = [(HKDiagnosticTestResult *)self effectiveStartDate];
    v27 = [v5 effectiveStartDate];
    v8 = v27;
    if (v6 == v27)
    {
    }

    else
    {
      v28 = [v5 effectiveStartDate];
      if (!v28)
      {
        goto LABEL_104;
      }

      v29 = v28;
      v30 = [(HKDiagnosticTestResult *)self effectiveStartDate];
      v31 = [v5 effectiveStartDate];
      v32 = [v30 isEqual:v31];

      if (!v32)
      {
        goto LABEL_105;
      }
    }

    v6 = [(HKDiagnosticTestResult *)self category];
    v33 = [v5 category];
    v8 = v33;
    if (v6 == v33)
    {
    }

    else
    {
      v34 = [v5 category];
      if (!v34)
      {
        goto LABEL_104;
      }

      v35 = v34;
      v36 = [(HKDiagnosticTestResult *)self category];
      v37 = [v5 category];
      v38 = [v36 isEqualToString:v37];

      if (!v38)
      {
        goto LABEL_105;
      }
    }

    v6 = [(HKDiagnosticTestResult *)self categoriesCodingCollections];
    v39 = [v5 categoriesCodingCollections];
    v8 = v39;
    if (v6 == v39)
    {
    }

    else
    {
      v40 = [v5 categoriesCodingCollections];
      if (!v40)
      {
        goto LABEL_104;
      }

      v41 = v40;
      v42 = [(HKDiagnosticTestResult *)self categoriesCodingCollections];
      v43 = [v5 categoriesCodingCollections];
      v44 = [v42 isEqualToArray:v43];

      if (!v44)
      {
        goto LABEL_105;
      }
    }

    v6 = [(HKDiagnosticTestResult *)self issueDate];
    v45 = [v5 issueDate];
    v8 = v45;
    if (v6 == v45)
    {
    }

    else
    {
      v46 = [v5 issueDate];
      if (!v46)
      {
        goto LABEL_104;
      }

      v47 = v46;
      v48 = [(HKDiagnosticTestResult *)self issueDate];
      v49 = [v5 issueDate];
      v50 = [v48 isEqual:v49];

      if (!v50)
      {
        goto LABEL_105;
      }
    }

    v6 = [(HKDiagnosticTestResult *)self effectiveEndDate];
    v51 = [v5 effectiveEndDate];
    v8 = v51;
    if (v6 == v51)
    {
    }

    else
    {
      v52 = [v5 effectiveEndDate];
      if (!v52)
      {
        goto LABEL_104;
      }

      v53 = v52;
      v54 = [(HKDiagnosticTestResult *)self effectiveEndDate];
      v55 = [v5 effectiveEndDate];
      v56 = [v54 isEqual:v55];

      if (!v56)
      {
        goto LABEL_105;
      }
    }

    v6 = [(HKDiagnosticTestResult *)self statusCoding];
    v57 = [v5 statusCoding];
    v8 = v57;
    if (v6 == v57)
    {
    }

    else
    {
      v58 = [v5 statusCoding];
      if (!v58)
      {
        goto LABEL_104;
      }

      v59 = v58;
      v60 = [(HKDiagnosticTestResult *)self statusCoding];
      v61 = [v5 statusCoding];
      v62 = [v60 isEqual:v61];

      if (!v62)
      {
        goto LABEL_105;
      }
    }

    v6 = [(HKDiagnosticTestResult *)self interpretationCodingCollections];
    v63 = [v5 interpretationCodingCollections];
    v8 = v63;
    if (v6 == v63)
    {
    }

    else
    {
      v64 = [v5 interpretationCodingCollections];
      if (!v64)
      {
        goto LABEL_104;
      }

      v65 = v64;
      v66 = [(HKDiagnosticTestResult *)self interpretationCodingCollections];
      v67 = [v5 interpretationCodingCollections];
      v68 = [v66 isEqualToArray:v67];

      if (!v68)
      {
        goto LABEL_105;
      }
    }

    v6 = [(HKDiagnosticTestResult *)self comments];
    v69 = [v5 comments];
    v8 = v69;
    if (v6 == v69)
    {
    }

    else
    {
      v70 = [v5 comments];
      if (!v70)
      {
        goto LABEL_104;
      }

      v71 = v70;
      v72 = [(HKDiagnosticTestResult *)self comments];
      v73 = [v5 comments];
      v74 = [v72 isEqualToString:v73];

      if (!v74)
      {
        goto LABEL_105;
      }
    }

    v6 = [(HKDiagnosticTestResult *)self bodySiteCodingCollection];
    v75 = [v5 bodySiteCodingCollection];
    v8 = v75;
    if (v6 == v75)
    {
    }

    else
    {
      v76 = [v5 bodySiteCodingCollection];
      if (!v76)
      {
        goto LABEL_104;
      }

      v77 = v76;
      v78 = [(HKDiagnosticTestResult *)self bodySiteCodingCollection];
      v79 = [v5 bodySiteCodingCollection];
      v80 = [v78 isEqual:v79];

      if (!v80)
      {
        goto LABEL_105;
      }
    }

    v6 = [(HKDiagnosticTestResult *)self methodCodingCollection];
    v81 = [v5 methodCodingCollection];
    v8 = v81;
    if (v6 == v81)
    {
    }

    else
    {
      v82 = [v5 methodCodingCollection];
      if (!v82)
      {
        goto LABEL_104;
      }

      v83 = v82;
      v84 = [(HKDiagnosticTestResult *)self methodCodingCollection];
      v85 = [v5 methodCodingCollection];
      v86 = [v84 isEqual:v85];

      if (!v86)
      {
        goto LABEL_105;
      }
    }

    v6 = [(HKDiagnosticTestResult *)self performers];
    v87 = [v5 performers];
    v8 = v87;
    if (v6 == v87)
    {
    }

    else
    {
      v88 = [v5 performers];
      if (!v88)
      {
        goto LABEL_104;
      }

      v89 = v88;
      v90 = [(HKDiagnosticTestResult *)self performers];
      v91 = [v5 performers];
      v92 = [v90 isEqualToArray:v91];

      if (!v92)
      {
        goto LABEL_105;
      }
    }

    v93 = [(HKDiagnosticTestResult *)self referenceRangeStatus];
    if (v93 != [v5 referenceRangeStatus])
    {
      goto LABEL_105;
    }

    v6 = [(HKDiagnosticTestResult *)self diagnosticTest];
    v94 = [v5 diagnosticTest];
    v8 = v94;
    if (v6 == v94)
    {
    }

    else
    {
      v95 = [v5 diagnosticTest];
      if (!v95)
      {
        goto LABEL_104;
      }

      v96 = v95;
      v97 = [(HKDiagnosticTestResult *)self diagnosticTest];
      v98 = [v5 diagnosticTest];
      v99 = [v97 isEqual:v98];

      if (!v99)
      {
        goto LABEL_105;
      }
    }

    v6 = [(HKDiagnosticTestResult *)self categories];
    v100 = [v5 categories];
    v8 = v100;
    if (v6 == v100)
    {
    }

    else
    {
      v101 = [v5 categories];
      if (!v101)
      {
        goto LABEL_104;
      }

      v102 = v101;
      v103 = [(HKDiagnosticTestResult *)self categories];
      v104 = [v5 categories];
      v105 = [v103 isEqualToArray:v104];

      if (!v105)
      {
        goto LABEL_105;
      }
    }

    v6 = [(HKDiagnosticTestResult *)self status];
    v106 = [v5 status];
    v8 = v106;
    if (v6 == v106)
    {
    }

    else
    {
      v107 = [v5 status];
      if (!v107)
      {
        goto LABEL_104;
      }

      v108 = v107;
      v109 = [(HKDiagnosticTestResult *)self status];
      v110 = [v5 status];
      v111 = [v109 isEqual:v110];

      if (!v111)
      {
        goto LABEL_105;
      }
    }

    v6 = [(HKDiagnosticTestResult *)self interpretation];
    v112 = [v5 interpretation];
    v8 = v112;
    if (v6 == v112)
    {
    }

    else
    {
      v113 = [v5 interpretation];
      if (!v113)
      {
        goto LABEL_104;
      }

      v114 = v113;
      v115 = [(HKDiagnosticTestResult *)self interpretation];
      v116 = [v5 interpretation];
      v117 = [v115 isEqualToArray:v116];

      if (!v117)
      {
        goto LABEL_105;
      }
    }

    v6 = [(HKDiagnosticTestResult *)self bodySite];
    v118 = [v5 bodySite];
    v8 = v118;
    if (v6 == v118)
    {
    }

    else
    {
      v119 = [v5 bodySite];
      if (!v119)
      {
        goto LABEL_104;
      }

      v120 = v119;
      v121 = [(HKDiagnosticTestResult *)self bodySite];
      v122 = [v5 bodySite];
      v123 = [v121 isEqual:v122];

      if (!v123)
      {
        goto LABEL_105;
      }
    }

    v6 = [(HKDiagnosticTestResult *)self method];
    v124 = [v5 method];
    v8 = v124;
    if (v6 == v124)
    {

LABEL_109:
      v14 = 1;
      goto LABEL_106;
    }

    v125 = [v5 method];
    if (v125)
    {
      v126 = v125;
      v127 = [(HKDiagnosticTestResult *)self method];
      v128 = [v5 method];
      v129 = [v127 isEqual:v128];

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
  v2 = [(HKDiagnosticTestResult *)self statusCoding];
  v3 = [HKMedicalCodingCollection collectionWithCoding:v2];

  return v3;
}

- (void)_setDiagnosticTestCodingCollection:(id)a3
{
  v4 = [a3 copy];
  diagnosticTestCodingCollection = self->_diagnosticTestCodingCollection;
  self->_diagnosticTestCodingCollection = v4;

  v8 = [(HKDiagnosticTestResult *)self diagnosticTestCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v8];
  diagnosticTest = self->_diagnosticTest;
  self->_diagnosticTest = v6;
}

- (void)_setValue:(id)a3
{
  v4 = [a3 copy];
  value = self->_value;
  self->_value = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setReferenceRanges:(id)a3
{
  v4 = [a3 copy];
  referenceRanges = self->_referenceRanges;
  self->_referenceRanges = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setEffectiveStartDate:(id)a3
{
  v4 = [a3 copy];
  effectiveStartDate = self->_effectiveStartDate;
  self->_effectiveStartDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setCategory:(id)a3
{
  v4 = [a3 copy];
  category = self->_category;
  self->_category = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setCategoriesCodingCollections:(id)a3
{
  v4 = [a3 copy];
  categoriesCodingCollections = self->_categoriesCodingCollections;
  self->_categoriesCodingCollections = v4;

  v8 = [(HKDiagnosticTestResult *)self categoriesCodingCollections];
  v6 = [v8 hk_map:&__block_literal_global_72];
  categories = self->_categories;
  self->_categories = v6;
}

- (void)_setIssueDate:(id)a3
{
  v4 = [a3 copy];
  issueDate = self->_issueDate;
  self->_issueDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setEffectiveEndDate:(id)a3
{
  v4 = [a3 copy];
  effectiveEndDate = self->_effectiveEndDate;
  self->_effectiveEndDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setStatusCoding:(id)a3
{
  v4 = [a3 copy];
  statusCoding = self->_statusCoding;
  self->_statusCoding = v4;

  v8 = [(HKDiagnosticTestResult *)self statusCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v8];
  status = self->_status;
  self->_status = v6;
}

- (void)_setInterpretationCodingCollections:(id)a3
{
  v4 = [a3 copy];
  interpretationCodingCollections = self->_interpretationCodingCollections;
  self->_interpretationCodingCollections = v4;

  if (self->_interpretationCodingCollections)
  {
    v9 = [(HKDiagnosticTestResult *)self interpretationCodingCollections];
    v6 = [(NSArray *)v9 hk_map:&__block_literal_global_157];
    interpretation = self->_interpretation;
    self->_interpretation = v6;

    v8 = v9;
  }

  else
  {
    v8 = self->_interpretation;
    self->_interpretation = 0;
  }
}

- (void)_setComments:(id)a3
{
  v4 = [a3 copy];
  comments = self->_comments;
  self->_comments = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setBodySiteCodingCollection:(id)a3
{
  v4 = [a3 copy];
  bodySiteCodingCollection = self->_bodySiteCodingCollection;
  self->_bodySiteCodingCollection = v4;

  if (self->_bodySiteCodingCollection)
  {
    v9 = [(HKDiagnosticTestResult *)self bodySiteCodingCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v9];
    bodySite = self->_bodySite;
    self->_bodySite = v6;

    v8 = v9;
  }

  else
  {
    v8 = self->_bodySite;
    self->_bodySite = 0;
  }
}

- (void)_setMethodCodingCollection:(id)a3
{
  v4 = [a3 copy];
  methodCodingCollection = self->_methodCodingCollection;
  self->_methodCodingCollection = v4;

  if (self->_methodCodingCollection)
  {
    v9 = [(HKDiagnosticTestResult *)self methodCodingCollection];
    v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v9];
    method = self->_method;
    self->_method = v6;

    v8 = v9;
  }

  else
  {
    v8 = self->_method;
    self->_method = 0;
  }
}

- (void)_setPerformers:(id)a3
{
  v4 = [a3 copy];
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
    v4 = [(HKDiagnosticTestResult *)self diagnosticTestCodingCollection];
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
      [(HKDiagnosticTestResult *)v5 _setDiagnosticTest:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  v13 = [v4 copy];
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
    v4 = [(HKDiagnosticTestResult *)self categoriesCodingCollections];
    v3 = [v4 hk_map:&__block_literal_global_159];
  }

  return v3;
}

- (void)_setCategories:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      [(HKDiagnosticTestResult *)v5 _setCategories:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  v13 = [v4 copy];
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
    v4 = [(HKDiagnosticTestResult *)self statusCodingCollection];
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
      [(HKDiagnosticTestResult *)v5 _setStatus:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  v13 = [v4 copy];
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
      v4 = [(HKDiagnosticTestResult *)self interpretationCodingCollections];
      v3 = [v4 hk_map:&__block_literal_global_161];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setInterpretation:(id)a3
{
  v4 = [a3 copy];
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
      v4 = [(HKDiagnosticTestResult *)self bodySiteCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setBodySite:(id)a3
{
  v4 = [a3 copy];
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
      v4 = [(HKDiagnosticTestResult *)self methodCodingCollection];
      v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setMethod:(id)a3
{
  v4 = [a3 copy];
  method = self->_method;
  self->_method = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v13.receiver = self;
  v13.super_class = HKDiagnosticTestResult;
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
  v5.receiver = a1;
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
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___HKDiagnosticTestResult;
  v2 = objc_msgSendSuper2(&v4, sel_cachedConceptRelationshipKeyPaths);

  return v2;
}

- (id)codingsForKeyPath:(id)a3 error:(id *)a4
{
  v27[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [HKConceptIndexUtilities firstComponentForKeyPath:v6 error:a4];
  v8 = v7;
  if (!v7)
  {
    v13 = 0;
    goto LABEL_12;
  }

  if ([v7 isEqualToString:@"diagnosticTest"])
  {
    v9 = [(HKDiagnosticTestResult *)self diagnosticTestCodingCollection];
    v10 = [HKIndexableObject indexableObjectWithObject:v9];
    v27[0] = v10;
    v11 = MEMORY[0x1E695DEC8];
    v12 = v27;
LABEL_4:
    v13 = [v11 arrayWithObjects:v12 count:1];

    goto LABEL_12;
  }

  if ([v8 isEqualToString:@"categories"])
  {
    v14 = [(HKDiagnosticTestResult *)self categoriesCodingCollections];
LABEL_8:
    v15 = v14;
    v13 = [HKConceptIndexUtilities indexedCodingsForCodingCollections:v14 context:v6 error:a4];
LABEL_11:

    goto LABEL_12;
  }

  if ([v8 isEqualToString:@"status"])
  {
    v15 = [(HKDiagnosticTestResult *)self statusCoding];
    v16 = [HKMedicalCodingCollection collectionWithCoding:v15];
    v17 = [HKIndexableObject indexableObjectWithObject:v16];
    v26 = v17;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];

    goto LABEL_11;
  }

  if ([v8 isEqualToString:@"interpretation"])
  {
    v20 = [(HKDiagnosticTestResult *)self interpretationCodingCollections];

    if (v20)
    {
      v14 = [(HKDiagnosticTestResult *)self interpretationCodingCollections];
      goto LABEL_8;
    }

    goto LABEL_24;
  }

  if ([v8 isEqualToString:@"bodySite"])
  {
    v21 = [(HKDiagnosticTestResult *)self bodySiteCodingCollection];

    if (v21)
    {
      v9 = [(HKDiagnosticTestResult *)self bodySiteCodingCollection];
      v10 = [HKIndexableObject indexableObjectWithObject:v9];
      v25 = v10;
      v11 = MEMORY[0x1E695DEC8];
      v12 = &v25;
      goto LABEL_4;
    }

    goto LABEL_24;
  }

  if ([v8 isEqualToString:@"method"])
  {
    v22 = [(HKDiagnosticTestResult *)self methodCodingCollection];

    if (v22)
    {
      v9 = [(HKDiagnosticTestResult *)self methodCodingCollection];
      v10 = [HKIndexableObject indexableObjectWithObject:v9];
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
  v13 = [(HKMedicalRecord *)&v23 codingsForKeyPath:v6 error:a4];
LABEL_12:

  v18 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [HKConceptIndexUtilities firstComponentForKeyPath:v9 error:a5];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_13;
  }

  if (![v10 isEqualToString:@"diagnosticTest"])
  {
    if ([v11 isEqualToString:@"categories"])
    {
      v13 = [(HKDiagnosticTestResult *)self categoriesCodingCollections];
      v14 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", v8, [v13 count], v9, a5);

      LOBYTE(a5) = v14 != 0;
      if (v14)
      {
        [(HKDiagnosticTestResult *)self _setCategories:v14];
      }

LABEL_9:

      goto LABEL_14;
    }

    if ([v11 isEqualToString:@"status"])
    {
      if (HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 1, v9, a5))
      {
        a5 = [v8 firstObject];
        v12 = [a5 object];
        [(HKDiagnosticTestResult *)self _setStatus:v12];
        goto LABEL_5;
      }

LABEL_13:
      LOBYTE(a5) = 0;
      goto LABEL_14;
    }

    if ([v11 isEqualToString:@"interpretation"])
    {
      v16 = [(HKDiagnosticTestResult *)self interpretationCodingCollections];

      if (v16)
      {
        v17 = [(HKDiagnosticTestResult *)self interpretationCodingCollections];
        v14 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", v8, [v17 count], v9, a5);

        LOBYTE(a5) = v14 != 0;
        if (v14)
        {
          [(HKDiagnosticTestResult *)self _setInterpretation:v14];
        }

        goto LABEL_9;
      }

      v22 = HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 0, v9, a5);
    }

    else
    {
      if ([v11 isEqualToString:@"bodySite"])
      {
        v18 = [v8 count];
        v19 = [(HKDiagnosticTestResult *)self bodySiteCodingCollection];
        LODWORD(a5) = HKIndexableObjectCheckCardinalityForIndexRestore(v18, v19 != 0, v9, a5);

        if (!a5)
        {
          goto LABEL_14;
        }

        a5 = [v8 firstObject];
        v12 = [a5 object];
        [(HKDiagnosticTestResult *)self _setBodySite:v12];
        goto LABEL_5;
      }

      if ([v11 isEqualToString:@"method"])
      {
        v20 = [v8 count];
        v21 = [(HKDiagnosticTestResult *)self methodCodingCollection];
        LODWORD(a5) = HKIndexableObjectCheckCardinalityForIndexRestore(v20, v21 != 0, v9, a5);

        if (!a5)
        {
          goto LABEL_14;
        }

        a5 = [v8 firstObject];
        v12 = [a5 object];
        [(HKDiagnosticTestResult *)self _setMethod:v12];
        goto LABEL_5;
      }

      v23.receiver = self;
      v23.super_class = HKDiagnosticTestResult;
      v22 = [(HKMedicalRecord *)&v23 applyConcepts:v8 forKeyPath:v9 error:a5];
    }

    LOBYTE(a5) = v22;
    goto LABEL_14;
  }

  if (!HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 1, v9, a5))
  {
    goto LABEL_13;
  }

  a5 = [v8 firstObject];
  v12 = [a5 object];
  [(HKDiagnosticTestResult *)self _setDiagnosticTest:v12];
LABEL_5:

  LOBYTE(a5) = 1;
LABEL_14:

  return a5;
}

@end