@interface VN6Ac6Cyl5O5oK19HboyMBR
- (BOOL)isEqual:(id)equal;
- (VN6Ac6Cyl5O5oK19HboyMBR)initWithCoder:(id)coder;
- (VN6Ac6Cyl5O5oK19HboyMBR)initWithData:(const void *)data elementCount:(unint64_t)count elementType:(unint64_t)type lengthInBytes:(unint64_t)bytes imageSignatureprintType:(unint64_t)signatureprintType originatingRequestSpecifier:(id)specifier;
- (VN6Ac6Cyl5O5oK19HboyMBR)initWithData:(const void *)data elementCount:(unint64_t)count elementType:(unint64_t)type lengthInBytes:(unint64_t)bytes imageSignatureprintType:(unint64_t)signatureprintType requestRevision:(unint64_t)revision;
- (VN6Ac6Cyl5O5oK19HboyMBR)initWithState:(id)state byteOffset:(unint64_t *)offset error:(id *)error;
- (VN6Ac6Cyl5O5oK19HboyMBR)initWithState:(id)state error:(id *)error;
- (unint64_t)hash;
- (unint64_t)serializeStateIntoData:(id)data startingAtByteOffset:(unint64_t)offset error:(id *)error;
- (unint64_t)serializedLength;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VN6Ac6Cyl5O5oK19HboyMBR

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = VN6Ac6Cyl5O5oK19HboyMBR;
  return COERCE_UNSIGNED_INT([(VN6Ac6Cyl5O5oK19HboyMBR *)self imageSignatureprintType]) ^ __ROR8__([(VNEspressoModelImageprint *)&v3 hash], 51);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v8.receiver = self, v8.super_class = VN6Ac6Cyl5O5oK19HboyMBR, [(VNEspressoModelImageprint *)&v8 isEqual:equalCopy]))
    {
      imageSignatureprintType = [(VN6Ac6Cyl5O5oK19HboyMBR *)self imageSignatureprintType];
      v6 = imageSignatureprintType == [(VN6Ac6Cyl5O5oK19HboyMBR *)equalCopy imageSignatureprintType];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)serializeStateIntoData:(id)data startingAtByteOffset:(unint64_t)offset error:(id *)error
{
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = VN6Ac6Cyl5O5oK19HboyMBR;
  v9 = [(VNEspressoModelImageprint *)&v14 serializeStateIntoData:dataCopy startingAtByteOffset:offset error:error];
  if (!v9)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  mutableBytes = [dataCopy mutableBytes];
  *&v9[mutableBytes + offset] = self->_imageSignatureprintType;
  v11 = (v9 + 4);
  if (v9 + 4 != [(VN6Ac6Cyl5O5oK19HboyMBR *)self serializedLength])
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
  v3.super_class = VN6Ac6Cyl5O5oK19HboyMBR;
  return [(VNEspressoModelImageprint *)&v3 serializedLength]+ 4;
}

- (VN6Ac6Cyl5O5oK19HboyMBR)initWithState:(id)state byteOffset:(unint64_t *)offset error:(id *)error
{
  stateCopy = state;
  v14.receiver = self;
  v14.super_class = VN6Ac6Cyl5O5oK19HboyMBR;
  v9 = [(VNEspressoModelImageprint *)&v14 initWithState:stateCopy byteOffset:offset error:error];
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = *([stateCopy bytes] + *offset);
  *offset += 4;
  v9->_imageSignatureprintType = v10;
  v11 = *offset;
  if (v11 != [(VN6Ac6Cyl5O5oK19HboyMBR *)v9 serializedLength])
  {
    if (!error)
    {
      goto LABEL_7;
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error deserializing object of type %@", objc_opt_class()];
    *error = [VNError errorWithCode:14 message:v12];

LABEL_6:
    error = 0;
    goto LABEL_7;
  }

  error = v9;
LABEL_7:

  return error;
}

- (VN6Ac6Cyl5O5oK19HboyMBR)initWithState:(id)state error:(id *)error
{
  v5.receiver = self;
  v5.super_class = VN6Ac6Cyl5O5oK19HboyMBR;
  return [(VNEspressoModelImageprint *)&v5 initWithState:state error:error];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = VN6Ac6Cyl5O5oK19HboyMBR;
  [(VNEspressoModelImageprint *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_imageSignatureprintType forKey:@"sgnPrnt"];
}

- (VN6Ac6Cyl5O5oK19HboyMBR)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = VN6Ac6Cyl5O5oK19HboyMBR;
  v5 = [(VNEspressoModelImageprint *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_imageSignatureprintType = [coderCopy decodeIntegerForKey:@"sgnPrnt"];
    v6 = v5;
  }

  return v5;
}

- (VN6Ac6Cyl5O5oK19HboyMBR)initWithData:(const void *)data elementCount:(unint64_t)count elementType:(unint64_t)type lengthInBytes:(unint64_t)bytes imageSignatureprintType:(unint64_t)signatureprintType requestRevision:(unint64_t)revision
{
  v14 = [objc_opt_class() originatingRequestSpecifierForRequestRevision:revision error:0];
  if (v14)
  {
    self = [(VN6Ac6Cyl5O5oK19HboyMBR *)self initWithData:data elementCount:count elementType:type lengthInBytes:bytes imageSignatureprintType:signatureprintType originatingRequestSpecifier:v14];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (VN6Ac6Cyl5O5oK19HboyMBR)initWithData:(const void *)data elementCount:(unint64_t)count elementType:(unint64_t)type lengthInBytes:(unint64_t)bytes imageSignatureprintType:(unint64_t)signatureprintType originatingRequestSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:data length:bytes];
  v37 = 0;
  v16 = [objc_opt_class() validateDescriptorData:v15 elementType:type elementCount:count error:&v37];
  v17 = v37;
  v18 = v17;
  if ((v16 & 1) == 0)
  {
    localizedDescription = [v17 localizedDescription];
    uTF8String = [localizedDescription UTF8String];
    VNValidatedLog(4, @"%s", v29, v30, v31, v32, v33, v34, uTF8String);

LABEL_7:
    selfCopy = 0;
    goto LABEL_8;
  }

  v36.receiver = self;
  v36.super_class = VN6Ac6Cyl5O5oK19HboyMBR;
  v19 = [(VNEspressoModelImageprint *)&v36 initWithDescriptorData:v15 elementType:type elementCount:count originatingRequestSpecifier:specifierCopy];
  if (!v19)
  {
    self = 0;
    goto LABEL_7;
  }

  if ([objc_opt_class() _signaturePrintTypeSupported:signatureprintType])
  {
    v19->_imageSignatureprintType = signatureprintType;
    self = v19;
    selfCopy = self;
  }

  else
  {
    VNValidatedLog(4, @"unsupported signature print type %lu", v20, v21, v22, v23, v24, v25, signatureprintType);
    selfCopy = 0;
    self = v19;
  }

LABEL_8:

  return selfCopy;
}

@end