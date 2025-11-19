@interface VNFaceTorsoprint
+ (id)codingTypesToCodingKeys;
+ (id)defaultOriginatingRequestClassNameForRequestRevision:(unint64_t)a3;
- (BOOL)isValidFaceprint;
- (BOOL)isValidTorsoprint;
- (VNFaceTorsoprint)initWithCoder:(id)a3;
- (VNFaceTorsoprint)initWithData:(const void *)a3 elementCount:(unint64_t)a4 elementType:(unint64_t)a5 lengthInBytes:(unint64_t)a6 faceprintConfidence:(float)a7 torsoprintConfidence:(float)a8;
- (VNFaceTorsoprint)initWithData:(const void *)a3 elementCount:(unint64_t)a4 elementType:(unint64_t)a5 lengthInBytes:(unint64_t)a6 faceprintConfidence:(float)a7 torsoprintConfidence:(float)a8 originatingRequestSpecifier:(id)a9;
- (VNFaceTorsoprint)initWithFaceprint:(id)a3 torsoPrint:(id)a4 originatingRequestSpecifier:(id)a5;
- (VNFaceTorsoprint)initWithFaceprint:(id)a3 torsoPrint:(id)a4 requestRevision:(unint64_t)a5;
- (VNFaceTorsoprint)initWithFaceprint:(id)a3 torsoprint:(id)a4;
- (VNFaceTorsoprint)initWithState:(id)a3 byteOffset:(unint64_t *)a4 error:(id *)a5;
- (id)computeDistance:(id)a3 withDistanceFunction:(unint64_t)a4 error:(id *)a5;
- (id)serializeStateAndReturnError:(id *)a3;
- (unint64_t)serializeStateIntoData:(id)a3 startingAtByteOffset:(unint64_t)a4 error:(id *)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNFaceTorsoprint

- (id)serializeStateAndReturnError:(id *)a3
{
  v5 = [MEMORY[0x1E695DF88] dataWithLength:{-[VNFaceTorsoprint serializedLength](self, "serializedLength")}];
  if ([(VNFaceTorsoprint *)self serializeStateIntoData:v5 startingAtByteOffset:0 error:a3])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)serializeStateIntoData:(id)a3 startingAtByteOffset:(unint64_t)a4 error:(id *)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = v8;
  if (!v8)
  {
    if (a5)
    {
      [VNError errorWithCode:14 message:@"state cannot be nil"];
      *a5 = v23 = 0;
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v10 = [v8 mutableBytes];
  *&v27[12] = 0;
  *&v27[20] = 0;
  *v27 = -87158511;
  v11 = [(VNFaceTorsoprint *)self serializedLength];
  *&v27[4] = 5;
  *&v27[8] = v11;
  v12 = [(VNFaceTorsoprint *)self isValidFaceprint];
  v13 = (v10 + a4);
  *(v10 + a4 + 28) = v12;
  v14 = (v10 + a4 + 28);
  v15 = a4 + 29;
  if (v12)
  {
    v16 = [(VNFaceprint *)self->_faceprint serializeStateIntoData:v9 startingAtByteOffset:a4 + 29 error:a5];
    if (!v16)
    {
      goto LABEL_12;
    }

    v15 += v16;
  }

  v17 = [(VNFaceTorsoprint *)self isValidTorsoprint];
  *(v10 + v15) = v17;
  v18 = v15 + 1;
  if (v17)
  {
    v19 = [(VNTorsoprint *)self->_torsoprint serializeStateIntoData:v9 startingAtByteOffset:v15 + 1 error:a5];
    if (v19)
    {
      v18 += v19;
      goto LABEL_8;
    }

LABEL_12:
    v23 = 0;
    goto LABEL_17;
  }

LABEL_8:
  v20 = [(VNEspressoModelImageprint *)self originatingRequestSpecifier];
  v21 = (v10 + v18);
  *v21 = [v20 requestRevision];
  v21[1] = [v20 requestClassCode];
  v21[2] = [(VNFaceTorsoprint *)self personId];
  v22 = v18 - a4;
  v23 = v18 - a4 + 12;
  if (v23 == v11)
  {
    calculateChecksumMD5(v14, v22 - 16, &v27[12]);
    v24 = *v27;
    *(v13 + 12) = *&v27[12];
    *v13 = v24;
  }

  else
  {
    if (a5)
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected size of serialized state of the object of type %@", objc_opt_class()];
      *a5 = [VNError errorWithCode:9 message:v25];
    }

    v23 = 0;
  }

LABEL_17:
  return v23;
}

