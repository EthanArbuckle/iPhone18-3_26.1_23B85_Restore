@interface VNTorsoprint
+ (id)codingTypesToCodingKeys;
+ (id)emptyTorsoprintDataForRevision:(unint64_t)revision;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentToVNEntityIdentificationModelPrint:(id)print;
- (NSString)description;
- (VNTorsoprint)initWithCoder:(id)coder;
- (VNTorsoprint)initWithData:(const void *)data elementCount:(unint64_t)count elementType:(unint64_t)type lengthInBytes:(unint64_t)bytes confidence:(float)confidence originatingRequestSpecifier:(id)specifier;
- (VNTorsoprint)initWithData:(const void *)data elementCount:(unint64_t)count elementType:(unint64_t)type lengthInBytes:(unint64_t)bytes confidence:(float)confidence requestRevision:(unint64_t)revision;
- (VNTorsoprint)initWithState:(id)state byteOffset:(unint64_t *)offset error:(id *)error;
- (unint64_t)hash;
- (unint64_t)serializeStateIntoData:(id)data startingAtByteOffset:(unint64_t)offset error:(id *)error;
- (unint64_t)serializedLength;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNTorsoprint

- (BOOL)isEquivalentToVNEntityIdentificationModelPrint:(id)print
{
  printCopy = print;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(VNEspressoModelImageprint *)self hasEquivalentDescriptorToImageprint:printCopy];

  return v5;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = VNTorsoprint;
  v4 = [(VNEspressoModelImageprint *)&v8 description];
  [(VNTorsoprint *)self confidence];
  v6 = [v3 initWithFormat:@"%@; coinfidence = %f", v4, v5];

  return v6;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = VNTorsoprint;
  v3 = [(VNEspressoModelImageprint *)&v7 hash];
  [(VNTorsoprint *)self confidence];
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  return v5 ^ __ROR8__(v3, 51);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v10.receiver = self, v10.super_class = VNTorsoprint, [(VNEspressoModelImageprint *)&v10 isEqual:equalCopy]))
    {
      [(VNTorsoprint *)self confidence];
      v6 = v5;
      [(VNTorsoprint *)equalCopy confidence];
      v8 = v6 == v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)serializeStateIntoData:(id)data startingAtByteOffset:(unint64_t)offset error:(id *)error
{
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = VNTorsoprint;
  v9 = [(VNEspressoModelImageprint *)&v14 serializeStateIntoData:dataCopy startingAtByteOffset:offset error:error];
  if (!v9)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  mutableBytes = [dataCopy mutableBytes];
  *&v9[mutableBytes + offset] = self->_confidence;
  v11 = (v9 + 4);
  if (v9 + 4 != [(VNTorsoprint *)self serializedLength])
  {
    if (error)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected size of serialized state of the object of type %@", objc_opt_class()];
      *error = [VNError errorForInternalErrorWithLocalizedDescription:v12];
    }

    goto LABEL_6;
  }

  calculateChecksumMD5((mutableBytes + offset + 28), (v9 - 24), (mutableBytes + offset + 12));
LABEL_7:

  return v11;
}

- (unint64_t)serializedLength
{
  v3.receiver = self;
  v3.super_class = VNTorsoprint;
  return [(VNEspressoModelImageprint *)&v3 serializedLength]+ 4;
}

