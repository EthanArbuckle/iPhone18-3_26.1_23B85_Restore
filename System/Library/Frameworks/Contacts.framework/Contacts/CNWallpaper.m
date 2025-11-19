@interface CNWallpaper
+ (id)log;
- (BOOL)isEqual:(id)a3;
- (BOOL)isVertical;
- (CNWallpaper)initWithCoder:(id)a3;
- (CNWallpaper)initWithDataRepresentation:(id)a3;
- (CNWallpaper)initWithDataRepresentationForPersistence:(id)a3;
- (CNWallpaper)initWithImageData:(id)a3 posterArchiveData:(id)a4;
- (CNWallpaper)initWithImageData:(id)a3 type:(id)a4;
- (CNWallpaper)initWithPosterArchiveData:(id)a3;
- (CNWallpaper)initWithPosterArchiveData:(id)a3 contentIsSensitive:(BOOL)a4;
- (CNWallpaper)initWithPosterArchiveData:(id)a3 fontDescription:(id)a4 fontColorDescription:(id)a5 backgroundColorDescription:(id)a6 extensionBundleID:(id)a7 vertical:(BOOL)a8 contentIsSensitive:(BOOL)a9;
- (CNWallpaper)initWithPosterArchiveData:(id)a3 metadata:(id)a4 contentIsSensitive:(BOOL)a5;
- (NSData)dataRepresentation;
- (NSDictionary)backgroundColorDescription;
- (NSDictionary)fontColorDescription;
- (NSDictionary)fontDescription;
- (NSString)extensionBundleID;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataRepresentationForPersistence;
- (id)generateSnapshotImageDataForWatch;
- (id)wallpaperIncludingIMWallpaperMetadata:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNWallpaper

+ (id)log
{
  if (log_cn_once_token_0_18 != -1)
  {
    +[CNWallpaper log];
  }

  v3 = log_cn_once_object_0_18;

  return v3;
}

uint64_t __18__CNWallpaper_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNWallpaper");
  v1 = log_cn_once_object_0_18;
  log_cn_once_object_0_18 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNWallpaper)initWithImageData:(id)a3 type:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CNWallpaper;
  v7 = [(CNWallpaper *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_imageData, a3);
    v9 = objc_alloc_init(MEMORY[0x1E695DEF0]);
    posterArchiveData = v8->_posterArchiveData;
    v8->_posterArchiveData = v9;

    v11 = v8;
  }

  return v8;
}

- (CNWallpaper)initWithImageData:(id)a3 posterArchiveData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNWallpaper;
  v9 = [(CNWallpaper *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_imageData, a3);
    objc_storeStrong(&v10->_posterArchiveData, a4);
    v11 = v10;
  }

  return v10;
}

- (CNWallpaper)initWithPosterArchiveData:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CNWallpaper;
  v6 = [(CNWallpaper *)&v11 init];
  v7 = v6;
  if (v6)
  {
    imageData = v6->_imageData;
    v6->_imageData = 0;

    objc_storeStrong(&v7->_posterArchiveData, a3);
    v9 = v7;
  }

  return v7;
}

- (CNWallpaper)initWithDataRepresentation:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v13 = 0;
    v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v13];
    v6 = v13;
    v7 = [objc_opt_class() log];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v8)
      {
        v9 = [v4 length];
        *buf = 134217984;
        v15 = v9;
        _os_log_impl(&dword_1954A0000, v7, OS_LOG_TYPE_DEFAULT, "Successfully unarchived CNWallpaper, wallpaperData size: %lu bytes", buf, 0xCu);
      }

      v10 = v5;
    }

    else
    {
      if (v8)
      {
        v11 = [v4 length];
        *buf = 138412546;
        v15 = v6;
        v16 = 2048;
        v17 = v11;
        _os_log_impl(&dword_1954A0000, v7, OS_LOG_TYPE_DEFAULT, "Error unarchiving Core Data value into CNWallpaper in initWithDataRepresentation with error: %@, wallpaperData size: %lu bytes", buf, 0x16u);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CNWallpaper)initWithDataRepresentationForPersistence:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v14 = 0;
    v5 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v4 error:&v14];
    if ([v5 decodeIntForKey:@"version"] >= 5)
    {
      v6 = [objc_opt_class() log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [CNWallpaper initWithDataRepresentationForPersistence:];
      }
    }

    else
    {
      v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_posterArchiveData"];
      if (v6)
      {
        v7 = [v5 decodeBoolForKey:@"_contentIsSensitive"];
        v8 = [objc_opt_class() log];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v4 length];
          *buf = 134217984;
          v16 = v9;
          _os_log_impl(&dword_1954A0000, v8, OS_LOG_TYPE_DEFAULT, "Successfully decoded CNWallpaper, wallpaperData size: %lu bytes", buf, 0xCu);
        }

        v10 = [[CNWallpaper alloc] initWithPosterArchiveData:v6 contentIsSensitive:v7];
        goto LABEL_14;
      }

      v11 = [objc_opt_class() log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v4 length];
        *buf = 134217984;
        v16 = v12;
        _os_log_impl(&dword_1954A0000, v11, OS_LOG_TYPE_DEFAULT, "Error decoding posterArchiveData. WallpaperData size: %lu bytes", buf, 0xCu);
      }
    }

    v10 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v10 = 0;