- (VNFaceTorsoprint)initWithState:(id)a3 byteOffset:(unint64_t *)a4 error:(id *)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = v8;
  if (!v8)
  {
    if (a5)
    {
      v14 = [VNError errorWithCode:14 message:@"state cannot be nil"];
      goto LABEL_10;
    }

LABEL_15:
    v15 = 0;
    goto LABEL_39;
  }

  v10 = [v8 bytes];
  v11 = *a4;
  v12 = (v10 + *a4);
  *v33 = *v12;
  *&v33[12] = *(v12 + 12);
  *a4 = v11 + 28;
  calculateChecksumMD5((v10 + v11 + 28), [v9 length] - 28, v32);
  if (*&v33[12] == v32[0] && *&v33[20] == v32[1])
  {
    v16 = *&v33[4];
    if (*&v33[4] < 4u || (v17 = *(v10 + *a4), v18 = *a4 + 1, *a4 = v18, v17))
    {
      v19 = [[VNFaceprint alloc] initWithState:v9 byteOffset:a4 error:a5];
      if (!v19)
      {
        goto LABEL_15;
      }

      v18 = *a4;
    }

    else
    {
      v19 = 0;
    }

    v20 = *(v10 + v18);
    v21 = v18 + 1;
    *a4 = v21;
    if (v20)
    {
      v31 = [[VNTorsoprint alloc] initWithState:v9 byteOffset:a4 error:a5];
      if (!v31)
      {
        v15 = 0;
LABEL_38:

        goto LABEL_39;
      }

      v21 = *a4;
    }

    else
    {
      v31 = 0;
    }

    v22 = *(v10 + v21);
    *a4 = v21 + 4;
    if ([objc_opt_class() shouldAssumeOriginatingRequestClassForHeaderSerializationVersion:v16])
    {
      v23 = [objc_opt_class() originatingRequestSpecifierForRequestRevision:v22 error:a5];
      if (!v23)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v24 = *(v10 + *a4);
      *a4 += 4;
      v25 = [VNClassRegistrar classNameForClassCode:v24 error:a5];
      if (!v25 || ([VNRequestSpecifier specifierForRequestClassName:v25 revision:v22 error:a5], v23 = objc_claimAutoreleasedReturnValue(), v25, !v23))
      {
        v23 = 0;
        goto LABEL_36;
      }
    }

    v26 = *a4;
    if (v16 < 5)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(v10 + v26);
      v26 += 4;
      *a4 = v26;
    }

    if (v26 - v11 == *&v33[8])
    {
      v28 = [(VNFaceTorsoprint *)self initWithFaceprint:v19 torsoPrint:v31 originatingRequestSpecifier:v23];
      if (v28)
      {
        v28->_personId = v27;
        self = v28;
        v15 = self;
LABEL_37:

        goto LABEL_38;
      }

      if (a5)
      {
        [VNError errorWithCode:9 message:@"Failed to initialize VNFaceTorsoprint object"];
        self = 0;
        *a5 = v15 = 0;
        goto LABEL_37;
      }

      self = 0;
    }

    else if (a5)
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected size of deserialized state of the object of type %@", objc_opt_class()];
      *a5 = [VNError errorWithCode:9 message:v29];
    }

LABEL_36:
    v15 = 0;
    goto LABEL_37;
  }

  if (!a5)
  {
    goto LABEL_15;
  }

  v14 = [VNError errorWithCode:9 message:@"Serialized and calculated MD5s don't match"];
