@interface VNEspressoModelImageprint
+ (BOOL)isSupportedCodingVersion:(unsigned int)version error:(id *)error;
+ (BOOL)validateDescriptorData:(id)data elementType:(unint64_t)type elementCount:(unint64_t)count error:(id *)error;
+ (id)originatingRequestSpecifierForRequestRevision:(unint64_t)revision error:(id *)error;
+ (id)printFromCSUBuffer:(id)buffer originatingRequestSpecifier:(id)specifier error:(id *)error;
+ (id)printFromEspressoBuffer:(id *)buffer originatingRequestSpecifier:(id)specifier error:(id *)error;
+ (id)printWithDescriptorData:(id)data elementType:(unint64_t)type elementCount:(unint64_t)count originatingRequestSpecifier:(id)specifier error:(id *)error;
+ (id)printWithFloat16PrecisionFloat32Data:(id)data originatingRequestSpecifier:(id)specifier error:(id *)error;
+ (id)printWithFloat16PrecisionFloat32Values:(const float *)values elementCount:(unint64_t)count originatingRequestSpecifier:(id)specifier error:(id *)error;
- (BOOL)hasEquivalentDescriptorToImageprint:(id)imageprint;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPrint:(id)print compatibleWithOtherPrint:(id)otherPrint error:(id *)error;
- (VNEspressoModelImageprint)initWithCoder:(id)coder;
- (VNEspressoModelImageprint)initWithCoder:(id)coder forCodingVersion:(unsigned int)version;
- (VNEspressoModelImageprint)initWithData:(const void *)data elementCount:(unint64_t)count elementType:(unint64_t)type lengthInBytes:(unint64_t)bytes labelsAndConfidence:(id)confidence requestRevision:(unint64_t)revision;
- (VNEspressoModelImageprint)initWithData:(const void *)data elementCount:(unint64_t)count elementType:(unint64_t)type lengthInBytes:(unint64_t)bytes requestRevision:(unint64_t)revision;
- (VNEspressoModelImageprint)initWithDescriptorData:(id)data elementType:(unint64_t)type elementCount:(unint64_t)count originatingRequestSpecifier:(id)specifier;
- (VNEspressoModelImageprint)initWithState:(id)state byteOffset:(unint64_t *)offset error:(id *)error;
- (id)VNEspressoModelImageprintMLMultiArrayWithConstraint:(id)constraint error:(id *)error;
- (id)VNEspressoModelImageprintOneDimensionMLMultiArrayWithDataType:(int64_t)type error:(id *)error;
- (id)_VNEspressoModelImageprintMLMultiArrayWithDataType:(int64_t)type shape:(id)shape strides:(id)strides error:(id *)error;
- (id)_initWithClassKeyMappedCoder:(id)coder;
- (id)computeDistance:(id)distance withDistanceFunction:(unint64_t)function error:(id *)error;
- (id)description;
- (id)serializeStateAndReturnError:(id *)error;
- (unint64_t)_VNEspressoModelImageprintSerializedLength;
- (unint64_t)hash;
- (unint64_t)requestRevision;
- (unint64_t)serializeStateIntoData:(id)data startingAtByteOffset:(unint64_t)offset error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNEspressoModelImageprint

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  version = [(VNEspressoModelImageprint *)self version];
  elementCount = [(VNEspressoModelImageprint *)self elementCount];
  v6 = VNElementTypeToString([(VNEspressoModelImageprint *)self elementType]);
  lengthInBytes = [(VNEspressoModelImageprint *)self lengthInBytes];
  confidenceScoreType = [(VNEspressoModelImageprint *)self confidenceScoreType];
  originatingRequestSpecifier = [(VNEspressoModelImageprint *)self originatingRequestSpecifier];
  v10 = [v3 initWithFormat:@"Espresso print: version = %@; element count = %lu; element type = %@; length in bytes = %lu; confidence score type = %lu; originating request specifier = %@", version, elementCount, v6, lengthInBytes, confidenceScoreType, originatingRequestSpecifier];

  return v10;
}

- (BOOL)isPrint:(id)print compatibleWithOtherPrint:(id)otherPrint error:(id *)error
{
  printCopy = print;
  otherPrintCopy = otherPrint;
  originatingRequestSpecifier = [printCopy originatingRequestSpecifier];
  originatingRequestSpecifier2 = [otherPrintCopy originatingRequestSpecifier];
  v11 = [originatingRequestSpecifier hasModelEquivalencyToRequestSpecifier:originatingRequestSpecifier2];

  if (error)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if ((v12 & 1) == 0)
  {
    v13 = MEMORY[0x1E696AEC0];
    originatingRequestSpecifier3 = [printCopy originatingRequestSpecifier];
    originatingRequestSpecifier4 = [otherPrintCopy originatingRequestSpecifier];
    v16 = [v13 stringWithFormat:@"cannot compare prints of %@ and %@", originatingRequestSpecifier3, originatingRequestSpecifier4];

    *error = [VNError errorForInvalidOptionWithLocalizedDescription:v16];
  }

  return v11;
}

