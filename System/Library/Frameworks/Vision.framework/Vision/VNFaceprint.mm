@interface VNFaceprint
+ (id)codingTypesToCodingKeys;
+ (id)emptyFaceprintDataForRevision:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalentToVNEntityIdentificationModelPrint:(id)a3;
- (NSString)description;
- (VNFaceprint)initWithCoder:(id)a3;
- (VNFaceprint)initWithData:(const void *)a3 elementCount:(unint64_t)a4 elementType:(unint64_t)a5 lengthInBytes:(unint64_t)a6 confidence:(float)a7 originatingRequestSpecifier:(id)a8;
- (VNFaceprint)initWithData:(const void *)a3 elementCount:(unint64_t)a4 elementType:(unint64_t)a5 lengthInBytes:(unint64_t)a6 confidence:(float)a7 requestRevision:(unint64_t)a8;
- (VNFaceprint)initWithRawData:(const void *)a3 elementCount:(unint64_t)a4 elementType:(unint64_t)a5 lengthInBytes:(unint64_t)a6 confidence:(float)a7 requestRevision:(unint64_t)a8;
- (VNFaceprint)initWithState:(id)a3 byteOffset:(unint64_t *)a4 error:(id *)a5;
- (unint64_t)hash;
- (unint64_t)serializeStateIntoData:(id)a3 startingAtByteOffset:(unint64_t)a4 error:(id *)a5;
- (unint64_t)serializedLength;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNFaceprint

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
  v14.super_class = VNFaceprint;
  v11 = [(VNEspressoModelImageprint *)&v14 description];
  v12 = [v10 initWithFormat:@"%@; pixels:\n%@", v11, v3];

  return v12;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = VNFaceprint;
  v3 = [(VNEspressoModelImageprint *)&v7 hash];
  [(VNFaceprint *)self confidence];
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
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v10.receiver = self, v10.super_class = VNFaceprint, [(VNEspressoModelImageprint *)&v10 isEqual:v4]))
    {
      [(VNFaceprint *)self confidence];
      v6 = v5;
      [(VNFaceprint *)v4 confidence];
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
  v14.super_class = VNFaceprint;
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
  if (v9 + 4 != [(VNFaceprint *)self serializedLength])
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
  v3.super_class = VNFaceprint;
  return [(VNEspressoModelImageprint *)&v3 serializedLength]+ 4;
}

