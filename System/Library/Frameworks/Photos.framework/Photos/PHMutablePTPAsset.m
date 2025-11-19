@interface PHMutablePTPAsset
- (id)copyWithZone:(_NSZone *)a3;
- (id)updateForTranscodeChoiceWithConversionResult:(id)a3;
- (void)setBurstUUID:(id)a3;
- (void)setCaptureDateString:(id)a3;
- (void)setCapturedFilename:(id)a3;
- (void)setDcfFilename:(id)a3;
- (void)setDurationString:(id)a3;
- (void)setFileSystemFilename:(id)a3;
- (void)setFingerprint:(id)a3;
- (void)setGroupUUID:(id)a3;
- (void)setLocationString:(id)a3;
- (void)setModificationDateString:(id)a3;
- (void)setObjectCompressedSize:(id)a3;
- (void)setOriginatingAssetID:(id)a3;
- (void)setThumbCompressedSize:(id)a3;
- (void)setThumbOffset:(id)a3;
- (void)updateWithConversionResult:(id)a3;
@end

@implementation PHMutablePTPAsset

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PHPTPAsset alloc];

  return [(PHPTPAsset *)v4 initWithPTPAsset:self];
}

- (void)updateWithConversionResult:(id)a3
{
  v26 = a3;
  if ([v26 outputVideoCodec])
  {
    self->super._videoCodec = [v26 outputVideoCodec];
  }

  v4 = [v26 outputContentType];
  contentType = self->super._contentType;
  self->super._contentType = v4;

  if ([v26 requiresConversion])
  {
    v6 = [PHPTPAssetHandle alloc];
    v7 = [(PHPTPAssetHandle *)self->super._resourceHandle resourceType];
    v8 = [(PHPTPAssetHandle *)self->super._resourceHandle orientation];
    v9 = [(PHPTPAssetHandle *)self->super._resourceHandle localIdentifier];
    v10 = [(PHPTPAssetHandle *)v6 initWithResourceType:v7 orientation:v8 localIdentifier:v9 requiresConversion:1];
    resourceHandle = self->super._resourceHandle;
    self->super._resourceHandle = v10;

    v12 = [(NSString *)self->super._dcfFilename stringByDeletingPathExtension];
    v13 = [v26 pathExtension];
    v14 = [v12 stringByAppendingPathExtension:v13];
    dcfFilename = self->super._dcfFilename;
    self->super._dcfFilename = v14;

    v16 = [(NSString *)self->super._capturedFilename stringByDeletingPathExtension];
    v17 = [v26 pathExtension];
    v18 = [v16 stringByAppendingPathExtension:v17];
    capturedFilename = self->super._capturedFilename;
    self->super._capturedFilename = v18;

    v20 = [(NSString *)self->super._fileSystemFilename stringByDeletingPathExtension];
    v21 = [v26 pathExtension];
    v22 = [v20 stringByAppendingPathExtension:v21];
    fileSystemFilename = self->super._fileSystemFilename;
    self->super._fileSystemFilename = v22;

    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v26, "estimatedFileLength")}];
    objectCompressedSize = self->super._objectCompressedSize;
    self->super._objectCompressedSize = v24;
  }
}

- (id)updateForTranscodeChoiceWithConversionResult:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->super._videoCodec = [v4 inputVideoCodec];
  v5 = [v4 inputContentType];
  contentType = self->super._contentType;
  self->super._contentType = v5;

  if ([v4 requiresConversion])
  {
    self->super._conversionGroup = 1;
    v7 = [(PHMutablePTPAsset *)self mutableCopy];
    if (v7)
    {
      v8 = [PHPTPAssetHandle alloc];
      v9 = [(PHPTPAssetHandle *)self->super._resourceHandle resourceType];
      v10 = [(PHPTPAssetHandle *)self->super._resourceHandle orientation];
      v11 = [(PHPTPAssetHandle *)self->super._resourceHandle localIdentifier];
      v12 = [(PHPTPAssetHandle *)v8 initWithResourceType:v9 orientation:v10 localIdentifier:v11 requiresConversion:1];
      [v7 setResourceHandle:v12];

      [v7 setConversionGroup:2];
      v13 = [(NSString *)self->super._capturedFilename stringByDeletingPathExtension];
      v14 = [v4 pathExtension];
      v15 = [v13 stringByAppendingPathExtension:v14];
      [v7 setCapturedFilename:v15];

      v16 = [(NSString *)self->super._dcfFilename stringByDeletingPathExtension];
      v17 = [v4 pathExtension];
      v18 = [v16 stringByAppendingPathExtension:v17];
      [v7 setDcfFilename:v18];

      v19 = [(NSString *)self->super._fileSystemFilename stringByDeletingPathExtension];
      v20 = [v4 pathExtension];
      v21 = [v19 stringByAppendingPathExtension:v20];
      [v7 setFileSystemFilename:v21];

      v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v4, "estimatedFileLength")}];
      [v7 setObjectCompressedSize:v22];

      [v7 setVideoCodec:{objc_msgSend(v4, "outputVideoCodec")}];
      v23 = [v4 outputContentType];
      [v7 setContentType:v23];

      v24 = v7;
    }

    else
    {
      v25 = PLPTPGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v27 = 138412290;
        v28 = self;
        _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_ERROR, "Expected a successful copy of %@", &v27, 0xCu);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setBurstUUID:(id)a3
{
  self->super._burstUUID = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setGroupUUID:(id)a3
{
  self->super._groupUUID = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setLocationString:(id)a3
{
  self->super._locationString = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setDurationString:(id)a3
{
  self->super._durationString = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setCaptureDateString:(id)a3
{
  self->super._captureDateString = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setModificationDateString:(id)a3
{
  self->super._modificationDateString = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setThumbCompressedSize:(id)a3
{
  self->super._thumbCompressedSize = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setThumbOffset:(id)a3
{
  self->super._thumbOffset = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setOriginatingAssetID:(id)a3
{
  self->super._originatingAssetID = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setFingerprint:(id)a3
{
  self->super._fingerprint = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setObjectCompressedSize:(id)a3
{
  self->super._objectCompressedSize = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setFileSystemFilename:(id)a3
{
  self->super._fileSystemFilename = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setCapturedFilename:(id)a3
{
  self->super._capturedFilename = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setDcfFilename:(id)a3
{
  self->super._dcfFilename = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

@end