- (id)computeDistance:(id)distance withDistanceFunction:(unint64_t)function error:(id *)error
{
  distanceCopy = distance;
  descriptorData = [(VNEspressoModelImageprint *)self descriptorData];
  descriptorData2 = [distanceCopy descriptorData];
  v11 = descriptorData2;
  if (!descriptorData || !descriptorData2)
  {
    if (error)
    {
      v13 = [VNError errorWithCode:5 message:@"nil VNEspressoModelImageprint(s) supplied"];
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v12 = [descriptorData length];
  if (v12 != [v11 length])
  {
    if (error)
    {
      v13 = [VNError errorWithCode:5 message:@"VNEspressoModelImageprint(s) with different length supplied"];
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (![(VNEspressoModelImageprint *)self isPrint:self compatibleWithOtherPrint:distanceCopy error:error])
  {
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  if (function)
  {
    if (function != 1)
    {
      if (error)
      {
        v13 = [VNError errorWithCode:5 message:@"Unknown distance funtion requested"];
LABEL_13:
        v14 = 0;
        *error = v13;
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else
  {
    LODWORD(function) = 2;
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 2139095040;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __72__VNEspressoModelImageprint_computeDistance_withDistanceFunction_error___block_invoke;
  v20 = &unk_1E77B3D18;
  v21 = descriptorData;
  functionCopy = function;
  v22 = v11;
  v23 = &v25;
  v16 = _Block_copy(&v17);
  if ((VNExecuteBlock(v16, error) & 1) == 0)
  {
    goto LABEL_23;
  }

  if (v26[6] != INFINITY)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithFloat:{v17, v18, v19, v20, v21}];
    goto LABEL_25;
  }

  if (error)
  {
    [VNError errorForInternalErrorWithLocalizedDescription:@"could not compute faceprint distance", v17, v18, v19, v20, v21];
    *error = v14 = 0;
  }

  else
  {
LABEL_23:
    v14 = 0;
  }

LABEL_25:

  _Block_object_dispose(&v25, 8);
LABEL_15:

  return v14;
}

void __72__VNEspressoModelImageprint_computeDistance_withDistanceFunction_error___block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 1;
  v1 = 0;
  v2 = 0;
  __p = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>();
}

- (BOOL)hasEquivalentDescriptorToImageprint:(id)imageprint
{
  imageprintCopy = imageprint;
  if (self == imageprintCopy)
  {
    v14 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if ([v5 isEqual:objc_opt_class()] & 1) != 0 && (-[VNEspressoModelImageprint originatingRequestSpecifier](self, "originatingRequestSpecifier"), v6 = objc_claimAutoreleasedReturnValue(), -[VNEspressoModelImageprint originatingRequestSpecifier](imageprintCopy, "originatingRequestSpecifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "hasModelEquivalencyToRequestSpecifier:", v7), v7, v6, (v8) && (-[VNEspressoModelImageprint descriptorData](self, "descriptorData"), v9 = objc_claimAutoreleasedReturnValue(), -[VNEspressoModelImageprint descriptorData](imageprintCopy, "descriptorData"), v10 = objc_claimAutoreleasedReturnValue(), v11 = VisionCoreEqualOrNilObjects(), v10, v9, (v11) && (v12 = -[VNEspressoModelImageprint elementCount](self, "elementCount"), v12 == -[VNEspressoModelImageprint elementCount](imageprintCopy, "elementCount")))
    {
      lengthInBytes = [(VNEspressoModelImageprint *)self lengthInBytes];
      v14 = lengthInBytes == [(VNEspressoModelImageprint *)imageprintCopy lengthInBytes];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      originatingRequestSpecifier = [(VNEspressoModelImageprint *)self originatingRequestSpecifier];
      originatingRequestSpecifier2 = [(VNEspressoModelImageprint *)v5 originatingRequestSpecifier];
      v8 = [originatingRequestSpecifier isEqual:originatingRequestSpecifier2];

      if (v8 & 1) != 0 && ([(VNEspressoModelImageprint *)self descriptorData], v9 = objc_claimAutoreleasedReturnValue(), [(VNEspressoModelImageprint *)v5 descriptorData], v10 = objc_claimAutoreleasedReturnValue(), v11 = VisionCoreEqualOrNilObjects(), v10, v9, (v11) && (v12 = [(VNEspressoModelImageprint *)self elementCount], v12 == [(VNEspressoModelImageprint *)v5 elementCount]) && (v13 = [(VNEspressoModelImageprint *)self lengthInBytes], v13 == [(VNEspressoModelImageprint *)v5 lengthInBytes]))
      {
        labelsAndConfidence = [(VNEspressoModelImageprint *)self labelsAndConfidence];
        labelsAndConfidence2 = [(VNEspressoModelImageprint *)v5 labelsAndConfidence];
        v16 = VisionCoreEqualOrNilObjects();
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (unint64_t)hash
{
  originatingRequestSpecifier = [(VNEspressoModelImageprint *)self originatingRequestSpecifier];
  v4 = [originatingRequestSpecifier hash];

  descriptorData = [(VNEspressoModelImageprint *)self descriptorData];
  v6 = [descriptorData hash];

  elementCount = [(VNEspressoModelImageprint *)self elementCount];
  lengthInBytes = [(VNEspressoModelImageprint *)self lengthInBytes];
  labelsAndConfidence = [(VNEspressoModelImageprint *)self labelsAndConfidence];
  v10 = [labelsAndConfidence hash] ^ __ROR8__(lengthInBytes ^ __ROR8__(elementCount ^ __ROR8__(v6 ^ __ROR8__(v4, 51), 51), 51), 51);

  return v10;
}

- (VNEspressoModelImageprint)initWithState:(id)state byteOffset:(unint64_t *)offset error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v9 = stateCopy;
  if (!stateCopy)
  {
    if (error)
    {
      v10 = [VNError errorWithCode:14 message:@"State cannot be nil"];
      goto LABEL_14;
    }

LABEL_17:
    selfCopy = 0;
    goto LABEL_18;
  }

  if ([stateCopy length] > 0x1B)
  {
    bytes = [v9 bytes];
    v12 = *offset;
    v13 = (bytes + *offset);
    *v38 = *v13;
    *&v38[12] = *(v13 + 12);
    *offset = v12 + 28;
    if ([objc_opt_class() serializationMagicNumber] != *v38)
    {
      if (error)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid format of %@ serialized state", objc_opt_class()];
        *error = [VNError errorForInvalidFormatErrorWithLocalizedDescription:v17];
      }

      goto LABEL_17;
    }

    v14 = *&v38[8];
    calculateChecksumMD5((bytes + *offset), *&v38[8] - 28, v37);
    if (*&v38[12] != v37[0] || *&v38[20] != v37[1])
    {
      if (error)
      {
        v10 = [VNError errorForInternalErrorWithLocalizedDescription:@"Serialized and calculated MD5s don't match"];
        goto LABEL_14;
      }

      goto LABEL_17;
    }

    v19 = *(bytes + *offset);
    *offset += 4;
    v20 = objc_opt_class();
    v35 = *&v38[4];
    if ([v20 shouldAssumeOriginatingRequestClassForHeaderSerializationVersion:?])
    {
      v36 = [objc_opt_class() originatingRequestSpecifierForRequestRevision:v19 error:error];
      if (!v36)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v21 = *(bytes + *offset);
      *offset += 4;
      v22 = [VNClassRegistrar classNameForClassCode:v21 error:error];
      if (!v22)
      {
        goto LABEL_17;
      }

      v36 = [VNRequestSpecifier specifierForRequestClassName:v22 revision:v19 error:error];

      if (!v36)
      {
        goto LABEL_17;
      }
    }

    v23 = *offset;
    v24 = *(bytes + *offset);
    v25 = *offset + 4;
    *offset = v25;
    v26 = *(bytes + v25);
    *offset = v23 + 8;
    v27 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v24];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
      memcpy([v28 mutableBytes], (bytes + *offset), v24);
      *offset += v24;
      v30 = [objc_opt_class() shouldIgnoreLagecyLabelsAndConfidenceForHeaderSerializationVersion:v35];
      v31 = *offset;
      if (v30)
      {
        v31 += 241;
        *offset = v31;
      }

      if (v31 - v12 > v14)
      {
        if (error)
        {
          v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected size of deserialized state of the object of type %@", objc_opt_class()];
          *error = [VNError errorForInternalErrorWithLocalizedDescription:v32];
        }

        goto LABEL_39;
      }

      if ([objc_opt_class() validateDescriptorData:v28 elementType:1 elementCount:v26 error:error])
      {
        v34 = [(VNEspressoModelImageprint *)self initWithDescriptorData:v28 elementType:1 elementCount:v26 originatingRequestSpecifier:v36];
        if (v34)
        {
          self = v34;
          selfCopy = self;
          goto LABEL_40;
        }

        if (error)
        {
          v33 = [VNError errorForInternalErrorWithLocalizedDescription:@"Failed to initialize 'print' object"];
          self = 0;
          goto LABEL_32;
        }

        self = 0;
      }
    }

    else if (error)
    {
      v33 = [VNError errorForInternalErrorWithLocalizedDescription:@"Memory allocation failure"];
LABEL_32:
      selfCopy = 0;
      *error = v33;
LABEL_40:

      goto LABEL_18;
    }

LABEL_39:
    selfCopy = 0;
    goto LABEL_40;
  }

  if (!error)
  {
    goto LABEL_17;
  }

  v10 = [VNError errorForInvalidArgumentWithLocalizedDescription:@"Invalid input data to de-serialize a print object"];
LABEL_14:
  selfCopy = 0;
  *error = v10;
LABEL_18:

  return selfCopy;
}

- (id)serializeStateAndReturnError:(id *)error
{
  v5 = [MEMORY[0x1E695DF88] dataWithLength:{-[VNEspressoModelImageprint serializedLength](self, "serializedLength")}];
  if ([(VNEspressoModelImageprint *)self serializeStateIntoData:v5 startingAtByteOffset:0 error:error])
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
  v21 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v9 = dataCopy;
  if (dataCopy)
  {
    mutableBytes = [dataCopy mutableBytes];
    *&v20[16] = 0;
    *&v20[20] = 0;
    *v20 = [objc_opt_class() serializationMagicNumber];
    *&v20[8] = [(VNEspressoModelImageprint *)self serializedLength];
    *&v20[4] = [objc_opt_class() currentSerializationVersion];
    originatingRequestSpecifier = [(VNEspressoModelImageprint *)self originatingRequestSpecifier];
    v11 = mutableBytes + offset;
    *(mutableBytes + offset + 28) = [originatingRequestSpecifier requestRevision];
    v12 = (mutableBytes + offset + 28);
    *(v11 + 32) = [originatingRequestSpecifier requestClassCode];
    *(v11 + 36) = [(VNEspressoModelImageprint *)self lengthInBytes];
    *(v11 + 40) = self->_elementCount;
    bytes = [(NSData *)self->_descriptorData bytes];
    v14 = [(NSData *)self->_descriptorData length];
    memcpy((mutableBytes + offset + 44), bytes, v14);
    v15 = v14 + 44;
    if (v14 + 44 == [(VNEspressoModelImageprint *)self _VNEspressoModelImageprintSerializedLength])
    {
      calculateChecksumMD5(v12, v14 + 16, &v20[12]);
      v16 = *v20;
      *(v11 + 12) = *&v20[12];
      *v11 = v16;
    }

    else
    {
      if (error)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected size of serialized state of the object of type %@", objc_opt_class()];
        *error = [VNError errorForInternalErrorWithLocalizedDescription:v17];
      }

      v15 = 0;
    }
  }

  else if (error)
  {
    [VNError errorWithCode:14 message:@"state cannot be nil"];
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (unint64_t)_VNEspressoModelImageprintSerializedLength
{
  v3 = [objc_opt_class() instanceMethodForSelector:sel_serializedLength];

  return v3(self, sel_serializedLength);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy vn_encodeCodingVersion:objc_msgSend(objc_opt_class() forKey:{"currentCodingVersion"), @"version"}];
  [coderCopy encodeObject:self->_originatingRequestSpecifier forKey:@"request"];
  [coderCopy encodeObject:self->_version forKey:@"algorithmVersion"];
  [coderCopy encodeInteger:self->_elementCount forKey:@"elementCount"];
  if (self->_elementType == 1 && (self->_serializationOptions & 1) != 0)
  {
    descriptorData = self->_descriptorData;
    v8 = 0;
    v6 = VNFloat16DataForFloat32Data(descriptorData, &v8);
    v7 = v8;
    if (v6)
    {
      [coderCopy encodeObject:v6 forKey:@"f16Desc"];
    }

    else
    {
      [coderCopy failWithError:v7];
    }
  }

  else
  {
    [coderCopy encodeInteger:? forKey:?];
    [coderCopy encodeObject:self->_descriptorData forKey:@"descriptorData"];
    [coderCopy encodeInteger:-[NSData length](self->_descriptorData forKey:{"length"), @"descriptorByteLength"}];
  }
}

- (VNEspressoModelImageprint)initWithCoder:(id)coder forCodingVersion:(unsigned int)version
{
  v4 = *&version;
  coderCopy = coder;
  v38 = 0;
  LOBYTE(v4) = [objc_opt_class() isSupportedCodingVersion:v4 error:&v38];
  v7 = v38;
  if (v4)
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"algorithmVersion"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"request"];
    if (!v9)
    {
      if ([coderCopy containsValueForKey:@"request"])
      {
        selfCopy = 0;
LABEL_35:

        goto LABEL_36;
      }

      v37 = 0;
      v23 = [objc_opt_class() originatingRequestSpecifierForRequestRevision:objc_msgSend(coderCopy error:{"decodeIntegerForKey:", @"requestRevision", &v37}];
      v24 = v37;
      v9 = v24;
      if (!v23)
      {
        [coderCopy failWithError:v24];
        selfCopy = 0;
LABEL_34:

        goto LABEL_35;
      }

      v9 = v23;
    }

    v10 = [coderCopy containsValueForKey:@"f16Desc"];
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = [coderCopy decodeIntegerForKey:@"elementsType"];
    }

    v13 = [coderCopy decodeIntegerForKey:@"elementCount"];
    if ([coderCopy containsValueForKey:@"descriptorByteLength"])
    {
      v14 = [coderCopy decodeIntegerForKey:@"descriptorByteLength"];
    }

    else
    {
      v14 = 0;
    }

    if (((v11 == 1) & v10) != 0)
    {
      v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"f16Desc"];
      if ([v15 length] != 2 * v13)
      {
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"The '%@' data is not the expected length of %lu", @"f16Desc", 2 * v13];
        v25 = [VNError errorForInvalidOperationWithLocalizedDescription:v18];
        [coderCopy failWithError:v25];

        selfCopy = 0;
LABEL_32:

        goto LABEL_33;
      }

      v34 = v8;
      v36 = 0;
      v16 = VNFloat32DataForFloat16Data(v15, &v36);
      v17 = v36;
      v18 = v17;
      if (!v16)
      {
        [coderCopy failWithError:v17];
        selfCopy = 0;
        goto LABEL_31;
      }

      v14 = 4 * v13;

      v32 = 1;
      if (!(4 * v13))
      {
        goto LABEL_16;
      }
    }

    else
    {
      v34 = v8;
      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"descriptorData"];
      if (!v16)
      {
        v15 = [VNError errorForInvalidOperationWithLocalizedDescription:@"descriptor data is unavailable"];
        v8 = v34;
        [coderCopy failWithError:v15];
        selfCopy = 0;
LABEL_33:

        goto LABEL_34;
      }

      v32 = 0;
      if (!v14)
      {
LABEL_16:
        v18 = [VNError errorForInvalidOperationWithLocalizedDescription:@"descriptor length is unavailable"];
        [coderCopy failWithError:v18];
        goto LABEL_28;
      }
    }

    v35 = 0;
    v19 = [objc_opt_class() validateDescriptorData:v16 elementType:v11 elementCount:v13 error:&v35];
    v18 = v35;
    if ((v19 & 1) == 0)
    {
      [coderCopy failWithError:v18];
    }

    v20 = [(VNEspressoModelImageprint *)self initWithDescriptorData:v16 elementType:v11 elementCount:v13 originatingRequestSpecifier:v9];
    if (v20)
    {
      v20->_serializationOptions = v32;
      v21 = [v34 copy];
      version = v20->_version;
      v20->_version = v21;

      self = v20;
      v15 = v16;
      selfCopy = self;
LABEL_31:
      v8 = v34;
      goto LABEL_32;
    }

    v26 = objc_alloc(MEMORY[0x1E696AEC0]);
    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
    v27 = VNElementTypeToString(v11);
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
    v29 = [v26 initWithFormat:@"unable to create a %@ %@ %@ descriptor with length %@", v9, v33, v27, v28];

    v30 = [VNError errorForInternalErrorWithLocalizedDescription:v29];
    [coderCopy failWithError:v30];

    self = 0;
LABEL_28:
    selfCopy = 0;
    v15 = v16;
    goto LABEL_31;
  }

  [coderCopy failWithError:v7];
  selfCopy = 0;
LABEL_36:

  return selfCopy;
}

- (VNEspressoModelImageprint)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"1.0"])
  {
    v5 = [(VNEspressoModelImageprint *)self _initWithClassKeyMappedCoder:coderCopy];
  }

  else
  {
    v5 = -[VNEspressoModelImageprint initWithCoder:forCodingVersion:](self, "initWithCoder:forCodingVersion:", coderCopy, [coderCopy vn_decodeCodingVersionForKey:@"version"]);
  }

  v6 = v5;

  return v6;
}

