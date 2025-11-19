@interface VNEspressoModelImageprint
+ (BOOL)isSupportedCodingVersion:(unsigned int)a3 error:(id *)a4;
+ (BOOL)validateDescriptorData:(id)a3 elementType:(unint64_t)a4 elementCount:(unint64_t)a5 error:(id *)a6;
+ (id)originatingRequestSpecifierForRequestRevision:(unint64_t)a3 error:(id *)a4;
+ (id)printFromCSUBuffer:(id)a3 originatingRequestSpecifier:(id)a4 error:(id *)a5;
+ (id)printFromEspressoBuffer:(id *)a3 originatingRequestSpecifier:(id)a4 error:(id *)a5;
+ (id)printWithDescriptorData:(id)a3 elementType:(unint64_t)a4 elementCount:(unint64_t)a5 originatingRequestSpecifier:(id)a6 error:(id *)a7;
+ (id)printWithFloat16PrecisionFloat32Data:(id)a3 originatingRequestSpecifier:(id)a4 error:(id *)a5;
+ (id)printWithFloat16PrecisionFloat32Values:(const float *)a3 elementCount:(unint64_t)a4 originatingRequestSpecifier:(id)a5 error:(id *)a6;
- (BOOL)hasEquivalentDescriptorToImageprint:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPrint:(id)a3 compatibleWithOtherPrint:(id)a4 error:(id *)a5;
- (VNEspressoModelImageprint)initWithCoder:(id)a3;
- (VNEspressoModelImageprint)initWithCoder:(id)a3 forCodingVersion:(unsigned int)a4;
- (VNEspressoModelImageprint)initWithData:(const void *)a3 elementCount:(unint64_t)a4 elementType:(unint64_t)a5 lengthInBytes:(unint64_t)a6 labelsAndConfidence:(id)a7 requestRevision:(unint64_t)a8;
- (VNEspressoModelImageprint)initWithData:(const void *)a3 elementCount:(unint64_t)a4 elementType:(unint64_t)a5 lengthInBytes:(unint64_t)a6 requestRevision:(unint64_t)a7;
- (VNEspressoModelImageprint)initWithDescriptorData:(id)a3 elementType:(unint64_t)a4 elementCount:(unint64_t)a5 originatingRequestSpecifier:(id)a6;
- (VNEspressoModelImageprint)initWithState:(id)a3 byteOffset:(unint64_t *)a4 error:(id *)a5;
- (id)VNEspressoModelImageprintMLMultiArrayWithConstraint:(id)a3 error:(id *)a4;
- (id)VNEspressoModelImageprintOneDimensionMLMultiArrayWithDataType:(int64_t)a3 error:(id *)a4;
- (id)_VNEspressoModelImageprintMLMultiArrayWithDataType:(int64_t)a3 shape:(id)a4 strides:(id)a5 error:(id *)a6;
- (id)_initWithClassKeyMappedCoder:(id)a3;
- (id)computeDistance:(id)a3 withDistanceFunction:(unint64_t)a4 error:(id *)a5;
- (id)description;
- (id)serializeStateAndReturnError:(id *)a3;
- (unint64_t)_VNEspressoModelImageprintSerializedLength;
- (unint64_t)hash;
- (unint64_t)requestRevision;
- (unint64_t)serializeStateIntoData:(id)a3 startingAtByteOffset:(unint64_t)a4 error:(id *)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNEspressoModelImageprint

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(VNEspressoModelImageprint *)self version];
  v5 = [(VNEspressoModelImageprint *)self elementCount];
  v6 = VNElementTypeToString([(VNEspressoModelImageprint *)self elementType]);
  v7 = [(VNEspressoModelImageprint *)self lengthInBytes];
  v8 = [(VNEspressoModelImageprint *)self confidenceScoreType];
  v9 = [(VNEspressoModelImageprint *)self originatingRequestSpecifier];
  v10 = [v3 initWithFormat:@"Espresso print: version = %@; element count = %lu; element type = %@; length in bytes = %lu; confidence score type = %lu; originating request specifier = %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BOOL)isPrint:(id)a3 compatibleWithOtherPrint:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 originatingRequestSpecifier];
  v10 = [v8 originatingRequestSpecifier];
  v11 = [v9 hasModelEquivalencyToRequestSpecifier:v10];

  if (a5)
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
    v14 = [v7 originatingRequestSpecifier];
    v15 = [v8 originatingRequestSpecifier];
    v16 = [v13 stringWithFormat:@"cannot compare prints of %@ and %@", v14, v15];

    *a5 = [VNError errorForInvalidOptionWithLocalizedDescription:v16];
  }

  return v11;
}

