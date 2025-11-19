@interface HKClinicalNoteRecord
+ (id)_newClinicalNoteRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 statusCoding:(id)a15 documentTypeCodingCollection:(id)a16 noteCreationDate:(id)a17 categoriesCodingCollections:(id)a18 relevantStartDate:(id)a19 relevantEndDate:(id)a20 authors:(id)a21 config:(id)a22;
+ (id)cachedConceptRelationshipKeyPaths;
+ (id)clinicalNoteRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 country:(id)a12 state:(unint64_t)a13 statusCoding:(id)a14 documentTypeCodingCollection:(id)a15 noteCreationDate:(id)a16 categoriesCodingCollections:(id)a17 relevantStartDate:(id)a18 relevantEndDate:(id)a19 authors:(id)a20;
+ (id)defaultDisplayString;
+ (id)indexableConceptKeyPaths;
- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
- (BOOL)isEquivalent:(id)a3;
- (HKClinicalNoteRecord)init;
- (HKClinicalNoteRecord)initWithCoder:(id)a3;
- (HKConcept)documentType;
- (HKConcept)status;
- (NSArray)categories;
- (NSString)description;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)codingsForKeyPath:(id)a3 error:(id *)a4;
- (id)medicalRecordCodings;
- (id)statusCodingCollection;
- (void)_setAuthors:(id)a3;
- (void)_setCategories:(id)a3;
- (void)_setCategoriesCodingCollections:(id)a3;
- (void)_setDocumentType:(id)a3;
- (void)_setDocumentTypeCodingCollection:(id)a3;
- (void)_setNoteCreationDate:(id)a3;
- (void)_setRelevantEndDate:(id)a3;
- (void)_setRelevantStartDate:(id)a3;
- (void)_setStatus:(id)a3;
- (void)_setStatusCoding:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKClinicalNoteRecord

+ (id)clinicalNoteRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 country:(id)a12 state:(unint64_t)a13 statusCoding:(id)a14 documentTypeCodingCollection:(id)a15 noteCreationDate:(id)a16 categoriesCodingCollections:(id)a17 relevantStartDate:(id)a18 relevantEndDate:(id)a19 authors:(id)a20
{
  v40 = a5;
  v49 = a3;
  v48 = a4;
  v24 = a6;
  v43 = a7;
  v42 = a8;
  v47 = a10;
  v46 = a11;
  v45 = a12;
  v44 = a14;
  v25 = a15;
  v26 = a16;
  v39 = a17;
  v27 = a18;
  v38 = a19;
  v28 = a20;
  v29 = @"modifiedDate";
  v30 = v24;
  v31 = v30;
  if (v26)
  {
    v32 = @"noteCreationDate";

    v33 = [v26 dateForUTC];

    v29 = v32;
    if (!v27)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v33 = v30;
  if (v27)
  {
LABEL_3:
    v34 = @"relevantStartDate";

    v35 = [v27 dateForUTC];

    v33 = v35;
    v29 = v34;
  }

LABEL_4:
  v36 = [HKSemanticDate semanticDateWithKeyPath:v29 date:v33];
  v41 = [HKClinicalNoteRecord clinicalNoteRecordWithType:v49 note:v48 enteredInError:v40 modifiedDate:v31 originIdentifier:v43 locale:v42 extractionVersion:a9 device:v47 metadata:v46 sortDate:v36 country:v45 state:a13 statusCoding:v44 documentTypeCodingCollection:v25 noteCreationDate:v26 categoriesCodingCollections:v39 relevantStartDate:v27 relevantEndDate:v38 authors:v28];

  return v41;
}

- (id)medicalRecordCodings
{
  v2 = [(HKClinicalNoteRecord *)self documentTypeCodingCollection];
  v3 = [v2 codings];

  return v3;
}

+ (id)defaultDisplayString
{
  v2 = HKHealthKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"UNSPECIFIED_CLINICAL_NOTE" value:&stru_1F05FF230 table:@"Localizable-Clinical-Notes"];

  return v3;
}