LABEL_15:

  return v10;
}

- (CNWallpaper)initWithPosterArchiveData:(id)a3 contentIsSensitive:(BOOL)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = CNWallpaper;
  v8 = [(CNWallpaper *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_posterArchiveData, a3);
    v9->_contentIsSensitive = a4;
    v10 = v9;
  }

  return v9;
}

- (CNWallpaper)initWithPosterArchiveData:(id)a3 metadata:(id)a4 contentIsSensitive:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  if (v8)
  {
    v10 = [v8 fontDescription];
    v11 = [v8 fontColorDescription];
    v12 = [v8 backgroundColorDescription];
    v13 = [v8 extensionBundleID];
    LOBYTE(v18) = v5;
    v14 = -[CNWallpaper initWithPosterArchiveData:fontDescription:fontColorDescription:backgroundColorDescription:extensionBundleID:vertical:contentIsSensitive:](self, "initWithPosterArchiveData:fontDescription:fontColorDescription:backgroundColorDescription:extensionBundleID:vertical:contentIsSensitive:", v9, v10, v11, v12, v13, [v8 isVertical], v18);

    v15 = v14;
  }

  else
  {
    v16 = [(CNWallpaper *)self initWithPosterArchiveData:v9 contentIsSensitive:v5];

    v15 = v16;
  }

  return v15;
}

- (CNWallpaper)initWithPosterArchiveData:(id)a3 fontDescription:(id)a4 fontColorDescription:(id)a5 backgroundColorDescription:(id)a6 extensionBundleID:(id)a7 vertical:(BOOL)a8 contentIsSensitive:(BOOL)a9
{
  v9 = a8;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v27.receiver = self;
  v27.super_class = CNWallpaper;
  v21 = [(CNWallpaper *)&v27 init];
  if (v21)
  {
    if (!(*(*MEMORY[0x1E6996540] + 16))())
    {
      objc_storeStrong(&v21->_posterArchiveData, a3);
      v24 = [[CNWallpaperMetadata alloc] initWithFontDescription:v17 fontColorDescription:v18 backgroundColorDescription:v19 extensionBundleID:v20 vertical:v9];
      metadata = v21->_metadata;
      v21->_metadata = v24;

      v21->_contentIsSensitive = a9;
      v23 = v21;
      goto LABEL_8;
    }

    v22 = [objc_opt_class() log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [CNWallpaper initWithPosterArchiveData:fontDescription:fontColorDescription:backgroundColorDescription:extensionBundleID:vertical:contentIsSensitive:];
    }
  }

  v23 = 0;
LABEL_8:

  return v23;
}

- (NSData)dataRepresentation
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v7];
  v3 = v7;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [objc_opt_class() log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_DEFAULT, "Error archiving CNWallpaper: %@", buf, 0xCu);
    }
  }

  return v2;
}

- (id)dataRepresentationForPersistence
{
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v3 encodeInt:4 forKey:@"version"];
  [v3 encodeObject:self->_posterArchiveData forKey:@"_posterArchiveData"];
  [v3 encodeBool:self->_contentIsSensitive forKey:@"_contentIsSensitive"];
  [v3 finishEncoding];
  v4 = [v3 encodedData];

  return v4;
}