- (id)computeDistance:(id)a3 withDistanceFunction:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(VNEspressoModelImageprint *)self descriptorData];
  v10 = [v8 descriptorData];
  v11 = v10;
  if (!v9 || !v10)
  {
    if (a5)
    {
      v13 = [VNError errorWithCode:5 message:@"nil VNEspressoModelImageprint(s) supplied"];
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v12 = [v9 length];
  if (v12 != [v11 length])
  {
    if (a5)
    {
      v13 = [VNError errorWithCode:5 message:@"VNEspressoModelImageprint(s) with different length supplied"];
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (![(VNEspressoModelImageprint *)self isPrint:self compatibleWithOtherPrint:v8 error:a5])
  {
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  if (a4)
  {
    if (a4 != 1)
    {
      if (a5)
      {
        v13 = [VNError errorWithCode:5 message:@"Unknown distance funtion requested"];
LABEL_13:
        v14 = 0;
        *a5 = v13;
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else
  {
    LODWORD(a4) = 2;
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 2139095040;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __72__VNEspressoModelImageprint_computeDistance_withDistanceFunction_error___block_invoke;
  v20 = &unk_1E77B3D18;
  v21 = v9;
  v24 = a4;
  v22 = v11;
  v23 = &v25;
  v16 = _Block_copy(&v17);
  if ((VNExecuteBlock(v16, a5) & 1) == 0)
  {
    goto LABEL_23;
  }

  if (v26[6] != INFINITY)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithFloat:{v17, v18, v19, v20, v21}];
    goto LABEL_25;
  }

  if (a5)
  {
    [VNError errorForInternalErrorWithLocalizedDescription:@"could not compute faceprint distance", v17, v18, v19, v20, v21];
    *a5 = v14 = 0;
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

- (BOOL)hasEquivalentDescriptorToImageprint:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if ([v5 isEqual:objc_opt_class()] & 1) != 0 && (-[VNEspressoModelImageprint originatingRequestSpecifier](self, "originatingRequestSpecifier"), v6 = objc_claimAutoreleasedReturnValue(), -[VNEspressoModelImageprint originatingRequestSpecifier](v4, "originatingRequestSpecifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "hasModelEquivalencyToRequestSpecifier:", v7), v7, v6, (v8) && (-[VNEspressoModelImageprint descriptorData](self, "descriptorData"), v9 = objc_claimAutoreleasedReturnValue(), -[VNEspressoModelImageprint descriptorData](v4, "descriptorData"), v10 = objc_claimAutoreleasedReturnValue(), v11 = VisionCoreEqualOrNilObjects(), v10, v9, (v11) && (v12 = -[VNEspressoModelImageprint elementCount](self, "elementCount"), v12 == -[VNEspressoModelImageprint elementCount](v4, "elementCount")))
    {
      v13 = [(VNEspressoModelImageprint *)self lengthInBytes];
      v14 = v13 == [(VNEspressoModelImageprint *)v4 lengthInBytes];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VNEspressoModelImageprint *)self originatingRequestSpecifier];
      v7 = [(VNEspressoModelImageprint *)v5 originatingRequestSpecifier];
      v8 = [v6 isEqual:v7];

      if (v8 & 1) != 0 && ([(VNEspressoModelImageprint *)self descriptorData], v9 = objc_claimAutoreleasedReturnValue(), [(VNEspressoModelImageprint *)v5 descriptorData], v10 = objc_claimAutoreleasedReturnValue(), v11 = VisionCoreEqualOrNilObjects(), v10, v9, (v11) && (v12 = [(VNEspressoModelImageprint *)self elementCount], v12 == [(VNEspressoModelImageprint *)v5 elementCount]) && (v13 = [(VNEspressoModelImageprint *)self lengthInBytes], v13 == [(VNEspressoModelImageprint *)v5 lengthInBytes]))
      {
        v14 = [(VNEspressoModelImageprint *)self labelsAndConfidence];
        v15 = [(VNEspressoModelImageprint *)v5 labelsAndConfidence];
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
  v3 = [(VNEspressoModelImageprint *)self originatingRequestSpecifier];
  v4 = [v3 hash];

  v5 = [(VNEspressoModelImageprint *)self descriptorData];
  v6 = [v5 hash];

  v7 = [(VNEspressoModelImageprint *)self elementCount];
  v8 = [(VNEspressoModelImageprint *)self lengthInBytes];
  v9 = [(VNEspressoModelImageprint *)self labelsAndConfidence];
  v10 = [v9 hash] ^ __ROR8__(v8 ^ __ROR8__(v7 ^ __ROR8__(v6 ^ __ROR8__(v4, 51), 51), 51), 51);

  return v10;
}

- (VNEspressoModelImageprint)initWithState:(id)a3 byteOffset:(unint64_t *)a4 error:(id *)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = v8;
  if (!v8)
  {
    if (a5)
    {
      v10 = [VNError errorWithCode:14 message:@"State cannot be nil"];
      goto LABEL_14;
    }

LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  if ([v8 length] > 0x1B)
  {
    v11 = [v9 bytes];
    v12 = *a4;
    v13 = (v11 + *a4);
    *v38 = *v13;
    *&v38[12] = *(v13 + 12);
    *a4 = v12 + 28;
    if ([objc_opt_class() serializationMagicNumber] != *v38)
    {
      if (a5)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid format of %@ serialized state", objc_opt_class()];
        *a5 = [VNError errorForInvalidFormatErrorWithLocalizedDescription:v17];
      }

      goto LABEL_17;
    }

    v14 = *&v38[8];
    calculateChecksumMD5((v11 + *a4), *&v38[8] - 28, v37);
    if (*&v38[12] != v37[0] || *&v38[20] != v37[1])
    {
      if (a5)
      {
        v10 = [VNError errorForInternalErrorWithLocalizedDescription:@"Serialized and calculated MD5s don't match"];
        goto LABEL_14;
      }

      goto LABEL_17;
    }

    v19 = *(v11 + *a4);
    *a4 += 4;
    v20 = objc_opt_class();
    v35 = *&v38[4];
    if ([v20 shouldAssumeOriginatingRequestClassForHeaderSerializationVersion:?])
    {
      v36 = [objc_opt_class() originatingRequestSpecifierForRequestRevision:v19 error:a5];
      if (!v36)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v21 = *(v11 + *a4);
      *a4 += 4;
      v22 = [VNClassRegistrar classNameForClassCode:v21 error:a5];
      if (!v22)
      {
        goto LABEL_17;
      }

      v36 = [VNRequestSpecifier specifierForRequestClassName:v22 revision:v19 error:a5];

      if (!v36)
      {
        goto LABEL_17;
      }
    }

    v23 = *a4;
    v24 = *(v11 + *a4);
    v25 = *a4 + 4;
    *a4 = v25;
    v26 = *(v11 + v25);
    *a4 = v23 + 8;
    v27 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v24];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
      memcpy([v28 mutableBytes], (v11 + *a4), v24);
      *a4 += v24;
      v30 = [objc_opt_class() shouldIgnoreLagecyLabelsAndConfidenceForHeaderSerializationVersion:v35];
      v31 = *a4;
      if (v30)
      {
        v31 += 241;
        *a4 = v31;
      }

      if (v31 - v12 > v14)
      {
        if (a5)
        {
          v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected size of deserialized state of the object of type %@", objc_opt_class()];
          *a5 = [VNError errorForInternalErrorWithLocalizedDescription:v32];
        }

        goto LABEL_39;
      }

      if ([objc_opt_class() validateDescriptorData:v28 elementType:1 elementCount:v26 error:a5])
      {
        v34 = [(VNEspressoModelImageprint *)self initWithDescriptorData:v28 elementType:1 elementCount:v26 originatingRequestSpecifier:v36];
        if (v34)
        {
          self = v34;
          v16 = self;
          goto LABEL_40;
        }

        if (a5)
        {
          v33 = [VNError errorForInternalErrorWithLocalizedDescription:@"Failed to initialize 'print' object"];
          self = 0;
          goto LABEL_32;
        }

        self = 0;
      }
    }

    else if (a5)
    {
      v33 = [VNError errorForInternalErrorWithLocalizedDescription:@"Memory allocation failure"];
LABEL_32:
      v16 = 0;
      *a5 = v33;
LABEL_40:

      goto LABEL_18;
    }

LABEL_39:
    v16 = 0;
    goto LABEL_40;
  }

  if (!a5)
  {
    goto LABEL_17;
  }

  v10 = [VNError errorForInvalidArgumentWithLocalizedDescription:@"Invalid input data to de-serialize a print object"];
LABEL_14:
  v16 = 0;
  *a5 = v10;
LABEL_18:

  return v16;
}

- (id)serializeStateAndReturnError:(id *)a3
{
  v5 = [MEMORY[0x1E695DF88] dataWithLength:{-[VNEspressoModelImageprint serializedLength](self, "serializedLength")}];
  if ([(VNEspressoModelImageprint *)self serializeStateIntoData:v5 startingAtByteOffset:0 error:a3])
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
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    v10 = [v8 mutableBytes];
    *&v20[16] = 0;
    *&v20[20] = 0;
    *v20 = [objc_opt_class() serializationMagicNumber];
    *&v20[8] = [(VNEspressoModelImageprint *)self serializedLength];
    *&v20[4] = [objc_opt_class() currentSerializationVersion];
    v19 = [(VNEspressoModelImageprint *)self originatingRequestSpecifier];
    v11 = v10 + a4;
    *(v10 + a4 + 28) = [v19 requestRevision];
    v12 = (v10 + a4 + 28);
    *(v11 + 32) = [v19 requestClassCode];
    *(v11 + 36) = [(VNEspressoModelImageprint *)self lengthInBytes];
    *(v11 + 40) = self->_elementCount;
    v13 = [(NSData *)self->_descriptorData bytes];
    v14 = [(NSData *)self->_descriptorData length];
    memcpy((v10 + a4 + 44), v13, v14);
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
      if (a5)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected size of serialized state of the object of type %@", objc_opt_class()];
        *a5 = [VNError errorForInternalErrorWithLocalizedDescription:v17];
      }

      v15 = 0;
    }
  }

  else if (a5)
  {
    [VNError errorWithCode:14 message:@"state cannot be nil"];
    *a5 = v15 = 0;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 vn_encodeCodingVersion:objc_msgSend(objc_opt_class() forKey:{"currentCodingVersion"), @"version"}];
  [v4 encodeObject:self->_originatingRequestSpecifier forKey:@"request"];
  [v4 encodeObject:self->_version forKey:@"algorithmVersion"];
  [v4 encodeInteger:self->_elementCount forKey:@"elementCount"];
  if (self->_elementType == 1 && (self->_serializationOptions & 1) != 0)
  {
    descriptorData = self->_descriptorData;
    v8 = 0;
    v6 = VNFloat16DataForFloat32Data(descriptorData, &v8);
    v7 = v8;
    if (v6)
    {
      [v4 encodeObject:v6 forKey:@"f16Desc"];
    }

    else
    {
      [v4 failWithError:v7];
    }
  }

  else
  {
    [v4 encodeInteger:? forKey:?];
    [v4 encodeObject:self->_descriptorData forKey:@"descriptorData"];
    [v4 encodeInteger:-[NSData length](self->_descriptorData forKey:{"length"), @"descriptorByteLength"}];
  }
}

- (VNEspressoModelImageprint)initWithCoder:(id)a3 forCodingVersion:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v38 = 0;
  LOBYTE(v4) = [objc_opt_class() isSupportedCodingVersion:v4 error:&v38];
  v7 = v38;
  if (v4)
  {
    v8 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"algorithmVersion"];
    v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"request"];
    if (!v9)
    {
      if ([v6 containsValueForKey:@"request"])
      {
        v12 = 0;
LABEL_35:

        goto LABEL_36;
      }

      v37 = 0;
      v23 = [objc_opt_class() originatingRequestSpecifierForRequestRevision:objc_msgSend(v6 error:{"decodeIntegerForKey:", @"requestRevision", &v37}];
      v24 = v37;
      v9 = v24;
      if (!v23)
      {
        [v6 failWithError:v24];
        v12 = 0;
LABEL_34:

        goto LABEL_35;
      }

      v9 = v23;
    }

    v10 = [v6 containsValueForKey:@"f16Desc"];
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = [v6 decodeIntegerForKey:@"elementsType"];
    }

    v13 = [v6 decodeIntegerForKey:@"elementCount"];
    if ([v6 containsValueForKey:@"descriptorByteLength"])
    {
      v14 = [v6 decodeIntegerForKey:@"descriptorByteLength"];
    }

    else
    {
      v14 = 0;
    }

    if (((v11 == 1) & v10) != 0)
    {
      v15 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"f16Desc"];
      if ([v15 length] != 2 * v13)
      {
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"The '%@' data is not the expected length of %lu", @"f16Desc", 2 * v13];
        v25 = [VNError errorForInvalidOperationWithLocalizedDescription:v18];
        [v6 failWithError:v25];

        v12 = 0;
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
        [v6 failWithError:v17];
        v12 = 0;
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
      v16 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"descriptorData"];
      if (!v16)
      {
        v15 = [VNError errorForInvalidOperationWithLocalizedDescription:@"descriptor data is unavailable"];
        v8 = v34;
        [v6 failWithError:v15];
        v12 = 0;
LABEL_33:

        goto LABEL_34;
      }

      v32 = 0;
      if (!v14)
      {
LABEL_16:
        v18 = [VNError errorForInvalidOperationWithLocalizedDescription:@"descriptor length is unavailable"];
        [v6 failWithError:v18];
        goto LABEL_28;
      }
    }

    v35 = 0;
    v19 = [objc_opt_class() validateDescriptorData:v16 elementType:v11 elementCount:v13 error:&v35];
    v18 = v35;
    if ((v19 & 1) == 0)
    {
      [v6 failWithError:v18];
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
      v12 = self;
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
    [v6 failWithError:v30];

    self = 0;
LABEL_28:
    v12 = 0;
    v15 = v16;
    goto LABEL_31;
  }

  [v6 failWithError:v7];
  v12 = 0;
