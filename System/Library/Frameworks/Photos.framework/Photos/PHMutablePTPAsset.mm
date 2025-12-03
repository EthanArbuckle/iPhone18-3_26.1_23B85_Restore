@interface PHMutablePTPAsset
- (id)copyWithZone:(_NSZone *)zone;
- (id)updateForTranscodeChoiceWithConversionResult:(id)result;
- (void)setBurstUUID:(id)d;
- (void)setCaptureDateString:(id)string;
- (void)setCapturedFilename:(id)filename;
- (void)setDcfFilename:(id)filename;
- (void)setDurationString:(id)string;
- (void)setFileSystemFilename:(id)filename;
- (void)setFingerprint:(id)fingerprint;
- (void)setGroupUUID:(id)d;
- (void)setLocationString:(id)string;
- (void)setModificationDateString:(id)string;
- (void)setObjectCompressedSize:(id)size;
- (void)setOriginatingAssetID:(id)d;
- (void)setThumbCompressedSize:(id)size;
- (void)setThumbOffset:(id)offset;
- (void)updateWithConversionResult:(id)result;
@end

@implementation PHMutablePTPAsset

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PHPTPAsset alloc];

  return [(PHPTPAsset *)v4 initWithPTPAsset:self];
}

- (void)updateWithConversionResult:(id)result
{
  resultCopy = result;
  if ([resultCopy outputVideoCodec])
  {
    self->super._videoCodec = [resultCopy outputVideoCodec];
  }

  outputContentType = [resultCopy outputContentType];
  contentType = self->super._contentType;
  self->super._contentType = outputContentType;

  if ([resultCopy requiresConversion])
  {
    v6 = [PHPTPAssetHandle alloc];
    resourceType = [(PHPTPAssetHandle *)self->super._resourceHandle resourceType];
    orientation = [(PHPTPAssetHandle *)self->super._resourceHandle orientation];
    localIdentifier = [(PHPTPAssetHandle *)self->super._resourceHandle localIdentifier];
    v10 = [(PHPTPAssetHandle *)v6 initWithResourceType:resourceType orientation:orientation localIdentifier:localIdentifier requiresConversion:1];
    resourceHandle = self->super._resourceHandle;
    self->super._resourceHandle = v10;

    stringByDeletingPathExtension = [(NSString *)self->super._dcfFilename stringByDeletingPathExtension];
    pathExtension = [resultCopy pathExtension];
    v14 = [stringByDeletingPathExtension stringByAppendingPathExtension:pathExtension];
    dcfFilename = self->super._dcfFilename;
    self->super._dcfFilename = v14;

    stringByDeletingPathExtension2 = [(NSString *)self->super._capturedFilename stringByDeletingPathExtension];
    pathExtension2 = [resultCopy pathExtension];
    v18 = [stringByDeletingPathExtension2 stringByAppendingPathExtension:pathExtension2];
    capturedFilename = self->super._capturedFilename;
    self->super._capturedFilename = v18;

    stringByDeletingPathExtension3 = [(NSString *)self->super._fileSystemFilename stringByDeletingPathExtension];
    pathExtension3 = [resultCopy pathExtension];
    v22 = [stringByDeletingPathExtension3 stringByAppendingPathExtension:pathExtension3];
    fileSystemFilename = self->super._fileSystemFilename;
    self->super._fileSystemFilename = v22;

    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(resultCopy, "estimatedFileLength")}];
    objectCompressedSize = self->super._objectCompressedSize;
    self->super._objectCompressedSize = v24;
  }
}

- (id)updateForTranscodeChoiceWithConversionResult:(id)result
{
  v29 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  self->super._videoCodec = [resultCopy inputVideoCodec];
  inputContentType = [resultCopy inputContentType];
  contentType = self->super._contentType;
  self->super._contentType = inputContentType;

  if ([resultCopy requiresConversion])
  {
    self->super._conversionGroup = 1;
    v7 = [(PHMutablePTPAsset *)self mutableCopy];
    if (v7)
    {
      v8 = [PHPTPAssetHandle alloc];
      resourceType = [(PHPTPAssetHandle *)self->super._resourceHandle resourceType];
      orientation = [(PHPTPAssetHandle *)self->super._resourceHandle orientation];
      localIdentifier = [(PHPTPAssetHandle *)self->super._resourceHandle localIdentifier];
      v12 = [(PHPTPAssetHandle *)v8 initWithResourceType:resourceType orientation:orientation localIdentifier:localIdentifier requiresConversion:1];
      [v7 setResourceHandle:v12];

      [v7 setConversionGroup:2];
      stringByDeletingPathExtension = [(NSString *)self->super._capturedFilename stringByDeletingPathExtension];
      pathExtension = [resultCopy pathExtension];
      v15 = [stringByDeletingPathExtension stringByAppendingPathExtension:pathExtension];
      [v7 setCapturedFilename:v15];

      stringByDeletingPathExtension2 = [(NSString *)self->super._dcfFilename stringByDeletingPathExtension];
      pathExtension2 = [resultCopy pathExtension];
      v18 = [stringByDeletingPathExtension2 stringByAppendingPathExtension:pathExtension2];
      [v7 setDcfFilename:v18];

      stringByDeletingPathExtension3 = [(NSString *)self->super._fileSystemFilename stringByDeletingPathExtension];
      pathExtension3 = [resultCopy pathExtension];
      v21 = [stringByDeletingPathExtension3 stringByAppendingPathExtension:pathExtension3];
      [v7 setFileSystemFilename:v21];

      v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(resultCopy, "estimatedFileLength")}];
      [v7 setObjectCompressedSize:v22];

      [v7 setVideoCodec:{objc_msgSend(resultCopy, "outputVideoCodec")}];
      outputContentType = [resultCopy outputContentType];
      [v7 setContentType:outputContentType];

      v24 = v7;
    }

    else
    {
      v25 = PLPTPGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v27 = 138412290;
        selfCopy = self;
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

- (void)setBurstUUID:(id)d
{
  self->super._burstUUID = [d copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setGroupUUID:(id)d
{
  self->super._groupUUID = [d copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setLocationString:(id)string
{
  self->super._locationString = [string copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setDurationString:(id)string
{
  self->super._durationString = [string copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setCaptureDateString:(id)string
{
  self->super._captureDateString = [string copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setModificationDateString:(id)string
{
  self->super._modificationDateString = [string copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setThumbCompressedSize:(id)size
{
  self->super._thumbCompressedSize = [size copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setThumbOffset:(id)offset
{
  self->super._thumbOffset = [offset copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setOriginatingAssetID:(id)d
{
  self->super._originatingAssetID = [d copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setFingerprint:(id)fingerprint
{
  self->super._fingerprint = [fingerprint copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setObjectCompressedSize:(id)size
{
  self->super._objectCompressedSize = [size copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setFileSystemFilename:(id)filename
{
  self->super._fileSystemFilename = [filename copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setCapturedFilename:(id)filename
{
  self->super._capturedFilename = [filename copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setDcfFilename:(id)filename
{
  self->super._dcfFilename = [filename copy];

  MEMORY[0x1EEE66BB8]();
}

@end