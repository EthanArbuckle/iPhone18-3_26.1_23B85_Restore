@interface PHAssetResourceCreationOptions
- (BOOL)ensureOptionsAreCompleteForURL:(id)a3;
- (PHAssetResourceCreationOptions)initWithPropertyListRepresentation:(id)a3;
- (UTType)contentType;
- (id)copyWithZone:(_NSZone *)a3;
- (id)propertyListRepresentation;
- (void)setContentType:(id)a3;
@end

@implementation PHAssetResourceCreationOptions

- (UTType)contentType
{
  v3 = [(PHAssetResourceCreationOptions *)self uniformTypeIdentifier];

  if (v3)
  {
    v4 = MEMORY[0x1E69C08F0];
    v5 = [(PHAssetResourceCreationOptions *)self uniformTypeIdentifier];
    v6 = [v4 typeWithIdentifier:v5];
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

- (void)setContentType:(id)a3
{
  v4 = [a3 identifier];
  [(PHAssetResourceCreationOptions *)self setUniformTypeIdentifier:v4];
}

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)ensureOptionsAreCompleteForURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PHAssetResourceCreationOptions *)self uniformTypeIdentifier];

    if (!v5)
    {
      v6 = MEMORY[0x1E6982C40];
      v7 = [v4 pathExtension];
      v8 = [v6 typeWithFilenameExtension:v7];
      v9 = [v8 identifier];
      [(PHAssetResourceCreationOptions *)self setUniformTypeIdentifier:v9];
    }

    v10 = [(PHAssetResourceCreationOptions *)self originalFilename];

    if (!v10)
    {
      v11 = [v4 lastPathComponent];
      [(PHAssetResourceCreationOptions *)self setOriginalFilename:v11];
    }
  }

  v12 = [(PHAssetResourceCreationOptions *)self uniformTypeIdentifier];
  if (v12)
  {
    v13 = [(PHAssetResourceCreationOptions *)self originalFilename];
    v14 = v13 != 0;
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

- (PHAssetResourceCreationOptions)initWithPropertyListRepresentation:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PHAssetResourceCreationOptions;
  v5 = [(PHAssetResourceCreationOptions *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"originalFilename"];
    originalFilename = v5->_originalFilename;
    v5->_originalFilename = v6;

    v8 = [v4 objectForKeyedSubscript:@"uniformTypeIdentifier"];
    uniformTypeIdentifier = v5->_uniformTypeIdentifier;
    v5->_uniformTypeIdentifier = v8;

    v10 = [v4 objectForKeyedSubscript:@"shouldMoveFile"];
    v5->_shouldMoveFile = [v10 BOOLValue];

    v11 = [v4 objectForKeyedSubscript:@"alternateImportImageDate"];
    alternateImportImageDate = v5->_alternateImportImageDate;
    v5->_alternateImportImageDate = v11;

    v13 = [v4 objectForKeyedSubscript:@"burstPickType"];
    v5->_burstPickType = [v13 unsignedIntegerValue];

    v14 = [v4 objectForKeyedSubscript:@"shouldIngestInPlace"];
    v5->_shouldIngestInPlace = [v14 BOOLValue];

    v15 = [v4 objectForKeyedSubscript:@"forcePairingIdentifier"];
    forcePairingIdentifier = v5->_forcePairingIdentifier;
    v5->_forcePairingIdentifier = v15;
  }

  return v5;
}

@end