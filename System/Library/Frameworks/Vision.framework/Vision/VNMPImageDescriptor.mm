@interface VNMPImageDescriptor
- (BOOL)computeDescriptorForImageData:(id)data context:(id)context error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSData)rawColorGaborDescriptor;
- (VNMPImageDescriptor)initWithCoder:(id)coder;
- (VNMPImageDescriptor)initWithImageData:(id)data andCustomQualityScore:(float)score context:(id)context error:(id *)error;
- (VNMPImageDescriptor)initWithImageData:(id)data context:(id)context error:(id *)error;
- (VNMPImageDescriptor)initWithRawColorGaborDescriptor:(id)descriptor;
- (VNMPImageDescriptor)initWithState:(id)state byteOffset:(unint64_t *)offset error:(id *)error;
- (float)computeFinalDescriptorBasedDistanceForColorDistance:(float)result andSceneClassifierDistance:(float)distance;
- (float)distanceFromDescriptor:(id)descriptor;
- (unint64_t)hash;
- (unint64_t)serializeStateIntoData:(id)data startingAtByteOffset:(unint64_t)offset error:(id *)error;
- (unint64_t)serializedLength;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNMPImageDescriptor

- (VNMPImageDescriptor)initWithRawColorGaborDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v21.receiver = self;
  v21.super_class = VNMPImageDescriptor;
  v5 = [(VNMPImageDescriptor *)&v21 init];
  v6 = v5;
  if (v5)
  {
    v5->_internalNonSerializedDescriptorId = v7;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    externalImageId = v6->_externalImageId;
    v6->_externalImageId = uUIDString;

    imageFilePath = v6->_imageFilePath;
    v6->_imageFilePath = 0;

    v6->_colorGaborDescriptor = 0;
    *&v12 = -1;
    *(&v12 + 1) = -1;
    *&v6->_nextLeafTimestampDistance = v12;
    *&v6->_previousLeafId = v12;
    __asm { FMOV            V0.4S, #-1.0 }

    *&v6->_nextLeafDescriptorDistance = _Q0;
    v6->_sceneClassifierDescriptor = 0;
    v18 = [descriptorCopy length];
    v19 = malloc_type_malloc(v18, 0x631939F2uLL);
    memcpy(v19, [descriptorCopy bytes], v18);
    if (v19)
    {
      operator new();
    }

    syslog(5, "Constructing image descriptor failed");
  }

  return 0;
}

