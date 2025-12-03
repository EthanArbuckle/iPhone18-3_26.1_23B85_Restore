@interface CNWallpaper
+ (id)log;
- (BOOL)isEqual:(id)equal;
- (BOOL)isVertical;
- (CNWallpaper)initWithCoder:(id)coder;
- (CNWallpaper)initWithDataRepresentation:(id)representation;
- (CNWallpaper)initWithDataRepresentationForPersistence:(id)persistence;
- (CNWallpaper)initWithImageData:(id)data posterArchiveData:(id)archiveData;
- (CNWallpaper)initWithImageData:(id)data type:(id)type;
- (CNWallpaper)initWithPosterArchiveData:(id)data;
- (CNWallpaper)initWithPosterArchiveData:(id)data contentIsSensitive:(BOOL)sensitive;
- (CNWallpaper)initWithPosterArchiveData:(id)data fontDescription:(id)description fontColorDescription:(id)colorDescription backgroundColorDescription:(id)backgroundColorDescription extensionBundleID:(id)d vertical:(BOOL)vertical contentIsSensitive:(BOOL)sensitive;
- (CNWallpaper)initWithPosterArchiveData:(id)data metadata:(id)metadata contentIsSensitive:(BOOL)sensitive;
- (NSData)dataRepresentation;
- (NSDictionary)backgroundColorDescription;
- (NSDictionary)fontColorDescription;
- (NSDictionary)fontDescription;
- (NSString)extensionBundleID;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataRepresentationForPersistence;
- (id)generateSnapshotImageDataForWatch;
- (id)wallpaperIncludingIMWallpaperMetadata:(id)metadata;
- (void)encodeWithCoder:(id)coder;
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

- (CNWallpaper)initWithImageData:(id)data type:(id)type
{
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = CNWallpaper;
  v7 = [(CNWallpaper *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_imageData, data);
    v9 = objc_alloc_init(MEMORY[0x1E695DEF0]);
    posterArchiveData = v8->_posterArchiveData;
    v8->_posterArchiveData = v9;

    v11 = v8;
  }

  return v8;
}

- (CNWallpaper)initWithImageData:(id)data posterArchiveData:(id)archiveData
{
  dataCopy = data;
  archiveDataCopy = archiveData;
  v13.receiver = self;
  v13.super_class = CNWallpaper;
  v9 = [(CNWallpaper *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_imageData, data);
    objc_storeStrong(&v10->_posterArchiveData, archiveData);
    v11 = v10;
  }

  return v10;
}

- (CNWallpaper)initWithPosterArchiveData:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = CNWallpaper;
  v6 = [(CNWallpaper *)&v11 init];
  v7 = v6;
  if (v6)
  {
    imageData = v6->_imageData;
    v6->_imageData = 0;

    objc_storeStrong(&v7->_posterArchiveData, data);
    v9 = v7;
  }

  return v7;
}