- (id)_initWithClassKeyMappedCoder:(id)coder
{
  coderCopy = coder;
  codingTypesToCodingKeys = [objc_opt_class() codingTypesToCodingKeys];
  v6 = objc_opt_class();
  v7 = [codingTypesToCodingKeys objectForKeyedSubscript:@"emp_algorithmVersion"];
  obj = [coderCopy decodeObjectOfClass:v6 forKey:v7];

  v8 = objc_opt_class();
  v9 = [codingTypesToCodingKeys objectForKeyedSubscript:@"emp_data"];
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = [codingTypesToCodingKeys objectForKeyedSubscript:@"emp_elementsCount"];
  v12 = [coderCopy decodeIntegerForKey:v11];

  v13 = [codingTypesToCodingKeys objectForKeyedSubscript:@"emp_length"];
  v14 = [coderCopy decodeIntegerForKey:v13];

  if ([v10 length] == v14)
  {
    v15 = [codingTypesToCodingKeys objectForKeyedSubscript:@"emp_elementsType"];
    if ([coderCopy containsValueForKey:v15])
    {
      v16 = [coderCopy decodeIntegerForKey:v15];
      v32 = 0;
      v17 = _validateVNElementType(v16, &v32);
      v18 = v32;
      v19 = v18;
      if (!v17)
      {
        [coderCopy failWithError:v18];
        selfCopy = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
      v16 = 1;
    }

    if ([coderCopy containsValueForKey:@"VNEspressoModelImageprintRequestRevision"])
    {
      v23 = [coderCopy decodeIntegerForKey:@"VNEspressoModelImageprintRequestRevision"];
    }

    else
    {
      v23 = 1;
    }

    v31 = 0;
    v19 = [objc_opt_class() originatingRequestSpecifierForRequestRevision:v23 error:&v31];
    v24 = v31;
    v25 = v24;
    if (v19)
    {

      v30 = 0;
      v26 = [objc_opt_class() validateDescriptorData:v10 elementType:v16 elementCount:v12 error:&v30];
      v25 = v30;
      if (v26)
      {
        v27 = [(VNEspressoModelImageprint *)self initWithDescriptorData:v10 elementType:v16 elementCount:v12 originatingRequestSpecifier:v19];
        selfCopy = v27;
        if (v27)
        {
          objc_storeStrong(&v27->_version, obj);
          self = selfCopy;
          selfCopy = self;
        }

        else
        {
          self = 0;
        }

        goto LABEL_18;
      }

      [coderCopy failWithError:v25];
    }

    else
    {
      [coderCopy failWithError:v24];
    }

    selfCopy = 0;
LABEL_18:

    goto LABEL_19;
  }

  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"descriptor data length (%lu) / expected length (%lu) mismatch", objc_msgSend(v10, "length"), v14, obj];
  v21 = [VNError errorForDataUnavailableWithLocalizedDescription:v20];
  [coderCopy failWithError:v21];

  selfCopy = 0;
LABEL_20:

  return selfCopy;
}

