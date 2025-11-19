@interface MPImageDescriptor_LegacySupportDoNotChange
- (MPImageDescriptor_LegacySupportDoNotChange)initWithCoder:(id)a3;
- (unint64_t)serializeStateIntoData:(id)a3 startingAtByteOffset:(unint64_t)a4 error:(id *)a5;
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

- (unint64_t)serializeStateIntoData:(id)a3 startingAtByteOffset:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  colorGaborDescriptor = self->_colorGaborDescriptor;
  if (std::type_info::operator==[abi:ne200100]("PN6vision3mod31ColorGaborImageDescriptorBufferE", "PN6vision3mod31ColorGaborImageDescriptorBufferE"))
  {
    if (v8)
    {
      v10 = [v8 mutableBytes];
      v11 = [(MPImageDescriptor_LegacySupportDoNotChange *)self serializedLength];
      v12 = v10 + a4;
      *(v10 + a4) = v11;
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
          memcpy((v10 + a4 + 30), colorGaborDescriptor[7], v14);
          v15 = (v10 + a4 + 30 + v14);
          *v15 = colorGaborDescriptor[9];
          v15[1] = colorGaborDescriptor[8];
          if (v14 + 38 != v11)
          {
            if (a5)
            {
              v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected size of serialized state of the object of type %@", objc_opt_class()];
              *a5 = [VNMPUtils createErrorWithCode:3196 andMessage:v16];
            }

            goto LABEL_17;
          }
        }

        else
        {
          if (!a5)
          {
LABEL_17:
            v11 = 0;
            goto LABEL_18;
          }

          [VNMPUtils createErrorWithCode:3710 andMessage:@"ERROR: invalid image Id format"];
          *a5 = v11 = 0;
        }

LABEL_18:

        goto LABEL_19;
      }

      if (a5)
      {
        goto LABEL_14;
      }
    }

    else if (a5)
    {
LABEL_14:
      [VNMPUtils createErrorWithCode:3196 andMessage:@"ERROR: state cannot be nil"];
      *a5 = v11 = 0;
      goto LABEL_19;
    }
  }

  else if (a5)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"internal error"];
    *a5 = [VNMPUtils createErrorWithCode:3710 andMessage:v17];
  }

  v11 = 0;
LABEL_19:

  return v11;
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

- (MPImageDescriptor_LegacySupportDoNotChange)initWithCoder:(id)a3
{
  v4 = a3;
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
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPImageDescriptor_externalImageId"];
    externalImageId = v6->_externalImageId;
    v6->_externalImageId = v14;

    v16 = objc_opt_class();
    v17 = [v4 decodeObjectOfClass:v16 forKey:@"MPImageDescriptor_exifTimestamp"];
    v6->_exifTimestamp = [v17 longValue];

    v18 = [v4 decodeObjectOfClass:v16 forKey:@"MPImageDescriptor_quality"];
    [v18 floatValue];
    v6->_quality = v19;

    v20 = [v4 decodeObjectOfClass:v16 forKey:@"MPImageDescriptor_ColorGaborImageDescriptorBuffer_type"];
    v21 = [v20 shortValue];

    if (v21)
    {
      if (v21 == 1)
      {
        v22 = [v4 decodeObjectOfClass:v16 forKey:@"MPImageDescriptor_ColorGaborImageDescriptorBuffer_lengthInBytes"];
        v23 = [v22 longValue];

        v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPImageDescriptor_ColorGaborImageDescriptorBuffer_data"];
        if (v23 == [v24 length])
        {
          v25 = [v24 bytes];
          v26 = malloc_type_malloc(v23, 0xD508959DuLL);
          v27 = v26;
          if (v26)
          {
            memcpy(v26, v25, v23);
            v28 = [v4 decodeObjectOfClass:v16 forKey:@"MPImageDescriptor_ColorGaborImageDescriptorBuffer_count"];
            v29 = [v28 longValue];

            v30 = [v4 decodeObjectOfClass:v16 forKey:@"MPImageDescriptor_ColorGaborImageDescriptorBuffer_stride"];
            v31 = [v30 longValue];

            if (v31 * v29 == v23)
            {
              operator new();
            }

            free(v27);
            v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Data integrity check failed when unarchiving an object of type: %@", objc_opt_class()];
            v33 = [VNError errorForInternalErrorWithLocalizedDescription:v32];
            [v4 failWithError:v33];
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