+ (id)_newClinicalNoteRecordWithType:(id)a3 note:(id)a4 enteredInError:(BOOL)a5 modifiedDate:(id)a6 originIdentifier:(id)a7 locale:(id)a8 extractionVersion:(int64_t)a9 device:(id)a10 metadata:(id)a11 sortDate:(id)a12 country:(id)a13 state:(unint64_t)a14 statusCoding:(id)a15 documentTypeCodingCollection:(id)a16 noteCreationDate:(id)a17 categoriesCodingCollections:(id)a18 relevantStartDate:(id)a19 relevantEndDate:(id)a20 authors:(id)a21 config:(id)a22
{
  v55 = a5;
  v22 = a15;
  v23 = a16;
  v24 = a17;
  v25 = a18;
  v26 = a19;
  v27 = a20;
  v28 = a21;
  v29 = a22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __305__HKClinicalNoteRecord__newClinicalNoteRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_statusCoding_documentTypeCodingCollection_noteCreationDate_categoriesCodingCollections_relevantStartDate_relevantEndDate_authors_config___block_invoke;
  aBlock[3] = &unk_1E737E580;
  v59 = v22;
  v60 = v23;
  v61 = v24;
  v62 = v25;
  v63 = v26;
  v64 = v27;
  v65 = v28;
  v66 = v29;
  v54 = v29;
  v53 = v28;
  v52 = v27;
  v51 = v26;
  v50 = v25;
  v49 = v24;
  v48 = v23;
  v47 = v22;
  v30 = a13;
  v31 = a12;
  v32 = a11;
  v33 = a10;
  v34 = a8;
  v35 = a7;
  v36 = a6;
  v37 = a4;
  v38 = a3;
  v39 = _Block_copy(aBlock);
  v57.receiver = a1;
  v57.super_class = &OBJC_METACLASS___HKClinicalNoteRecord;
  v56 = objc_msgSendSuper2(&v57, sel__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config_, v38, v37, v55, v36, v35, v34, a9, v33, v32, v31, v30, a14, v39);

  return v56;
}

void __305__HKClinicalNoteRecord__newClinicalNoteRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_statusCoding_documentTypeCodingCollection_noteCreationDate_categoriesCodingCollections_relevantStartDate_relevantEndDate_authors_config___block_invoke(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = [*(a1 + 32) copy];
  v4 = v18[22];
  v18[22] = v3;

  v5 = [*(a1 + 40) copy];
  v6 = v18[23];
  v18[23] = v5;

  v7 = [*(a1 + 48) copy];
  v8 = v18[24];
  v18[24] = v7;

  v9 = [*(a1 + 56) copy];
  v10 = v18[25];
  v18[25] = v9;

  v11 = [*(a1 + 64) copy];
  v12 = v18[26];
  v18[26] = v11;

  v13 = [*(a1 + 72) copy];
  v14 = v18[27];
  v18[27] = v13;

  v15 = [*(a1 + 80) copy];
  v16 = v18[28];
  v18[28] = v15;

  v17 = *(a1 + 88);
  if (v17)
  {
    (*(v17 + 16))(v17, v18);
  }
}

