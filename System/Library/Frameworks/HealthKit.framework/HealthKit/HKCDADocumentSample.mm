@interface HKCDADocumentSample
+ (BOOL)_isValidOperatorType:(unint64_t)a3;
+ (HKCDADocumentSample)CDADocumentSampleWithData:(NSData *)documentData startDate:(NSDate *)startDate endDate:(NSDate *)endDate metadata:(NSDictionary *)metadata validationError:(NSError *)validationError;
+ (id)_comparisonExpressionForValue:(id)a3 operatorType:(unint64_t)a4;
+ (id)_globStringToRegexString:(id)a3;
- (BOOL)_predicateMatchForKeyPath:(id)a3 pattern:(id)a4;
- (BOOL)_validateDocumentContentWithError:(id *)a3;
- (BOOL)prepareForDelivery:(id *)a3;
- (BOOL)prepareForSaving:(id *)a3;
- (HKCDADocumentSample)initWithCoder:(id)a3;
- (id)_fieldValueForKeyPath:(id)a3;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)description;
- (void)_applyPropertiesWithOmittedFlags:(int64_t)a3 compressedDocumentData:(id)a4 title:(id)a5 patientName:(id)a6 authorName:(id)a7 custodianName:(id)a8;
- (void)_processDocumentData:(id)a3 extractedFields:(id)a4;
- (void)encodeWithCoder:(id)a3;
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
  v21 = [(_HKCDADocumentExtractedFields *)v20 extractedDate];
  v22 = v21;
  if (v21)
  {
    [v21 timeIntervalSinceReferenceDate];
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
  v27 = [a1 _newSampleWithType:v24 startDate:0 endDate:v15 device:&v31 metadata:v17 config:v19];
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
  v3 = [(HKCDADocumentSample *)self document];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9.receiver = self;
  v9.super_class = HKCDADocumentSample;
  v5 = [(HKSample *)&v9 description];
  [v4 addObject:v5];

  if (v3)
  {
    v6 = [v3 description];
    [v4 addObject:v6];
  }

  v7 = [v4 componentsJoinedByString:@" "];

  return v7;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v8.receiver = self;
  v8.super_class = HKCDADocumentSample;
  v4 = [(HKSample *)&v8 _validateWithConfiguration:a3.var0, a3.var1];
  if (!v4)
  {
    v5 = [(HKCDADocumentSample *)self document];
    v6 = v5;
    if (v5)
    {
      v4 = [v5 _validateConfiguration];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)prepareForSaving:(id *)a3
{
  os_unfair_lock_assert_not_owner(&self->_contentLock);
  os_unfair_lock_lock(&self->_contentLock);
  v12.receiver = self;
  v12.super_class = HKCDADocumentSample;
  if ([(HKObject *)&v12 prepareForSaving:a3])
  {
    v5 = [(HKCDADocumentSample *)self document];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 _compressDocumentDataForTransfer:a3];
    }

    else
    {
      v8 = [MEMORY[0x1E696ABC0] hk_error:100 format:@"HKCDADocumentSample has no document data and can not be saved"];
      v9 = v8;
      if (v8)
      {
        if (a3)
        {
          v10 = v8;
          *a3 = v9;
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

- (BOOL)prepareForDelivery:(id *)a3
{
  os_unfair_lock_assert_not_owner(&self->_contentLock);
  os_unfair_lock_lock(&self->_contentLock);
  v9.receiver = self;
  v9.super_class = HKCDADocumentSample;
  if ([(HKObject *)&v9 prepareForDelivery:a3])
  {
    v5 = [(HKCDADocumentSample *)self document];
    v6 = v5;
    if (!v5 || (self->_omittedContentFlags & 2) != 0)
    {
      v7 = 1;
    }

    else
    {
      v7 = [v5 _decompressDocumentDataForDelivery:a3];
    }
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(&self->_contentLock);
  return v7;
}

- (BOOL)_validateDocumentContentWithError:(id *)a3
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = [(HKCDADocumentSample *)self document];
  v5 = [v4 documentData];

  if (_HKPathToValidationSchema_onceToken != -1)
  {
    [HKCDADocumentSample _validateDocumentContentWithError:];
  }

  v6 = [_HKXMLValidator validatorWithPathToXSD:_HKPathToValidationSchema__pathToValidationSchema];
  v17 = 0;
  v18 = 0;
  v7 = [v6 validateXML:v5 simpleError:&v18 detailedErrors:&v17];
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
      if (a3)
      {
        v14 = v12;
        *a3 = v13;
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

- (void)_processDocumentData:(id)a3 extractedFields:(id)a4
{
  v6 = MEMORY[0x1E695DEF0];
  v7 = a4;
  v8 = a3;
  v16 = [[v6 alloc] initWithData:v8];

  os_unfair_lock_lock(&self->_contentLock);
  self->_omittedContentFlags = 0;
  v9 = [HKCDADocument alloc];
  v10 = [v7 extractedTitle];
  v11 = [v7 extractedPatient];
  v12 = [v7 extractedAuthorName];
  v13 = [v7 extractedCustodianName];

  v14 = [(HKCDADocument *)v9 initWithDocumentData:v16 compressedDocumentData:0 title:v10 patientName:v11 authorName:v12 custodianName:v13];
  document = self->_document;
  self->_document = v14;

  os_unfair_lock_unlock(&self->_contentLock);
}

- (HKCDADocumentSample)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKCDADocumentSample;
  v5 = [(HKSample *)&v11 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v5->_contentLock._os_unfair_lock_opaque = 0;
    v7 = [v4 decodeIntegerForKey:@"omittedContentFlags"];
    v6->_omittedContentFlags = v7;
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = [[HKCDADocument alloc] initWithCoder:v4 omittedContentFlags:v6->_omittedContentFlags];
    }

    document = v6->_document;
    v6->_document = v8;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v7.receiver = self;
  v7.super_class = HKCDADocumentSample;
  [(HKSample *)&v7 encodeWithCoder:v5];
  [v5 encodeInteger:self->_omittedContentFlags forKey:@"omittedContentFlags"];
  if ((self->_omittedContentFlags & 1) == 0)
  {
    v6 = [(HKCDADocumentSample *)self document];
    if (!v6)
    {
      [(HKCDADocumentSample *)a2 encodeWithCoder:?];
    }

    [v6 encodeWithCoder:v5 omittedContentFlags:self->_omittedContentFlags];
  }
}

- (void)_applyPropertiesWithOmittedFlags:(int64_t)a3 compressedDocumentData:(id)a4 title:(id)a5 patientName:(id)a6 authorName:(id)a7 custodianName:(id)a8
{
  v20 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  os_unfair_lock_lock(&self->_contentLock);
  self->_omittedContentFlags = a3;
  if (a3)
  {
    v18 = 0;
  }

  else
  {
    v18 = [[HKCDADocument alloc] initWithDocumentData:0 compressedDocumentData:v20 title:v14 patientName:v15 authorName:v16 custodianName:v17];
  }

  document = self->_document;
  self->_document = v18;

  os_unfair_lock_unlock(&self->_contentLock);
}

+ (BOOL)_isValidOperatorType:(unint64_t)a3
{
  result = 1;
  if (a3 > 9 || ((1 << a3) & 0x3B0) == 0)
  {
    return a3 == 99;
  }

  return result;
}

+ (id)_globStringToRegexString:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
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
  [v3 enumerateSubstringsInRange:0 options:v4 usingBlock:{2, v8}];

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

+ (id)_comparisonExpressionForValue:(id)a3 operatorType:(unint64_t)a4
{
  v6 = [MEMORY[0x1E696AE70] escapedPatternForString:a3];
  v7 = &stru_1F05FF230;
  if (a4 > 7)
  {
    switch(a4)
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

  if (a4 - 4 < 2)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"^%@$", v6];
    v8 = LABEL_12:;
    goto LABEL_13;
  }

  if (a4 != 7)
  {
    goto LABEL_14;
  }

  v8 = [a1 _globStringToRegexString:v6];
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

- (id)_fieldValueForKeyPath:(id)a3
{
  v4 = a3;
  v5 = [(HKCDADocumentSample *)self document];
  if (v5)
  {
    if ([v4 isEqualToString:@"title"])
    {
      v6 = [v5 title];
LABEL_10:
      v7 = v6;
      goto LABEL_12;
    }

    if ([v4 isEqualToString:@"patient_name"])
    {
      v6 = [v5 patientName];
      goto LABEL_10;
    }

    if ([v4 isEqualToString:@"author_name"])
    {
      v6 = [v5 authorName];
      goto LABEL_10;
    }

    if ([v4 isEqualToString:@"custodian_name"])
    {
      v6 = [v5 custodianName];
      goto LABEL_10;
    }
  }

  v7 = @"NoFieldValue";
LABEL_12:

  return v7;
}

- (BOOL)_predicateMatchForKeyPath:(id)a3 pattern:(id)a4
{
  v6 = a4;
  v7 = [(HKCDADocumentSample *)self _fieldValueForKeyPath:a3];
  v8 = [v6 numberOfMatchesInString:v7 options:0 range:{0, objc_msgSend(v7, "length")}];

  return v8 == 1;
}

- (void)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCDADocumentSample.m" lineNumber:275 description:@"HKCDADocumentSample: attempt to transmit document that is marked as omitted."];
}

@end