- (id)generateSnapshotImageDataForWatch
{
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [CNWallpaper generateSnapshotImageDataForWatch];
  }

  v4 = *MEMORY[0x1E6996540];
  v5 = [(CNWallpaper *)self posterArchiveData];
  LODWORD(v4) = (*(v4 + 16))(v4, v5);

  if (v4)
  {
    v6 = [objc_opt_class() log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CNWallpaper generateSnapshotImageDataForWatch];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v7 = [(CNWallpaper *)self snapshotImageDataForWatch];
    goto LABEL_10;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (CNWallpaper)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 decodeIntForKey:@"version"] >= 5)
  {
    v12 = [objc_opt_class() log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CNWallpaper initWithDataRepresentationForPersistence:];
    }

    v11 = 0;
  }

  else
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_posterArchiveData"];
    v6 = [v5 copy];
    posterArchiveData = self->_posterArchiveData;
    self->_posterArchiveData = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_metadata"];
    v9 = [v8 copy];
    metadata = self->_metadata;
    self->_metadata = v9;

    self->_contentIsSensitive = [v4 decodeBoolForKey:@"_contentIsSensitive"];
    v11 = self;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:4 forKey:@"version"];
  [v4 encodeObject:self->_posterArchiveData forKey:@"_posterArchiveData"];
  [v4 encodeObject:self->_metadata forKey:@"_metadata"];
  [v4 encodeBool:self->_contentIsSensitive forKey:@"_contentIsSensitive"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CNWallpaper);
  v5 = [(CNWallpaper *)self posterArchiveData];
  [(CNWallpaper *)v4 setPosterArchiveData:v5];

  v6 = [(CNWallpaper *)self metadata];
  [(CNWallpaper *)v4 setMetadata:v6];

  [(CNWallpaper *)v4 setContentIsSensitive:[(CNWallpaper *)self contentIsSensitive]];
  v7 = [(CNWallpaper *)self generatedWatchImageData];
  [(CNWallpaper *)v4 setGeneratedWatchImageData:v7];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((v5 = -[CNWallpaper posterArchiveData](self, "posterArchiveData"), v6 = -[CNWallpaper posterArchiveData](v4, "posterArchiveData"), !(v5 | v6)) || [v5 isEqual:v6]))
    {
      v7 = [(CNWallpaper *)self contentIsSensitive];
      v8 = v7 ^ [(CNWallpaper *)v4 contentIsSensitive]^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (id)wallpaperIncludingIMWallpaperMetadata:(id)a3
{
  v21[3] = *MEMORY[0x1E69E9840];
  v20[0] = @"name";
  v4 = a3;
  v5 = [v4 fontName];
  v21[0] = v5;
  v20[1] = @"point-size";
  v6 = MEMORY[0x1E696AD98];
  [v4 fontSize];
  v7 = [v6 numberWithDouble:?];
  v21[1] = v7;
  v20[2] = @"weight";
  v8 = MEMORY[0x1E696AD98];
  [v4 fontWeight];
  v9 = [v8 numberWithDouble:?];
  v21[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];

  v11 = [CNWallpaper alloc];
  v12 = [(CNWallpaper *)self posterArchiveData];
  v13 = [v4 fontColor];
  v14 = [v4 backgroundColor];
  v15 = [v4 type];
  v16 = [v4 isVertical];

  LOBYTE(v19) = [(CNWallpaper *)self contentIsSensitive];
  v17 = [(CNWallpaper *)v11 initWithPosterArchiveData:v12 fontDescription:v10 fontColorDescription:v13 backgroundColorDescription:v14 extensionBundleID:v15 vertical:v16 contentIsSensitive:v19, v20[0]];

  return v17;
}

- (NSDictionary)fontDescription
{
  v2 = [(CNWallpaper *)self metadata];
  v3 = [v2 fontDescription];

  return v3;
}

- (NSDictionary)fontColorDescription
{
  v2 = [(CNWallpaper *)self metadata];
  v3 = [v2 fontColorDescription];

  return v3;
}

- (NSDictionary)backgroundColorDescription
{
  v2 = [(CNWallpaper *)self metadata];
  v3 = [v2 backgroundColorDescription];

  return v3;
}

- (NSString)extensionBundleID
{
  v2 = [(CNWallpaper *)self metadata];
  v3 = [v2 extensionBundleID];

  return v3;
}

- (BOOL)isVertical
{
  v2 = [(CNWallpaper *)self metadata];
  v3 = [v2 isVertical];

  return v3;
}

@end