- (VNFaceprint)initWithState:(id)a3 byteOffset:(unint64_t *)a4 error:(id *)a5
{
  v48 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = v8;
  if (!v8)
  {
    if (a5)
    {
      v11 = [VNError errorForInvalidOperationWithLocalizedDescription:@"Attempt to deserialize nil"];
      goto LABEL_7;
    }

LABEL_19:
    v12 = 0;
    goto LABEL_56;
  }

  v10 = [v8 length];
  if (v10 > 0x1B)
  {
    v13 = [v9 bytes];
    v14 = v13;
    v15 = *a4;
    v16 = (v13 + *a4);
    *v47 = *v16;
    *&v47[12] = *(v16 + 12);
    if (*v47 == -87098674)
    {
      v17 = *&v47[4];
      if ((*&v47[4] - 4) < 3)
      {
        v43.receiver = self;
        v43.super_class = VNFaceprint;
        v30 = [(VNEspressoModelImageprint *)&v43 initWithState:v9 byteOffset:a4 error:a5];
        if (v30)
        {
          v32 = *a4;
          if (v15 + v10 - *a4 >= 4)
          {
            v33 = *(v14 + v32);
            *a4 = v32 + 4;
            *&v31 = v33;
            if ([VNValidationUtilities validateVNConfidenceRange:a5 error:v31])
            {
              v30->_confidence = v33;
              v34 = v30;
LABEL_40:
              v30 = v34;
              v12 = v34;
              goto LABEL_55;
            }
          }
        }
      }

      else
      {
        if ((*&v47[4] - 1) < 2)
        {
          if (*&v47[8] != 544 || v10 != 544)
          {
            if (a5)
            {
              v20 = [VNError errorWithCode:14 message:@"Serialized state data length is invalid"];
              goto LABEL_43;
            }

LABEL_46:
            v12 = 0;
            goto LABEL_36;
          }

          v45 = 0;
          v46 = 0;
          calculateChecksumMD5((v13 + 28), 0x204uLL, &v45);
          if (*&v47[12] != v45 || *&v47[20] != v46)
          {
            if (a5)
            {
              v20 = [VNError errorWithCode:14 message:@"Serialized state payload data checksum mismatch"];
LABEL_43:
              v12 = 0;
              *a5 = v20;
              goto LABEL_36;
            }

            goto LABEL_46;
          }

          if (v17 == 1)
          {
            LODWORD(v18) = 1.0;
            v40 = [(VNFaceprint *)self initWithData:v14 + 28 elementCount:129 elementType:1 lengthInBytes:516 confidence:1 requestRevision:v18];
            if (!v40)
            {
              if (a5)
              {
                goto LABEL_64;
              }

              goto LABEL_65;
            }
          }

          else
          {
            if (*(v14 + 540) == 1)
            {
              v42 = 516;
            }

            else
            {
              v42 = 512;
            }

            LODWORD(v18) = 1.0;
            v40 = [VNFaceprint initWithData:"initWithData:elementCount:elementType:lengthInBytes:confidence:requestRevision:" elementCount:v14 + 28 elementType:v42 >> 2 lengthInBytes:1 confidence:v18 requestRevision:?];
            if (!v40)
            {
              if (a5)
              {
LABEL_64:
                v20 = [VNError errorWithCode:9 message:@"Error deserializing VNFaceprint"];
                self = 0;
                goto LABEL_43;
              }

LABEL_65:
              self = 0;
              goto LABEL_46;
            }
          }

          v40->_confidence = 1.0;
          self = v40;
          v12 = self;
          goto LABEL_36;
        }

        if (*&v47[4] != 3)
        {
          if (a5)
          {
            v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Serialized state data is an unsupported version (%lu)", *&v47[4]];
            *a5 = [VNError errorWithCode:14 message:v39];
          }

          goto LABEL_46;
        }

        v44.receiver = self;
        v44.super_class = VNFaceprint;
        v38 = [(VNEspressoModelImageprint *)&v44 initWithState:v9 byteOffset:a4 error:a5];
        if (v38)
        {
          v38->_confidence = 1.0;
          v34 = v38;
          goto LABEL_40;
        }

        v30 = 0;
      }

      v12 = 0;
      goto LABEL_55;
    }

    v21 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v9 error:a5];
    if (!v21)
    {
      v12 = 0;
LABEL_35:

LABEL_36:
      v30 = self;
LABEL_55:
      self = v30;
      goto LABEL_56;
    }

    v22 = objc_opt_class();
    [v21 setClass:v22 forClassName:@"CVMLFaceprint"];
    v23 = [v21 decodeObjectOfClass:v22 forKey:@"faceprint"];
    if (v23 || ([v21 decodeObjectOfClass:v22 forKey:@"facePrint"], (v23 = objc_claimAutoreleasedReturnValue()) != 0)) && (objc_opt_isKindOfClass())
    {
      v24 = [v23 faceprint];
      v25 = [v24 length];

      v26 = [v23 faceprint];
      v27 = [v26 bytes];
      LODWORD(v28) = 1.0;
      v29 = [(VNFaceprint *)self initWithData:v27 elementCount:v25 >> 2 elementType:1 lengthInBytes:v25 confidence:1 requestRevision:v28];

      if (v29)
      {
        self = v29;
        v12 = self;
LABEL_34:

        [v21 finishDecoding];
        goto LABEL_35;
      }

      if (a5)
      {
        [VNError errorWithCode:14 message:@"Error deserializing VNFaceprint"];
        self = 0;
        *a5 = v12 = 0;
        goto LABEL_34;
      }

      self = 0;
    }

    else if (a5)
    {
      v35 = MEMORY[0x1E696AEC0];
      v36 = [v21 error];
      v37 = [v35 stringWithFormat:@"Input data is neither VNFaceprint nor CVMLFaceprint. NSKeyedUnarchiver error = %@", v36];
      *a5 = [VNError errorWithCode:14 message:v37];
    }

    v12 = 0;
    goto LABEL_34;
  }

  if (!a5)
  {
    goto LABEL_19;
  }

  v11 = [VNError errorWithCode:14 message:@"Input data is not a VNFaceprint"];