- (NSData)rawColorGaborDescriptor
{
  colorGaborDescriptor = self->_colorGaborDescriptor;
  if (colorGaborDescriptor && std::type_info::operator==[abi:ne200100]("PN6vision3mod31ColorGaborImageDescriptorBufferE", "PN6vision3mod31ColorGaborImageDescriptorBufferE"))
  {
    v3 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:colorGaborDescriptor[7] length:(*(*colorGaborDescriptor + 104))(colorGaborDescriptor) freeWhenDone:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (float)computeFinalDescriptorBasedDistanceForColorDistance:(float)result andSceneClassifierDistance:(float)distance
{
  if (distance >= 0.0)
  {
    return distance;
  }

  return result;
}

- (float)distanceFromDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = (*(*self->_colorGaborDescriptor + 88))(self->_colorGaborDescriptor, [descriptorCopy colorGaborDescriptor]);
  LODWORD(v6) = -1.0;
  [(VNMPImageDescriptor *)self computeFinalDescriptorBasedDistanceForColorDistance:v5 andSceneClassifierDistance:v6];
  v8 = v7;

  return v8;
}

- (BOOL)computeDescriptorForImageData:(id)data context:(id)context error:(id *)error
{
  dataCopy = data;
  contextCopy = context;
  if (error)
  {
    *error = 0;
    operator new();
  }

  __assert_rtn("[VNMPImageDescriptor computeDescriptorForImageData:context:error:]", "MPImageDescriptor.mm", 556, "error != nil");
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
      exifTimestamp = [(VNMPImageDescriptor *)self exifTimestamp];
      v16 = 0;
      if (exifTimestamp == [(VNMPImageDescriptor *)v5 exifTimestamp])
      {
        [(VNMPImageDescriptor *)self quality];
        v8 = v7;
        [(VNMPImageDescriptor *)v5 quality];
        if (v8 == v9)
        {
          rawColorGaborDescriptor = [(VNMPImageDescriptor *)self rawColorGaborDescriptor];
          rawColorGaborDescriptor2 = [(VNMPImageDescriptor *)v5 rawColorGaborDescriptor];
          v12 = VisionCoreEqualOrNilObjects();

          if (v12)
          {
            colorGaborDescriptor = self->_colorGaborDescriptor;
            v14 = v5->_colorGaborDescriptor;
            if (colorGaborDescriptor == v14 || (v15 = (*(*colorGaborDescriptor + 13))(colorGaborDescriptor), v15 == (*(*v14 + 13))(v14)) && !memcmp(colorGaborDescriptor[7], v14[7], v15))
            {
              v16 = 1;
            }
          }
        }
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
  externalImageId = [(VNMPImageDescriptor *)self externalImageId];
  v4 = [externalImageId hash];

  exifTimestamp = [(VNMPImageDescriptor *)self exifTimestamp];
  [(VNMPImageDescriptor *)self quality];
  v7 = v6;
  rawColorGaborDescriptor = [(VNMPImageDescriptor *)self rawColorGaborDescriptor];
  v9 = [rawColorGaborDescriptor hash];

  colorGaborDescriptor = self->_colorGaborDescriptor;
  if (colorGaborDescriptor)
  {
    v11 = *(colorGaborDescriptor + 56);
    v12 = (*(*colorGaborDescriptor + 104))(colorGaborDescriptor);
    colorGaborDescriptor = VNHashMemory(v11, v12);
  }

  v13 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v13 = 0;
  }

  return colorGaborDescriptor ^ __ROR8__(v9 ^ __ROR8__(v13 ^ __ROR8__(exifTimestamp ^ __ROR8__(v4, 51), 51), 51), 51);
}

- (void)dealloc
{
  colorGaborDescriptor = self->_colorGaborDescriptor;
  if (colorGaborDescriptor)
  {
    (*(*colorGaborDescriptor + 8))(colorGaborDescriptor, a2);
  }

  v4.receiver = self;
  v4.super_class = VNMPImageDescriptor;
  [(VNMPImageDescriptor *)&v4 dealloc];
}

- (VNMPImageDescriptor)initWithState:(id)state byteOffset:(unint64_t *)offset error:(id *)error
{
  stateCopy = state;
  if (!stateCopy)
  {
    if (!error)
    {
      goto LABEL_11;
    }

    v29 = [VNMPUtils createErrorWithCode:3709 andMessage:@"state parameter cannot be nil"];
LABEL_9:
    *error = v29;
    goto LABEL_11;
  }

  *&v9 = -1;
  *(&v9 + 1) = -1;
  *&self->_previousLeafId = v9;
  *&self->_nextLeafTimestampDistance = v9;
  __asm { FMOV            V0.4S, #-1.0 }

  *&self->_nextLeafDescriptorDistance = _Q0;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  externalImageId = self->_externalImageId;
  self->_externalImageId = uUIDString;

  bytes = [stateCopy bytes];
  v19 = bytes;
  v20 = *offset;
  v21 = *offset + 12;
  *offset = v21;
  v22 = *(bytes + v21);
  *offset = v20 + 20;
  self->_exifTimestamp = v22;
  self->_quality = *(bytes + *offset);
  v23 = *offset;
  v24 = *offset + 4;
  *offset = v24;
  v25 = *(bytes + v24);
  *offset = v23 + 6;
  if (v25 != 1)
  {
    if (!error)
    {
      goto LABEL_11;
    }

    v29 = [VNMPUtils createErrorWithCode:3700 andMessage:@"Invalid state format"];
    goto LABEL_9;
  }

  v26 = *(bytes + v23 + 6);
  *offset = v23 + 10;
  v27 = malloc_type_malloc(v26, 0xDBF55172uLL);
  if (v27)
  {
    memcpy(v27, (v19 + *offset), v26);
    v28 = *offset + v26;
    *offset = v28;
    *offset = v28 + 4;
    *offset = v28 + 8;
    operator new();
  }

  syslog(5, "Constructing image descriptor failed");
LABEL_11:

  return 0;
}

- (unint64_t)serializeStateIntoData:(id)data startingAtByteOffset:(unint64_t)offset error:(id *)error
{
  dataCopy = data;
  colorGaborDescriptor = self->_colorGaborDescriptor;
  if (!std::type_info::operator==[abi:ne200100]("PN6vision3mod31ColorGaborImageDescriptorBufferE", "PN6vision3mod31ColorGaborImageDescriptorBufferE"))
  {
    if (error)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"internal error"];
      v16 = [VNMPUtils createErrorWithCode:3710 andMessage:v15];
      goto LABEL_9;
    }

LABEL_10:
    serializedLength = 0;
    goto LABEL_11;
  }

  if (!dataCopy)
  {
    if (error)
    {
      [VNMPUtils createErrorWithCode:3196 andMessage:@"ERROR: state cannot be nil"];
      *error = serializedLength = 0;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  mutableBytes = [dataCopy mutableBytes];
  serializedLength = [(VNMPImageDescriptor *)self serializedLength];
  v12 = mutableBytes + offset;
  *(mutableBytes + offset) = serializedLength;
  if (!colorGaborDescriptor)
  {
    if (!error)
    {
      goto LABEL_10;
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MPImageDescriptor cannot be serialized without being created"];
    v16 = [VNMPUtils createErrorWithCode:3196 andMessage:v15];
    goto LABEL_9;
  }

  *(v12 + 8) = +[VNMPImageDescriptor currentVersion];
  *(v12 + 12) = self->_exifTimestamp;
  *(v12 + 20) = self->_quality;
  *(v12 + 24) = 1;
  v13 = (*(*colorGaborDescriptor + 13))(colorGaborDescriptor);
  *(v12 + 26) = v13;
  memcpy((mutableBytes + offset + 30), colorGaborDescriptor[7], v13);
  v14 = (mutableBytes + offset + 30 + v13);
  *v14 = colorGaborDescriptor[9];
  v14[1] = colorGaborDescriptor[8];
  if (v13 + 38 != serializedLength)
  {
    if (error)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected size of serialized state of the object of type %@", objc_opt_class()];
      v16 = [VNMPUtils createErrorWithCode:3196 andMessage:v15];
LABEL_9:
      *error = v16;

      goto LABEL_10;
    }

    goto LABEL_10;
  }

LABEL_11:

  return serializedLength;
}

- (unint64_t)serializedLength
{
  colorGaborDescriptor = self->_colorGaborDescriptor;
  if (colorGaborDescriptor)
  {
    return (*(*colorGaborDescriptor + 104))(colorGaborDescriptor, a2) + 38;
  }

  else
  {
    return 10;
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E696AD98] numberWithLong:self->_exifTimestamp];
  [coderCopy encodeObject:v4 forKey:@"VNMPImageDescriptor_exifTimestamp"];

  *&v5 = self->_quality;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [coderCopy encodeObject:v6 forKey:@"VNMPImageDescriptor_quality"];

  colorGaborDescriptor = self->_colorGaborDescriptor;
  if (colorGaborDescriptor)
  {
    if (!std::type_info::operator==[abi:ne200100]("PN6vision3mod31ColorGaborImageDescriptorBufferE", "PN6vision3mod31ColorGaborImageDescriptorBufferE"))
    {
      goto LABEL_6;
    }

    v8 = [MEMORY[0x1E696AD98] numberWithShort:1];
    [coderCopy encodeObject:v8 forKey:@"VNMPImageDescriptor_ColorGaborImageDescriptorBuffer_type"];

    v9 = (*(*colorGaborDescriptor + 104))(colorGaborDescriptor);
    v10 = [MEMORY[0x1E696AD98] numberWithLong:v9];
    [coderCopy encodeObject:v10 forKey:@"VNMPImageDescriptor_ColorGaborImageDescriptorBuffer_lengthInBytes"];

    v11 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:colorGaborDescriptor[7] length:v9 freeWhenDone:0];
    [coderCopy encodeObject:v11 forKey:@"VNMPImageDescriptor_ColorGaborImageDescriptorBuffer_data"];

    v12 = [MEMORY[0x1E696AD98] numberWithLong:colorGaborDescriptor[9]];
    [coderCopy encodeObject:v12 forKey:@"VNMPImageDescriptor_ColorGaborImageDescriptorBuffer_count"];

    v13 = [MEMORY[0x1E696AD98] numberWithLong:colorGaborDescriptor[8]];
    [coderCopy encodeObject:v13 forKey:@"VNMPImageDescriptor_ColorGaborImageDescriptorBuffer_stride"];
  }

  else
  {
    v13 = [MEMORY[0x1E696AD98] numberWithShort:0];
    [coderCopy encodeObject:v13 forKey:@"VNMPImageDescriptor_ColorGaborImageDescriptorBuffer_type"];
  }

LABEL_6:
}

