@interface _HKCDADocumentExtractedFields
- (_HKCDADocumentExtractedFields)initWithDocumentData:(id)data;
- (id)_firstFrom:(id)from tagRule:(id)rule nilOnFail:(BOOL)fail;
- (id)_parseCDADate:(id)date;
- (id)_personNameFrom:(id)from familyTagRule:(id)rule givenTagRule:(id)tagRule nilOnFail:(BOOL)fail;
- (void)extractHeaderFieldsFromDocumentData:(id)data;
@end

@implementation _HKCDADocumentExtractedFields

- (_HKCDADocumentExtractedFields)initWithDocumentData:(id)data
{
  dataCopy = data;
  v8.receiver = self;
  v8.super_class = _HKCDADocumentExtractedFields;
  v5 = [(_HKCDADocumentExtractedFields *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_HKCDADocumentExtractedFields *)v5 extractHeaderFieldsFromDocumentData:dataCopy];
  }

  return v6;
}

- (void)extractHeaderFieldsFromDocumentData:(id)data
{
  dataCopy = data;
  v20 = objc_alloc_init(_HKXMLExtractor);
  [(_HKXMLExtractor *)v20 addTagSpecificationForExtraction:@"ClinicalDocument/effectiveTime/@value"];
  [(_HKXMLExtractor *)v20 addTagSpecificationForExtraction:@"ClinicalDocument/title"];
  [(_HKXMLExtractor *)v20 addTagSpecificationForExtraction:@"ClinicalDocument/recordTarget/patientRole/patient/name%use=L/given"];
  [(_HKXMLExtractor *)v20 addTagSpecificationForExtraction:@"ClinicalDocument/recordTarget/patientRole/patient/name%use=L/family"];
  [(_HKXMLExtractor *)v20 addTagSpecificationForExtraction:@"ClinicalDocument/recordTarget/patientRole/patient/name/given"];
  [(_HKXMLExtractor *)v20 addTagSpecificationForExtraction:@"ClinicalDocument/recordTarget/patientRole/patient/name/family"];
  [(_HKXMLExtractor *)v20 addTagSpecificationForExtraction:@"ClinicalDocument/author/assignedAuthor/assignedPerson/name/given"];
  [(_HKXMLExtractor *)v20 addTagSpecificationForExtraction:@"ClinicalDocument/author/assignedAuthor/assignedPerson/name/family"];
  [(_HKXMLExtractor *)v20 addTagSpecificationForExtraction:@"ClinicalDocument/author/assignedAuthor/assignedAuthoringDevice/softwareName"];
  [(_HKXMLExtractor *)v20 addTagSpecificationForExtraction:@"ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name"];
  [(_HKXMLExtractor *)v20 parseWithData:dataCopy];

  v5 = [(_HKCDADocumentExtractedFields *)self _firstFrom:v20 tagRule:@"ClinicalDocument/effectiveTime/@value" nilOnFail:1];
  if (v5)
  {
    v6 = [(_HKCDADocumentExtractedFields *)self _parseCDADate:v5];
    extractedDate = self->_extractedDate;
    self->_extractedDate = v6;
  }

  v8 = [(_HKCDADocumentExtractedFields *)self _firstFrom:v20 tagRule:@"ClinicalDocument/title" nilOnFail:0];
  extractedTitle = self->_extractedTitle;
  self->_extractedTitle = v8;

  v10 = [(_HKCDADocumentExtractedFields *)self _personNameFrom:v20 familyTagRule:@"ClinicalDocument/recordTarget/patientRole/patient/name%use=L/family" givenTagRule:@"ClinicalDocument/recordTarget/patientRole/patient/name%use=L/given" nilOnFail:1];
  extractedPatient = self->_extractedPatient;
  self->_extractedPatient = v10;

  if (!self->_extractedPatient)
  {
    v12 = [(_HKCDADocumentExtractedFields *)self _personNameFrom:v20 familyTagRule:@"ClinicalDocument/recordTarget/patientRole/patient/name/family" givenTagRule:@"ClinicalDocument/recordTarget/patientRole/patient/name/given" nilOnFail:1];
    v13 = self->_extractedPatient;
    self->_extractedPatient = v12;
  }

  v14 = [(_HKCDADocumentExtractedFields *)self _personNameFrom:v20 familyTagRule:@"ClinicalDocument/author/assignedAuthor/assignedPerson/name/family" givenTagRule:@"ClinicalDocument/author/assignedAuthor/assignedPerson/name/given" nilOnFail:1];
  extractedAuthorName = self->_extractedAuthorName;
  self->_extractedAuthorName = v14;

  if (!self->_extractedAuthorName)
  {
    v16 = [(_HKCDADocumentExtractedFields *)self _firstFrom:v20 tagRule:@"ClinicalDocument/author/assignedAuthor/assignedAuthoringDevice/softwareName" nilOnFail:0];
    v17 = self->_extractedAuthorName;
    self->_extractedAuthorName = v16;
  }

  v18 = [(_HKCDADocumentExtractedFields *)self _firstFrom:v20 tagRule:@"ClinicalDocument/custodian/assignedCustodian/representedCustodianOrganization/name" nilOnFail:0];
  extractedCustodianName = self->_extractedCustodianName;
  self->_extractedCustodianName = v18;
}

- (id)_firstFrom:(id)from tagRule:(id)rule nilOnFail:(BOOL)fail
{
  v7 = &stru_1F05FF230;
  if (fail)
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [from getDataForTagSpecification:rule];
  if ([v9 count])
  {
    v10 = [v9 objectAtIndex:0];

    v8 = v10;
  }

  return v8;
}

- (id)_personNameFrom:(id)from familyTagRule:(id)rule givenTagRule:(id)tagRule nilOnFail:(BOOL)fail
{
  failCopy = fail;
  v9 = MEMORY[0x1E696ADF0];
  tagRuleCopy = tagRule;
  ruleCopy = rule;
  fromCopy = from;
  v13 = objc_alloc_init(v9);
  v14 = [fromCopy getDataForTagSpecification:ruleCopy];

  v15 = [fromCopy getDataForTagSpecification:tagRuleCopy];

  if ([v14 count] || (v16 = objc_msgSend(v15, "count")) != 0)
  {
    if ([v14 count])
    {
      v17 = [v14 componentsJoinedByString:@" "];
      [v13 setFamilyName:v17];
    }

    if ([v15 count])
    {
      v18 = [v15 componentsJoinedByString:@" "];
      [v13 setGivenName:v18];
    }

    v16 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v13 style:3 options:0];
  }

  if (v16)
  {
    v19 = 1;
  }

  else
  {
    v19 = failCopy;
  }

  if (v19)
  {
    v20 = v16;
  }

  else
  {
    v20 = &stru_1F05FF230;
  }

  return v20;
}

- (id)_parseCDADate:(id)date
{
  v18 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  if (_HKDateFormatterParsers_onceToken != -1)
  {
    [_HKCDADocumentExtractedFields _parseCDADate:];
  }

  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = _HKDateFormatterParsers__formatters;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) dateFromString:{dateCopy, v13}];
        if (v9)
        {
          v10 = v9;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_13:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end