- (HKClinicalNoteRecord)init
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
  v10.super_class = HKClinicalNoteRecord;
  v6 = [(HKSample *)&v10 description];
  relevantEndDate = self->_relevantEndDate;
  v8 = [v3 stringWithFormat:@"<%@:%p super=%@statusCoding = %@documentTypeCodingCollection = %@noteCreationDate = %@categoriesCodingCollections = %@relevantStartDate = %@relevantEndDate = %@authors = %@>", v5, self, v6, self->_statusCoding, self->_documentTypeCodingCollection, self->_noteCreationDate, self->_categoriesCodingCollections, self->_relevantStartDate, relevantEndDate, self->_authors];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKClinicalNoteRecord;
  v4 = a3;
  [(HKMedicalRecord *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_statusCoding forKey:{@"StatusCoding", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_documentTypeCodingCollection forKey:@"DocumentTypeCodingCollection"];
  [v4 encodeObject:self->_noteCreationDate forKey:@"NoteCreationDate"];
  [v4 encodeObject:self->_categoriesCodingCollections forKey:@"CategoriesCodingCollections"];
  [v4 encodeObject:self->_relevantStartDate forKey:@"RelevantStartDate"];
  [v4 encodeObject:self->_relevantEndDate forKey:@"RelevantEndDate"];
  [v4 encodeObject:self->_authors forKey:@"Authors"];
  [v4 encodeObject:self->_status forKey:@"Status"];
  [v4 encodeObject:self->_documentType forKey:@"DocumentType"];
  [v4 encodeObject:self->_categories forKey:@"Categories"];
}

- (HKClinicalNoteRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = HKClinicalNoteRecord;
  v5 = [(HKMedicalRecord *)&v30 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StatusCoding"];
    statusCoding = v5->_statusCoding;
    v5->_statusCoding = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DocumentTypeCodingCollection"];
    documentTypeCodingCollection = v5->_documentTypeCodingCollection;
    v5->_documentTypeCodingCollection = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NoteCreationDate"];
    noteCreationDate = v5->_noteCreationDate;
    v5->_noteCreationDate = v10;

    v12 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"CategoriesCodingCollections"];
    categoriesCodingCollections = v5->_categoriesCodingCollections;
    v5->_categoriesCodingCollections = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RelevantStartDate"];
    relevantStartDate = v5->_relevantStartDate;
    v5->_relevantStartDate = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RelevantEndDate"];
    relevantEndDate = v5->_relevantEndDate;
    v5->_relevantEndDate = v17;

    v19 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"Authors"];
    authors = v5->_authors;
    v5->_authors = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Status"];
    status = v5->_status;
    v5->_status = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DocumentType"];
    documentType = v5->_documentType;
    v5->_documentType = v24;

    v26 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v27 = [v4 decodeObjectOfClasses:v26 forKey:@"Categories"];
    categories = v5->_categories;
    v5->_categories = v27;
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
    v70.receiver = self;
    v70.super_class = HKClinicalNoteRecord;
    if (![(HKMedicalRecord *)&v70 isEquivalent:v5])
    {
      goto LABEL_54;
    }

    v6 = [(HKClinicalNoteRecord *)self statusCoding];
    v7 = [v5 statusCoding];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [v5 statusCoding];
      if (!v9)
      {
        goto LABEL_53;
      }

      v10 = v9;
      v11 = [(HKClinicalNoteRecord *)self statusCoding];
      v12 = [v5 statusCoding];
      v13 = [v11 isEqual:v12];

      if (!v13)
      {
        goto LABEL_54;
      }
    }

    v6 = [(HKClinicalNoteRecord *)self documentTypeCodingCollection];
    v15 = [v5 documentTypeCodingCollection];
    v8 = v15;
    if (v6 == v15)
    {
    }

    else
    {
      v16 = [v5 documentTypeCodingCollection];
      if (!v16)
      {
        goto LABEL_53;
      }

      v17 = v16;
      v18 = [(HKClinicalNoteRecord *)self documentTypeCodingCollection];
      v19 = [v5 documentTypeCodingCollection];
      v20 = [v18 isEqual:v19];

      if (!v20)
      {
        goto LABEL_54;
      }
    }

    v6 = [(HKClinicalNoteRecord *)self noteCreationDate];
    v21 = [v5 noteCreationDate];
    v8 = v21;
    if (v6 == v21)
    {
    }

    else
    {
      v22 = [v5 noteCreationDate];
      if (!v22)
      {
        goto LABEL_53;
      }

      v23 = v22;
      v24 = [(HKClinicalNoteRecord *)self noteCreationDate];
      v25 = [v5 noteCreationDate];
      v26 = [v24 isEqual:v25];

      if (!v26)
      {
        goto LABEL_54;
      }
    }

    v6 = [(HKClinicalNoteRecord *)self categoriesCodingCollections];
    v27 = [v5 categoriesCodingCollections];
    v8 = v27;
    if (v6 == v27)
    {
    }

    else
    {
      v28 = [v5 categoriesCodingCollections];
      if (!v28)
      {
        goto LABEL_53;
      }

      v29 = v28;
      v30 = [(HKClinicalNoteRecord *)self categoriesCodingCollections];
      v31 = [v5 categoriesCodingCollections];
      v32 = [v30 isEqualToArray:v31];

      if (!v32)
      {
        goto LABEL_54;
      }
    }

    v6 = [(HKClinicalNoteRecord *)self relevantStartDate];
    v33 = [v5 relevantStartDate];
    v8 = v33;
    if (v6 == v33)
    {
    }

    else
    {
      v34 = [v5 relevantStartDate];
      if (!v34)
      {
        goto LABEL_53;
      }

      v35 = v34;
      v36 = [(HKClinicalNoteRecord *)self relevantStartDate];
      v37 = [v5 relevantStartDate];
      v38 = [v36 isEqual:v37];

      if (!v38)
      {
        goto LABEL_54;
      }
    }

    v6 = [(HKClinicalNoteRecord *)self relevantEndDate];
    v39 = [v5 relevantEndDate];
    v8 = v39;
    if (v6 == v39)
    {
    }

    else
    {
      v40 = [v5 relevantEndDate];
      if (!v40)
      {
        goto LABEL_53;
      }

      v41 = v40;
      v42 = [(HKClinicalNoteRecord *)self relevantEndDate];
      v43 = [v5 relevantEndDate];
      v44 = [v42 isEqual:v43];

      if (!v44)
      {
        goto LABEL_54;
      }
    }

    v6 = [(HKClinicalNoteRecord *)self authors];
    v45 = [v5 authors];
    v8 = v45;
    if (v6 == v45)
    {
    }

    else
    {
      v46 = [v5 authors];
      if (!v46)
      {
        goto LABEL_53;
      }

      v47 = v46;
      v48 = [(HKClinicalNoteRecord *)self authors];
      v49 = [v5 authors];
      v50 = [v48 isEqualToArray:v49];

      if (!v50)
      {
        goto LABEL_54;
      }
    }

    v6 = [(HKClinicalNoteRecord *)self status];
    v51 = [v5 status];
    v8 = v51;
    if (v6 == v51)
    {
    }

    else
    {
      v52 = [v5 status];
      if (!v52)
      {
        goto LABEL_53;
      }

      v53 = v52;
      v54 = [(HKClinicalNoteRecord *)self status];
      v55 = [v5 status];
      v56 = [v54 isEqual:v55];

      if (!v56)
      {
        goto LABEL_54;
      }
    }

    v6 = [(HKClinicalNoteRecord *)self documentType];
    v57 = [v5 documentType];
    v8 = v57;
    if (v6 == v57)
    {
    }

    else
    {
      v58 = [v5 documentType];
      if (!v58)
      {
        goto LABEL_53;
      }

      v59 = v58;
      v60 = [(HKClinicalNoteRecord *)self documentType];
      v61 = [v5 documentType];
      v62 = [v60 isEqual:v61];

      if (!v62)
      {
        goto LABEL_54;
      }
    }

    v6 = [(HKClinicalNoteRecord *)self categories];
    v63 = [v5 categories];
    v8 = v63;
    if (v6 == v63)
    {

LABEL_58:
      v14 = 1;
      goto LABEL_55;
    }

    v64 = [v5 categories];
    if (v64)
    {
      v65 = v64;
      v66 = [(HKClinicalNoteRecord *)self categories];
      v67 = [v5 categories];
      v68 = [v66 isEqualToArray:v67];

      if (v68)
      {
        goto LABEL_58;
      }

LABEL_54:
      v14 = 0;
LABEL_55:

      goto LABEL_56;
    }

