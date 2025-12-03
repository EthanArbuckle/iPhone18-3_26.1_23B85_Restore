@interface VN6B8mkraBUpwUqskMYPtS3
- (BOOL)isEqual:(id)equal;
- (VN6B8mkraBUpwUqskMYPtS3)initWithCoder:(id)coder;
- (VN6B8mkraBUpwUqskMYPtS3)initWithData:(const void *)data elementCount:(unint64_t)count elementType:(unint64_t)type lengthInBytes:(unint64_t)bytes imageSignatureHashType:(unint64_t)hashType requestRevision:(unint64_t)revision;
- (VN6B8mkraBUpwUqskMYPtS3)initWithState:(id)state byteOffset:(unint64_t *)offset error:(id *)error;
- (VN6B8mkraBUpwUqskMYPtS3)initWithState:(id)state error:(id *)error;
- (id)encodeHashDescriptorWithBase64EncodingAndReturnError:(id *)error;
- (unint64_t)hash;
- (unint64_t)serializeStateIntoData:(id)data startingAtByteOffset:(unint64_t)offset error:(id *)error;
- (unint64_t)serializedLength;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VN6B8mkraBUpwUqskMYPtS3

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = VN6B8mkraBUpwUqskMYPtS3;
  return COERCE_UNSIGNED_INT([(VN6B8mkraBUpwUqskMYPtS3 *)self imageSignatureHashType]) ^ __ROR8__([(VNEspressoModelImageprint *)&v3 hash], 51);
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
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v8.receiver = self, v8.super_class = VN6B8mkraBUpwUqskMYPtS3, [(VNEspressoModelImageprint *)&v8 isEqual:equalCopy]))
    {
      imageSignatureHashType = [(VN6B8mkraBUpwUqskMYPtS3 *)self imageSignatureHashType];
      v6 = imageSignatureHashType == [(VN6B8mkraBUpwUqskMYPtS3 *)equalCopy imageSignatureHashType];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)encodeHashDescriptorWithBase64EncodingAndReturnError:(id *)error
{
  if ([(VN6B8mkraBUpwUqskMYPtS3 *)self imageSignatureHashType]!= 1)
  {
    if (error)
    {
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Cannot calculate encoding for hash type: %lu", -[VN6B8mkraBUpwUqskMYPtS3 imageSignatureHashType](self, "imageSignatureHashType")];
      *error = [VNError errorForInternalErrorWithLocalizedDescription:v11];
    }

    goto LABEL_13;
  }

  __p = 0;
  v14 = 0;
  v15 = 0;
  descriptorData = [(VNEspressoModelImageprint *)self descriptorData];
  bytes = [descriptorData bytes];

  if (!bytes)
  {
    if (error)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"Cannot encode null-print object "];
      *error = v10 = 0;
      goto LABEL_14;
    }

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  vision::mod::ImageDescriptorProcessorHasher::base64EncodeHash(bytes, [(VNEspressoModelImageprint *)self elementCount], 1, &__p);
  v7 = objc_alloc(MEMORY[0x1E695DEF0]);
  if (v15 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v15 >= 0)
  {
    v9 = HIBYTE(v15);
  }

  else
  {
    v9 = v14;
  }

  v10 = [v7 initWithBytes:p_p length:v9];
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

LABEL_14:

  return v10;
}

- (unint64_t)serializeStateIntoData:(id)data startingAtByteOffset:(unint64_t)offset error:(id *)error
{
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = VN6B8mkraBUpwUqskMYPtS3;
  v9 = [(VNEspressoModelImageprint *)&v14 serializeStateIntoData:dataCopy startingAtByteOffset:offset error:error];
  if (!v9)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  mutableBytes = [dataCopy mutableBytes];
  *&v9[mutableBytes + offset] = self->_imageSignatureHashType;
  v11 = (v9 + 4);
  if (v9 + 4 != [(VN6B8mkraBUpwUqskMYPtS3 *)self serializedLength])
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
  v3.super_class = VN6B8mkraBUpwUqskMYPtS3;
  return [(VNEspressoModelImageprint *)&v3 serializedLength]+ 4;
}

- (VN6B8mkraBUpwUqskMYPtS3)initWithState:(id)state byteOffset:(unint64_t *)offset error:(id *)error
{
  stateCopy = state;
  v14.receiver = self;
  v14.super_class = VN6B8mkraBUpwUqskMYPtS3;
  v9 = [(VNEspressoModelImageprint *)&v14 initWithState:stateCopy byteOffset:offset error:error];
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = *([stateCopy bytes] + *offset);
  *offset += 4;
  v9->_imageSignatureHashType = v10;
  v11 = *offset;
  if (v11 != [(VN6B8mkraBUpwUqskMYPtS3 *)v9 serializedLength])
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

- (VN6B8mkraBUpwUqskMYPtS3)initWithState:(id)state error:(id *)error
{
  v5.receiver = self;
  v5.super_class = VN6B8mkraBUpwUqskMYPtS3;
  return [(VNEspressoModelImageprint *)&v5 initWithState:state error:error];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = VN6B8mkraBUpwUqskMYPtS3;
  [(VNEspressoModelImageprint *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_imageSignatureHashType forKey:@"sgnHash"];
}

- (VN6B8mkraBUpwUqskMYPtS3)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = VN6B8mkraBUpwUqskMYPtS3;
  v5 = [(VNEspressoModelImageprint *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_imageSignatureHashType = [coderCopy decodeIntegerForKey:@"sgnHash"];
    v6 = v5;
  }

  return v5;
}

- (VN6B8mkraBUpwUqskMYPtS3)initWithData:(const void *)data elementCount:(unint64_t)count elementType:(unint64_t)type lengthInBytes:(unint64_t)bytes imageSignatureHashType:(unint64_t)hashType requestRevision:(unint64_t)revision
{
  v10.receiver = self;
  v10.super_class = VN6B8mkraBUpwUqskMYPtS3;
  result = [(VNEspressoModelImageprint *)&v10 initWithData:data elementCount:count elementType:type lengthInBytes:bytes requestRevision:revision];
  result->_imageSignatureHashType = hashType;
  return result;
}

@end