@interface HKClinicalNoteRecord
+ (id)_newClinicalNoteRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 statusCoding:(id)self5 documentTypeCodingCollection:(id)self6 noteCreationDate:(id)self7 categoriesCodingCollections:(id)self8 relevantStartDate:(id)self9 relevantEndDate:(id)endDate authors:(id)authors config:(id)config;
+ (id)cachedConceptRelationshipKeyPaths;
+ (id)clinicalNoteRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 country:(id)self2 state:(unint64_t)self3 statusCoding:(id)self4 documentTypeCodingCollection:(id)self5 noteCreationDate:(id)self6 categoriesCodingCollections:(id)self7 relevantStartDate:(id)self8 relevantEndDate:(id)self9 authors:(id)authors;
+ (id)defaultDisplayString;
+ (id)indexableConceptKeyPaths;
- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error;
- (BOOL)isEquivalent:(id)equivalent;
- (HKClinicalNoteRecord)init;
- (HKClinicalNoteRecord)initWithCoder:(id)coder;
- (HKConcept)documentType;
- (HKConcept)status;
- (NSArray)categories;
- (NSString)description;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)codingsForKeyPath:(id)path error:(id *)error;
- (id)medicalRecordCodings;
- (id)statusCodingCollection;
- (void)_setAuthors:(id)authors;
- (void)_setCategories:(id)categories;
- (void)_setCategoriesCodingCollections:(id)collections;
- (void)_setDocumentType:(id)type;
- (void)_setDocumentTypeCodingCollection:(id)collection;
- (void)_setNoteCreationDate:(id)date;
- (void)_setRelevantEndDate:(id)date;
- (void)_setRelevantStartDate:(id)date;
- (void)_setStatus:(id)status;
- (void)_setStatusCoding:(id)coding;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKClinicalNoteRecord

+ (id)clinicalNoteRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 country:(id)self2 state:(unint64_t)self3 statusCoding:(id)self4 documentTypeCodingCollection:(id)self5 noteCreationDate:(id)self6 categoriesCodingCollections:(id)self7 relevantStartDate:(id)self8 relevantEndDate:(id)self9 authors:(id)authors
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
  creationDateCopy = creationDate;
  collectionsCopy = collections;
  startDateCopy = startDate;
  endDateCopy = endDate;
  authorsCopy = authors;
  v29 = @"modifiedDate";
  v30 = dateCopy;
  v31 = v30;
  if (creationDateCopy)
  {
    v32 = @"noteCreationDate";

    dateForUTC = [creationDateCopy dateForUTC];

    v29 = v32;
    if (!startDateCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dateForUTC = v30;
  if (startDateCopy)
  {
LABEL_3:
    v34 = @"relevantStartDate";

    dateForUTC2 = [startDateCopy dateForUTC];

    dateForUTC = dateForUTC2;
    v29 = v34;
  }

LABEL_4:
  v36 = [HKSemanticDate semanticDateWithKeyPath:v29 date:dateForUTC];
  v41 = [HKClinicalNoteRecord clinicalNoteRecordWithType:typeCopy note:noteCopy enteredInError:errorCopy modifiedDate:v31 originIdentifier:identifierCopy locale:localeCopy extractionVersion:version device:deviceCopy metadata:metadataCopy sortDate:v36 country:countryCopy state:state statusCoding:codingCopy documentTypeCodingCollection:collectionCopy noteCreationDate:creationDateCopy categoriesCodingCollections:collectionsCopy relevantStartDate:startDateCopy relevantEndDate:endDateCopy authors:authorsCopy];

  return v41;
}

- (id)medicalRecordCodings
{
  documentTypeCodingCollection = [(HKClinicalNoteRecord *)self documentTypeCodingCollection];
  codings = [documentTypeCodingCollection codings];

  return codings;
}

+ (id)defaultDisplayString
{
  v2 = HKHealthKitFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"UNSPECIFIED_CLINICAL_NOTE" value:&stru_1F05FF230 table:@"Localizable-Clinical-Notes"];

  return v3;
}

