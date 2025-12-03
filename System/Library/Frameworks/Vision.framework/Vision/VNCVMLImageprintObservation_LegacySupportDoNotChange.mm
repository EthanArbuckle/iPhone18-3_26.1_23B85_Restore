@interface VNCVMLImageprintObservation_LegacySupportDoNotChange
- (VNCVMLImageprintObservation_LegacySupportDoNotChange)init;
- (VNCVMLImageprintObservation_LegacySupportDoNotChange)initWithCoder:(id)coder;
- (VNCVMLImageprintObservation_LegacySupportDoNotChange)initWithData:(id)data;
- (id)serializeAsVNImageprintStateAndReturnError:(id *)error;
- (unint64_t)serializeStateIntoData:(id)data startingAtByteOffset:(unint64_t)offset error:(id *)error;
@end

@implementation VNCVMLImageprintObservation_LegacySupportDoNotChange

- (id)serializeAsVNImageprintStateAndReturnError:(id *)error
{
  v5 = [MEMORY[0x1E695DF88] dataWithLength:{-[VNCVMLImageprintObservation_LegacySupportDoNotChange serializedLength](self, "serializedLength")}];
  v6 = [(VNCVMLImageprintObservation_LegacySupportDoNotChange *)self serializeStateIntoData:v5 startingAtByteOffset:0 error:error];
  if (v6 && v6 == [(VNCVMLImageprintObservation_LegacySupportDoNotChange *)self serializedLength])
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)serializeStateIntoData:(id)data startingAtByteOffset:(unint64_t)offset error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v9 = dataCopy;
  if (!dataCopy)
  {
    if (error)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"state cannot be nil"];
      *error = v13 = 0;
      goto LABEL_10;
    }

LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  mutableBytes = [dataCopy mutableBytes];
  *&v18[12] = 0;
  *&v18[20] = 0;
  *v18 = -878245506;
  serializedLength = [(VNCVMLImageprintObservation_LegacySupportDoNotChange *)self serializedLength];
  *&v18[4] = 1;
  *&v18[8] = serializedLength;
  v12 = [(MPImageDescriptor_LegacySupportDoNotChange *)self->_imageprintDescriptor serializeStateIntoData:v9 startingAtByteOffset:offset + 28 error:error];
  if (!v12)
  {
    goto LABEL_9;
  }

  *(mutableBytes + v12 + offset + 28) = 0;
  v13 = v12 + 32;
  if (v12 + 32 != serializedLength)
  {
    if (error)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected size of serialized state of the object of type %@", objc_opt_class()];
      *error = [VNError errorForInternalErrorWithLocalizedDescription:v16];
    }

    goto LABEL_9;
  }

  v14 = (mutableBytes + offset);
  calculateChecksumMD5((mutableBytes + offset + 28), v12 + 4, &v18[12]);
  v15 = *v18;
  *(v14 + 12) = *&v18[12];
  *v14 = v15;
LABEL_10:

  return v13;
}

- (VNCVMLImageprintObservation_LegacySupportDoNotChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = VNCVMLImageprintObservation_LegacySupportDoNotChange;
  v5 = [(VNCVMLObservation_LegacySupportDoNotChange *)&v17 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CVMLImageprintObservation_VersionCodingKey"];
  if (![v6 unsignedIntegerValue])
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CVMLImageprintObservation_ImageprintDescriptorCodingKey"];
    imageprintDescriptor = v5->_imageprintDescriptor;
    v5->_imageprintDescriptor = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CVMLImageprintObservation_UUIDCodingKey"];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CVMLImageprintObservation_ImageprintTypeCodingKey"];
    imageprintType = v5->_imageprintType;
    v5->_imageprintType = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CVMLImageprintObservation_ImageprintDescriptorColorGaborVersion"];
    imageprintVersion = v5->_imageprintVersion;
    v5->_imageprintVersion = v14;

LABEL_5:
    v7 = v5;
    goto LABEL_6;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (VNCVMLImageprintObservation_LegacySupportDoNotChange)initWithData:(id)data
{
  v4.receiver = self;
  v4.super_class = VNCVMLImageprintObservation_LegacySupportDoNotChange;
  return [(VNCVMLObservation_LegacySupportDoNotChange *)&v4 initWithData:data forKey:@"CVMLImageprintObservation_ObjectCodingKey"];
}

- (VNCVMLImageprintObservation_LegacySupportDoNotChange)init
{
  v10.receiver = self;
  v10.super_class = VNCVMLImageprintObservation_LegacySupportDoNotChange;
  v2 = [(VNCVMLImageprintObservation_LegacySupportDoNotChange *)&v10 init];
  v3 = v2;
  if (v2)
  {
    identifier = v2->_identifier;
    v2->_identifier = 0;

    imageprintDescriptor = v3->_imageprintDescriptor;
    v3->_imageprintDescriptor = 0;

    imageprintType = v3->_imageprintType;
    v3->_imageprintType = @"CVMLImageprintObservation_ImageprintTypeColorGabor";

    imageprintVersion = v3->_imageprintVersion;
    v3->_imageprintVersion = 0;

    v8 = v3;
  }

  return v3;
}

@end