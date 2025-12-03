@interface VNAnimalprint
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentToVNEntityIdentificationModelPrint:(id)print;
- (NSString)description;
- (VNAnimalprint)initWithCoder:(id)coder;
- (VNAnimalprint)initWithData:(const void *)data elementCount:(unint64_t)count elementType:(unint64_t)type lengthInBytes:(unint64_t)bytes confidence:(float)confidence requestRevision:(unint64_t)revision;
- (VNAnimalprint)initWithState:(id)state byteOffset:(unint64_t *)offset error:(id *)error;
- (VNAnimalprint)initWithState:(id)state error:(id *)error;
- (unint64_t)hash;
- (unint64_t)serializeStateIntoData:(id)data startingAtByteOffset:(unint64_t)offset error:(id *)error;
- (unint64_t)serializedLength;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNAnimalprint

- (BOOL)isEquivalentToVNEntityIdentificationModelPrint:(id)print
{
  printCopy = print;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(VNEspressoModelImageprint *)self hasEquivalentDescriptorToImageprint:printCopy];

  return v5;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  descriptorData = [(VNEspressoModelImageprint *)self descriptorData];
  bytes = [descriptorData bytes];

  for (i = 0; i < [(VNEspressoModelImageprint *)self elementCount]; ++i)
  {
    if (i == [(VNEspressoModelImageprint *)self elementCount]- 1)
    {
      v7 = &stru_1F1976900;
    }

    else
    {
      v7 = @"\n";
    }

    v8 = v7;
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%f%@", *(bytes + 4 * i), v8];
    [v3 appendString:v9];
  }

  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14.receiver = self;
  v14.super_class = VNAnimalprint;
  v11 = [(VNEspressoModelImageprint *)&v14 description];
  v12 = [v10 initWithFormat:@"%@; pixels:\n%@", v11, v3];

  return v12;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = VNAnimalprint;
  v3 = [(VNEspressoModelImageprint *)&v7 hash];
  [(VNAnimalprint *)self confidence];
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
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v10.receiver = self, v10.super_class = VNAnimalprint, [(VNEspressoModelImageprint *)&v10 isEqual:equalCopy]))
    {
      [(VNAnimalprint *)self confidence];
      v6 = v5;
      [(VNAnimalprint *)equalCopy confidence];
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
  v14.super_class = VNAnimalprint;
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
  if (v9 + 4 != [(VNAnimalprint *)self serializedLength])
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
  v3.super_class = VNAnimalprint;
  return [(VNEspressoModelImageprint *)&v3 serializedLength]+ 4;
}

- (VNAnimalprint)initWithState:(id)state byteOffset:(unint64_t *)offset error:(id *)error
{
  stateCopy = state;
  v15.receiver = self;
  v15.super_class = VNAnimalprint;
  v9 = [(VNEspressoModelImageprint *)&v15 initWithState:stateCopy byteOffset:offset error:error];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = *([stateCopy bytes] + *offset);
  *offset += 4;
  *&v11 = v10;
  if (![VNValidationUtilities validateVNConfidenceRange:error error:v11])
  {
    goto LABEL_7;
  }

  v9->_confidence = v10;
  v12 = *offset;
  if (v12 != [(VNAnimalprint *)v9 serializedLength])
  {
    if (!error)
    {
      goto LABEL_8;
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error deserializing object of type %@", objc_opt_class()];
    *error = [VNError errorWithCode:14 message:v13];

LABEL_7:
    error = 0;
    goto LABEL_8;
  }

  error = v9;
LABEL_8:

  return error;
}

- (VNAnimalprint)initWithState:(id)state error:(id *)error
{
  v5.receiver = self;
  v5.super_class = VNAnimalprint;
  return [(VNEspressoModelImageprint *)&v5 initWithState:state error:error];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = VNAnimalprint;
  [(VNEspressoModelImageprint *)&v6 encodeWithCoder:coderCopy];
  *&v5 = self->_confidence;
  [coderCopy vn_encodeValidatedConfidence:@"ap_conf" forKey:v5];
}

- (VNAnimalprint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = VNAnimalprint;
  v5 = [(VNEspressoModelImageprint *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy vn_decodeValidatedConfidenceForKey:@"ap_conf"];
    v5->_confidence = v6;
    v7 = v5;
  }

  return v5;
}

- (VNAnimalprint)initWithData:(const void *)data elementCount:(unint64_t)count elementType:(unint64_t)type lengthInBytes:(unint64_t)bytes confidence:(float)confidence requestRevision:(unint64_t)revision
{
  v25.receiver = self;
  v25.super_class = VNAnimalprint;
  v9 = [(VNEspressoModelImageprint *)&v25 initWithData:data elementCount:count elementType:type lengthInBytes:bytes requestRevision:revision];
  if (v9)
  {
    v24 = 0;
    *&v10 = confidence;
    v11 = [VNValidationUtilities validateVNConfidenceRange:&v24 error:v10];
    v12 = v24;
    v13 = v12;
    if (v11)
    {
      v9->_confidence = confidence;
      v14 = v9;
    }

    else
    {
      localizedDescription = [v12 localizedDescription];
      uTF8String = [localizedDescription UTF8String];
      VNValidatedLog(4, @"%s", v17, v18, v19, v20, v21, v22, uTF8String);

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end