- (VNTorsoprint)initWithState:(id)state byteOffset:(unint64_t *)offset error:(id *)error
{
  stateCopy = state;
  bytes = [stateCopy bytes];
  v10 = *offset;
  v11 = [stateCopy length];
  v21.receiver = self;
  v21.super_class = VNTorsoprint;
  v12 = [(VNEspressoModelImageprint *)&v21 initWithState:stateCopy byteOffset:offset error:error];
  v14 = v12;
  if (!v12)
  {
    goto LABEL_12;
  }

  v15 = *(bytes + v10 + 4);
  v12->_confidence = 1.0;
  if (v15 >= 4)
  {
    v16 = *offset;
    if (v11 + v10 - *offset <= 3)
    {
      if (error)
      {
        v17 = [VNError errorForInternalErrorWithLocalizedDescription:@"Internal error desrializing torsoprint"];
LABEL_11:
        v19 = 0;
        *error = v17;
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v18 = *(bytes + v16);
    *offset = v16 + 4;
    *&v13 = v18;
    if (![VNValidationUtilities validateVNConfidenceRange:error error:v13])
    {
      if (error)
      {
        v17 = [VNError errorForInternalErrorWithLocalizedDescription:@"Deserialized confidence is outside of the valid range"];
        goto LABEL_11;
      }

LABEL_12:
      v19 = 0;
      goto LABEL_13;
    }

    v14->_confidence = v18;
  }

  v19 = v14;
LABEL_13:

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = VNTorsoprint;
  [(VNEspressoModelImageprint *)&v6 encodeWithCoder:coderCopy];
  *&v5 = self->_confidence;
  [coderCopy vn_encodeValidatedConfidence:@"tp_conf" forKey:v5];
}

- (VNTorsoprint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = VNTorsoprint;
  v11 = [(VNEspressoModelImageprint *)&v16 initWithCoder:coderCopy];
  if (v11)
  {
    v12 = [coderCopy containsValueForKey:@"tp_conf"];
    LODWORD(v13) = 1.0;
    if (v12)
    {
      [coderCopy vn_decodeValidatedConfidenceForKey:{@"tp_conf", v13}];
    }

    v11->_confidence = *&v13;
    v14 = v11;
  }

  else
  {
    VNValidatedLog(4, @"Unexpected error while decoding VNTorsoprint object state", v5, v6, v7, v8, v9, v10, v16.receiver);
  }

  return v11;
}

- (VNTorsoprint)initWithData:(const void *)data elementCount:(unint64_t)count elementType:(unint64_t)type lengthInBytes:(unint64_t)bytes confidence:(float)confidence originatingRequestSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:data length:bytes];
  v43 = 0;
  v16 = [objc_opt_class() validateDescriptorData:v15 elementType:type elementCount:count error:&v43];
  v17 = v43;
  v18 = v17;
  if ((v16 & 1) == 0)
  {
    localizedDescription = [v17 localizedDescription];
    uTF8String = [localizedDescription UTF8String];
    VNValidatedLog(4, @"%s", v26, v27, v28, v29, v30, v31, uTF8String);
    selfCopy = 0;
LABEL_8:

    goto LABEL_9;
  }

  v42.receiver = self;
  v42.super_class = VNTorsoprint;
  v19 = [(VNEspressoModelImageprint *)&v42 initWithDescriptorData:v15 elementType:type elementCount:count originatingRequestSpecifier:specifierCopy];
  if (v19)
  {
    v41 = 0;
    *&v20 = confidence;
    v21 = [VNValidationUtilities validateVNConfidenceRange:&v41 error:v20];
    v22 = v41;
    localizedDescription = v22;
    if (v21)
    {
      v19->_confidence = confidence;
      self = v19;
      selfCopy = self;
    }

    else
    {
      localizedDescription2 = [v22 localizedDescription];
      uTF8String2 = [localizedDescription2 UTF8String];
      VNValidatedLog(4, @"%s", v34, v35, v36, v37, v38, v39, uTF8String2);

      selfCopy = 0;
      self = v19;
    }

    goto LABEL_8;
  }

  self = 0;
  selfCopy = 0;
LABEL_9:

  return selfCopy;
}

- (VNTorsoprint)initWithData:(const void *)data elementCount:(unint64_t)count elementType:(unint64_t)type lengthInBytes:(unint64_t)bytes confidence:(float)confidence requestRevision:(unint64_t)revision
{
  v14 = [objc_opt_class() originatingRequestSpecifierForRequestRevision:revision error:0];
  if (v14)
  {
    *&v15 = confidence;
    self = [(VNTorsoprint *)self initWithData:data elementCount:count elementType:type lengthInBytes:bytes confidence:v14 originatingRequestSpecifier:v15];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)emptyTorsoprintDataForRevision:(unint64_t)revision
{
  if (+[VNTorsoprint emptyTorsoprintDataForRevision:]::onceToken != -1)
  {
    dispatch_once(&+[VNTorsoprint emptyTorsoprintDataForRevision:]::onceToken, &__block_literal_global_94);
  }

  v4 = +[VNTorsoprint emptyTorsoprintDataForRevision:]::emptyVNTorsoprint;

  return v4;
}

uint64_t __47__VNTorsoprint_emptyTorsoprintDataForRevision___block_invoke()
{
  +[VNTorsoprint emptyTorsoprintDataForRevision:]::emptyVNTorsoprint = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:512];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)codingTypesToCodingKeys
{
  if (+[VNTorsoprint codingTypesToCodingKeys]::onceToken != -1)
  {
    dispatch_once(&+[VNTorsoprint codingTypesToCodingKeys]::onceToken, &__block_literal_global_22661);
  }

  v3 = +[VNTorsoprint codingTypesToCodingKeys]::codingTypesToCodingKeys;

  return v3;
}

void __39__VNTorsoprint_codingTypesToCodingKeys__block_invoke()
{
  v3[8] = *MEMORY[0x1E69E9840];
  v2[0] = @"emp_data";
  v2[1] = @"emp_elementsCount";
  v3[0] = @"Tp_data";
  v3[1] = @"Tp_elementsCount";
  v2[2] = @"emp_elementsType";
  v2[3] = @"emp_length";
  v3[2] = @"Tp_elementsType";
  v3[3] = @"Tp_length";
  v2[4] = @"emp_labelsAndConfidence";
  v2[5] = @"VNEspressoModelImageprint";
  v3[4] = @"Tp_labelsAndConfidence";
  v3[5] = @"Tp_VNTorsoprint";
  v2[6] = @"emp_algorithmVersionCodingKey";
  v2[7] = @"emp_algorithmVersion";
  v3[6] = @"Tp_algorithmVersion";
  v3[7] = @"1.0";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:8];
  v1 = +[VNTorsoprint codingTypesToCodingKeys]::codingTypesToCodingKeys;
  +[VNTorsoprint codingTypesToCodingKeys]::codingTypesToCodingKeys = v0;
}

@end