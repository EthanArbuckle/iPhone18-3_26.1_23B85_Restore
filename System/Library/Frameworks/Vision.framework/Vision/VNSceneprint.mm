@interface VNSceneprint
+ (id)codingTypesToCodingKeys;
+ (unint64_t)confidenceTypeForOriginatingRequestSpecifier:(id)specifier;
- (VNSceneprint)initWithCoder:(id)coder;
- (VNSceneprint)initWithData:(const void *)data elementCount:(unint64_t)count elementType:(unint64_t)type lengthInBytes:(unint64_t)bytes labelsAndConfidence:(id)confidence requestRevision:(unint64_t)revision;
- (VNSceneprint)initWithState:(id)state byteOffset:(unint64_t *)offset error:(id *)error;
- (unint64_t)serializeStateIntoData:(id)data startingAtByteOffset:(unint64_t)offset error:(id *)error;
- (unint64_t)serializedLength;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNSceneprint

- (VNSceneprint)initWithState:(id)state byteOffset:(unint64_t *)offset error:(id *)error
{
  stateCopy = state;
  v18.receiver = self;
  v18.super_class = VNSceneprint;
  v9 = [(VNEspressoModelImageprint *)&v18 initWithState:stateCopy byteOffset:offset error:error];
  if (v9)
  {
    bytes = [stateCopy bytes];
    v11 = *(bytes + *offset);
    *offset += 4;
    if (v11)
    {
      v12 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v11];
      memcpy([v12 mutableBytes], (bytes + *offset), v11);
      *offset += v11;
      v13 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:error];
      labelsAndConfidence = v9->_labelsAndConfidence;
      v9->_labelsAndConfidence = v13;

      v15 = v9->_labelsAndConfidence;
      if (!v15)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v16 = v9->_labelsAndConfidence;
      v9->_labelsAndConfidence = MEMORY[0x1E695E0F8];
    }
  }

  v15 = v9;
LABEL_7:

  return v15;
}

- (unint64_t)serializeStateIntoData:(id)data startingAtByteOffset:(unint64_t)offset error:(id *)error
{
  dataCopy = data;
  v21.receiver = self;
  v21.super_class = VNSceneprint;
  v9 = [(VNEspressoModelImageprint *)&v21 serializeStateIntoData:dataCopy startingAtByteOffset:offset error:error];
  if (v9)
  {
    mutableBytes = [dataCopy mutableBytes];
    v11 = &v9[offset];
    if ([(NSDictionary *)self->_labelsAndConfidence count])
    {
      v12 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self->_labelsAndConfidence requiringSecureCoding:1 error:error];
      v13 = v12;
      if (!v12)
      {
        goto LABEL_12;
      }

      v14 = [v12 length];
      *&v11[mutableBytes] = v14;
      v15 = v11 + 4;
      if (v14)
      {
        bytes = [v13 bytes];
        v17 = [v13 length];
        memcpy(&v15[mutableBytes], bytes, v17);
        v15 += v17;
      }
    }

    else
    {
      v13 = 0;
      *&v11[mutableBytes] = 0;
      v15 = v11 + 4;
    }

    v18 = &v15[-offset];
    if (&v15[-offset] == [(VNSceneprint *)self serializedLength])
    {
      calculateChecksumMD5((mutableBytes + offset + 28), v18 - 28, (mutableBytes + offset + 12));
LABEL_13:

      goto LABEL_14;
    }

    if (error)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected size of serialized state of the object of type %@", objc_opt_class()];
      *error = [VNError errorForInternalErrorWithLocalizedDescription:v19];
    }

LABEL_12:
    v18 = 0;
    goto LABEL_13;
  }

  v18 = 0;
LABEL_14:

  return v18;
}