LABEL_10:
  v15 = 0;
  *a5 = v14;
LABEL_39:

  return v15;
}

- (BOOL)isValidTorsoprint
{
  v2 = [(VNFaceTorsoprint *)self torsoprint];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isValidFaceprint
{
  v2 = [(VNFaceTorsoprint *)self faceprint];
  v3 = v2 != 0;

  return v3;
}

- (id)computeDistance:(id)a3 withDistanceFunction:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a5)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"Wrong type of print object"];
      *a5 = v13 = 0;
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v9 = [(VNFaceTorsoprint *)self isValidFaceprint];
  v10 = [v8 isValidFaceprint];
  v11 = [(VNFaceTorsoprint *)self isValidTorsoprint];
  v12 = [v8 isValidTorsoprint];
  if (v9 != v10 && ((v11 ^ v12) & 1) != 0)
  {
    v13 = &unk_1F19C21E8;
    goto LABEL_18;
  }

  v14 = v9 & v10;
  v15 = v11 & v12;
  if (((v9 & v10 | v11 & v12) & 1) == 0)
  {
    v13 = &unk_1F19C21F8;
    goto LABEL_18;
  }

  if (!v14)
  {
    v18 = 0;
    v13 = 0;
    if (!v15)
    {
      goto LABEL_17;
    }

LABEL_15:
    v19 = [(VNFaceTorsoprint *)self torsoprint];
    v20 = [v8 torsoprint];
    v13 = [v19 computeDistance:v20 withDistanceFunction:a4 error:a5];

    if (((v13 != 0) & v14) != 0)
    {
      v21 = MEMORY[0x1E696AD98];
      [v18 floatValue];
      v23 = v22;
      [v13 floatValue];
      *&v25 = (v24 * 0.5) + (v23 * 0.5);
      v26 = [v21 numberWithFloat:v25];

      v13 = v26;
    }

    goto LABEL_17;
  }

  v16 = [(VNFaceTorsoprint *)self faceprint];
  v17 = [v8 faceprint];
  v18 = [v16 computeDistance:v17 withDistanceFunction:a4 error:a5];

  if (!v18)
  {
LABEL_12:
    v13 = 0;
    goto LABEL_18;
  }

  if (v15)
  {
    goto LABEL_15;
  }

  v18 = v18;
  v13 = v18;
LABEL_17:

LABEL_18:

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[VNEspressoModelImageprint requestRevision](self forKey:{"requestRevision"), @"FTp_rev"}];
  [v4 encodeObject:self->_faceprint forKey:@"FTp_fp"];
  [v4 encodeObject:self->_torsoprint forKey:@"FTp_tp"];
  [v4 encodeInteger:self->_personId forKey:@"FTp_pid"];
}