+ (id)_newClinicalNoteRecordWithType:(id)type note:(id)note enteredInError:(BOOL)error modifiedDate:(id)date originIdentifier:(id)identifier locale:(id)locale extractionVersion:(int64_t)version device:(id)self0 metadata:(id)self1 sortDate:(id)self2 country:(id)self3 state:(unint64_t)self4 statusCoding:(id)self5 documentTypeCodingCollection:(id)self6 noteCreationDate:(id)self7 categoriesCodingCollections:(id)self8 relevantStartDate:(id)self9 relevantEndDate:(id)endDate authors:(id)authors config:(id)config
{
  errorCopy = error;
  codingCopy = coding;
  collectionCopy = collection;
  creationDateCopy = creationDate;
  collectionsCopy = collections;
  startDateCopy = startDate;
  endDateCopy = endDate;
  authorsCopy = authors;
  configCopy = config;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __305__HKClinicalNoteRecord__newClinicalNoteRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_statusCoding_documentTypeCodingCollection_noteCreationDate_categoriesCodingCollections_relevantStartDate_relevantEndDate_authors_config___block_invoke;
  aBlock[3] = &unk_1E737E580;
  v59 = codingCopy;
  v60 = collectionCopy;
  v61 = creationDateCopy;
  v62 = collectionsCopy;
  v63 = startDateCopy;
  v64 = endDateCopy;
  v65 = authorsCopy;
  v66 = configCopy;
  v54 = configCopy;
  v53 = authorsCopy;
  v52 = endDateCopy;
  v51 = startDateCopy;
  v50 = collectionsCopy;
  v49 = creationDateCopy;
  v48 = collectionCopy;
  v47 = codingCopy;
  countryCopy = country;
  sortDateCopy = sortDate;
  metadataCopy = metadata;
  deviceCopy = device;
  localeCopy = locale;
  identifierCopy = identifier;
  dateCopy = date;
  noteCopy = note;
  typeCopy = type;
  v39 = _Block_copy(aBlock);
  v57.receiver = self;
  v57.super_class = &OBJC_METACLASS___HKClinicalNoteRecord;
  v56 = objc_msgSendSuper2(&v57, sel__newMedicalRecordWithType_note_enteredInError_modifiedDate_originIdentifier_locale_extractionVersion_device_metadata_sortDate_country_state_config_, typeCopy, noteCopy, errorCopy, dateCopy, identifierCopy, localeCopy, version, deviceCopy, metadataCopy, sortDateCopy, countryCopy, state, v39);

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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKClinicalNoteRecord;
  coderCopy = coder;
  [(HKMedicalRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_statusCoding forKey:{@"StatusCoding", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_documentTypeCodingCollection forKey:@"DocumentTypeCodingCollection"];
  [coderCopy encodeObject:self->_noteCreationDate forKey:@"NoteCreationDate"];
  [coderCopy encodeObject:self->_categoriesCodingCollections forKey:@"CategoriesCodingCollections"];
  [coderCopy encodeObject:self->_relevantStartDate forKey:@"RelevantStartDate"];
  [coderCopy encodeObject:self->_relevantEndDate forKey:@"RelevantEndDate"];
  [coderCopy encodeObject:self->_authors forKey:@"Authors"];
  [coderCopy encodeObject:self->_status forKey:@"Status"];
  [coderCopy encodeObject:self->_documentType forKey:@"DocumentType"];
  [coderCopy encodeObject:self->_categories forKey:@"Categories"];
}

- (HKClinicalNoteRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = HKClinicalNoteRecord;
  v5 = [(HKMedicalRecord *)&v30 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StatusCoding"];
    statusCoding = v5->_statusCoding;
    v5->_statusCoding = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DocumentTypeCodingCollection"];
    documentTypeCodingCollection = v5->_documentTypeCodingCollection;
    v5->_documentTypeCodingCollection = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NoteCreationDate"];
    noteCreationDate = v5->_noteCreationDate;
    v5->_noteCreationDate = v10;

    v12 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"CategoriesCodingCollections"];
    categoriesCodingCollections = v5->_categoriesCodingCollections;
    v5->_categoriesCodingCollections = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RelevantStartDate"];
    relevantStartDate = v5->_relevantStartDate;
    v5->_relevantStartDate = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RelevantEndDate"];
    relevantEndDate = v5->_relevantEndDate;
    v5->_relevantEndDate = v17;

    v19 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"Authors"];
    authors = v5->_authors;
    v5->_authors = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Status"];
    status = v5->_status;
    v5->_status = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DocumentType"];
    documentType = v5->_documentType;
    v5->_documentType = v24;

    v26 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"Categories"];
    categories = v5->_categories;
    v5->_categories = v27;
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
    v70.receiver = self;
    v70.super_class = HKClinicalNoteRecord;
    if (![(HKMedicalRecord *)&v70 isEquivalent:v5])
    {
      goto LABEL_54;
    }

    statusCoding = [(HKClinicalNoteRecord *)self statusCoding];
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
        goto LABEL_53;
      }

      v10 = statusCoding3;
      statusCoding4 = [(HKClinicalNoteRecord *)self statusCoding];
      statusCoding5 = [v5 statusCoding];
      v13 = [statusCoding4 isEqual:statusCoding5];

      if (!v13)
      {
        goto LABEL_54;
      }
    }

    statusCoding = [(HKClinicalNoteRecord *)self documentTypeCodingCollection];
    documentTypeCodingCollection = [v5 documentTypeCodingCollection];
    v8 = documentTypeCodingCollection;
    if (statusCoding == documentTypeCodingCollection)
    {
    }

    else
    {
      documentTypeCodingCollection2 = [v5 documentTypeCodingCollection];
      if (!documentTypeCodingCollection2)
      {
        goto LABEL_53;
      }

      v17 = documentTypeCodingCollection2;
      documentTypeCodingCollection3 = [(HKClinicalNoteRecord *)self documentTypeCodingCollection];
      documentTypeCodingCollection4 = [v5 documentTypeCodingCollection];
      v20 = [documentTypeCodingCollection3 isEqual:documentTypeCodingCollection4];

      if (!v20)
      {
        goto LABEL_54;
      }
    }

    statusCoding = [(HKClinicalNoteRecord *)self noteCreationDate];
    noteCreationDate = [v5 noteCreationDate];
    v8 = noteCreationDate;
    if (statusCoding == noteCreationDate)
    {
    }

    else
    {
      noteCreationDate2 = [v5 noteCreationDate];
      if (!noteCreationDate2)
      {
        goto LABEL_53;
      }

      v23 = noteCreationDate2;
      noteCreationDate3 = [(HKClinicalNoteRecord *)self noteCreationDate];
      noteCreationDate4 = [v5 noteCreationDate];
      v26 = [noteCreationDate3 isEqual:noteCreationDate4];

      if (!v26)
      {
        goto LABEL_54;
      }
    }

    statusCoding = [(HKClinicalNoteRecord *)self categoriesCodingCollections];
    categoriesCodingCollections = [v5 categoriesCodingCollections];
    v8 = categoriesCodingCollections;
    if (statusCoding == categoriesCodingCollections)
    {
    }

    else
    {
      categoriesCodingCollections2 = [v5 categoriesCodingCollections];
      if (!categoriesCodingCollections2)
      {
        goto LABEL_53;
      }

      v29 = categoriesCodingCollections2;
      categoriesCodingCollections3 = [(HKClinicalNoteRecord *)self categoriesCodingCollections];
      categoriesCodingCollections4 = [v5 categoriesCodingCollections];
      v32 = [categoriesCodingCollections3 isEqualToArray:categoriesCodingCollections4];

      if (!v32)
      {
        goto LABEL_54;
      }
    }

    statusCoding = [(HKClinicalNoteRecord *)self relevantStartDate];
    relevantStartDate = [v5 relevantStartDate];
    v8 = relevantStartDate;
    if (statusCoding == relevantStartDate)
    {
    }

    else
    {
      relevantStartDate2 = [v5 relevantStartDate];
      if (!relevantStartDate2)
      {
        goto LABEL_53;
      }

      v35 = relevantStartDate2;
      relevantStartDate3 = [(HKClinicalNoteRecord *)self relevantStartDate];
      relevantStartDate4 = [v5 relevantStartDate];
      v38 = [relevantStartDate3 isEqual:relevantStartDate4];

      if (!v38)
      {
        goto LABEL_54;
      }
    }

    statusCoding = [(HKClinicalNoteRecord *)self relevantEndDate];
    relevantEndDate = [v5 relevantEndDate];
    v8 = relevantEndDate;
    if (statusCoding == relevantEndDate)
    {
    }

    else
    {
      relevantEndDate2 = [v5 relevantEndDate];
      if (!relevantEndDate2)
      {
        goto LABEL_53;
      }

      v41 = relevantEndDate2;
      relevantEndDate3 = [(HKClinicalNoteRecord *)self relevantEndDate];
      relevantEndDate4 = [v5 relevantEndDate];
      v44 = [relevantEndDate3 isEqual:relevantEndDate4];

      if (!v44)
      {
        goto LABEL_54;
      }
    }

    statusCoding = [(HKClinicalNoteRecord *)self authors];
    authors = [v5 authors];
    v8 = authors;
    if (statusCoding == authors)
    {
    }

    else
    {
      authors2 = [v5 authors];
      if (!authors2)
      {
        goto LABEL_53;
      }

      v47 = authors2;
      authors3 = [(HKClinicalNoteRecord *)self authors];
      authors4 = [v5 authors];
      v50 = [authors3 isEqualToArray:authors4];

      if (!v50)
      {
        goto LABEL_54;
      }
    }

    statusCoding = [(HKClinicalNoteRecord *)self status];
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
        goto LABEL_53;
      }

      v53 = status2;
      status3 = [(HKClinicalNoteRecord *)self status];
      status4 = [v5 status];
      v56 = [status3 isEqual:status4];

      if (!v56)
      {
        goto LABEL_54;
      }
    }

    statusCoding = [(HKClinicalNoteRecord *)self documentType];
    documentType = [v5 documentType];
    v8 = documentType;
    if (statusCoding == documentType)
    {
    }

    else
    {
      documentType2 = [v5 documentType];
      if (!documentType2)
      {
        goto LABEL_53;
      }

      v59 = documentType2;
      documentType3 = [(HKClinicalNoteRecord *)self documentType];
      documentType4 = [v5 documentType];
      v62 = [documentType3 isEqual:documentType4];

      if (!v62)
      {
        goto LABEL_54;
      }
    }

    statusCoding = [(HKClinicalNoteRecord *)self categories];
    categories = [v5 categories];
    v8 = categories;
    if (statusCoding == categories)
    {

LABEL_58:
      v14 = 1;
      goto LABEL_55;
    }

    categories2 = [v5 categories];
    if (categories2)
    {
      v65 = categories2;
      categories3 = [(HKClinicalNoteRecord *)self categories];
      categories4 = [v5 categories];
      v68 = [categories3 isEqualToArray:categories4];

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
  statusCoding = [(HKClinicalNoteRecord *)self statusCoding];
  v3 = [HKMedicalCodingCollection collectionWithCoding:statusCoding];

  return v3;
}

