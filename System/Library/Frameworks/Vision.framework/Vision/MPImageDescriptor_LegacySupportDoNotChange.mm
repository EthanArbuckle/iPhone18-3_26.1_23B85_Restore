@interface MPImageDescriptor_LegacySupportDoNotChange
- (MPImageDescriptor_LegacySupportDoNotChange)initWithCoder:(id)coder;
- (unint64_t)serializeStateIntoData:(id)data startingAtByteOffset:(unint64_t)offset error:(id *)error;
- (unint64_t)serializedLength;
- (void)dealloc;
@end

@implementation MPImageDescriptor_LegacySupportDoNotChange

- (void)dealloc
{
  colorGaborDescriptor = self->_colorGaborDescriptor;
  if (colorGaborDescriptor)
  {
    (*(*colorGaborDescriptor + 8))(colorGaborDescriptor, a2);
  }

  v4.receiver = self;
  v4.super_class = MPImageDescriptor_LegacySupportDoNotChange;
  [(MPImageDescriptor_LegacySupportDoNotChange *)&v4 dealloc];
}

- (unint64_t)serializeStateIntoData:(id)data startingAtByteOffset:(unint64_t)offset error:(id *)error
{
  dataCopy = data;
  colorGaborDescriptor = self->_colorGaborDescriptor;
  if (std::type_info::operator==[abi:ne200100]("PN6vision3mod31ColorGaborImageDescriptorBufferE", "PN6vision3mod31ColorGaborImageDescriptorBufferE"))
  {
    if (dataCopy)
    {
      mutableBytes = [dataCopy mutableBytes];
      serializedLength = [(MPImageDescriptor_LegacySupportDoNotChange *)self serializedLength];
      v12 = mutableBytes + offset;
      *(mutableBytes + offset) = serializedLength;
      if (colorGaborDescriptor)
      {
        *(v12 + 8) = 1;
        v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:self->_externalImageId];
        if (v13)
        {
          *(v12 + 12) = self->_exifTimestamp;
          *(v12 + 20) = self->_quality;
          *(v12 + 24) = 1;
          v14 = (*(*colorGaborDescriptor + 13))(colorGaborDescriptor);
          *(v12 + 26) = v14;
          memcpy((mutableBytes + offset + 30), colorGaborDescriptor[7], v14);
          v15 = (mutableBytes + offset + 30 + v14);
          *v15 = colorGaborDescriptor[9];
          v15[1] = colorGaborDescriptor[8];
          if (v14 + 38 != serializedLength)
          {
            if (error)
            {
              v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected size of serialized state of the object of type %@", objc_opt_class()];
              *error = [VNMPUtils createErrorWithCode:3196 andMessage:v16];
            }

            goto LABEL_17;
          }
        }

        else
        {
          if (!error)
          {
LABEL_17:
            serializedLength = 0;
            goto LABEL_18;
          }

          [VNMPUtils createErrorWithCode:3710 andMessage:@"ERROR: invalid image Id format"];
          *error = serializedLength = 0;
        }

LABEL_18:

        goto LABEL_19;
      }

      if (error)
      {
        goto LABEL_14;
      }
    }

    else if (error)
    {
LABEL_14:
      [VNMPUtils createErrorWithCode:3196 andMessage:@"ERROR: state cannot be nil"];
      *error = serializedLength = 0;
      goto LABEL_19;
    }
  }

  else if (error)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"internal error"];
    *error = [VNMPUtils createErrorWithCode:3710 andMessage:v17];
  }

  serializedLength = 0;
LABEL_19:

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

- (MPImageDescriptor_LegacySupportDoNotChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = MPImageDescriptor_LegacySupportDoNotChange;
  v5 = [(MPImageDescriptor_LegacySupportDoNotChange *)&v35 init];
  v6 = v5;
  if (v5)
  {
    v5->_descriptorId = ++internalId;
    imageFilePath = v5->_imageFilePath;
    v5->_imageFilePath = 0;

    *&v8 = -1;
    *(&v8 + 1) = -1;
    *&v6->_previousLeafId = v8;
    *&v6->_nextLeafTimestampDistance = v8;
    __asm { FMOV            V0.4S, #-1.0 }

    *&v6->_nextLeafDescriptorDistance = _Q0;
    v6->_sceneClassifierDescriptor = 0;
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPImageDescriptor_externalImageId"];
    externalImageId = v6->_externalImageId;
    v6->_externalImageId = v14;

    v16 = objc_opt_class();
    v17 = [coderCopy decodeObjectOfClass:v16 forKey:@"MPImageDescriptor_exifTimestamp"];
    v6->_exifTimestamp = [v17 longValue];

    v18 = [coderCopy decodeObjectOfClass:v16 forKey:@"MPImageDescriptor_quality"];
    [v18 floatValue];
    v6->_quality = v19;

    v20 = [coderCopy decodeObjectOfClass:v16 forKey:@"MPImageDescriptor_ColorGaborImageDescriptorBuffer_type"];
    shortValue = [v20 shortValue];

    if (shortValue)
    {
      if (shortValue == 1)
      {
        v22 = [coderCopy decodeObjectOfClass:v16 forKey:@"MPImageDescriptor_ColorGaborImageDescriptorBuffer_lengthInBytes"];
        longValue = [v22 longValue];

        v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPImageDescriptor_ColorGaborImageDescriptorBuffer_data"];
        if (longValue == [v24 length])
        {
          bytes = [v24 bytes];
          v26 = malloc_type_malloc(longValue, 0xD508959DuLL);
          v27 = v26;
          if (v26)
          {
            memcpy(v26, bytes, longValue);
            v28 = [coderCopy decodeObjectOfClass:v16 forKey:@"MPImageDescriptor_ColorGaborImageDescriptorBuffer_count"];
            longValue2 = [v28 longValue];

            v30 = [coderCopy decodeObjectOfClass:v16 forKey:@"MPImageDescriptor_ColorGaborImageDescriptorBuffer_stride"];
            longValue3 = [v30 longValue];

            if (longValue3 * longValue2 == longValue)
            {
              operator new();
            }

            free(v27);
            v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Data integrity check failed when unarchiving an object of type: %@", objc_opt_class()];
            v33 = [VNError errorForInternalErrorWithLocalizedDescription:v32];
            [coderCopy failWithError:v33];
          }

          else
          {
            syslog(5, "Constructing image descriptor failed");
          }
        }

        else
        {
          syslog(5, "Size mismatch for decoded image descriptor");
        }
      }

      else
      {
        syslog(5, "Unknown decoded image descriptor type");
      }
    }
  }

  return 0;
}

@end