LABEL_7:
  v12 = 0;
  *a5 = v11;
LABEL_56:

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = VNFaceprint;
  [(VNEspressoModelImageprint *)&v6 encodeWithCoder:v4];
  *&v5 = self->_confidence;
  [v4 vn_encodeValidatedConfidence:@"fp_conf" forKey:v5];
}

- (VNFaceprint)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"VNFaceprint"])
  {
    v5 = [v4 vn_decodeCodingVersionForKey:@"VNFaceprint"];
    v42 = 0;
    v6 = [objc_opt_class() isSupportedCodingVersion:v5 error:&v42];
    v7 = v42;
    v8 = v7;
    if (v6)
    {
      if (v5)
      {

        v9 = 0;
        goto LABEL_27;
      }

      v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
      if ([v18 isEqualToString:@"VNFaceprintGeneratorTypeEspressoCPU"])
      {
        v19 = [v4 decodeIntegerForKey:@"requestRevision"];
        v20 = v19;
        if (v19 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v19;
        }

        v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
        v23 = v22;
        if (v20 >= 2)
        {
          v24 = 512;
        }

        else
        {
          v24 = 516;
        }

        if ([v22 length] == v24)
        {
          v31 = [v23 bytes];
          LODWORD(v32) = 1.0;
          v33 = [(VNFaceprint *)self initWithData:v31 elementCount:v24 >> 2 elementType:1 lengthInBytes:v24 confidence:v21 requestRevision:v32];
          if (v33)
          {
            self = v33;
            v9 = self;
          }

          else
          {
            self = 0;
            VNValidatedLog(4, @"Unexpected error while decoding VNFaceprint object state", v34, v35, v36, v37, v38, v39, v41);
            v9 = 0;
          }
        }

        else
        {
          VNValidatedLog(4, @"Unexpected error while decoding VNFaceprint object state", v25, v26, v27, v28, v29, v30, v41);
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      [v4 failWithError:v7];
      v9 = 0;
    }

    goto LABEL_27;
  }

  v43.receiver = self;
  v43.super_class = VNFaceprint;
  v9 = [(VNEspressoModelImageprint *)&v43 initWithCoder:v4];
  if (v9)
  {
    v16 = [v4 containsValueForKey:@"fp_conf"];
    LODWORD(v17) = 1.0;
    if (v16)
    {
      [v4 vn_decodeValidatedConfidenceForKey:{@"fp_conf", v17}];
    }

    v9->_confidence = *&v17;
  }

  else
  {
    VNValidatedLog(4, @"Unexpected error while decoding VNFaceprint object state", v10, v11, v12, v13, v14, v15, v41);
  }

LABEL_27:

  return v9;
}

- (VNFaceprint)initWithRawData:(const void *)a3 elementCount:(unint64_t)a4 elementType:(unint64_t)a5 lengthInBytes:(unint64_t)a6 confidence:(float)a7 requestRevision:(unint64_t)a8
{
  v15 = +[(VNRequest *)VNCreateFaceprintRequest];
  if (([v15 containsIndex:a8] & 1) == 0)
  {
    VNValidatedLog(4, @"Faceprint Initialization Failure: Unsupported Faceprint revision", v16, v17, v18, v19, v20, v21, v34);
LABEL_13:
    v31 = 0;
    goto LABEL_14;
  }

  if (a5 == 1)
  {
    v22 = 4;
  }

  else
  {
    if (a5 != 2)
    {
      v32 = @"Faceprint Initialization Failure: Unsupported Faceprint element type";
      goto LABEL_12;
    }

    v22 = 8;
  }

  if (v22 * a4 != a6)
  {
    v32 = @"Faceprint Initialization Failure: Mismatch between Faceprint parameters: element type, element count and length in bytes";
LABEL_12:
    VNValidatedLog(4, v32, v16, v17, v18, v19, v20, v21, v34);
    goto LABEL_13;
  }

  HIBYTE(v34) = 48;
  std::vector<unsigned char>::vector[abi:ne200100](__p, a6);
  if (vision::mod::FaceprintAndAttributes::normalizeFacePrintData(a3, a4, 1, __p[0], v23) == 128)
  {
    *&v30 = a7;
    self = [(VNFaceprint *)self initWithData:__p[0] elementCount:a4 elementType:1 lengthInBytes:a6 confidence:a8 requestRevision:v30];
    v31 = self;
  }

  else
  {
    VNValidatedLog(4, @"Faceprint Initialization Failure: Faceprint normalization failed", v24, v25, v26, v27, v28, v29, v34);
    v31 = 0;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

LABEL_14:

  return v31;
}

- (VNFaceprint)initWithData:(const void *)a3 elementCount:(unint64_t)a4 elementType:(unint64_t)a5 lengthInBytes:(unint64_t)a6 confidence:(float)a7 originatingRequestSpecifier:(id)a8
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
  v42.super_class = VNFaceprint;
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

- (VNFaceprint)initWithData:(const void *)a3 elementCount:(unint64_t)a4 elementType:(unint64_t)a5 lengthInBytes:(unint64_t)a6 confidence:(float)a7 requestRevision:(unint64_t)a8
{
  v14 = [objc_opt_class() originatingRequestSpecifierForRequestRevision:a8 error:0];
  if (v14)
  {
    *&v15 = a7;
    self = [(VNFaceprint *)self initWithData:a3 elementCount:a4 elementType:a5 lengthInBytes:a6 confidence:v14 originatingRequestSpecifier:v15];
    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)emptyFaceprintDataForRevision:(unint64_t)a3
{
  if (+[VNFaceprint emptyFaceprintDataForRevision:]::onceToken != -1)
  {
    dispatch_once(&+[VNFaceprint emptyFaceprintDataForRevision:]::onceToken, &__block_literal_global_157);
  }

  v4 = +[VNFaceprint emptyFaceprintDataForRevision:]::emptyFaceprintData;

  return v4;
}

uint64_t __45__VNFaceprint_emptyFaceprintDataForRevision___block_invoke()
{
  +[VNFaceprint emptyFaceprintDataForRevision:]::emptyFaceprintData = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:512];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)codingTypesToCodingKeys
{
  if (+[VNFaceprint codingTypesToCodingKeys]::onceToken != -1)
  {
    dispatch_once(&+[VNFaceprint codingTypesToCodingKeys]::onceToken, &__block_literal_global_7159);
  }

  v3 = +[VNFaceprint codingTypesToCodingKeys]::codingTypesToCodingKeys;

  return v3;
}

void __38__VNFaceprint_codingTypesToCodingKeys__block_invoke()
{
  v3[8] = *MEMORY[0x1E69E9840];
  v2[0] = @"emp_data";
  v2[1] = @"emp_elementsCount";
  v3[0] = @"data";
  v3[1] = @"fp_ec";
  v2[2] = @"emp_elementsType";
  v2[3] = @"emp_length";
  v3[2] = @"fp_et";
  v3[3] = @"fp_l";
  v2[4] = @"emp_labelsAndConfidence";
  v2[5] = @"VNEspressoModelImageprint";
  v3[4] = @"fp_lac";
  v3[5] = @"VNFaceprint";
  v2[6] = @"emp_algorithmVersionCodingKey";
  v2[7] = @"emp_algorithmVersion";
  v3[6] = @"fp_av";
  v3[7] = @"1.0";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:8];
  v1 = +[VNFaceprint codingTypesToCodingKeys]::codingTypesToCodingKeys;
  +[VNFaceprint codingTypesToCodingKeys]::codingTypesToCodingKeys = v0;
}

@end