- (void)_setStatusCoding:(id)coding
{
  v4 = [coding copy];
  statusCoding = self->_statusCoding;
  self->_statusCoding = v4;

  statusCodingCollection = [(HKClinicalNoteRecord *)self statusCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:statusCodingCollection];
  status = self->_status;
  self->_status = v6;
}

- (void)_setDocumentTypeCodingCollection:(id)collection
{
  v4 = [collection copy];
  documentTypeCodingCollection = self->_documentTypeCodingCollection;
  self->_documentTypeCodingCollection = v4;

  documentTypeCodingCollection = [(HKClinicalNoteRecord *)self documentTypeCodingCollection];
  v6 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:documentTypeCodingCollection];
  documentType = self->_documentType;
  self->_documentType = v6;
}

- (void)_setNoteCreationDate:(id)date
{
  v4 = [date copy];
  noteCreationDate = self->_noteCreationDate;
  self->_noteCreationDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setCategoriesCodingCollections:(id)collections
{
  v4 = [collections copy];
  categoriesCodingCollections = self->_categoriesCodingCollections;
  self->_categoriesCodingCollections = v4;

  categoriesCodingCollections = [(HKClinicalNoteRecord *)self categoriesCodingCollections];
  v6 = [categoriesCodingCollections hk_map:&__block_literal_global_53];
  categories = self->_categories;
  self->_categories = v6;
}

- (void)_setRelevantStartDate:(id)date
{
  v4 = [date copy];
  relevantStartDate = self->_relevantStartDate;
  self->_relevantStartDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setRelevantEndDate:(id)date
{
  v4 = [date copy];
  relevantEndDate = self->_relevantEndDate;
  self->_relevantEndDate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_setAuthors:(id)authors
{
  v4 = [authors copy];
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
    statusCodingCollection = [(HKClinicalNoteRecord *)self statusCodingCollection];
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
      [(HKClinicalNoteRecord *)v5 _setStatus:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  v13 = [statusCopy copy];
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
    documentTypeCodingCollection = [(HKClinicalNoteRecord *)self documentTypeCodingCollection];
    v3 = [HKConceptSynthesizer synthesizeInMemoryConceptForCodingCollection:documentTypeCodingCollection];
  }

  return v3;
}

- (void)_setDocumentType:(id)type
{
  typeCopy = type;
  if (!typeCopy)
  {
    _HKInitializeLogging();
    v5 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      [(HKClinicalNoteRecord *)v5 _setDocumentType:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  v13 = [typeCopy copy];
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
    categoriesCodingCollections = [(HKClinicalNoteRecord *)self categoriesCodingCollections];
    v3 = [categoriesCodingCollections hk_map:&__block_literal_global_89];
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
      [(HKClinicalNoteRecord *)v5 _setCategories:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  v13 = [categoriesCopy copy];
  categories = self->_categories;
  self->_categories = v13;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v13.receiver = self;
  v13.super_class = HKClinicalNoteRecord;
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
  v5.receiver = self;
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
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___HKClinicalNoteRecord;
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
    v12 = 0;
    goto LABEL_9;
  }

  if ([v7 isEqualToString:@"status"])
  {
    statusCoding = [(HKClinicalNoteRecord *)self statusCoding];
    v10 = [HKMedicalCodingCollection collectionWithCoding:statusCoding];
    v11 = [HKIndexableObject indexableObjectWithObject:v10];
    v17[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];

LABEL_7:
LABEL_8:

    goto LABEL_9;
  }

  if ([v8 isEqualToString:@"documentType"])
  {
    statusCoding = [(HKClinicalNoteRecord *)self documentTypeCodingCollection];
    v10 = [HKIndexableObject indexableObjectWithObject:statusCoding];
    v16 = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    goto LABEL_7;
  }

  if ([v8 isEqualToString:@"categories"])
  {
    statusCoding = [(HKClinicalNoteRecord *)self categoriesCodingCollections];
    v12 = [HKConceptIndexUtilities indexedCodingsForCodingCollections:statusCoding context:pathCopy error:error];
    goto LABEL_8;
  }

  v15.receiver = self;
  v15.super_class = HKClinicalNoteRecord;
  v12 = [(HKMedicalRecord *)&v15 codingsForKeyPath:pathCopy error:error];
LABEL_9:

  v13 = *MEMORY[0x1E69E9840];

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
    goto LABEL_9;
  }

  if ([v10 isEqualToString:@"status"])
  {
    if (HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 1, pathCopy, error))
    {
      firstObject = [conceptsCopy firstObject];
      object = [firstObject object];
      [(HKClinicalNoteRecord *)self _setStatus:object];
LABEL_8:

      v14 = 1;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ([v11 isEqualToString:@"documentType"])
  {
    if (HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 1, pathCopy, error))
    {
      firstObject = [conceptsCopy firstObject];
      object = [firstObject object];
      [(HKClinicalNoteRecord *)self _setDocumentType:object];
      goto LABEL_8;
    }

LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  if ([v11 isEqualToString:@"categories"])
  {
    categoriesCodingCollections = [(HKClinicalNoteRecord *)self categoriesCodingCollections];
    v17 = +[HKConceptIndexUtilities conceptsForIndexedConcepts:expectedCount:context:error:](HKConceptIndexUtilities, "conceptsForIndexedConcepts:expectedCount:context:error:", conceptsCopy, [categoriesCodingCollections count], pathCopy, error);

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
    v14 = [(HKMedicalRecord *)&v18 applyConcepts:conceptsCopy forKeyPath:pathCopy error:error];
  }

LABEL_10:

  return v14;
}

@end