LABEL_36:

  return v12;
}

- (VNEspressoModelImageprint)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"1.0"])
  {
    v5 = [(VNEspressoModelImageprint *)self _initWithClassKeyMappedCoder:v4];
  }

  else
  {
    v5 = -[VNEspressoModelImageprint initWithCoder:forCodingVersion:](self, "initWithCoder:forCodingVersion:", v4, [v4 vn_decodeCodingVersionForKey:@"version"]);
  }

  v6 = v5;

  return v6;
}

- (id)_initWithClassKeyMappedCoder:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() codingTypesToCodingKeys];
  v6 = objc_opt_class();
  v7 = [v5 objectForKeyedSubscript:@"emp_algorithmVersion"];
  obj = [v4 decodeObjectOfClass:v6 forKey:v7];

  v8 = objc_opt_class();
  v9 = [v5 objectForKeyedSubscript:@"emp_data"];
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = [v5 objectForKeyedSubscript:@"emp_elementsCount"];
  v12 = [v4 decodeIntegerForKey:v11];

  v13 = [v5 objectForKeyedSubscript:@"emp_length"];
  v14 = [v4 decodeIntegerForKey:v13];

  if ([v10 length] == v14)
  {
    v15 = [v5 objectForKeyedSubscript:@"emp_elementsType"];
    if ([v4 containsValueForKey:v15])
    {
      v16 = [v4 decodeIntegerForKey:v15];
      v32 = 0;
      v17 = _validateVNElementType(v16, &v32);
      v18 = v32;
      v19 = v18;
      if (!v17)
      {
        [v4 failWithError:v18];
        v22 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
      v16 = 1;
    }

    if ([v4 containsValueForKey:@"VNEspressoModelImageprintRequestRevision"])
    {
      v23 = [v4 decodeIntegerForKey:@"VNEspressoModelImageprintRequestRevision"];
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
        v22 = v27;
        if (v27)
        {
          objc_storeStrong(&v27->_version, obj);
          self = v22;
          v22 = self;
        }

        else
        {
          self = 0;
        }

        goto LABEL_18;
      }

      [v4 failWithError:v25];
    }

    else
    {
      [v4 failWithError:v24];
    }

    v22 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"descriptor data length (%lu) / expected length (%lu) mismatch", objc_msgSend(v10, "length"), v14, obj];
  v21 = [VNError errorForDataUnavailableWithLocalizedDescription:v20];
  [v4 failWithError:v21];

  v22 = 0;
