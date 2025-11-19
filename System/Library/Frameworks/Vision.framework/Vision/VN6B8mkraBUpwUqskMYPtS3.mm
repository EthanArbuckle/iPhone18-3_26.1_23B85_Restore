@interface VN6B8mkraBUpwUqskMYPtS3
- (BOOL)isEqual:(id)a3;
- (VN6B8mkraBUpwUqskMYPtS3)initWithCoder:(id)a3;
- (VN6B8mkraBUpwUqskMYPtS3)initWithData:(const void *)a3 elementCount:(unint64_t)a4 elementType:(unint64_t)a5 lengthInBytes:(unint64_t)a6 imageSignatureHashType:(unint64_t)a7 requestRevision:(unint64_t)a8;
- (VN6B8mkraBUpwUqskMYPtS3)initWithState:(id)a3 byteOffset:(unint64_t *)a4 error:(id *)a5;
- (VN6B8mkraBUpwUqskMYPtS3)initWithState:(id)a3 error:(id *)a4;
- (id)encodeHashDescriptorWithBase64EncodingAndReturnError:(id *)a3;
- (unint64_t)hash;
- (unint64_t)serializeStateIntoData:(id)a3 startingAtByteOffset:(unint64_t)a4 error:(id *)a5;
- (unint64_t)serializedLength;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VN6B8mkraBUpwUqskMYPtS3

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = VN6B8mkraBUpwUqskMYPtS3;
  return COERCE_UNSIGNED_INT([(VN6B8mkraBUpwUqskMYPtS3 *)self imageSignatureHashType]) ^ __ROR8__([(VNEspressoModelImageprint *)&v3 hash], 51);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v8.receiver = self, v8.super_class = VN6B8mkraBUpwUqskMYPtS3, [(VNEspressoModelImageprint *)&v8 isEqual:v4]))
    {
      v5 = [(VN6B8mkraBUpwUqskMYPtS3 *)self imageSignatureHashType];
      v6 = v5 == [(VN6B8mkraBUpwUqskMYPtS3 *)v4 imageSignatureHashType];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)encodeHashDescriptorWithBase64EncodingAndReturnError:(id *)a3
{
  if ([(VN6B8mkraBUpwUqskMYPtS3 *)self imageSignatureHashType]!= 1)
  {
    if (a3)
    {
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Cannot calculate encoding for hash type: %lu", -[VN6B8mkraBUpwUqskMYPtS3 imageSignatureHashType](self, "imageSignatureHashType")];
      *a3 = [VNError errorForInternalErrorWithLocalizedDescription:v11];
    }

    goto LABEL_13;
  }

  __p = 0;
  v14 = 0;
  v15 = 0;
  v5 = [(VNEspressoModelImageprint *)self descriptorData];
  v6 = [v5 bytes];

  if (!v6)
  {
    if (a3)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"Cannot encode null-print object "];
      *a3 = v10 = 0;
      goto LABEL_14;
    }

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  vision::mod::ImageDescriptorProcessorHasher::base64EncodeHash(v6, [(VNEspressoModelImageprint *)self elementCount], 1, &__p);
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

- (unint64_t)serializeStateIntoData:(id)a3 startingAtByteOffset:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = VN6B8mkraBUpwUqskMYPtS3;
  v9 = [(VNEspressoModelImageprint *)&v14 serializeStateIntoData:v8 startingAtByteOffset:a4 error:a5];
  if (!v9)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v10 = [v8 mutableBytes];
  *&v9[v10 + a4] = self->_imageSignatureHashType;
  v11 = (v9 + 4);
  if (v9 + 4 != [(VN6B8mkraBUpwUqskMYPtS3 *)self serializedLength])
  {
    if (a5)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected size of serialized state of the object of type %@", objc_opt_class()];
      *a5 = [VNError errorForInternalErrorWithLocalizedDescription:v12];
    }

    goto LABEL_6;
  }

  calculateChecksumMD5((v10 + a4 + 28), (v9 - 24), (v10 + a4 + 12));
LABEL_7:

  return v11;
}

- (unint64_t)serializedLength
{
  v3.receiver = self;
  v3.super_class = VN6B8mkraBUpwUqskMYPtS3;
  return [(VNEspressoModelImageprint *)&v3 serializedLength]+ 4;
}

- (VN6B8mkraBUpwUqskMYPtS3)initWithState:(id)a3 byteOffset:(unint64_t *)a4 error:(id *)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = VN6B8mkraBUpwUqskMYPtS3;
  v9 = [(VNEspressoModelImageprint *)&v14 initWithState:v8 byteOffset:a4 error:a5];
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = *([v8 bytes] + *a4);
  *a4 += 4;
  v9->_imageSignatureHashType = v10;
  v11 = *a4;
  if (v11 != [(VN6B8mkraBUpwUqskMYPtS3 *)v9 serializedLength])
  {
    if (!a5)
    {
      goto LABEL_7;
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error deserializing object of type %@", objc_opt_class()];
    *a5 = [VNError errorWithCode:14 message:v12];

LABEL_6:
    a5 = 0;
    goto LABEL_7;
  }

  a5 = v9;
LABEL_7:

  return a5;
}

- (VN6B8mkraBUpwUqskMYPtS3)initWithState:(id)a3 error:(id *)a4
{
  v5.receiver = self;
  v5.super_class = VN6B8mkraBUpwUqskMYPtS3;
  return [(VNEspressoModelImageprint *)&v5 initWithState:a3 error:a4];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = VN6B8mkraBUpwUqskMYPtS3;
  [(VNEspressoModelImageprint *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_imageSignatureHashType forKey:@"sgnHash"];
}

- (VN6B8mkraBUpwUqskMYPtS3)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VN6B8mkraBUpwUqskMYPtS3;
  v5 = [(VNEspressoModelImageprint *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_imageSignatureHashType = [v4 decodeIntegerForKey:@"sgnHash"];
    v6 = v5;
  }

  return v5;
}

- (VN6B8mkraBUpwUqskMYPtS3)initWithData:(const void *)a3 elementCount:(unint64_t)a4 elementType:(unint64_t)a5 lengthInBytes:(unint64_t)a6 imageSignatureHashType:(unint64_t)a7 requestRevision:(unint64_t)a8
{
  v10.receiver = self;
  v10.super_class = VN6B8mkraBUpwUqskMYPtS3;
  result = [(VNEspressoModelImageprint *)&v10 initWithData:a3 elementCount:a4 elementType:a5 lengthInBytes:a6 requestRevision:a8];
  result->_imageSignatureHashType = a7;
  return result;
}

@end