- (VNFaceTorsoprint)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FTp_fp"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FTp_tp"];
  v7 = [objc_opt_class() originatingRequestSpecifierForRequestRevision:objc_msgSend(v4 error:{"decodeIntegerForKey:", @"FTp_rev", 0}];
  if (v7)
  {
    v8 = [(VNFaceTorsoprint *)self initWithFaceprint:v5 torsoPrint:v6 originatingRequestSpecifier:v7];
    if (v8)
    {
      if ([v4 containsValueForKey:@"FTp_pid"])
      {
        v9 = [v4 decodeIntegerForKey:@"FTp_pid"];
      }

      else
      {
        v9 = 0;
      }

      v8->_personId = v9;
      self = v8;
      v8 = self;
    }

    else
    {
      self = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (VNFaceTorsoprint)initWithFaceprint:(id)a3 torsoPrint:(id)a4 originatingRequestSpecifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v16 = a5;
  if (v8)
  {
    v17 = [v8 elementType];
    if (v9)
    {
LABEL_3:
      v18 = [v9 elementType];
      goto LABEL_6;
    }
  }

  else
  {
    v17 = 1;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v18 = 1;
LABEL_6:
  if (v17 == v18)
  {
    v41 = +[VNFaceprint emptyFaceprintDataForRevision:](VNFaceprint, "emptyFaceprintDataForRevision:", [v8 requestRevision]);
    if (v8)
    {
      v19 = [v8 elementCount];
      v20 = [v8 lengthInBytes];
    }

    else
    {
      v23 = [v41 length];
      v20 = [v41 length];
      v19 = v23 >> 2;
    }

    v24 = +[VNTorsoprint emptyTorsoprintDataForRevision:](VNTorsoprint, "emptyTorsoprintDataForRevision:", [v9 requestRevision]);
    v25 = v24;
    if (v9)
    {
      v26 = [v9 elementCount];
      v27 = [v9 lengthInBytes];
    }

    else
    {
      v28 = [v24 length];
      v27 = [v25 length];
      v26 = v28 >> 2;
    }

    v29 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:v27 + v20];
    if (v8)
    {
      v30 = [v8 descriptorData];
    }

    else
    {
      v30 = v41;
    }

    [v29 appendData:v30];
    if (v8)
    {
    }

    if (v9)
    {
      v31 = [v9 descriptorData];
    }

    else
    {
      v31 = v25;
    }

    [v29 appendData:v31];
    if (v9)
    {

      v32 = v8 == 0;
    }

    else
    {
      v32 = 1;
    }

    if (v32)
    {
      v33 = 1;
    }

    else
    {
      v33 = v17;
    }

    v42.receiver = self;
    v42.super_class = VNFaceTorsoprint;
    v22 = [(VNEspressoModelImageprint *)&v42 initWithDescriptorData:v29 elementType:v33 elementCount:v26 + v19 originatingRequestSpecifier:v16];
    if (v22)
    {
      v34 = [v8 copy];
      faceprint = v22->_faceprint;
      v22->_faceprint = v34;

      v36 = [v9 copy];
      torsoprint = v22->_torsoprint;
      v22->_torsoprint = v36;

      v22->_personId = 0;
      v38 = v22;
    }

    v21 = v22;
  }

  else
  {
    VNValidatedLog(4, @"faceprint and torsoprint must have the same element types", v10, v11, v12, v13, v14, v15, v40);
    v21 = 0;
    v22 = self;
  }

  return v21;
}

- (VNFaceTorsoprint)initWithFaceprint:(id)a3 torsoPrint:(id)a4 requestRevision:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [objc_opt_class() originatingRequestSpecifierForRequestRevision:a5 error:0];
  if (v10)
  {
    self = [(VNFaceTorsoprint *)self initWithFaceprint:v8 torsoPrint:v9 originatingRequestSpecifier:v10];
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (VNFaceTorsoprint)initWithFaceprint:(id)a3 torsoprint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() originatingRequestSpecifierForRequestRevision:1 error:0];
  if (v8)
  {
    self = [(VNFaceTorsoprint *)self initWithFaceprint:v6 torsoPrint:v7 originatingRequestSpecifier:v8];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (VNFaceTorsoprint)initWithData:(const void *)a3 elementCount:(unint64_t)a4 elementType:(unint64_t)a5 lengthInBytes:(unint64_t)a6 faceprintConfidence:(float)a7 torsoprintConfidence:(float)a8 originatingRequestSpecifier:(id)a9
{
  v16 = a9;
  v17 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 length:a6];
  v45 = 0;
  v18 = [objc_opt_class() validateDescriptorData:v17 elementType:a5 elementCount:a4 error:&v45];
  v19 = v45;
  v20 = v19;
  if ((v18 & 1) == 0)
  {
    v22 = [v19 localizedDescription];
    v26 = [v22 UTF8String];
    VNValidatedLog(4, @"%s", v27, v28, v29, v30, v31, v32, v26);
    v33 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v44.receiver = self;
  v44.super_class = VNFaceTorsoprint;
  v21 = [(VNEspressoModelImageprint *)&v44 initWithDescriptorData:v17 elementType:a5 elementCount:a4 originatingRequestSpecifier:v16];
  self = v21;
  if (v21)
  {
    v43 = v16;
    v22 = [VNFaceprint emptyFaceprintDataForRevision:3737841667];
    v23 = a6 >> 1;
    v42 = a6 >> 3;
    v24 = memcmp([v22 bytes], a3, a6 >> 1);
    if (v24)
    {
      v25 = 0;
    }

    else
    {
      v34 = [VNFaceprint alloc];
      *&v35 = a7;
      v25 = [(VNFaceprint *)v34 initWithData:a3 elementCount:v42 elementType:a5 lengthInBytes:a6 >> 1 confidence:v43 originatingRequestSpecifier:v35];
    }

    objc_storeStrong(&v21->_faceprint, v25);
    if (!v24)
    {
    }

    v36 = [VNTorsoprint emptyTorsoprintDataForRevision:1];
    v37 = memcmp([v36 bytes], a3 + v23, v23);
    if (v37)
    {
      v38 = 0;
    }

    else
    {
      v39 = [VNTorsoprint alloc];
      *&v40 = a8;
      v38 = [(VNTorsoprint *)v39 initWithData:a3 + v23 elementCount:v42 elementType:a5 lengthInBytes:v23 confidence:v43 originatingRequestSpecifier:v40];
    }

    objc_storeStrong(&v21->_torsoprint, v38);
    v16 = v43;
    if (!v37)
    {
    }

    v21->_personId = 0;
    self = v21;

    v33 = self;
    goto LABEL_16;
  }

  v33 = 0;
LABEL_17:

  return v33;
}

- (VNFaceTorsoprint)initWithData:(const void *)a3 elementCount:(unint64_t)a4 elementType:(unint64_t)a5 lengthInBytes:(unint64_t)a6 faceprintConfidence:(float)a7 torsoprintConfidence:(float)a8
{
  v15 = [objc_opt_class() originatingRequestSpecifierForRequestRevision:1 error:0];
  if (v15)
  {
    *&v16 = a7;
    *&v17 = a8;
    self = [(VNFaceTorsoprint *)self initWithData:a3 elementCount:a4 elementType:a5 lengthInBytes:a6 faceprintConfidence:v15 torsoprintConfidence:v16 originatingRequestSpecifier:v17];
    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)codingTypesToCodingKeys
{
  if (+[VNFaceTorsoprint codingTypesToCodingKeys]::onceToken != -1)
  {
    dispatch_once(&+[VNFaceTorsoprint codingTypesToCodingKeys]::onceToken, &__block_literal_global_6202);
  }

  v3 = +[VNFaceTorsoprint codingTypesToCodingKeys]::codingTypesToCodingKeys;

  return v3;
}

void __43__VNFaceTorsoprint_codingTypesToCodingKeys__block_invoke()
{
  v3[8] = *MEMORY[0x1E69E9840];
  v2[0] = @"emp_data";
  v2[1] = @"emp_elementsCount";
  v3[0] = @"FTp_data";
  v3[1] = @"FTp_elementsCount";
  v2[2] = @"emp_elementsType";
  v2[3] = @"emp_length";
  v3[2] = @"FTp_elementsType";
  v3[3] = @"FTp_length";
  v2[4] = @"emp_labelsAndConfidence";
  v2[5] = @"VNEspressoModelImageprint";
  v3[4] = @"FTp_labelsAndConfidence";
  v3[5] = @"FTp_VNFaceTorsoprint";
  v2[6] = @"emp_algorithmVersionCodingKey";
  v2[7] = @"emp_algorithmVersion";
  v3[6] = @"FTp_algorithmVersion";
  v3[7] = @"1.0";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:8];
  v1 = +[VNFaceTorsoprint codingTypesToCodingKeys]::codingTypesToCodingKeys;
  +[VNFaceTorsoprint codingTypesToCodingKeys]::codingTypesToCodingKeys = v0;
}

+ (id)defaultOriginatingRequestClassNameForRequestRevision:(unint64_t)a3
{
  if (a3 - 1 >= 2)
  {
    return @"VNNOPRequest";
  }

  else
  {
    return @"VNCreateFaceTorsoprintRequest";
  }
}

@end