LABEL_20:

  return v22;
}

- (unint64_t)requestRevision
{
  v2 = [(VNEspressoModelImageprint *)self originatingRequestSpecifier];
  v3 = [v2 requestRevision];

  return v3;
}

- (VNEspressoModelImageprint)initWithDescriptorData:(id)a3 elementType:(unint64_t)a4 elementCount:(unint64_t)a5 originatingRequestSpecifier:(id)a6
{
  v10 = a3;
  v11 = a6;
  v18.receiver = self;
  v18.super_class = VNEspressoModelImageprint;
  v12 = [(VNEspressoModelImageprint *)&v18 init];
  if (v12)
  {
    v13 = [objc_opt_class() currentVersion];
    version = v12->_version;
    v12->_version = v13;

    v15 = [v10 copy];
    descriptorData = v12->_descriptorData;
    v12->_descriptorData = v15;

    v12->_elementCount = a5;
    v12->_elementType = a4;
    v12->_confidenceScoreType = [objc_opt_class() confidenceTypeForOriginatingRequestSpecifier:v11];
    objc_storeStrong(&v12->_originatingRequestSpecifier, a6);
  }

  return v12;
}

- (VNEspressoModelImageprint)initWithData:(const void *)a3 elementCount:(unint64_t)a4 elementType:(unint64_t)a5 lengthInBytes:(unint64_t)a6 requestRevision:(unint64_t)a7
{
  v12 = [objc_opt_class() originatingRequestSpecifierForRequestRevision:a7 error:0];
  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 length:a6];
    v27 = 0;
    v14 = [objc_opt_class() validateDescriptorData:v13 elementType:a5 elementCount:a4 error:&v27];
    v15 = v27;
    v16 = v15;
    if (v14)
    {
      self = [(VNEspressoModelImageprint *)self initWithDescriptorData:v13 elementType:a5 elementCount:a4 originatingRequestSpecifier:v12];
      v17 = self;
    }

    else
    {
      v18 = [v15 localizedDescription];
      v19 = [v18 UTF8String];
      VNValidatedLog(4, @"%s", v20, v21, v22, v23, v24, v25, v19);

      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (VNEspressoModelImageprint)initWithData:(const void *)a3 elementCount:(unint64_t)a4 elementType:(unint64_t)a5 lengthInBytes:(unint64_t)a6 labelsAndConfidence:(id)a7 requestRevision:(unint64_t)a8
{
  [VNError VNAssertClass:objc_opt_class() needsToOverrideMethod:a2];

  return 0;
}

+ (BOOL)isSupportedCodingVersion:(unsigned int)a3 error:(id *)a4
{
  v5 = *&a3;
  if (!+[VisionCoreRuntimeUtilities item:overridesSelector:](VNRuntimeUtilities, "item:overridesSelector:", a1, a2) && [a1 currentCodingVersion] >= v5)
  {
    return 1;
  }

  if (a4)
  {
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = NSStringFromClass(a1);
    v9 = [v7 initWithFormat:@"%@ does not support a coding version of %u", v8, v5];

    *a4 = [VNError errorForInvalidOperationWithLocalizedDescription:v9];
  }

  return 0;
}

+ (id)originatingRequestSpecifierForRequestRevision:(unint64_t)a3 error:(id *)a4
{
  v7 = [a1 defaultOriginatingRequestClassNameForRequestRevision:?];
  if (v7)
  {
    v19 = 0;
    v8 = [VNRequestSpecifier specifierForRequestClassName:v7 revision:a3 error:&v19];
    v9 = v19;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v14 = MEMORY[0x1E696AEC0];
      v15 = NSStringFromClass(a1);
      v16 = [v14 stringWithFormat:@"%@ could not resolve originating request class of %@: %@", v15, v7, v9];
      [VNError VNAssert:0 log:v16];

      if (a4)
      {
        v17 = v9;
        *a4 = v9;
      }
    }
  }

  else
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = NSStringFromClass(a1);
    v13 = [v11 stringWithFormat:@"%@ does not specify a default originating request class", v12];

    [VNError VNAssert:0 log:v13];
    if (a4)
    {
      *a4 = [VNError errorForInternalErrorWithLocalizedDescription:v13];
    }

    v8 = 0;
  }

  return v8;
}