- (unint64_t)requestRevision
{
  originatingRequestSpecifier = [(VNEspressoModelImageprint *)self originatingRequestSpecifier];
  requestRevision = [originatingRequestSpecifier requestRevision];

  return requestRevision;
}

- (VNEspressoModelImageprint)initWithDescriptorData:(id)data elementType:(unint64_t)type elementCount:(unint64_t)count originatingRequestSpecifier:(id)specifier
{
  dataCopy = data;
  specifierCopy = specifier;
  v18.receiver = self;
  v18.super_class = VNEspressoModelImageprint;
  v12 = [(VNEspressoModelImageprint *)&v18 init];
  if (v12)
  {
    currentVersion = [objc_opt_class() currentVersion];
    version = v12->_version;
    v12->_version = currentVersion;

    v15 = [dataCopy copy];
    descriptorData = v12->_descriptorData;
    v12->_descriptorData = v15;

    v12->_elementCount = count;
    v12->_elementType = type;
    v12->_confidenceScoreType = [objc_opt_class() confidenceTypeForOriginatingRequestSpecifier:specifierCopy];
    objc_storeStrong(&v12->_originatingRequestSpecifier, specifier);
  }

  return v12;
}

- (VNEspressoModelImageprint)initWithData:(const void *)data elementCount:(unint64_t)count elementType:(unint64_t)type lengthInBytes:(unint64_t)bytes requestRevision:(unint64_t)revision
{
  v12 = [objc_opt_class() originatingRequestSpecifierForRequestRevision:revision error:0];
  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:data length:bytes];
    v27 = 0;
    v14 = [objc_opt_class() validateDescriptorData:v13 elementType:type elementCount:count error:&v27];
    v15 = v27;
    v16 = v15;
    if (v14)
    {
      self = [(VNEspressoModelImageprint *)self initWithDescriptorData:v13 elementType:type elementCount:count originatingRequestSpecifier:v12];
      selfCopy = self;
    }

    else
    {
      localizedDescription = [v15 localizedDescription];
      uTF8String = [localizedDescription UTF8String];
      VNValidatedLog(4, @"%s", v20, v21, v22, v23, v24, v25, uTF8String);

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (VNEspressoModelImageprint)initWithData:(const void *)data elementCount:(unint64_t)count elementType:(unint64_t)type lengthInBytes:(unint64_t)bytes labelsAndConfidence:(id)confidence requestRevision:(unint64_t)revision
{
  [VNError VNAssertClass:objc_opt_class() needsToOverrideMethod:a2];

  return 0;
}

+ (BOOL)isSupportedCodingVersion:(unsigned int)version error:(id *)error
{
  v5 = *&version;
  if (!+[VisionCoreRuntimeUtilities item:overridesSelector:](VNRuntimeUtilities, "item:overridesSelector:", self, a2) && [self currentCodingVersion] >= v5)
  {
    return 1;
  }

  if (error)
  {
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = NSStringFromClass(self);
    v9 = [v7 initWithFormat:@"%@ does not support a coding version of %u", v8, v5];

    *error = [VNError errorForInvalidOperationWithLocalizedDescription:v9];
  }

  return 0;
}

+ (id)originatingRequestSpecifierForRequestRevision:(unint64_t)revision error:(id *)error
{
  v7 = [self defaultOriginatingRequestClassNameForRequestRevision:?];
  if (v7)
  {
    v19 = 0;
    v8 = [VNRequestSpecifier specifierForRequestClassName:v7 revision:revision error:&v19];
    v9 = v19;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v14 = MEMORY[0x1E696AEC0];
      v15 = NSStringFromClass(self);
      v16 = [v14 stringWithFormat:@"%@ could not resolve originating request class of %@: %@", v15, v7, v9];
      [VNError VNAssert:0 log:v16];

      if (error)
      {
        v17 = v9;
        *error = v9;
      }
    }
  }

  else
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = NSStringFromClass(self);
    v13 = [v11 stringWithFormat:@"%@ does not specify a default originating request class", v12];

    [VNError VNAssert:0 log:v13];
    if (error)
    {
      *error = [VNError errorForInternalErrorWithLocalizedDescription:v13];
    }

    v8 = 0;
  }

  return v8;
}

