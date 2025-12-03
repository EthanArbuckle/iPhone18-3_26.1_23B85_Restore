@interface VNFaceTorsoprint
+ (id)codingTypesToCodingKeys;
+ (id)defaultOriginatingRequestClassNameForRequestRevision:(unint64_t)revision;
- (BOOL)isValidFaceprint;
- (BOOL)isValidTorsoprint;
- (VNFaceTorsoprint)initWithCoder:(id)coder;
- (VNFaceTorsoprint)initWithData:(const void *)data elementCount:(unint64_t)count elementType:(unint64_t)type lengthInBytes:(unint64_t)bytes faceprintConfidence:(float)confidence torsoprintConfidence:(float)torsoprintConfidence;
- (VNFaceTorsoprint)initWithData:(const void *)data elementCount:(unint64_t)count elementType:(unint64_t)type lengthInBytes:(unint64_t)bytes faceprintConfidence:(float)confidence torsoprintConfidence:(float)torsoprintConfidence originatingRequestSpecifier:(id)specifier;
- (VNFaceTorsoprint)initWithFaceprint:(id)faceprint torsoPrint:(id)print originatingRequestSpecifier:(id)specifier;
- (VNFaceTorsoprint)initWithFaceprint:(id)faceprint torsoPrint:(id)print requestRevision:(unint64_t)revision;
- (VNFaceTorsoprint)initWithFaceprint:(id)faceprint torsoprint:(id)torsoprint;
- (VNFaceTorsoprint)initWithState:(id)state byteOffset:(unint64_t *)offset error:(id *)error;
- (id)computeDistance:(id)distance withDistanceFunction:(unint64_t)function error:(id *)error;
- (id)serializeStateAndReturnError:(id *)error;
- (unint64_t)serializeStateIntoData:(id)data startingAtByteOffset:(unint64_t)offset error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNFaceTorsoprint

- (id)serializeStateAndReturnError:(id *)error
{
  v5 = [MEMORY[0x1E695DF88] dataWithLength:{-[VNFaceTorsoprint serializedLength](self, "serializedLength")}];
  if ([(VNFaceTorsoprint *)self serializeStateIntoData:v5 startingAtByteOffset:0 error:error])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)serializeStateIntoData:(id)data startingAtByteOffset:(unint64_t)offset error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v9 = dataCopy;
  if (!dataCopy)
  {
    if (error)
    {
      [VNError errorWithCode:14 message:@"state cannot be nil"];
      *error = v23 = 0;
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  mutableBytes = [dataCopy mutableBytes];
  *&v27[12] = 0;
  *&v27[20] = 0;
  *v27 = -87158511;
  serializedLength = [(VNFaceTorsoprint *)self serializedLength];
  *&v27[4] = 5;
  *&v27[8] = serializedLength;
  isValidFaceprint = [(VNFaceTorsoprint *)self isValidFaceprint];
  v13 = (mutableBytes + offset);
  *(mutableBytes + offset + 28) = isValidFaceprint;
  v14 = (mutableBytes + offset + 28);
  v15 = offset + 29;
  if (isValidFaceprint)
  {
    v16 = [(VNFaceprint *)self->_faceprint serializeStateIntoData:v9 startingAtByteOffset:offset + 29 error:error];
    if (!v16)
    {
      goto LABEL_12;
    }

    v15 += v16;
  }

  isValidTorsoprint = [(VNFaceTorsoprint *)self isValidTorsoprint];
  *(mutableBytes + v15) = isValidTorsoprint;
  v18 = v15 + 1;
  if (isValidTorsoprint)
  {
    v19 = [(VNTorsoprint *)self->_torsoprint serializeStateIntoData:v9 startingAtByteOffset:v15 + 1 error:error];
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
  originatingRequestSpecifier = [(VNEspressoModelImageprint *)self originatingRequestSpecifier];
  v21 = (mutableBytes + v18);
  *v21 = [originatingRequestSpecifier requestRevision];
  v21[1] = [originatingRequestSpecifier requestClassCode];
  v21[2] = [(VNFaceTorsoprint *)self personId];
  v22 = v18 - offset;
  v23 = v18 - offset + 12;
  if (v23 == serializedLength)
  {
    calculateChecksumMD5(v14, v22 - 16, &v27[12]);
    v24 = *v27;
    *(v13 + 12) = *&v27[12];
    *v13 = v24;
  }

  else
  {
    if (error)
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected size of serialized state of the object of type %@", objc_opt_class()];
      *error = [VNError errorWithCode:9 message:v25];
    }

    v23 = 0;
  }

LABEL_17:
  return v23;
}

- (VNFaceTorsoprint)initWithState:(id)state byteOffset:(unint64_t *)offset error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v9 = stateCopy;
  if (!stateCopy)
  {
    if (error)
    {
      v14 = [VNError errorWithCode:14 message:@"state cannot be nil"];
      goto LABEL_10;
    }

LABEL_15:
    selfCopy = 0;
    goto LABEL_39;
  }

  bytes = [stateCopy bytes];
  v11 = *offset;
  v12 = (bytes + *offset);
  *v33 = *v12;
  *&v33[12] = *(v12 + 12);
  *offset = v11 + 28;
  calculateChecksumMD5((bytes + v11 + 28), [v9 length] - 28, v32);
  if (*&v33[12] == v32[0] && *&v33[20] == v32[1])
  {
    v16 = *&v33[4];
    if (*&v33[4] < 4u || (v17 = *(bytes + *offset), v18 = *offset + 1, *offset = v18, v17))
    {
      v19 = [[VNFaceprint alloc] initWithState:v9 byteOffset:offset error:error];
      if (!v19)
      {
        goto LABEL_15;
      }

      v18 = *offset;
    }

    else
    {
      v19 = 0;
    }

    v20 = *(bytes + v18);
    v21 = v18 + 1;
    *offset = v21;
    if (v20)
    {
      v31 = [[VNTorsoprint alloc] initWithState:v9 byteOffset:offset error:error];
      if (!v31)
      {
        selfCopy = 0;
LABEL_38:

        goto LABEL_39;
      }

      v21 = *offset;
    }

    else
    {
      v31 = 0;
    }

    v22 = *(bytes + v21);
    *offset = v21 + 4;
    if ([objc_opt_class() shouldAssumeOriginatingRequestClassForHeaderSerializationVersion:v16])
    {
      v23 = [objc_opt_class() originatingRequestSpecifierForRequestRevision:v22 error:error];
      if (!v23)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v24 = *(bytes + *offset);
      *offset += 4;
      v25 = [VNClassRegistrar classNameForClassCode:v24 error:error];
      if (!v25 || ([VNRequestSpecifier specifierForRequestClassName:v25 revision:v22 error:error], v23 = objc_claimAutoreleasedReturnValue(), v25, !v23))
      {
        v23 = 0;
        goto LABEL_36;
      }
    }

    v26 = *offset;
    if (v16 < 5)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(bytes + v26);
      v26 += 4;
      *offset = v26;
    }

    if (v26 - v11 == *&v33[8])
    {
      v28 = [(VNFaceTorsoprint *)self initWithFaceprint:v19 torsoPrint:v31 originatingRequestSpecifier:v23];
      if (v28)
      {
        v28->_personId = v27;
        self = v28;
        selfCopy = self;
LABEL_37:

        goto LABEL_38;
      }

      if (error)
      {
        [VNError errorWithCode:9 message:@"Failed to initialize VNFaceTorsoprint object"];
        self = 0;
        *error = selfCopy = 0;
        goto LABEL_37;
      }

      self = 0;
    }

    else if (error)
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected size of deserialized state of the object of type %@", objc_opt_class()];
      *error = [VNError errorWithCode:9 message:v29];
    }

LABEL_36:
    selfCopy = 0;
    goto LABEL_37;
  }

  if (!error)
  {
    goto LABEL_15;
  }

  v14 = [VNError errorWithCode:9 message:@"Serialized and calculated MD5s don't match"];
LABEL_10:
  selfCopy = 0;
  *error = v14;
LABEL_39:

  return selfCopy;
}

- (BOOL)isValidTorsoprint
{
  torsoprint = [(VNFaceTorsoprint *)self torsoprint];
  v3 = torsoprint != 0;

  return v3;
}

- (BOOL)isValidFaceprint
{
  faceprint = [(VNFaceTorsoprint *)self faceprint];
  v3 = faceprint != 0;

  return v3;
}

- (id)computeDistance:(id)distance withDistanceFunction:(unint64_t)function error:(id *)error
{
  distanceCopy = distance;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"Wrong type of print object"];
      *error = v13 = 0;
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  isValidFaceprint = [(VNFaceTorsoprint *)self isValidFaceprint];
  isValidFaceprint2 = [distanceCopy isValidFaceprint];
  isValidTorsoprint = [(VNFaceTorsoprint *)self isValidTorsoprint];
  isValidTorsoprint2 = [distanceCopy isValidTorsoprint];
  if (isValidFaceprint != isValidFaceprint2 && ((isValidTorsoprint ^ isValidTorsoprint2) & 1) != 0)
  {
    v13 = &unk_1F19C21E8;
    goto LABEL_18;
  }

  v14 = isValidFaceprint & isValidFaceprint2;
  v15 = isValidTorsoprint & isValidTorsoprint2;
  if (((isValidFaceprint & isValidFaceprint2 | isValidTorsoprint & isValidTorsoprint2) & 1) == 0)
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
    torsoprint = [(VNFaceTorsoprint *)self torsoprint];
    torsoprint2 = [distanceCopy torsoprint];
    v13 = [torsoprint computeDistance:torsoprint2 withDistanceFunction:function error:error];

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

  faceprint = [(VNFaceTorsoprint *)self faceprint];
  faceprint2 = [distanceCopy faceprint];
  v18 = [faceprint computeDistance:faceprint2 withDistanceFunction:function error:error];

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[VNEspressoModelImageprint requestRevision](self forKey:{"requestRevision"), @"FTp_rev"}];
  [coderCopy encodeObject:self->_faceprint forKey:@"FTp_fp"];
  [coderCopy encodeObject:self->_torsoprint forKey:@"FTp_tp"];
  [coderCopy encodeInteger:self->_personId forKey:@"FTp_pid"];
}