+ (id)printFromEspressoBuffer:(id *)a3 originatingRequestSpecifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (a3->var7 == 1)
  {
    if (a3->var14 == 65568)
    {
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3->var0 length:4 * a3->var13];
      v10 = [[a1 alloc] initWithDescriptorData:v9 elementType:1 elementCount:a3->var13 originatingRequestSpecifier:v8];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else if (a5)
      {
        v16 = objc_alloc(MEMORY[0x1E696AEC0]);
        v17 = NSStringFromClass(a1);
        v18 = [v16 initWithFormat:@"Unable to create %@ from %ld element float data %p", v17, a3->var13, a3->var0];

        *a5 = [VNError errorForInvalidOperationWithLocalizedDescription:v18];
      }

      goto LABEL_14;
    }

    if (a5)
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unsupported element storage type of 0x%04X", a3->var14];
      v15 = [VNError errorForInvalidOperationWithLocalizedDescription:v9];
      goto LABEL_9;
    }

LABEL_10:
    v11 = 0;
    goto LABEL_15;
  }

  if (!a5)
  {
    goto LABEL_10;
  }

  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = NSStringFromClass(a1);
  v9 = [v13 initWithFormat:@"Unable to create %@ from from a tensor buffer of dimension [%lu %lu %lu %lu]", v14, a3->var7, a3->var6, a3->var5, a3->var4];

  v15 = [VNError errorForInvalidOperationWithLocalizedDescription:v9];