+ (id)printFromEspressoBuffer:(id *)buffer originatingRequestSpecifier:(id)specifier error:(id *)error
{
  specifierCopy = specifier;
  if (buffer->var7 == 1)
  {
    if (buffer->var14 == 65568)
    {
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:buffer->var0 length:4 * buffer->var13];
      v10 = [[self alloc] initWithDescriptorData:v9 elementType:1 elementCount:buffer->var13 originatingRequestSpecifier:specifierCopy];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else if (error)
      {
        v16 = objc_alloc(MEMORY[0x1E696AEC0]);
        v17 = NSStringFromClass(self);
        v18 = [v16 initWithFormat:@"Unable to create %@ from %ld element float data %p", v17, buffer->var13, buffer->var0];

        *error = [VNError errorForInvalidOperationWithLocalizedDescription:v18];
      }

      goto LABEL_14;
    }

    if (error)
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unsupported element storage type of 0x%04X", buffer->var14];
      v15 = [VNError errorForInvalidOperationWithLocalizedDescription:v9];
      goto LABEL_9;
    }

LABEL_10:
    v11 = 0;
    goto LABEL_15;
  }

  if (!error)
  {
    goto LABEL_10;
  }

  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = NSStringFromClass(self);
  v9 = [v13 initWithFormat:@"Unable to create %@ from from a tensor buffer of dimension [%lu %lu %lu %lu]", v14, buffer->var7, buffer->var6, buffer->var5, buffer->var4];

  v15 = [VNError errorForInvalidOperationWithLocalizedDescription:v9];