- (VNFaceTorsoprint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FTp_fp"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FTp_tp"];
  v7 = [objc_opt_class() originatingRequestSpecifierForRequestRevision:objc_msgSend(coderCopy error:{"decodeIntegerForKey:", @"FTp_rev", 0}];
  if (v7)
  {
    selfCopy = [(VNFaceTorsoprint *)self initWithFaceprint:v5 torsoPrint:v6 originatingRequestSpecifier:v7];
    if (selfCopy)
    {
      if ([coderCopy containsValueForKey:@"FTp_pid"])
      {
        v9 = [coderCopy decodeIntegerForKey:@"FTp_pid"];
      }

      else
      {
        v9 = 0;
      }

      selfCopy->_personId = v9;
      self = selfCopy;
      selfCopy = self;
    }

    else
    {
      self = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (VNFaceTorsoprint)initWithFaceprint:(id)faceprint torsoPrint:(id)print originatingRequestSpecifier:(id)specifier
{
  faceprintCopy = faceprint;
  printCopy = print;
  specifierCopy = specifier;
  if (faceprintCopy)
  {
    elementType = [faceprintCopy elementType];
    if (printCopy)
    {
LABEL_3:
      elementType2 = [printCopy elementType];
      goto LABEL_6;
    }
  }

  else
  {
    elementType = 1;
    if (printCopy)
    {
      goto LABEL_3;
    }
  }

  elementType2 = 1;
LABEL_6:
  if (elementType == elementType2)
  {
    v41 = +[VNFaceprint emptyFaceprintDataForRevision:](VNFaceprint, "emptyFaceprintDataForRevision:", [faceprintCopy requestRevision]);
    if (faceprintCopy)
    {
      elementCount = [faceprintCopy elementCount];
      lengthInBytes = [faceprintCopy lengthInBytes];
    }

    else
    {
      v23 = [v41 length];
      lengthInBytes = [v41 length];
      elementCount = v23 >> 2;
    }

    v24 = +[VNTorsoprint emptyTorsoprintDataForRevision:](VNTorsoprint, "emptyTorsoprintDataForRevision:", [printCopy requestRevision]);
    v25 = v24;
    if (printCopy)
    {
      elementCount2 = [printCopy elementCount];
      lengthInBytes2 = [printCopy lengthInBytes];
    }

    else
    {
      v28 = [v24 length];
      lengthInBytes2 = [v25 length];
      elementCount2 = v28 >> 2;
    }

    v29 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:lengthInBytes2 + lengthInBytes];
    if (faceprintCopy)
    {
      descriptorData = [faceprintCopy descriptorData];
    }

    else
    {
      descriptorData = v41;
    }

    [v29 appendData:descriptorData];
    if (faceprintCopy)
    {
    }

    if (printCopy)
    {
      descriptorData2 = [printCopy descriptorData];
    }

    else
    {
      descriptorData2 = v25;
    }

    [v29 appendData:descriptorData2];
    if (printCopy)
    {

      v32 = faceprintCopy == 0;
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
      v33 = elementType;
    }

    v42.receiver = self;
    v42.super_class = VNFaceTorsoprint;
    selfCopy = [(VNEspressoModelImageprint *)&v42 initWithDescriptorData:v29 elementType:v33 elementCount:elementCount2 + elementCount originatingRequestSpecifier:specifierCopy];
    if (selfCopy)
    {
      v34 = [faceprintCopy copy];
      faceprint = selfCopy->_faceprint;
      selfCopy->_faceprint = v34;

      v36 = [printCopy copy];
      torsoprint = selfCopy->_torsoprint;
      selfCopy->_torsoprint = v36;

      selfCopy->_personId = 0;
      v38 = selfCopy;
    }

    v21 = selfCopy;
  }

  else
  {
    VNValidatedLog(4, @"faceprint and torsoprint must have the same element types", v10, v11, v12, v13, v14, v15, v40);
    v21 = 0;
    selfCopy = self;
  }

  return v21;
}

- (VNFaceTorsoprint)initWithFaceprint:(id)faceprint torsoPrint:(id)print requestRevision:(unint64_t)revision
{
  faceprintCopy = faceprint;
  printCopy = print;
  v10 = [objc_opt_class() originatingRequestSpecifierForRequestRevision:revision error:0];
  if (v10)
  {
    self = [(VNFaceTorsoprint *)self initWithFaceprint:faceprintCopy torsoPrint:printCopy originatingRequestSpecifier:v10];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (VNFaceTorsoprint)initWithFaceprint:(id)faceprint torsoprint:(id)torsoprint
{
  faceprintCopy = faceprint;
  torsoprintCopy = torsoprint;
  v8 = [objc_opt_class() originatingRequestSpecifierForRequestRevision:1 error:0];
  if (v8)
  {
    self = [(VNFaceTorsoprint *)self initWithFaceprint:faceprintCopy torsoPrint:torsoprintCopy originatingRequestSpecifier:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (VNFaceTorsoprint)initWithData:(const void *)data elementCount:(unint64_t)count elementType:(unint64_t)type lengthInBytes:(unint64_t)bytes faceprintConfidence:(float)confidence torsoprintConfidence:(float)torsoprintConfidence originatingRequestSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v17 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:data length:bytes];
  v45 = 0;
  v18 = [objc_opt_class() validateDescriptorData:v17 elementType:type elementCount:count error:&v45];
  v19 = v45;
  v20 = v19;
  if ((v18 & 1) == 0)
  {
    localizedDescription = [v19 localizedDescription];
    uTF8String = [localizedDescription UTF8String];
    VNValidatedLog(4, @"%s", v27, v28, v29, v30, v31, v32, uTF8String);
    selfCopy = 0;
LABEL_16:

    goto LABEL_17;
  }

  v44.receiver = self;
  v44.super_class = VNFaceTorsoprint;
  v21 = [(VNEspressoModelImageprint *)&v44 initWithDescriptorData:v17 elementType:type elementCount:count originatingRequestSpecifier:specifierCopy];
  self = v21;
  if (v21)
  {
    v43 = specifierCopy;
    localizedDescription = [VNFaceprint emptyFaceprintDataForRevision:3737841667];
    v23 = bytes >> 1;
    v42 = bytes >> 3;
    v24 = memcmp([localizedDescription bytes], data, bytes >> 1);
    if (v24)
    {
      v25 = 0;
    }

    else
    {
      v34 = [VNFaceprint alloc];
      *&v35 = confidence;
      v25 = [(VNFaceprint *)v34 initWithData:data elementCount:v42 elementType:type lengthInBytes:bytes >> 1 confidence:v43 originatingRequestSpecifier:v35];
    }

    objc_storeStrong(&v21->_faceprint, v25);
    if (!v24)
    {
    }

    v36 = [VNTorsoprint emptyTorsoprintDataForRevision:1];
    v37 = memcmp([v36 bytes], data + v23, v23);
    if (v37)
    {
      v38 = 0;
    }

    else
    {
      v39 = [VNTorsoprint alloc];
      *&v40 = torsoprintConfidence;
      v38 = [(VNTorsoprint *)v39 initWithData:data + v23 elementCount:v42 elementType:type lengthInBytes:v23 confidence:v43 originatingRequestSpecifier:v40];
    }

    objc_storeStrong(&v21->_torsoprint, v38);
    specifierCopy = v43;
    if (!v37)
    {
    }

    v21->_personId = 0;
    self = v21;

    selfCopy = self;
    goto LABEL_16;
  }

  selfCopy = 0;
LABEL_17:

  return selfCopy;
}

- (VNFaceTorsoprint)initWithData:(const void *)data elementCount:(unint64_t)count elementType:(unint64_t)type lengthInBytes:(unint64_t)bytes faceprintConfidence:(float)confidence torsoprintConfidence:(float)torsoprintConfidence
{
  v15 = [objc_opt_class() originatingRequestSpecifierForRequestRevision:1 error:0];
  if (v15)
  {
    *&v16 = confidence;
    *&v17 = torsoprintConfidence;
    self = [(VNFaceTorsoprint *)self initWithData:data elementCount:count elementType:type lengthInBytes:bytes faceprintConfidence:v15 torsoprintConfidence:v16 originatingRequestSpecifier:v17];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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

+ (id)defaultOriginatingRequestClassNameForRequestRevision:(unint64_t)revision
{
  if (revision - 1 >= 2)
  {
    return @"VNNOPRequest";
  }

  else
  {
    return @"VNCreateFaceTorsoprintRequest";
  }
}

@end