LABEL_9:
  v11 = 0;
  *a5 = v15;
LABEL_14:

LABEL_15:

  return v11;
}

+ (id)printWithFloat16PrecisionFloat32Data:(id)a3 originatingRequestSpecifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = VNFloat16DataForFloat32Data(v8, a5);
  v11 = v10;
  if (v10)
  {
    v12 = VNFloat32DataForFloat16Data(v10, a5);
    v13 = v12;
    if (v12)
    {
      v14 = [v12 length] >> 2;
      v15 = [a1 printWithDescriptorData:v13 elementType:1 elementCount:v14 originatingRequestSpecifier:v9 error:a5];
      v16 = v15;
      if (v15)
      {
        v15[3] |= 1uLL;
        v17 = v15;
      }

      else if (a5)
      {
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unable to create float16 descriptor with %lu elements", v14];
        *a5 = [VNError errorForInternalErrorWithLocalizedDescription:v18 underlyingError:0];
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

+ (id)printWithFloat16PrecisionFloat32Values:(const float *)a3 elementCount:(unint64_t)a4 originatingRequestSpecifier:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:a3 length:4 * a4 freeWhenDone:0];
  v12 = [a1 printWithFloat16PrecisionFloat32Data:v11 originatingRequestSpecifier:v10 error:a6];

  return v12;
}

+ (id)printWithDescriptorData:(id)a3 elementType:(unint64_t)a4 elementCount:(unint64_t)a5 originatingRequestSpecifier:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a6;
  if ([a1 validateDescriptorData:v12 elementType:a4 elementCount:a5 error:a7])
  {
    v14 = [[a1 alloc] initWithDescriptorData:v12 elementType:a4 elementCount:a5 originatingRequestSpecifier:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (BOOL)validateDescriptorData:(id)a3 elementType:(unint64_t)a4 elementCount:(unint64_t)a5 error:(id *)a6
{
  v9 = a3;
  if (!_validateVNElementType(a4, a6))
  {
    goto LABEL_11;
  }

  if (a5)
  {
    if (a4 == 1)
    {
      v10 = 4;
    }

    else
    {
      v10 = 8 * (a4 == 2);
    }

    v11 = v10 * a5;
    v12 = [v9 length] == v10 * a5;
    v13 = v12;
    if (a6 && !v12)
    {
      v14 = objc_alloc(MEMORY[0x1E696AEC0]);
      v15 = VNElementTypeToString(a4);
      v16 = [v14 initWithFormat:@"%lu elements of type %@ with length of %lu mismatch to descriptor data length %lu", a5, v15, v11, objc_msgSend(v9, "length")];

      *a6 = [VNError errorForInvalidArgumentWithLocalizedDescription:v16];

LABEL_11:
      v13 = 0;
    }
  }

  else
  {
    if (!a6)
    {
      goto LABEL_11;
    }

    [VNError errorForInvalidArgumentWithLocalizedDescription:@"element count must be non-zero"];
    *a6 = v13 = 0;
  }

  return v13;
}

- (id)VNEspressoModelImageprintOneDimensionMLMultiArrayWithDataType:(int64_t)a3 error:(id *)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VNEspressoModelImageprint elementCount](self, "elementCount")}];
  v11[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  v9 = [(VNEspressoModelImageprint *)self _VNEspressoModelImageprintMLMultiArrayWithDataType:a3 shape:v8 strides:&unk_1F19C2098 error:a4];

  return v9;
}