LABEL_53:

    goto LABEL_54;
  }

  v14 = 0;
LABEL_56:

  return v14;
}

- (id)statusCodingCollection
{
  v2 = [(HKClinicalNoteRecord *)self statusCoding];
  v3 = [HKMedicalCodingCollection collectionWithCoding:v2];

  return v3;
}

- (void)_setStatusCoding:(id)a3
{
  v4 = [a3 copy];
  statusCoding = self->_statusCoding;
  self->_statusCoding = v4;

  v8 = [(HKClinicalNoteRecord *)self statusCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v8];
  status = self->_status;
  self->_status = v6;
}

- (void)_setDocumentTypeCodingCollection:(id)a3
{
  v4 = [a3 copy];
  documentTypeCodingCollection = self->_documentTypeCodingCollection;
  self->_documentTypeCodingCollection = v4;

  v8 = [(HKClinicalNoteRecord *)self documentTypeCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v8];
  documentType = self->_documentType;
  self->_documentType = v6;
}

- (void)_setNoteCreationDate:(id)a3
{
  v4 = [a3 copy];
  noteCreationDate = self->_noteCreationDate;
  self->_noteCreationDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setCategoriesCodingCollections:(id)a3
{
  v4 = [a3 copy];
  categoriesCodingCollections = self->_categoriesCodingCollections;
  self->_categoriesCodingCollections = v4;

  v8 = [(HKClinicalNoteRecord *)self categoriesCodingCollections];
  v6 = [v8 hk_map:&__block_literal_global_53];
  categories = self->_categories;
  self->_categories = v6;
}

- (void)_setRelevantStartDate:(id)a3
{
  v4 = [a3 copy];
  relevantStartDate = self->_relevantStartDate;
  self->_relevantStartDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setRelevantEndDate:(id)a3
{
  v4 = [a3 copy];
  relevantEndDate = self->_relevantEndDate;
  self->_relevantEndDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setAuthors:(id)a3
{
  v4 = [a3 copy];
  authors = self->_authors;
  self->_authors = v4;

  MEMORY[0x1EEE66BB8]();
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
    v4 = [(HKClinicalNoteRecord *)self statusCodingCollection];
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
      [(HKClinicalNoteRecord *)v5 _setStatus:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  v13 = [v4 copy];
  status = self->_status;
  self->_status = v13;
}

- (HKConcept)documentType
{
  documentType = self->_documentType;
  if (documentType)
  {
    v3 = documentType;
  }

  else
  {
    v4 = [(HKClinicalNoteRecord *)self documentTypeCodingCollection];
    v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:v4];
  }

  return v3;
}

- (void)_setDocumentType:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      [(HKClinicalNoteRecord *)v5 _setDocumentType:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  v13 = [v4 copy];
  documentType = self->_documentType;
  self->_documentType = v13;
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
    v4 = [(HKClinicalNoteRecord *)self categoriesCodingCollections];
    v3 = [v4 hk_map:&__block_literal_global_89];
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
      [(HKClinicalNoteRecord *)v5 _setCategories:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  v13 = [v4 copy];
  categories = self->_categories;
  self->_categories = v13;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v13.receiver = self;
  v13.super_class = HKClinicalNoteRecord;
  v5 = [(HKMedicalRecord *)&v13 _validateWithConfiguration:a3.var0, a3.var1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    if (self->_statusCoding)
    {
      if (self->_documentTypeCodingCollection)
      {
        if (self->_categoriesCodingCollections)
        {
          v8 = 0;
          goto LABEL_12;
        }

        v9 = MEMORY[0x1E696ABC0];
        v10 = objc_opt_class();
        v11 = @"%@: categoriesCodingCollections must not be nil";
      }

      else
      {
        v9 = MEMORY[0x1E696ABC0];
        v10 = objc_opt_class();
        v11 = @"%@: documentTypeCodingCollection must not be nil";
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

+ (id)indexableConceptKeyPaths
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___HKClinicalNoteRecord;
  v2 = objc_msgSendSuper2(&v5, sel_indexableConceptKeyPaths);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"status"];
  [v3 addObject:@"documentType"];
  [v3 addObject:@"categories"];

  return v3;
}

+ (id)cachedConceptRelationshipKeyPaths
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___HKClinicalNoteRecord;
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
    v12 = 0;
    goto LABEL_9;
  }

  if ([v7 isEqualToString:@"status"])
  {
    v9 = [(HKClinicalNoteRecord *)self statusCoding];
    v10 = [HKMedicalCodingCollection collectionWithCoding:v9];
    v11 = [HKIndexableObject indexableObjectWithObject:v10];
    v17[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];

LABEL_7:
LABEL_8:

    goto LABEL_9;
  }

  if ([v8 isEqualToString:@"documentType"])
  {
    v9 = [(HKClinicalNoteRecord *)self documentTypeCodingCollection];
    v10 = [HKIndexableObject indexableObjectWithObject:v9];
    v16 = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    goto LABEL_7;
  }

  if ([v8 isEqualToString:@"categories"])
  {
    v9 = [(HKClinicalNoteRecord *)self categoriesCodingCollections];
    v12 = [HKConceptIndexUtilities indexedCodingsForCodingCollections:v9 context:v6 error:a4];
    goto LABEL_8;
  }

  v15.receiver = self;
  v15.super_class = HKClinicalNoteRecord;
  v12 = [(HKMedicalRecord *)&v15 codingsForKeyPath:v6 error:a4];
LABEL_9:

  v13 = *MEMORY[0x1E69E9840];

  return v12;
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

  if ([v10 isEqualToString:@"status"])
  {
    if (HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 1, v9, a5))
    {
      v12 = [v8 firstObject];
      v13 = [v12 object];
      [(HKClinicalNoteRecord *)self _setStatus:v13];
LABEL_8:

      v14 = 1;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ([v11 isEqualToString:@"documentType"])
  {
    if (HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], 1, v9, a5))
    {
      v12 = [v8 firstObject];
      v13 = [v12 object];
      [(HKClinicalNoteRecord *)self _setDocumentType:v13];
      goto LABEL_8;
    }

LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  if ([v11 isEqualToString:@"categories"])
  {
    v16 = [(HKClinicalNoteRecord *)self categoriesCodingCollections];
    v17 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", v8, [v16 count], v9, a5);

    v14 = v17 != 0;
    if (v17)
    {
      [(HKClinicalNoteRecord *)self _setCategories:v17];
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = HKClinicalNoteRecord;
    v14 = [(HKMedicalRecord *)&v18 applyConcepts:v8 forKeyPath:v9 error:a5];
  }

LABEL_10:

  return v14;
}

@end