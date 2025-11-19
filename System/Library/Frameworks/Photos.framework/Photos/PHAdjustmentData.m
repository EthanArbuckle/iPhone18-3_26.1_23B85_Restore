@interface PHAdjustmentData
+ (id)opaqueAdjustmentData;
+ (int64_t)adjustmentBaseVersionFromImageRequestVersion:(int64_t)a3;
+ (int64_t)adjustmentBaseVersionFromVideoRequestVersion:(int64_t)a3;
+ (int64_t)imageRequestVersionFromAdjustmentBaseVersion:(int64_t)a3;
+ (int64_t)videoRequestVersionFromAdjustmentBaseVersion:(int64_t)a3;
- (BOOL)_contentEditing_containsValidAdjustment;
- (BOOL)_contentEditing_readableByClientWithVerificationBlock:(id)a3;
- (BOOL)_hasAdjustments;
- (BOOL)isOpaque;
- (PHAdjustmentData)initWithCoder:(id)a3;
- (PHAdjustmentData)initWithDataUsingAssetResourceEncoding:(id)a3 error:(id *)a4;
- (PHAdjustmentData)initWithFormatIdentifier:(id)a3 formatVersion:(id)a4 adjustmentRenderType:(id)a5 data:(id)a6;
- (id)dataUsingAssetResourceEncoding:(id *)a3;
- (id)description;
- (int64_t)_contentEditing_requiredBaseVersionReadableByClient:(BOOL *)a3 verificationBlock:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PHAdjustmentData

- (BOOL)_hasAdjustments
{
  v3 = [(PHAdjustmentData *)self formatIdentifier];

  if (!v3)
  {
    return 0;
  }

  v4 = [(PHAdjustmentData *)self data];
  v5 = [v4 length] != 0;

  return v5;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = PHAdjustmentData;
  v3 = [(PHAdjustmentData *)&v11 description];
  v4 = [(PHAdjustmentData *)self formatIdentifier];
  v5 = [(PHAdjustmentData *)self formatVersion];
  v6 = [(PHAdjustmentData *)self adjustmentRenderTypes];
  v7 = [(PHAdjustmentData *)self data];
  v8 = [(PHAdjustmentData *)self data];
  v9 = [v3 stringByAppendingFormat:@" identifier=%@ version=%@ renderType=%u data=%p (%lu)", v4, v5, v6, v7, objc_msgSend(v8, "length")];

  return v9;
}

- (id)dataUsingAssetResourceEncoding:(id *)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(PHAdjustmentData *)self formatIdentifier];
  [v5 setObject:v6 forKey:*MEMORY[0x1E69BF380]];

  v7 = [(PHAdjustmentData *)self formatVersion];
  [v5 setObject:v7 forKey:*MEMORY[0x1E69BF388]];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PHAdjustmentData baseVersion](self, "baseVersion")}];
  [v5 setObject:v8 forKey:*MEMORY[0x1E69BF368]];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PHAdjustmentData adjustmentRenderTypes](self, "adjustmentRenderTypes")}];
  [v5 setObject:v9 forKey:*MEMORY[0x1E69BF390]];

  v10 = [(PHAdjustmentData *)self editorBundleID];

  if (v10)
  {
    v11 = [(PHAdjustmentData *)self editorBundleID];
    [v5 setObject:v11 forKey:*MEMORY[0x1E69BF378]];
  }

  v12 = [(PHAdjustmentData *)self adjustmentTimestamp];

  if (v12)
  {
    v13 = [(PHAdjustmentData *)self adjustmentTimestamp];
    [v5 setObject:v13 forKey:*MEMORY[0x1E69BF398]];
  }

  v14 = [(PHAdjustmentData *)self data];

  if (v14)
  {
    v15 = [(PHAdjustmentData *)self data];
    [v5 setObject:v15 forKey:*MEMORY[0x1E69BF370]];
  }

  v21 = 0;
  v16 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:100 options:0 error:&v21];
  v17 = v21;
  v18 = v17;
  if (!v16 && a3)
  {
    v19 = v17;
    *a3 = v18;
  }

  return v16;
}

- (PHAdjustmentData)initWithDataUsingAssetResourceEncoding:(id)a3 error:(id *)a4
{
  v21 = 0;
  v6 = [MEMORY[0x1E696AE40] propertyListWithData:a3 options:0 format:0 error:&v21];
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
      if (a4)
      {
        v19 = v18;
        *a4 = v16;
      }
    }

    self = v9;
  }

  else if (a4)
  {
    v17 = v7;
    v13 = 0;
    *a4 = v8;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  formatIdentifier = self->_formatIdentifier;
  v5 = a3;
  [v5 encodeObject:formatIdentifier forKey:@"formatIdentifier"];
  [v5 encodeObject:self->_formatVersion forKey:@"formatVersion"];
  [v5 encodeObject:self->_data forKey:@"data"];
  [v5 encodeInteger:self->_baseVersion forKey:@"baseVersion"];
  [v5 encodeInteger:self->_adjustmentRenderTypes forKey:@"adjustmentRenderTypes"];
  [v5 encodeObject:self->_editorBundleID forKey:@"editorBundleID"];
  [v5 encodeObject:self->_adjustmentTimestamp forKey:@"adjustmentTimestamp"];
}