- (VNMPImageDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(VNMPImageDescriptor *)self init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_17;
  }

  *&v7 = -1;
  *(&v7 + 1) = -1;
  *&v5->_previousLeafId = v7;
  *&v5->_nextLeafTimestampDistance = v7;
  __asm { FMOV            V0.4S, #-1.0 }

  *&v5->_nextLeafDescriptorDistance = _Q0;
  v5->_internalNonSerializedDescriptorId = v13;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  externalImageId = v6->_externalImageId;
  v6->_externalImageId = uUIDString;

  v17 = objc_opt_class();
  v18 = [coderCopy decodeObjectOfClass:v17 forKey:@"VNMPImageDescriptor_exifTimestamp"];
  v6->_exifTimestamp = [v18 longValue];

  v19 = [coderCopy decodeObjectOfClass:v17 forKey:@"VNMPImageDescriptor_quality"];
  [v19 floatValue];
  v6->_quality = v20;

  v21 = [coderCopy decodeObjectOfClass:v17 forKey:@"VNMPImageDescriptor_ColorGaborImageDescriptorBuffer_type"];
  shortValue = [v21 shortValue];

  if (shortValue)
  {
    if (shortValue != 1)
    {
      syslog(5, "Unknown decoded image descriptor type");
LABEL_17:
      v35 = 0;
      goto LABEL_18;
    }

    v23 = [coderCopy decodeObjectOfClass:v17 forKey:@"VNMPImageDescriptor_ColorGaborImageDescriptorBuffer_lengthInBytes"];
    longValue = [v23 longValue];

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VNMPImageDescriptor_ColorGaborImageDescriptorBuffer_data"];
    if (longValue != [v25 length])
    {
      syslog(5, "Size mismatch for decoded image descriptor");
LABEL_16:

      goto LABEL_17;
    }

    v26 = [coderCopy decodeObjectOfClass:v17 forKey:@"VNMPImageDescriptor_ColorGaborImageDescriptorBuffer_count"];
    unsignedLongValue = [v26 unsignedLongValue];

    v28 = [coderCopy decodeObjectOfClass:v17 forKey:@"VNMPImageDescriptor_ColorGaborImageDescriptorBuffer_stride"];
    unsignedLongValue2 = [v28 unsignedLongValue];

    if (is_mul_ok(unsignedLongValue2, unsignedLongValue))
    {
      if (unsignedLongValue2 * unsignedLongValue == longValue)
      {
        bytes = [v25 bytes];
        v37 = malloc_type_malloc(longValue, 0xC98482B1uLL);
        if (v37)
        {
          memcpy(v37, bytes, longValue);
          operator new();
        }

        v33 = [VNError errorForMemoryAllocationFailureWithLocalizedDescription:@"unable to allocate descriptor data"];
        [coderCopy failWithError:v33];
        goto LABEL_15;
      }

      v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Data integrity check failed when unarchiving an object of type: %@", objc_opt_class()];
      v34 = [VNError errorForInternalErrorWithLocalizedDescription:v33];
      [coderCopy failWithError:v34];
    }

    else
    {
      v30 = objc_alloc(MEMORY[0x1E696AEC0]);
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = [v30 initWithFormat:@"Integer overflow occurred when unarchiving an object of type: %@ stride: %zu count: %zu", v32, unsignedLongValue2, unsignedLongValue];

      v34 = [VNError errorForInternalErrorWithLocalizedDescription:v33];
      [coderCopy failWithError:v34];
    }

LABEL_15:
    goto LABEL_16;
  }

  v6->_colorGaborDescriptor = 0;
  v35 = v6;
LABEL_18:

  return v35;
}