LABEL_9:
  v11 = 0;
  *error = v15;
LABEL_14:

LABEL_15:

  return v11;
}

+ (id)printWithFloat16PrecisionFloat32Data:(id)data originatingRequestSpecifier:(id)specifier error:(id *)error
{
  dataCopy = data;
  specifierCopy = specifier;
  v10 = VNFloat16DataForFloat32Data(dataCopy, error);
  v11 = v10;
  if (v10)
  {
    v12 = VNFloat32DataForFloat16Data(v10, error);
    v13 = v12;
    if (v12)
    {
      v14 = [v12 length] >> 2;
      v15 = [self printWithDescriptorData:v13 elementType:1 elementCount:v14 originatingRequestSpecifier:specifierCopy error:error];
      v16 = v15;
      if (v15)
      {
        v15[3] |= 1uLL;
        v17 = v15;
      }

      else if (error)
      {
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unable to create float16 descriptor with %lu elements", v14];
        *error = [VNError errorForInternalErrorWithLocalizedDescription:v18 underlyingError:0];
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)printWithFloat16PrecisionFloat32Values:(const float *)values elementCount:(unint64_t)count originatingRequestSpecifier:(id)specifier error:(id *)error
{
  specifierCopy = specifier;
  v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:values length:4 * count freeWhenDone:0];
  v12 = [self printWithFloat16PrecisionFloat32Data:v11 originatingRequestSpecifier:specifierCopy error:error];

  return v12;
}

+ (id)printWithDescriptorData:(id)data elementType:(unint64_t)type elementCount:(unint64_t)count originatingRequestSpecifier:(id)specifier error:(id *)error
{
  dataCopy = data;
  specifierCopy = specifier;
  if ([self validateDescriptorData:dataCopy elementType:type elementCount:count error:error])
  {
    v14 = [[self alloc] initWithDescriptorData:dataCopy elementType:type elementCount:count originatingRequestSpecifier:specifierCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (BOOL)validateDescriptorData:(id)data elementType:(unint64_t)type elementCount:(unint64_t)count error:(id *)error
{
  dataCopy = data;
  if (!_validateVNElementType(type, error))
  {
    goto LABEL_11;
  }

  if (count)
  {
    if (type == 1)
    {
      v10 = 4;
    }

    else
    {
      v10 = 8 * (type == 2);
    }

    v11 = v10 * count;
    v12 = [dataCopy length] == v10 * count;
    v13 = v12;
    if (error && !v12)
    {
      v14 = objc_alloc(MEMORY[0x1E696AEC0]);
      v15 = VNElementTypeToString(type);
      v16 = [v14 initWithFormat:@"%lu elements of type %@ with length of %lu mismatch to descriptor data length %lu", count, v15, v11, objc_msgSend(dataCopy, "length")];

      *error = [VNError errorForInvalidArgumentWithLocalizedDescription:v16];

LABEL_11:
      v13 = 0;
    }
  }

  else
  {
    if (!error)
    {
      goto LABEL_11;
    }

    [VNError errorForInvalidArgumentWithLocalizedDescription:@"element count must be non-zero"];
    *error = v13 = 0;
  }

  return v13;
}

- (id)VNEspressoModelImageprintOneDimensionMLMultiArrayWithDataType:(int64_t)type error:(id *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNEspressoModelImageprint elementCount](self, "elementCount")}];
  v11[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  v9 = [(VNEspressoModelImageprint *)self _VNEspressoModelImageprintMLMultiArrayWithDataType:type shape:v8 strides:&unk_1F19C2098 error:error];

  return v9;
}

- (id)VNEspressoModelImageprintMLMultiArrayWithConstraint:(id)constraint error:(id *)error
{
  constraintCopy = constraint;
  if (error)
  {
    constraintCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ cannot be represented as %@", self, constraintCopy];
    *error = [VNError errorForInvalidModelWithLocalizedDescription:constraintCopy];
  }

  return 0;
}

- (id)_VNEspressoModelImageprintMLMultiArrayWithDataType:(int64_t)type shape:(id)shape strides:(id)strides error:(id *)error
{
  shapeCopy = shape;
  stridesCopy = strides;
  if ([(VNEspressoModelImageprint *)self elementType]== 1)
  {
    descriptorData = [(VNEspressoModelImageprint *)self descriptorData];
    v13 = shapeCopy;
    v14 = stridesCopy;
    v15 = descriptorData;
    v16 = v15;
    if (self)
    {
      switch(type)
      {
        case 65552:
          v24 = VNFloat16DataForFloat32Data(v15, error);
          v25 = v24;
          if (v24)
          {
            v37 = 0;
            v38 = &v37;
            v39 = 0x3032000000;
            v40 = __Block_byref_object_copy__23074;
            v41 = __Block_byref_object_dispose__23075;
            v26 = v24;
            v42 = v26;
            aBlock = MEMORY[0x1E69E9820];
            v33 = 3221225472;
            v34 = __137__VNEspressoModelImageprint_VNCoreMLTransformer___VNEspressoModelImageprintMLMultiArrayWithDataType_shape_strides_fromFloat32Data_error___block_invoke_2;
            v35 = &unk_1E77B47C0;
            v36 = &v37;
            v27 = _Block_copy(&aBlock);
            v19 = [objc_alloc(MEMORY[0x1E695FED0]) initWithDataPointer:objc_msgSend(v26 shape:"bytes") dataType:v13 strides:65552 deallocator:v14 error:{v27, error}];

            _Block_object_dispose(&v37, 8);
          }

          else
          {
            v19 = 0;
          }

          goto LABEL_18;
        case 65600:
          v22 = [v15 length] >> 2;
          v23 = malloc_type_calloc(8uLL, v22, 0x100004000313F17uLL);
          vDSP_vspdp([v16 bytes], 1, v23, 1, v22);
          v19 = [objc_alloc(MEMORY[0x1E695FED0]) initWithDataPointer:v23 shape:v13 dataType:65600 strides:v14 deallocator:&__block_literal_global_23076 error:error];
          goto LABEL_18;
        case 65568:
          v37 = 0;
          v38 = &v37;
          v39 = 0x3032000000;
          v40 = __Block_byref_object_copy__23074;
          v41 = __Block_byref_object_dispose__23075;
          v17 = v15;
          v42 = v17;
          aBlock = MEMORY[0x1E69E9820];
          v33 = 3221225472;
          v34 = __137__VNEspressoModelImageprint_VNCoreMLTransformer___VNEspressoModelImageprintMLMultiArrayWithDataType_shape_strides_fromFloat32Data_error___block_invoke;
          v35 = &unk_1E77B47C0;
          v36 = &v37;
          v18 = _Block_copy(&aBlock);
          v19 = [objc_alloc(MEMORY[0x1E695FED0]) initWithDataPointer:objc_msgSend(v17 shape:"bytes") dataType:v13 strides:65568 deallocator:v14 error:{v18, error}];

          _Block_object_dispose(&v37, 8);
LABEL_18:

          goto LABEL_19;
      }

      if (error)
      {
        v28 = objc_alloc(MEMORY[0x1E696AEC0]);
        v29 = [MEMORY[0x1E695FEE8] stringForDataType:type];
        v30 = [v28 initWithFormat:@"%@ cannot be represented as %@", self, v29];

        *error = [VNError errorForDataUnavailableWithLocalizedDescription:v30];
      }
    }

    v19 = 0;
    goto LABEL_18;
  }

  if (!error)
  {
    v19 = 0;
    goto LABEL_20;
  }

  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  v21 = [MEMORY[0x1E695FEE8] stringForDataType:type];
  v16 = [v20 initWithFormat:@"%@ cannot be represented as %@", self, v21];

  [VNError errorForDataUnavailableWithLocalizedDescription:v16];
  *error = v19 = 0;
LABEL_19:

LABEL_20:

  return v19;
}

void __137__VNEspressoModelImageprint_VNCoreMLTransformer___VNEspressoModelImageprintMLMultiArrayWithDataType_shape_strides_fromFloat32Data_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(*(*(a1 + 32) + 8) + 40) bytes] == a2)
  {
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

void __137__VNEspressoModelImageprint_VNCoreMLTransformer___VNEspressoModelImageprintMLMultiArrayWithDataType_shape_strides_fromFloat32Data_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ([*(*(*(a1 + 32) + 8) + 40) bytes] == a2)
  {
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

+ (id)printFromCSUBuffer:(id)buffer originatingRequestSpecifier:(id)specifier error:(id *)error
{
  bufferCopy = buffer;
  specifierCopy = specifier;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__39_26555;
  v17 = __Block_byref_object_dispose__40_26556;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __116__VNEspressoModelImageprint_VNCoreSceneUnderstandingDetector__printFromCSUBuffer_originatingRequestSpecifier_error___block_invoke;
  v12[3] = &unk_1E77B4DA0;
  v12[4] = &v13;
  v12[5] = &v19;
  [bufferCopy accessDataUsingBlock:v12];
  v9 = [self alloc];
  v10 = [v9 initWithDescriptorData:v14[5] elementType:1 elementCount:v20[3] originatingRequestSpecifier:specifierCopy];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v10;
}

void __116__VNEspressoModelImageprint_VNCoreSceneUnderstandingDetector__printFromCSUBuffer_originatingRequestSpecifier_error___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a2 length:a3];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *(*(*(a1 + 40) + 8) + 24) = a3 >> 2;
}

@end