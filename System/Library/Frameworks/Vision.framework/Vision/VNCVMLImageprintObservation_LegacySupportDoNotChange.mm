@interface VNCVMLImageprintObservation_LegacySupportDoNotChange
- (VNCVMLImageprintObservation_LegacySupportDoNotChange)init;
- (VNCVMLImageprintObservation_LegacySupportDoNotChange)initWithCoder:(id)a3;
- (VNCVMLImageprintObservation_LegacySupportDoNotChange)initWithData:(id)a3;
- (id)serializeAsVNImageprintStateAndReturnError:(id *)a3;
- (unint64_t)serializeStateIntoData:(id)a3 startingAtByteOffset:(unint64_t)a4 error:(id *)a5;
@end

@implementation VNCVMLImageprintObservation_LegacySupportDoNotChange

- (id)serializeAsVNImageprintStateAndReturnError:(id *)a3
{
  v5 = [MEMORY[0x1E695DF88] dataWithLength:{-[VNCVMLImageprintObservation_LegacySupportDoNotChange serializedLength](self, "serializedLength")}];
  v6 = [(VNCVMLImageprintObservation_LegacySupportDoNotChange *)self serializeStateIntoData:v5 startingAtByteOffset:0 error:a3];
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

- (unint64_t)serializeStateIntoData:(id)a3 startingAtByteOffset:(unint64_t)a4 error:(id *)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = v8;
  if (!v8)
  {
    if (a5)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"state cannot be nil"];
      *a5 = v13 = 0;
      goto LABEL_10;
    }

LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v10 = [v8 mutableBytes];
  *&v18[12] = 0;
  *&v18[20] = 0;
  *v18 = -878245506;
  v11 = [(VNCVMLImageprintObservation_LegacySupportDoNotChange *)self serializedLength];
  *&v18[4] = 1;
  *&v18[8] = v11;
  v12 = [(MPImageDescriptor_LegacySupportDoNotChange *)self->_imageprintDescriptor serializeStateIntoData:v9 startingAtByteOffset:a4 + 28 error:a5];
  if (!v12)
  {
    goto LABEL_9;
  }

  *(v10 + v12 + a4 + 28) = 0;
  v13 = v12 + 32;
  if (v12 + 32 != v11)
  {
    if (a5)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected size of serialized state of the object of type %@", objc_opt_class()];
      *a5 = [VNError errorForInternalErrorWithLocalizedDescription:v16];
    }

    goto LABEL_9;
  }

  v14 = (v10 + a4);
  calculateChecksumMD5((v10 + a4 + 28), v12 + 4, &v18[12]);
  v15 = *v18;
  *(v14 + 12) = *&v18[12];
  *v14 = v15;
LABEL_10:

  return v13;
}

- (VNCVMLImageprintObservation_LegacySupportDoNotChange)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = VNCVMLImageprintObservation_LegacySupportDoNotChange;
  v5 = [(VNCVMLObservation_LegacySupportDoNotChange *)&v17 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CVMLImageprintObservation_VersionCodingKey"];
  if (![v6 unsignedIntegerValue])
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CVMLImageprintObservation_ImageprintDescriptorCodingKey"];
    imageprintDescriptor = v5->_imageprintDescriptor;
    v5->_imageprintDescriptor = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CVMLImageprintObservation_UUIDCodingKey"];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CVMLImageprintObservation_ImageprintTypeCodingKey"];
    imageprintType = v5->_imageprintType;
    v5->_imageprintType = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CVMLImageprintObservation_ImageprintDescriptorColorGaborVersion"];
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

- (VNCVMLImageprintObservation_LegacySupportDoNotChange)initWithData:(id)a3
{
  v4.receiver = self;
  v4.super_class = VNCVMLImageprintObservation_LegacySupportDoNotChange;
  return [(VNCVMLObservation_LegacySupportDoNotChange *)&v4 initWithData:a3 forKey:@"CVMLImageprintObservation_ObjectCodingKey"];
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