- (id)VNEspressoModelImageprintMLMultiArrayWithConstraint:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ cannot be represented as %@", self, v6];
    *a4 = [VNError errorForInvalidModelWithLocalizedDescription:v7];
  }

  return 0;
}

- (id)_VNEspressoModelImageprintMLMultiArrayWithDataType:(int64_t)a3 shape:(id)a4 strides:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  if ([(VNEspressoModelImageprint *)self elementType]== 1)
  {
    v12 = [(VNEspressoModelImageprint *)self descriptorData];
    v13 = v10;
    v14 = v11;
    v15 = v12;
    v16 = v15;
    if (self)
    {
      switch(a3)
      {
        case 65552:
          v24 = VNFloat16DataForFloat32Data(v15, a6);
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
            v19 = [objc_alloc(MEMORY[0x1E695FED0]) initWithDataPointer:objc_msgSend(v26 shape:"bytes") dataType:v13 strides:65552 deallocator:v14 error:{v27, a6}];

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
          v19 = [objc_alloc(MEMORY[0x1E695FED0]) initWithDataPointer:v23 shape:v13 dataType:65600 strides:v14 deallocator:&__block_literal_global_23076 error:a6];
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
          v19 = [objc_alloc(MEMORY[0x1E695FED0]) initWithDataPointer:objc_msgSend(v17 shape:"bytes") dataType:v13 strides:65568 deallocator:v14 error:{v18, a6}];

          _Block_object_dispose(&v37, 8);
LABEL_18:

          goto LABEL_19;
      }

      if (a6)
      {
        v28 = objc_alloc(MEMORY[0x1E696AEC0]);
        v29 = [MEMORY[0x1E695FEE8] stringForDataType:a3];
        v30 = [v28 initWithFormat:@"%@ cannot be represented as %@", self, v29];

        *a6 = [VNError errorForDataUnavailableWithLocalizedDescription:v30];
      }
    }

    v19 = 0;
    goto LABEL_18;
  }

  if (!a6)
  {
    v19 = 0;
    goto LABEL_20;
  }

  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  v21 = [MEMORY[0x1E695FEE8] stringForDataType:a3];
  v16 = [v20 initWithFormat:@"%@ cannot be represented as %@", self, v21];

  [VNError errorForDataUnavailableWithLocalizedDescription:v16];
  *a6 = v19 = 0;
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

+ (id)printFromCSUBuffer:(id)a3 originatingRequestSpecifier:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
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
  [v7 accessDataUsingBlock:v12];
  v9 = [a1 alloc];
  v10 = [v9 initWithDescriptorData:v14[5] elementType:1 elementCount:v20[3] originatingRequestSpecifier:v8];
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