@interface VNTorsoprint
+ (id)codingTypesToCodingKeys;
+ (id)emptyTorsoprintDataForRevision:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalentToVNEntityIdentificationModelPrint:(id)a3;
- (NSString)description;
- (VNTorsoprint)initWithCoder:(id)a3;
- (VNTorsoprint)initWithData:(const void *)a3 elementCount:(unint64_t)a4 elementType:(unint64_t)a5 lengthInBytes:(unint64_t)a6 confidence:(float)a7 originatingRequestSpecifier:(id)a8;
- (VNTorsoprint)initWithData:(const void *)a3 elementCount:(unint64_t)a4 elementType:(unint64_t)a5 lengthInBytes:(unint64_t)a6 confidence:(float)a7 requestRevision:(unint64_t)a8;
- (VNTorsoprint)initWithState:(id)a3 byteOffset:(unint64_t *)a4 error:(id *)a5;
- (unint64_t)hash;
- (unint64_t)serializeStateIntoData:(id)a3 startingAtByteOffset:(unint64_t)a4 error:(id *)a5;
- (unint64_t)serializedLength;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNTorsoprint

- (BOOL)isEquivalentToVNEntityIdentificationModelPrint:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(VNEspressoModelImageprint *)self hasEquivalentDescriptorToImageprint:v4];

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
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v10.receiver = self, v10.super_class = VNTorsoprint, [(VNEspressoModelImageprint *)&v10 isEqual:v4]))
    {
      [(VNTorsoprint *)self confidence];
      v6 = v5;
      [(VNTorsoprint *)v4 confidence];
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
  v14.super_class = VNTorsoprint;
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
  if (v9 + 4 != [(VNTorsoprint *)self serializedLength])
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
  v3.super_class = VNTorsoprint;
  return [(VNEspressoModelImageprint *)&v3 serializedLength]+ 4;
}

- (VNTorsoprint)initWithState:(id)a3 byteOffset:(unint64_t *)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 bytes];
  v10 = *a4;
  v11 = [v8 length];
  v21.receiver = self;
  v21.super_class = VNTorsoprint;
  v12 = [(VNEspressoModelImageprint *)&v21 initWithState:v8 byteOffset:a4 error:a5];
  v14 = v12;
  if (!v12)
  {
    goto LABEL_12;
  }

  v15 = *(v9 + v10 + 4);
  v12->_confidence = 1.0;
  if (v15 >= 4)
  {
    v16 = *a4;
    if (v11 + v10 - *a4 <= 3)
    {
      if (a5)
      {
        v17 = [VNError errorForInternalErrorWithLocalizedDescription:@"Internal error desrializing torsoprint"];
LABEL_11:
        v19 = 0;
        *a5 = v17;
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v18 = *(v9 + v16);
    *a4 = v16 + 4;
    *&v13 = v18;
    if (![VNValidationUtilities validateVNConfidenceRange:a5 error:v13])
    {
      if (a5)
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = VNTorsoprint;
  [(VNEspressoModelImageprint *)&v6 encodeWithCoder:v4];
  *&v5 = self->_confidence;
  [v4 vn_encodeValidatedConfidence:@"tp_conf" forKey:v5];
}

- (VNTorsoprint)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = VNTorsoprint;
  v11 = [(VNEspressoModelImageprint *)&v16 initWithCoder:v4];
  if (v11)
  {
    v12 = [v4 containsValueForKey:@"tp_conf"];
    LODWORD(v13) = 1.0;
    if (v12)
    {
      [v4 vn_decodeValidatedConfidenceForKey:{@"tp_conf", v13}];
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

- (VNTorsoprint)initWithData:(const void *)a3 elementCount:(unint64_t)a4 elementType:(unint64_t)a5 lengthInBytes:(unint64_t)a6 confidence:(float)a7 originatingRequestSpecifier:(id)a8
{
  v14 = a8;
  v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 length:a6];
  v43 = 0;
  v16 = [objc_opt_class() validateDescriptorData:v15 elementType:a5 elementCount:a4 error:&v43];
  v17 = v43;
  v18 = v17;
  if ((v16 & 1) == 0)
  {
    v23 = [v17 localizedDescription];
    v25 = [v23 UTF8String];
    VNValidatedLog(4, @"%s", v26, v27, v28, v29, v30, v31, v25);
    v24 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v42.receiver = self;
  v42.super_class = VNTorsoprint;
  v19 = [(VNEspressoModelImageprint *)&v42 initWithDescriptorData:v15 elementType:a5 elementCount:a4 originatingRequestSpecifier:v14];
  if (v19)
  {
    v41 = 0;
    *&v20 = a7;
    v21 = [VNValidationUtilities validateVNConfidenceRange:&v41 error:v20];
    v22 = v41;
    v23 = v22;
    if (v21)
    {
      v19->_confidence = a7;
      self = v19;
      v24 = self;
    }

    else
    {
      v32 = [v22 localizedDescription];
      v33 = [v32 UTF8String];
      VNValidatedLog(4, @"%s", v34, v35, v36, v37, v38, v39, v33);

      v24 = 0;
      self = v19;
    }

    goto LABEL_8;
  }

  self = 0;
  v24 = 0;
LABEL_9:

  return v24;
}

- (VNTorsoprint)initWithData:(const void *)a3 elementCount:(unint64_t)a4 elementType:(unint64_t)a5 lengthInBytes:(unint64_t)a6 confidence:(float)a7 requestRevision:(unint64_t)a8
{
  v14 = [objc_opt_class() originatingRequestSpecifierForRequestRevision:a8 error:0];
  if (v14)
  {
    *&v15 = a7;
    self = [(VNTorsoprint *)self initWithData:a3 elementCount:a4 elementType:a5 lengthInBytes:a6 confidence:v14 originatingRequestSpecifier:v15];
    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)emptyTorsoprintDataForRevision:(unint64_t)a3
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