@interface PHAdjustmentData
+ (id)opaqueAdjustmentData;
+ (int64_t)adjustmentBaseVersionFromImageRequestVersion:(int64_t)version;
+ (int64_t)adjustmentBaseVersionFromVideoRequestVersion:(int64_t)version;
+ (int64_t)imageRequestVersionFromAdjustmentBaseVersion:(int64_t)version;
+ (int64_t)videoRequestVersionFromAdjustmentBaseVersion:(int64_t)version;
- (BOOL)_contentEditing_containsValidAdjustment;
- (BOOL)_contentEditing_readableByClientWithVerificationBlock:(id)block;
- (BOOL)_hasAdjustments;
- (BOOL)isOpaque;
- (PHAdjustmentData)initWithCoder:(id)coder;
- (PHAdjustmentData)initWithDataUsingAssetResourceEncoding:(id)encoding error:(id *)error;
- (PHAdjustmentData)initWithFormatIdentifier:(id)identifier formatVersion:(id)version adjustmentRenderType:(id)type data:(id)data;
- (id)dataUsingAssetResourceEncoding:(id *)encoding;
- (id)description;
- (int64_t)_contentEditing_requiredBaseVersionReadableByClient:(BOOL *)client verificationBlock:(id)block;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PHAdjustmentData

- (BOOL)_hasAdjustments
{
  formatIdentifier = [(PHAdjustmentData *)self formatIdentifier];

  if (!formatIdentifier)
  {
    return 0;
  }

  data = [(PHAdjustmentData *)self data];
  v5 = [data length] != 0;

  return v5;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = PHAdjustmentData;
  v3 = [(PHAdjustmentData *)&v11 description];
  formatIdentifier = [(PHAdjustmentData *)self formatIdentifier];
  formatVersion = [(PHAdjustmentData *)self formatVersion];
  adjustmentRenderTypes = [(PHAdjustmentData *)self adjustmentRenderTypes];
  data = [(PHAdjustmentData *)self data];
  data2 = [(PHAdjustmentData *)self data];
  v9 = [v3 stringByAppendingFormat:@" identifier=%@ version=%@ renderType=%u data=%p (%lu)", formatIdentifier, formatVersion, adjustmentRenderTypes, data, objc_msgSend(data2, "length")];

  return v9;
}

- (id)dataUsingAssetResourceEncoding:(id *)encoding
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  formatIdentifier = [(PHAdjustmentData *)self formatIdentifier];
  [v5 setObject:formatIdentifier forKey:*MEMORY[0x1E69BF380]];

  formatVersion = [(PHAdjustmentData *)self formatVersion];
  [v5 setObject:formatVersion forKey:*MEMORY[0x1E69BF388]];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHAdjustmentData baseVersion](self, "baseVersion")}];
  [v5 setObject:v8 forKey:*MEMORY[0x1E69BF368]];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PHAdjustmentData adjustmentRenderTypes](self, "adjustmentRenderTypes")}];
  [v5 setObject:v9 forKey:*MEMORY[0x1E69BF390]];

  editorBundleID = [(PHAdjustmentData *)self editorBundleID];

  if (editorBundleID)
  {
    editorBundleID2 = [(PHAdjustmentData *)self editorBundleID];
    [v5 setObject:editorBundleID2 forKey:*MEMORY[0x1E69BF378]];
  }

  adjustmentTimestamp = [(PHAdjustmentData *)self adjustmentTimestamp];

  if (adjustmentTimestamp)
  {
    adjustmentTimestamp2 = [(PHAdjustmentData *)self adjustmentTimestamp];
    [v5 setObject:adjustmentTimestamp2 forKey:*MEMORY[0x1E69BF398]];
  }

  data = [(PHAdjustmentData *)self data];

  if (data)
  {
    data2 = [(PHAdjustmentData *)self data];
    [v5 setObject:data2 forKey:*MEMORY[0x1E69BF370]];
  }

  v21 = 0;
  v16 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:100 options:0 error:&v21];
  v17 = v21;
  v18 = v17;
  if (!v16 && encoding)
  {
    v19 = v17;
    *encoding = v18;
  }

  return v16;
}

