@interface VNSmartCamprint
+ (id)codingTypesToCodingKeys;
+ (unint64_t)confidenceTypeForOriginatingRequestSpecifier:(id)specifier;
- (VNSmartCamprint)initWithCoder:(id)coder;
- (VNSmartCamprint)initWithData:(const void *)data elementCount:(unint64_t)count elementType:(unint64_t)type lengthInBytes:(unint64_t)bytes labelsAndConfidence:(id)confidence originatingRequestSpecifier:(id)specifier;
- (VNSmartCamprint)initWithData:(const void *)data elementCount:(unint64_t)count elementType:(unint64_t)type lengthInBytes:(unint64_t)bytes labelsAndConfidence:(id)confidence requestRevision:(unint64_t)revision;
- (unint64_t)serializeStateIntoData:(id)data startingAtByteOffset:(unint64_t)offset error:(id *)error;
- (unint64_t)serializedLength;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNSmartCamprint

- (unint64_t)serializeStateIntoData:(id)data startingAtByteOffset:(unint64_t)offset error:(id *)error
{
  dataCopy = data;
  v19.receiver = self;
  v19.super_class = VNSmartCamprint;
  v9 = [(VNEspressoModelImageprint *)&v19 serializeStateIntoData:dataCopy startingAtByteOffset:offset error:error];
  if (v9)
  {
    mutableBytes = [dataCopy mutableBytes];
    v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self->_labelsAndConfidence requiringSecureCoding:1 error:error];
    v12 = v11;
    if (v11)
    {
      v13 = &v9[offset];
      if ([v11 length])
      {
        *&v13[mutableBytes] = [v12 length];
        bytes = [v12 bytes];
        v15 = [v12 length];
        v16 = v13 + 4;
        memcpy(&v16[mutableBytes], bytes, v15);
        v13 = &v16[v15];
      }

      v9 = &v13[-offset];
      if (&v13[-offset] == [(VNSmartCamprint *)self serializedLength])
      {
        calculateChecksumMD5((mutableBytes + offset + 28), (v9 - 28), (mutableBytes + offset + 12));
LABEL_10:

        goto LABEL_11;
      }

      if (error)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected size of serialized state of the object of type %@", objc_opt_class()];
        *error = [VNError errorForInternalErrorWithLocalizedDescription:v17];
      }
    }

    v9 = 0;
    goto LABEL_10;
  }

LABEL_11:

  return v9;
}

- (unint64_t)serializedLength
{
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self->_labelsAndConfidence requiringSecureCoding:1 error:0];
  v3 = [v2 length];

  return v3 + 4;
}

- (VNSmartCamprint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = VNSmartCamprint;
  v5 = [(VNEspressoModelImageprint *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"labelsConfidences"];
    labelsAndConfidence = v5->_labelsAndConfidence;
    v5->_labelsAndConfidence = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = VNSmartCamprint;
  [(VNEspressoModelImageprint *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_labelsAndConfidence forKey:@"labelsConfidences"];
}

- (VNSmartCamprint)initWithData:(const void *)data elementCount:(unint64_t)count elementType:(unint64_t)type lengthInBytes:(unint64_t)bytes labelsAndConfidence:(id)confidence originatingRequestSpecifier:(id)specifier
{
  confidenceCopy = confidence;
  specifierCopy = specifier;
  v16 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:data length:bytes];
  v34 = 0;
  v17 = [objc_opt_class() validateDescriptorData:v16 elementType:type elementCount:count error:&v34];
  v18 = v34;
  v19 = v18;
  if (v17)
  {
    v33.receiver = self;
    v33.super_class = VNSmartCamprint;
    v20 = [(VNEspressoModelImageprint *)&v33 initWithDescriptorData:v16 elementType:type elementCount:count originatingRequestSpecifier:specifierCopy];
    if (v20)
    {
      v21 = [confidenceCopy copy];
      labelsAndConfidence = v20->_labelsAndConfidence;
      v20->_labelsAndConfidence = v21;
    }

    self = v20;
    selfCopy = self;
  }

  else
  {
    localizedDescription = [v18 localizedDescription];
    uTF8String = [localizedDescription UTF8String];
    VNValidatedLog(4, @"%s", v26, v27, v28, v29, v30, v31, uTF8String);

    selfCopy = 0;
  }

  return selfCopy;
}

- (VNSmartCamprint)initWithData:(const void *)data elementCount:(unint64_t)count elementType:(unint64_t)type lengthInBytes:(unint64_t)bytes labelsAndConfidence:(id)confidence requestRevision:(unint64_t)revision
{
  confidenceCopy = confidence;
  v15 = [objc_opt_class() originatingRequestSpecifierForRequestRevision:revision error:0];
  if (v15)
  {
    self = [(VNSmartCamprint *)self initWithData:data elementCount:count elementType:type lengthInBytes:bytes labelsAndConfidence:confidenceCopy originatingRequestSpecifier:v15];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (unint64_t)confidenceTypeForOriginatingRequestSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = [specifierCopy specifiesRequestClass:objc_opt_class()] && objc_msgSend(specifierCopy, "requestRevision") == 1;

  return v4;
}

+ (id)codingTypesToCodingKeys
{
  if (+[VNSmartCamprint codingTypesToCodingKeys]::onceToken != -1)
  {
    dispatch_once(&+[VNSmartCamprint codingTypesToCodingKeys]::onceToken, &__block_literal_global_10532);
  }

  v3 = +[VNSmartCamprint codingTypesToCodingKeys]::codingTypesToCodingKeys;

  return v3;
}

void __42__VNSmartCamprint_codingTypesToCodingKeys__block_invoke()
{
  v3[8] = *MEMORY[0x1E69E9840];
  v2[0] = @"emp_data";
  v2[1] = @"emp_elementsCount";
  v3[0] = @"sc_d";
  v3[1] = @"sc_ec";
  v2[2] = @"emp_elementsType";
  v2[3] = @"emp_length";
  v3[2] = @"sc_et";
  v3[3] = @"sc_l";
  v2[4] = @"emp_labelsAndConfidence";
  v2[5] = @"VNEspressoModelImageprint";
  v3[4] = @"sc_lac";
  v3[5] = @"VNSmartCamprint";
  v2[6] = @"emp_algorithmVersionCodingKey";
  v2[7] = @"emp_algorithmVersion";
  v3[6] = @"sc_av";
  v3[7] = @"1.0";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:8];
  v1 = +[VNSmartCamprint codingTypesToCodingKeys]::codingTypesToCodingKeys;
  +[VNSmartCamprint codingTypesToCodingKeys]::codingTypesToCodingKeys = v0;
}

@end