- (CNWallpaper)initWithDataRepresentation:(id)representation
{
  v18 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  if (representationCopy)
  {
    v13 = 0;
    v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:representationCopy error:&v13];
    v6 = v13;
    v7 = [objc_opt_class() log];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v8)
      {
        v9 = [representationCopy length];
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
        v11 = [representationCopy length];
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

- (CNWallpaper)initWithDataRepresentationForPersistence:(id)persistence
{
  v17 = *MEMORY[0x1E69E9840];
  persistenceCopy = persistence;
  if (persistenceCopy)
  {
    v14 = 0;
    v5 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:persistenceCopy error:&v14];
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
          v9 = [persistenceCopy length];
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
        v12 = [persistenceCopy length];
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

- (CNWallpaper)initWithPosterArchiveData:(id)data contentIsSensitive:(BOOL)sensitive
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = CNWallpaper;
  v8 = [(CNWallpaper *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_posterArchiveData, data);
    v9->_contentIsSensitive = sensitive;
    v10 = v9;
  }

  return v9;
}

- (CNWallpaper)initWithPosterArchiveData:(id)data metadata:(id)metadata contentIsSensitive:(BOOL)sensitive
{
  sensitiveCopy = sensitive;
  metadataCopy = metadata;
  dataCopy = data;
  if (metadataCopy)
  {
    fontDescription = [metadataCopy fontDescription];
    fontColorDescription = [metadataCopy fontColorDescription];
    backgroundColorDescription = [metadataCopy backgroundColorDescription];
    extensionBundleID = [metadataCopy extensionBundleID];
    LOBYTE(v18) = sensitiveCopy;
    v14 = -[CNWallpaper initWithPosterArchiveData:fontDescription:fontColorDescription:backgroundColorDescription:extensionBundleID:vertical:contentIsSensitive:](self, "initWithPosterArchiveData:fontDescription:fontColorDescription:backgroundColorDescription:extensionBundleID:vertical:contentIsSensitive:", dataCopy, fontDescription, fontColorDescription, backgroundColorDescription, extensionBundleID, [metadataCopy isVertical], v18);

    v15 = v14;
  }

  else
  {
    v16 = [(CNWallpaper *)self initWithPosterArchiveData:dataCopy contentIsSensitive:sensitiveCopy];

    v15 = v16;
  }

  return v15;
}

- (CNWallpaper)initWithPosterArchiveData:(id)data fontDescription:(id)description fontColorDescription:(id)colorDescription backgroundColorDescription:(id)backgroundColorDescription extensionBundleID:(id)d vertical:(BOOL)vertical contentIsSensitive:(BOOL)sensitive
{
  verticalCopy = vertical;
  dataCopy = data;
  descriptionCopy = description;
  colorDescriptionCopy = colorDescription;
  backgroundColorDescriptionCopy = backgroundColorDescription;
  dCopy = d;
  v27.receiver = self;
  v27.super_class = CNWallpaper;
  v21 = [(CNWallpaper *)&v27 init];
  if (v21)
  {
    if (!(*(*MEMORY[0x1E6996540] + 16))())
    {
      objc_storeStrong(&v21->_posterArchiveData, data);
      v24 = [[CNWallpaperMetadata alloc] initWithFontDescription:descriptionCopy fontColorDescription:colorDescriptionCopy backgroundColorDescription:backgroundColorDescriptionCopy extensionBundleID:dCopy vertical:verticalCopy];
      metadata = v21->_metadata;
      v21->_metadata = v24;

      v21->_contentIsSensitive = sensitive;
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
  encodedData = [v3 encodedData];

  return encodedData;
}

- (id)generateSnapshotImageDataForWatch
{
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [CNWallpaper generateSnapshotImageDataForWatch];
  }

  v4 = *MEMORY[0x1E6996540];
  posterArchiveData = [(CNWallpaper *)self posterArchiveData];
  LODWORD(v4) = (*(v4 + 16))(v4, posterArchiveData);

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
    snapshotImageDataForWatch = [(CNWallpaper *)self snapshotImageDataForWatch];
    goto LABEL_10;
  }

  snapshotImageDataForWatch = 0;
LABEL_10:

  return snapshotImageDataForWatch;
}

- (CNWallpaper)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy decodeIntForKey:@"version"] >= 5)
  {
    v12 = [objc_opt_class() log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CNWallpaper initWithDataRepresentationForPersistence:];
    }

    selfCopy = 0;
  }

  else
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_posterArchiveData"];
    v6 = [v5 copy];
    posterArchiveData = self->_posterArchiveData;
    self->_posterArchiveData = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_metadata"];
    v9 = [v8 copy];
    metadata = self->_metadata;
    self->_metadata = v9;

    self->_contentIsSensitive = [coderCopy decodeBoolForKey:@"_contentIsSensitive"];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:4 forKey:@"version"];
  [coderCopy encodeObject:self->_posterArchiveData forKey:@"_posterArchiveData"];
  [coderCopy encodeObject:self->_metadata forKey:@"_metadata"];
  [coderCopy encodeBool:self->_contentIsSensitive forKey:@"_contentIsSensitive"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CNWallpaper);
  posterArchiveData = [(CNWallpaper *)self posterArchiveData];
  [(CNWallpaper *)v4 setPosterArchiveData:posterArchiveData];

  metadata = [(CNWallpaper *)self metadata];
  [(CNWallpaper *)v4 setMetadata:metadata];

  [(CNWallpaper *)v4 setContentIsSensitive:[(CNWallpaper *)self contentIsSensitive]];
  generatedWatchImageData = [(CNWallpaper *)self generatedWatchImageData];
  [(CNWallpaper *)v4 setGeneratedWatchImageData:generatedWatchImageData];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((v5 = -[CNWallpaper posterArchiveData](self, "posterArchiveData"), v6 = -[CNWallpaper posterArchiveData](equalCopy, "posterArchiveData"), !(v5 | v6)) || [v5 isEqual:v6]))
    {
      contentIsSensitive = [(CNWallpaper *)self contentIsSensitive];
      v8 = contentIsSensitive ^ [(CNWallpaper *)equalCopy contentIsSensitive]^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (id)wallpaperIncludingIMWallpaperMetadata:(id)metadata
{
  v21[3] = *MEMORY[0x1E69E9840];
  v20[0] = @"name";
  metadataCopy = metadata;
  fontName = [metadataCopy fontName];
  v21[0] = fontName;
  v20[1] = @"point-size";
  v6 = MEMORY[0x1E696AD98];
  [metadataCopy fontSize];
  v7 = [v6 numberWithDouble:?];
  v21[1] = v7;
  v20[2] = @"weight";
  v8 = MEMORY[0x1E696AD98];
  [metadataCopy fontWeight];
  v9 = [v8 numberWithDouble:?];
  v21[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];

  v11 = [CNWallpaper alloc];
  posterArchiveData = [(CNWallpaper *)self posterArchiveData];
  fontColor = [metadataCopy fontColor];
  backgroundColor = [metadataCopy backgroundColor];
  type = [metadataCopy type];
  isVertical = [metadataCopy isVertical];

  LOBYTE(v19) = [(CNWallpaper *)self contentIsSensitive];
  v17 = [(CNWallpaper *)v11 initWithPosterArchiveData:posterArchiveData fontDescription:v10 fontColorDescription:fontColor backgroundColorDescription:backgroundColor extensionBundleID:type vertical:isVertical contentIsSensitive:v19, v20[0]];

  return v17;
}

- (NSDictionary)fontDescription
{
  metadata = [(CNWallpaper *)self metadata];
  fontDescription = [metadata fontDescription];

  return fontDescription;
}

- (NSDictionary)fontColorDescription
{
  metadata = [(CNWallpaper *)self metadata];
  fontColorDescription = [metadata fontColorDescription];

  return fontColorDescription;
}

- (NSDictionary)backgroundColorDescription
{
  metadata = [(CNWallpaper *)self metadata];
  backgroundColorDescription = [metadata backgroundColorDescription];

  return backgroundColorDescription;
}

- (NSString)extensionBundleID
{
  metadata = [(CNWallpaper *)self metadata];
  extensionBundleID = [metadata extensionBundleID];

  return extensionBundleID;
}

- (BOOL)isVertical
{
  metadata = [(CNWallpaper *)self metadata];
  isVertical = [metadata isVertical];

  return isVertical;
}

@end