- (PHAdjustmentData)initWithDataUsingAssetResourceEncoding:(id)encoding error:(id *)error
{
  v21 = 0;
  v6 = [MEMORY[0x1E696AE40] propertyListWithData:encoding options:0 format:0 error:&v21];
  v7 = v21;
  v8 = v7;
  if (v6)
  {
    v9 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69BF380]];
    v10 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69BF388]];
    v11 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69BF390]];
    v12 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69BF370]];
    v13 = [(PHAdjustmentData *)self initWithFormatIdentifier:v9 formatVersion:v10 adjustmentRenderType:v11 data:v12];

    if (v13)
    {
      v14 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69BF378]];
      [(PHAdjustmentData *)v13 setEditorBundleID:v14];

      v15 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69BF368]];
      -[PHAdjustmentData setBaseVersion:](v13, "setBaseVersion:", [v15 integerValue]);

      v16 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69BF398]];
      [(PHAdjustmentData *)v13 setAdjustmentTimestamp:v16];
    }

    else
    {
      v18 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:0];
      v16 = v18;
      if (error)
      {
        v19 = v18;
        *error = v16;
      }
    }

    self = v9;
  }

  else if (error)
  {
    v17 = v7;
    v13 = 0;
    *error = v8;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  formatIdentifier = self->_formatIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:formatIdentifier forKey:@"formatIdentifier"];
  [coderCopy encodeObject:self->_formatVersion forKey:@"formatVersion"];
  [coderCopy encodeObject:self->_data forKey:@"data"];
  [coderCopy encodeInteger:self->_baseVersion forKey:@"baseVersion"];
  [coderCopy encodeInteger:self->_adjustmentRenderTypes forKey:@"adjustmentRenderTypes"];
  [coderCopy encodeObject:self->_editorBundleID forKey:@"editorBundleID"];
  [coderCopy encodeObject:self->_adjustmentTimestamp forKey:@"adjustmentTimestamp"];
}

- (PHAdjustmentData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PHAdjustmentData;
  v5 = [(PHAdjustmentData *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"formatIdentifier"];
    formatIdentifier = v5->_formatIdentifier;
    v5->_formatIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"formatVersion"];
    formatVersion = v5->_formatVersion;
    v5->_formatVersion = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v10;

    v5->_baseVersion = [coderCopy decodeIntegerForKey:@"baseVersion"];
    v5->_adjustmentRenderTypes = [coderCopy decodeIntegerForKey:@"adjustmentRenderTypes"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"editorBundleID"];
    editorBundleID = v5->_editorBundleID;
    v5->_editorBundleID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"adjustmentTimestamp"];
    adjustmentTimestamp = v5->_adjustmentTimestamp;
    v5->_adjustmentTimestamp = v14;
  }

  return v5;
}

- (BOOL)isOpaque
{
  formatIdentifier = [(PHAdjustmentData *)self formatIdentifier];
  v3 = [formatIdentifier isEqualToString:PHAdjustmentDataOpaqueFormatIdentifier];

  return v3;
}