- (VNMPImageDescriptor)initWithImageData:(id)data andCustomQualityScore:(float)score context:(id)context error:(id *)error
{
  result = [(VNMPImageDescriptor *)self initWithImageData:data context:context error:error];
  if (result)
  {
    result->_quality = score;
  }

  return result;
}

- (VNMPImageDescriptor)initWithImageData:(id)data context:(id)context error:(id *)error
{
  dataCopy = data;
  contextCopy = context;
  v27.receiver = self;
  v27.super_class = VNMPImageDescriptor;
  v10 = [(VNMPImageDescriptor *)&v27 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_9;
  }

  v10->_internalNonSerializedDescriptorId = v12;
  externalImageId = [dataCopy externalImageId];
  externalImageId = v11->_externalImageId;
  v11->_externalImageId = externalImageId;

  imageFilePath = [dataCopy imageFilePath];
  imageFilePath = v11->_imageFilePath;
  v11->_imageFilePath = imageFilePath;

  *&v17 = -1;
  *(&v17 + 1) = -1;
  *&v11->_previousLeafId = v17;
  *&v11->_nextLeafTimestampDistance = v17;
  __asm { FMOV            V0.4S, #-1.0 }

  *&v11->_nextLeafDescriptorDistance = _Q0;
  v11->_colorGaborDescriptor = 0;
  v11->_sceneClassifierDescriptor = 0;
  [(VNMPImageDescriptor *)v11 computeDescriptorForImageData:dataCopy context:contextCopy error:error];
  if (!*error)
  {
    [(VNMPImageDescriptor *)v11 computeConvnetDescriptorForImageData:dataCopy context:contextCopy error:error];
    if (*error)
    {
      v23 = @"ERROR: Could not compute the convnet-based image descriptor";
      goto LABEL_8;
    }

    [(VNMPImageDescriptor *)v11 computeRegistrationFeaturesForImageData:dataCopy context:contextCopy error:error];
    if (*error)
    {
      v23 = @"ERROR: Could not compute image registration features";
      goto LABEL_8;
    }

LABEL_9:
    v25 = v11;
    goto LABEL_10;
  }

  v23 = @"ERROR: Could not compute the image descriptor";
LABEL_8:
  v24 = [VNMPUtils createErrorWithCode:3196 andMessage:v23];
  v25 = 0;
LABEL_10:

  return v25;
}

@end