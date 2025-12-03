@interface PHAssetResourceCreationOptions
- (BOOL)ensureOptionsAreCompleteForURL:(id)l;
- (PHAssetResourceCreationOptions)initWithPropertyListRepresentation:(id)representation;
- (UTType)contentType;
- (id)copyWithZone:(_NSZone *)zone;
- (id)propertyListRepresentation;
- (void)setContentType:(id)type;
@end

@implementation PHAssetResourceCreationOptions

- (UTType)contentType
{
  uniformTypeIdentifier = [(PHAssetResourceCreationOptions *)self uniformTypeIdentifier];

  if (uniformTypeIdentifier)
  {
    v4 = MEMORY[0x1E69C08F0];
    uniformTypeIdentifier2 = [(PHAssetResourceCreationOptions *)self uniformTypeIdentifier];
    v6 = [v4 typeWithIdentifier:uniformTypeIdentifier2];
    v7 = v6;
    v8 = *MEMORY[0x1E6982D60];
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setContentType:(id)type
{
  identifier = [type identifier];
  [(PHAssetResourceCreationOptions *)self setUniformTypeIdentifier:identifier];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PHAssetResourceCreationOptions);
  [(PHAssetResourceCreationOptions *)v4 setOriginalFilename:self->_originalFilename];
  [(PHAssetResourceCreationOptions *)v4 setUniformTypeIdentifier:self->_uniformTypeIdentifier];
  [(PHAssetResourceCreationOptions *)v4 setShouldMoveFile:self->_shouldMoveFile];
  [(PHAssetResourceCreationOptions *)v4 setAlternateImportImageDate:self->_alternateImportImageDate];
  [(PHAssetResourceCreationOptions *)v4 setBurstPickType:self->_burstPickType];
  [(PHAssetResourceCreationOptions *)v4 setShouldIngestInPlace:self->_shouldIngestInPlace];
  [(PHAssetResourceCreationOptions *)v4 setForcePairingIdentifier:self->_forcePairingIdentifier];
  return v4;
}

- (BOOL)ensureOptionsAreCompleteForURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    uniformTypeIdentifier = [(PHAssetResourceCreationOptions *)self uniformTypeIdentifier];

    if (!uniformTypeIdentifier)
    {
      v6 = MEMORY[0x1E6982C40];
      pathExtension = [lCopy pathExtension];
      v8 = [v6 typeWithFilenameExtension:pathExtension];
      identifier = [v8 identifier];
      [(PHAssetResourceCreationOptions *)self setUniformTypeIdentifier:identifier];
    }

    originalFilename = [(PHAssetResourceCreationOptions *)self originalFilename];

    if (!originalFilename)
    {
      lastPathComponent = [lCopy lastPathComponent];
      [(PHAssetResourceCreationOptions *)self setOriginalFilename:lastPathComponent];
    }
  }

  uniformTypeIdentifier2 = [(PHAssetResourceCreationOptions *)self uniformTypeIdentifier];
  if (uniformTypeIdentifier2)
  {
    originalFilename2 = [(PHAssetResourceCreationOptions *)self originalFilename];
    v14 = originalFilename2 != 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)propertyListRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_originalFilename forKeyedSubscript:@"originalFilename"];
  [v3 setObject:self->_uniformTypeIdentifier forKeyedSubscript:@"uniformTypeIdentifier"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldMoveFile];
  [v3 setObject:v4 forKeyedSubscript:@"shouldMoveFile"];

  [v3 setObject:self->_alternateImportImageDate forKeyedSubscript:@"alternateImportImageDate"];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_burstPickType];
  [v3 setObject:v5 forKeyedSubscript:@"burstPickType"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldIngestInPlace];
  [v3 setObject:v6 forKeyedSubscript:@"shouldIngestInPlace"];

  forcePairingIdentifier = self->_forcePairingIdentifier;
  if (forcePairingIdentifier)
  {
    [v3 setObject:forcePairingIdentifier forKeyedSubscript:@"forcePairingIdentifier"];
  }

  return v3;
}

- (PHAssetResourceCreationOptions)initWithPropertyListRepresentation:(id)representation
{
  representationCopy = representation;
  v18.receiver = self;
  v18.super_class = PHAssetResourceCreationOptions;
  v5 = [(PHAssetResourceCreationOptions *)&v18 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"originalFilename"];
    originalFilename = v5->_originalFilename;
    v5->_originalFilename = v6;

    v8 = [representationCopy objectForKeyedSubscript:@"uniformTypeIdentifier"];
    uniformTypeIdentifier = v5->_uniformTypeIdentifier;
    v5->_uniformTypeIdentifier = v8;

    v10 = [representationCopy objectForKeyedSubscript:@"shouldMoveFile"];
    v5->_shouldMoveFile = [v10 BOOLValue];

    v11 = [representationCopy objectForKeyedSubscript:@"alternateImportImageDate"];
    alternateImportImageDate = v5->_alternateImportImageDate;
    v5->_alternateImportImageDate = v11;

    v13 = [representationCopy objectForKeyedSubscript:@"burstPickType"];
    v5->_burstPickType = [v13 unsignedIntegerValue];

    v14 = [representationCopy objectForKeyedSubscript:@"shouldIngestInPlace"];
    v5->_shouldIngestInPlace = [v14 BOOLValue];

    v15 = [representationCopy objectForKeyedSubscript:@"forcePairingIdentifier"];
    forcePairingIdentifier = v5->_forcePairingIdentifier;
    v5->_forcePairingIdentifier = v15;
  }

  return v5;
}

@end