- (PHAdjustmentData)initWithFormatIdentifier:(id)identifier formatVersion:(id)version adjustmentRenderType:(id)type data:(id)data
{
  identifierCopy = identifier;
  versionCopy = version;
  typeCopy = type;
  dataCopy = data;
  v23.receiver = self;
  v23.super_class = PHAdjustmentData;
  v14 = [(PHAdjustmentData *)&v23 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    formatIdentifier = v14->_formatIdentifier;
    v14->_formatIdentifier = v15;

    v17 = [versionCopy copy];
    formatVersion = v14->_formatVersion;
    v14->_formatVersion = v17;

    objc_storeStrong(&v14->_data, data);
    v14->_baseVersion = 0;
    if (typeCopy)
    {
      unsignedIntegerValue = [typeCopy unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v14->_adjustmentRenderTypes = unsignedIntegerValue;
    date = [MEMORY[0x1E695DF00] date];
    adjustmentTimestamp = v14->_adjustmentTimestamp;
    v14->_adjustmentTimestamp = date;
  }

  return v14;
}

+ (int64_t)adjustmentBaseVersionFromVideoRequestVersion:(int64_t)version
{
  if (version)
  {
    return version == 8;
  }

  else
  {
    return 2;
  }
}

+ (int64_t)videoRequestVersionFromAdjustmentBaseVersion:(int64_t)version
{
  if (version > 2)
  {
    return 1;
  }

  else
  {
    return qword_19CB29A80[version];
  }
}

+ (int64_t)adjustmentBaseVersionFromImageRequestVersion:(int64_t)version
{
  if (version)
  {
    return version == 8;
  }

  else
  {
    return 2;
  }
}

+ (int64_t)imageRequestVersionFromAdjustmentBaseVersion:(int64_t)version
{
  if (version > 2)
  {
    return 1;
  }

  else
  {
    return qword_19CB29A80[version];
  }
}

+ (id)opaqueAdjustmentData
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ACC8];
  date = [MEMORY[0x1E695DF00] date];
  v10 = 0;
  v4 = [v2 archivedDataWithRootObject:date requiringSecureCoding:1 error:&v10];
  v5 = v10;

  if (v4)
  {
    v6 = [PHAdjustmentData alloc];
    v7 = [(PHAdjustmentData *)v6 initWithFormatIdentifier:PHAdjustmentDataOpaqueFormatIdentifier formatVersion:@"1.0" data:v4];
  }

  else
  {
    v8 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEFAULT, "Failed to archive date (now), error: %@", buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (int64_t)_contentEditing_requiredBaseVersionReadableByClient:(BOOL *)client verificationBlock:(id)block
{
  v21 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if ([(PHAdjustmentData *)self _contentEditing_containsValidAdjustment])
  {
    v7 = [(PHAdjustmentData *)self _contentEditing_readableByClientWithVerificationBlock:blockCopy];
    v8 = MEMORY[0x1E69C0910];
    formatIdentifier = [(PHAdjustmentData *)self formatIdentifier];
    formatVersion = [(PHAdjustmentData *)self formatVersion];
    v11 = [v8 isRecognizedSlowMotionFormatWithIdentifier:formatIdentifier version:formatVersion];

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = 2;
    }

    if ((v11 & 1) == 0 && v7)
    {
      v12 = [(PHAdjustmentData *)self baseVersion]!= 0;
    }

    if (client)
    {
      *client = v7;
    }
  }

  else
  {
    v13 = PLImageManagerGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      formatIdentifier2 = [(PHAdjustmentData *)self formatIdentifier];
      data = [(PHAdjustmentData *)self data];
      v17 = 138412546;
      v18 = formatIdentifier2;
      v19 = 2048;
      v20 = [data length];
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_ERROR, "[RM] Inavlid adjustment data, format ID: %@, data length :%lu", &v17, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)_contentEditing_readableByClientWithVerificationBlock:(id)block
{
  v12 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if ([(PHAdjustmentData *)self isOpaque])
  {
    v5 = PLImageManagerGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10) = 0;
      v6 = "[RM] Checking adjustment data - is opaque";
LABEL_11:
      _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, v6, &v10, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (!blockCopy)
  {
    v5 = PLImageManagerGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10) = 0;
      v6 = "[RM] Checking adjustment data - client did not provide verification block";
      goto LABEL_11;
    }

LABEL_12:
    LOBYTE(v7) = 0;
    goto LABEL_13;
  }

  v7 = blockCopy[2](blockCopy, self);
  v5 = PLImageManagerGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = @"N";
    if (v7)
    {
      v8 = @"Y";
    }

    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "[RM] Checking adjustment data - client can handle current adjustments: %@", &v10, 0xCu);
  }

LABEL_13:

  return v7;
}

- (BOOL)_contentEditing_containsValidAdjustment
{
  formatIdentifier = [(PHAdjustmentData *)self formatIdentifier];
  if (formatIdentifier)
  {
    data = [(PHAdjustmentData *)self data];
    v5 = [data length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end