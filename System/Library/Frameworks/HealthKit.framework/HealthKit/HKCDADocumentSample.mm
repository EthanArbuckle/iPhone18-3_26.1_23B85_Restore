@interface HKCDADocumentSample
+ (BOOL)_isValidOperatorType:(unint64_t)type;
+ (HKCDADocumentSample)CDADocumentSampleWithData:(NSData *)documentData startDate:(NSDate *)startDate endDate:(NSDate *)endDate metadata:(NSDictionary *)metadata validationError:(NSError *)validationError;
+ (id)_comparisonExpressionForValue:(id)value operatorType:(unint64_t)type;
+ (id)_globStringToRegexString:(id)string;
- (BOOL)_predicateMatchForKeyPath:(id)path pattern:(id)pattern;
- (BOOL)_validateDocumentContentWithError:(id *)error;
- (BOOL)prepareForDelivery:(id *)delivery;
- (BOOL)prepareForSaving:(id *)saving;
- (HKCDADocumentSample)initWithCoder:(id)coder;
- (id)_fieldValueForKeyPath:(id)path;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)description;
- (void)_applyPropertiesWithOmittedFlags:(int64_t)flags compressedDocumentData:(id)data title:(id)title patientName:(id)name authorName:(id)authorName custodianName:(id)custodianName;
- (void)_processDocumentData:(id)data extractedFields:(id)fields;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKCDADocumentSample

+ (HKCDADocumentSample)CDADocumentSampleWithData:(NSData *)documentData startDate:(NSDate *)startDate endDate:(NSDate *)endDate metadata:(NSDictionary *)metadata validationError:(NSError *)validationError
{
  v12 = documentData;
  v13 = startDate;
  v14 = endDate;
  v15 = metadata;
  if (v13)
  {
    [(NSDate *)v13 timeIntervalSinceReferenceDate];
    v17 = v16;
    if (v14)
    {
LABEL_3:
      [(NSDate *)v14 timeIntervalSinceReferenceDate];
      v19 = v18;
      goto LABEL_6;
    }
  }

  else
  {
    v17 = 2.22507386e-308;
    if (v14)
    {
      goto LABEL_3;
    }
  }

  v19 = 2.22507386e-308;
LABEL_6:
  v20 = [[_HKCDADocumentExtractedFields alloc] initWithDocumentData:v12];
  extractedDate = [(_HKCDADocumentExtractedFields *)v20 extractedDate];
  v22 = extractedDate;
  if (extractedDate)
  {
    [extractedDate timeIntervalSinceReferenceDate];
    v19 = v23;
    v17 = v23;
  }

  v24 = [HKObjectType documentTypeForIdentifier:@"HKDocumentTypeIdentifierCDA"];
  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __92__HKCDADocumentSample_CDADocumentSampleWithData_startDate_endDate_metadata_validationError___block_invoke;
  v34 = &unk_1E737BA10;
  v35 = v12;
  v36 = v20;
  v25 = v20;
  v26 = v12;
  v27 = [self _newSampleWithType:v24 startDate:0 endDate:v15 device:&v31 metadata:v17 config:v19];
  v28 = [v27 _validateDocumentContentWithError:{validationError, v31, v32, v33, v34}];
  v29 = 0;
  if (v28)
  {
    v29 = v27;
  }

  return v29;
}

- (id)description
{
  document = [(HKCDADocumentSample *)self document];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9.receiver = self;
  v9.super_class = HKCDADocumentSample;
  v5 = [(HKSample *)&v9 description];
  [v4 addObject:v5];

  if (document)
  {
    v6 = [document description];
    [v4 addObject:v6];
  }

  v7 = [v4 componentsJoinedByString:@" "];

  return v7;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v8.receiver = self;
  v8.super_class = HKCDADocumentSample;
  _validateConfiguration = [(HKSample *)&v8 _validateWithConfiguration:configuration.var0, configuration.var1];
  if (!_validateConfiguration)
  {
    document = [(HKCDADocumentSample *)self document];
    v6 = document;
    if (document)
    {
      _validateConfiguration = [document _validateConfiguration];
    }

    else
    {
      _validateConfiguration = 0;
    }
  }

  return _validateConfiguration;
}