- (unint64_t)serializedLength
{
  v6.receiver = self;
  v6.super_class = VNSceneprint;
  v3 = [(VNEspressoModelImageprint *)&v6 serializedLength]+ 4;
  if ([(NSDictionary *)self->_labelsAndConfidence count])
  {
    v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self->_labelsAndConfidence requiringSecureCoding:1 error:0];
    v3 += [v4 length];
  }

  return v3;
}

- (VNSceneprint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = VNSceneprint;
  v5 = [(VNEspressoModelImageprint *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"labelsConfidences"])
    {
      v6 = objc_alloc(MEMORY[0x1E695DFD8]);
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
      v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"labelsConfidences"];
      labelsAndConfidence = v5->_labelsAndConfidence;
      v5->_labelsAndConfidence = v10;
    }

    else
    {
      v9 = v5->_labelsAndConfidence;
      v5->_labelsAndConfidence = MEMORY[0x1E695E0F8];
    }

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = VNSceneprint;
  [(VNEspressoModelImageprint *)&v7 encodeWithCoder:coderCopy];
  v5 = [(NSDictionary *)self->_labelsAndConfidence count];
  labelsAndConfidence = self->_labelsAndConfidence;
  if (v5)
  {
    [coderCopy encodeObject:labelsAndConfidence forKey:@"labelsConfidences"];
  }

  else
  {
    self->_labelsAndConfidence = MEMORY[0x1E695E0F8];
  }
}

- (VNSceneprint)initWithData:(const void *)data elementCount:(unint64_t)count elementType:(unint64_t)type lengthInBytes:(unint64_t)bytes labelsAndConfidence:(id)confidence requestRevision:(unint64_t)revision
{
  confidenceCopy = confidence;
  v19.receiver = self;
  v19.super_class = VNSceneprint;
  v15 = [(VNEspressoModelImageprint *)&v19 initWithData:data elementCount:count elementType:type lengthInBytes:bytes requestRevision:revision];
  if (v15)
  {
    if (confidenceCopy)
    {
      v16 = [confidenceCopy copy];
    }

    else
    {
      v16 = MEMORY[0x1E695E0F8];
    }

    objc_storeStrong(&v15->_labelsAndConfidence, v16);
    if (confidenceCopy)
    {
    }

    v17 = v15;
  }

  return v15;
}

+ (unint64_t)confidenceTypeForOriginatingRequestSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = [specifierCopy specifiesRequestClass:objc_opt_class()] && objc_msgSend(specifierCopy, "requestRevision") == 1;

  return v4;
}

+ (id)codingTypesToCodingKeys
{
  if (+[VNSceneprint codingTypesToCodingKeys]::onceToken != -1)
  {
    dispatch_once(&+[VNSceneprint codingTypesToCodingKeys]::onceToken, &__block_literal_global_8636);
  }

  v3 = +[VNSceneprint codingTypesToCodingKeys]::codingTypesToCodingKeys;

  return v3;
}

void __39__VNSceneprint_codingTypesToCodingKeys__block_invoke()
{
  v3[8] = *MEMORY[0x1E69E9840];
  v2[0] = @"emp_data";
  v2[1] = @"emp_elementsCount";
  v3[0] = @"data";
  v3[1] = @"elementsCount";
  v2[2] = @"emp_elementsType";
  v2[3] = @"emp_length";
  v3[2] = @"elementsType";
  v3[3] = @"length";
  v2[4] = @"emp_labelsAndConfidence";
  v2[5] = @"VNEspressoModelImageprint";
  v3[4] = @"labelsAndConfidence";
  v3[5] = @"VNSceneprint";
  v2[6] = @"emp_algorithmVersionCodingKey";
  v2[7] = @"emp_algorithmVersion";
  v3[6] = @"algorithmVersion";
  v3[7] = @"1.0";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:8];
  v1 = +[VNSceneprint codingTypesToCodingKeys]::codingTypesToCodingKeys;
  +[VNSceneprint codingTypesToCodingKeys]::codingTypesToCodingKeys = v0;
}

@end