- (PHAdjustmentData)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PHAdjustmentData;
  v5 = [(PHAdjustmentData *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"formatIdentifier"];
    formatIdentifier = v5->_formatIdentifier;
    v5->_formatIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"formatVersion"];
    formatVersion = v5->_formatVersion;
    v5->_formatVersion = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v10;

    v5->_baseVersion = [v4 decodeIntegerForKey:@"baseVersion"];
    v5->_adjustmentRenderTypes = [v4 decodeIntegerForKey:@"adjustmentRenderTypes"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"editorBundleID"];
    editorBundleID = v5->_editorBundleID;
    v5->_editorBundleID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"adjustmentTimestamp"];
    adjustmentTimestamp = v5->_adjustmentTimestamp;
    v5->_adjustmentTimestamp = v14;
  }

  return v5;
}

- (BOOL)isOpaque
{
  v2 = [(PHAdjustmentData *)self formatIdentifier];
  v3 = [v2 isEqualToString:PHAdjustmentDataOpaqueFormatIdentifier];

  return v3;
}

- (PHAdjustmentData)initWithFormatIdentifier:(id)a3 formatVersion:(id)a4 adjustmentRenderType:(id)a5 data:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v23.receiver = self;
  v23.super_class = PHAdjustmentData;
  v14 = [(PHAdjustmentData *)&v23 init];
  if (v14)
  {
    v15 = [v10 copy];
    formatIdentifier = v14->_formatIdentifier;
    v14->_formatIdentifier = v15;

    v17 = [v11 copy];
    formatVersion = v14->_formatVersion;
    v14->_formatVersion = v17;

    objc_storeStrong(&v14->_data, a6);
    v14->_baseVersion = 0;
    if (v12)
    {
      v19 = [v12 unsignedIntegerValue];
    }

    else
    {
      v19 = 0;
    }

    v14->_adjustmentRenderTypes = v19;
    v20 = [MEMORY[0x1E695DF00] date];
    adjustmentTimestamp = v14->_adjustmentTimestamp;
    v14->_adjustmentTimestamp = v20;
  }

  return v14;
}

+ (int64_t)adjustmentBaseVersionFromVideoRequestVersion:(int64_t)a3
{
  if (a3)
  {
    return a3 == 8;
  }

  else
  {
    return 2;
  }
}

+ (int64_t)videoRequestVersionFromAdjustmentBaseVersion:(int64_t)a3
{
  if (a3 > 2)
  {
    return 1;
  }

  else
  {
    return qword_19CB29A80[a3];
  }
}

+ (int64_t)adjustmentBaseVersionFromImageRequestVersion:(int64_t)a3
{
  if (a3)
  {
    return a3 == 8;
  }

  else
  {
    return 2;
  }
}

+ (int64_t)imageRequestVersionFromAdjustmentBaseVersion:(int64_t)a3
{
  if (a3 > 2)
  {
    return 1;
  }

  else
  {
    return qword_19CB29A80[a3];
  }
}

+ (id)opaqueAdjustmentData
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ACC8];
  v3 = [MEMORY[0x1E695DF00] date];
  v10 = 0;
  v4 = [v2 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v10];
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

- (int64_t)_contentEditing_requiredBaseVersionReadableByClient:(BOOL *)a3 verificationBlock:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([(PHAdjustmentData *)self _contentEditing_containsValidAdjustment])
  {
    v7 = [(PHAdjustmentData *)self _contentEditing_readableByClientWithVerificationBlock:v6];
    v8 = MEMORY[0x1E69C0910];
    v9 = [(PHAdjustmentData *)self formatIdentifier];
    v10 = [(PHAdjustmentData *)self formatVersion];
    v11 = [v8 isRecognizedSlowMotionFormatWithIdentifier:v9 version:v10];

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

    if (a3)
    {
      *a3 = v7;
    }
  }

  else
  {
    v13 = PLImageManagerGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(PHAdjustmentData *)self formatIdentifier];
      v15 = [(PHAdjustmentData *)self data];
      v17 = 138412546;
      v18 = v14;
      v19 = 2048;
      v20 = [v15 length];
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_ERROR, "[RM] Inavlid adjustment data, format ID: %@, data length :%lu", &v17, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)_contentEditing_readableByClientWithVerificationBlock:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  if (!v4)
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

  v7 = v4[2](v4, self);
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
  v3 = [(PHAdjustmentData *)self formatIdentifier];
  if (v3)
  {
    v4 = [(PHAdjustmentData *)self data];
    v5 = [v4 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end