- (BOOL)prepareForSaving:(id *)saving
{
  os_unfair_lock_assert_not_owner(&self->_contentLock);
  os_unfair_lock_lock(&self->_contentLock);
  v12.receiver = self;
  v12.super_class = HKCDADocumentSample;
  if ([(HKObject *)&v12 prepareForSaving:saving])
  {
    document = [(HKCDADocumentSample *)self document];
    v6 = document;
    if (document)
    {
      v7 = [document _compressDocumentDataForTransfer:saving];
    }

    else
    {
      v8 = [MEMORY[0x1E696ABC0] hk_error:100 format:@"HKCDADocumentSample has no document data and can not be saved"];
      v9 = v8;
      if (v8)
      {
        if (saving)
        {
          v10 = v8;
          *saving = v9;
        }

        else
        {
          _HKLogDroppedError(v8);
        }
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(&self->_contentLock);
  return v7;
}

- (BOOL)prepareForDelivery:(id *)delivery
{
  os_unfair_lock_assert_not_owner(&self->_contentLock);
  os_unfair_lock_lock(&self->_contentLock);
  v9.receiver = self;
  v9.super_class = HKCDADocumentSample;
  if ([(HKObject *)&v9 prepareForDelivery:delivery])
  {
    document = [(HKCDADocumentSample *)self document];
    v6 = document;
    if (!document || (self->_omittedContentFlags & 2) != 0)
    {
      v7 = 1;
    }

    else
    {
      v7 = [document _decompressDocumentDataForDelivery:delivery];
    }
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(&self->_contentLock);
  return v7;
}

- (BOOL)_validateDocumentContentWithError:(id *)error
{
  v20[2] = *MEMORY[0x1E69E9840];
  document = [(HKCDADocumentSample *)self document];
  documentData = [document documentData];

  if (_HKPathToValidationSchema_onceToken != -1)
  {
    [HKCDADocumentSample _validateDocumentContentWithError:];
  }

  v6 = [_HKXMLValidator validatorWithPathToXSD:_HKPathToValidationSchema__pathToValidationSchema];
  v17 = 0;
  v18 = 0;
  v7 = [v6 validateXML:documentData simpleError:&v18 detailedErrors:&v17];
  v8 = v18;
  v9 = v17;
  v10 = v9;
  if ((v7 & 1) == 0 && v8 && v9)
  {
    v19[0] = *MEMORY[0x1E696A578];
    v19[1] = @"HKDetailedCDAValidationErrorKey";
    v20[0] = v8;
    v20[1] = v9;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.healthkit" code:3 userInfo:v11];
    v13 = v12;
    if (v12)
    {
      if (error)
      {
        v14 = v12;
        *error = v13;
      }

      else
      {
        _HKLogDroppedError(v12);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)_processDocumentData:(id)data extractedFields:(id)fields
{
  v6 = MEMORY[0x1E695DEF0];
  fieldsCopy = fields;
  dataCopy = data;
  v16 = [[v6 alloc] initWithData:dataCopy];

  os_unfair_lock_lock(&self->_contentLock);
  self->_omittedContentFlags = 0;
  v9 = [HKCDADocument alloc];
  extractedTitle = [fieldsCopy extractedTitle];
  extractedPatient = [fieldsCopy extractedPatient];
  extractedAuthorName = [fieldsCopy extractedAuthorName];
  extractedCustodianName = [fieldsCopy extractedCustodianName];

  v14 = [(HKCDADocument *)v9 initWithDocumentData:v16 compressedDocumentData:0 title:extractedTitle patientName:extractedPatient authorName:extractedAuthorName custodianName:extractedCustodianName];
  document = self->_document;
  self->_document = v14;

  os_unfair_lock_unlock(&self->_contentLock);
}

- (HKCDADocumentSample)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HKCDADocumentSample;
  v5 = [(HKSample *)&v11 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v5->_contentLock._os_unfair_lock_opaque = 0;
    v7 = [coderCopy decodeIntegerForKey:@"omittedContentFlags"];
    v6->_omittedContentFlags = v7;
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = [[HKCDADocument alloc] initWithCoder:coderCopy omittedContentFlags:v6->_omittedContentFlags];
    }

    document = v6->_document;
    v6->_document = v8;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HKCDADocumentSample;
  [(HKSample *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_omittedContentFlags forKey:@"omittedContentFlags"];
  if ((self->_omittedContentFlags & 1) == 0)
  {
    document = [(HKCDADocumentSample *)self document];
    if (!document)
    {
      [(HKCDADocumentSample *)a2 encodeWithCoder:?];
    }

    [document encodeWithCoder:coderCopy omittedContentFlags:self->_omittedContentFlags];
  }
}

- (void)_applyPropertiesWithOmittedFlags:(int64_t)flags compressedDocumentData:(id)data title:(id)title patientName:(id)name authorName:(id)authorName custodianName:(id)custodianName
{
  dataCopy = data;
  titleCopy = title;
  nameCopy = name;
  authorNameCopy = authorName;
  custodianNameCopy = custodianName;
  os_unfair_lock_lock(&self->_contentLock);
  self->_omittedContentFlags = flags;
  if (flags)
  {
    v18 = 0;
  }

  else
  {
    v18 = [[HKCDADocument alloc] initWithDocumentData:0 compressedDocumentData:dataCopy title:titleCopy patientName:nameCopy authorName:authorNameCopy custodianName:custodianNameCopy];
  }

  document = self->_document;
  self->_document = v18;

  os_unfair_lock_unlock(&self->_contentLock);
}

+ (BOOL)_isValidOperatorType:(unint64_t)type
{
  result = 1;
  if (type > 9 || ((1 << type) & 0x3B0) == 0)
  {
    return type == 99;
  }

  return result;
}

+ (id)_globStringToRegexString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy length];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__HKCDADocumentSample__globStringToRegexString___block_invoke;
  v8[3] = &unk_1E737BA38;
  v10 = v11;
  v6 = v5;
  v9 = v6;
  [stringCopy enumerateSubstringsInRange:0 options:v4 usingBlock:{2, v8}];

  _Block_object_dispose(v11, 8);

  return v6;
}

void __48__HKCDADocumentSample__globStringToRegexString___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    if ([(__CFString *)v3 isEqualToString:@"*"])
    {
      v4 = *(a1 + 32);
      v5 = @".*";
    }

    else
    {
      v6 = [(__CFString *)v7 isEqualToString:@"?"];
      v4 = *(a1 + 32);
      if (v6)
      {
        v5 = @"?";
      }

      else
      {
        [v4 appendString:@"\\""];
        v4 = *(a1 + 32);
        v5 = v7;
      }
    }

    [v4 appendString:v5];
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else if ([(__CFString *)v3 isEqualToString:@"\\""])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    [*(a1 + 32) appendString:v7];
  }
}

+ (id)_comparisonExpressionForValue:(id)value operatorType:(unint64_t)type
{
  v6 = [MEMORY[0x1E696AE70] escapedPatternForString:value];
  v7 = &stru_1F05FF230;
  if (type > 7)
  {
    switch(type)
    {
      case 8uLL:
        [MEMORY[0x1E696AEC0] stringWithFormat:@"^%@.*$", v6];
        break;
      case 9uLL:
        [MEMORY[0x1E696AEC0] stringWithFormat:@"^.*%@$", v6];
        break;
      case 0x63uLL:
        [MEMORY[0x1E696AEC0] stringWithFormat:@"^.*?%@.*$", v6];
        break;
      default:
        goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (type - 4 < 2)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"^%@$", v6];
    v8 = LABEL_12:;
    goto LABEL_13;
  }

  if (type != 7)
  {
    goto LABEL_14;
  }

  v8 = [self _globStringToRegexString:v6];
LABEL_13:
  v7 = v8;
LABEL_14:
  v11 = 0;
  v9 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v7 options:0 error:&v11];
  if (!v9)
  {
    v9 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:&stru_1F05FF230 options:0 error:0];
  }

  return v9;
}

- (id)_fieldValueForKeyPath:(id)path
{
  pathCopy = path;
  document = [(HKCDADocumentSample *)self document];
  if (document)
  {
    if ([pathCopy isEqualToString:@"title"])
    {
      title = [document title];
LABEL_10:
      v7 = title;
      goto LABEL_12;
    }

    if ([pathCopy isEqualToString:@"patient_name"])
    {
      title = [document patientName];
      goto LABEL_10;
    }

    if ([pathCopy isEqualToString:@"author_name"])
    {
      title = [document authorName];
      goto LABEL_10;
    }

    if ([pathCopy isEqualToString:@"custodian_name"])
    {
      title = [document custodianName];
      goto LABEL_10;
    }
  }

  v7 = @"NoFieldValue";
LABEL_12:

  return v7;
}

- (BOOL)_predicateMatchForKeyPath:(id)path pattern:(id)pattern
{
  patternCopy = pattern;
  v7 = [(HKCDADocumentSample *)self _fieldValueForKeyPath:path];
  v8 = [patternCopy numberOfMatchesInString:v7 options:0 range:{0, objc_msgSend(v7, "length")}];

  return v8 == 1;
}

- (void)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCDADocumentSample.m" lineNumber:275 description:@"HKCDADocumentSample: attempt to transmit document that is marked as omitted."];
}

@end