@interface VNAnimalprint
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalentToVNEntityIdentificationModelPrint:(id)a3;
- (NSString)description;
- (VNAnimalprint)initWithCoder:(id)a3;
- (VNAnimalprint)initWithData:(const void *)a3 elementCount:(unint64_t)a4 elementType:(unint64_t)a5 lengthInBytes:(unint64_t)a6 confidence:(float)a7 requestRevision:(unint64_t)a8;
- (VNAnimalprint)initWithState:(id)a3 byteOffset:(unint64_t *)a4 error:(id *)a5;
- (VNAnimalprint)initWithState:(id)a3 error:(id *)a4;
- (unint64_t)hash;
- (unint64_t)serializeStateIntoData:(id)a3 startingAtByteOffset:(unint64_t)a4 error:(id *)a5;
- (unint64_t)serializedLength;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNAnimalprint

- (BOOL)isEquivalentToVNEntityIdentificationModelPrint:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(VNEspressoModelImageprint *)self hasEquivalentDescriptorToImageprint:v4];

  return v5;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [(VNEspressoModelImageprint *)self descriptorData];
  v5 = [v4 bytes];

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
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%f%@", *(v5 + 4 * i), v8];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v10.receiver = self, v10.super_class = VNAnimalprint, [(VNEspressoModelImageprint *)&v10 isEqual:v4]))
    {
      [(VNAnimalprint *)self confidence];
      v6 = v5;
      [(VNAnimalprint *)v4 confidence];
      v8 = v6 == v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)serializeStateIntoData:(id)a3 startingAtByteOffset:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = VNAnimalprint;
  v9 = [(VNEspressoModelImageprint *)&v14 serializeStateIntoData:v8 startingAtByteOffset:a4 error:a5];
  if (!v9)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v10 = [v8 mutableBytes];
  *&v9[v10 + a4] = self->_confidence;
  v11 = (v9 + 4);
  if (v9 + 4 != [(VNAnimalprint *)self serializedLength])
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
  v3.super_class = VNAnimalprint;
  return [(VNEspressoModelImageprint *)&v3 serializedLength]+ 4;
}

- (VNAnimalprint)initWithState:(id)a3 byteOffset:(unint64_t *)a4 error:(id *)a5
{
  v8 = a3;
  v15.receiver = self;
  v15.super_class = VNAnimalprint;
  v9 = [(VNEspressoModelImageprint *)&v15 initWithState:v8 byteOffset:a4 error:a5];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = *([v8 bytes] + *a4);
  *a4 += 4;
  *&v11 = v10;
  if (![VNValidationUtilities validateVNConfidenceRange:a5 error:v11])
  {
    goto LABEL_7;
  }

  v9->_confidence = v10;
  v12 = *a4;
  if (v12 != [(VNAnimalprint *)v9 serializedLength])
  {
    if (!a5)
    {
      goto LABEL_8;
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error deserializing object of type %@", objc_opt_class()];
    *a5 = [VNError errorWithCode:14 message:v13];

LABEL_7:
    a5 = 0;
    goto LABEL_8;
  }

  a5 = v9;
LABEL_8:

  return a5;
}

- (VNAnimalprint)initWithState:(id)a3 error:(id *)a4
{
  v5.receiver = self;
  v5.super_class = VNAnimalprint;
  return [(VNEspressoModelImageprint *)&v5 initWithState:a3 error:a4];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = VNAnimalprint;
  [(VNEspressoModelImageprint *)&v6 encodeWithCoder:v4];
  *&v5 = self->_confidence;
  [v4 vn_encodeValidatedConfidence:@"ap_conf" forKey:v5];
}

- (VNAnimalprint)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VNAnimalprint;
  v5 = [(VNEspressoModelImageprint *)&v9 initWithCoder:v4];
  if (v5)
  {
    [v4 vn_decodeValidatedConfidenceForKey:@"ap_conf"];
    v5->_confidence = v6;
    v7 = v5;
  }

  return v5;
}

- (VNAnimalprint)initWithData:(const void *)a3 elementCount:(unint64_t)a4 elementType:(unint64_t)a5 lengthInBytes:(unint64_t)a6 confidence:(float)a7 requestRevision:(unint64_t)a8
{
  v25.receiver = self;
  v25.super_class = VNAnimalprint;
  v9 = [(VNEspressoModelImageprint *)&v25 initWithData:a3 elementCount:a4 elementType:a5 lengthInBytes:a6 requestRevision:a8];
  if (v9)
  {
    v24 = 0;
    *&v10 = a7;
    v11 = [VNValidationUtilities validateVNConfidenceRange:&v24 error:v10];
    v12 = v24;
    v13 = v12;
    if (v11)
    {
      v9->_confidence = a7;
      v14 = v9;
    }

    else
    {
      v15 = [v12 localizedDescription];
      v16 = [v15 UTF8String];
      VNValidatedLog(4, @"%s", v17, v18, v19, v20, v21, v22, v16);

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