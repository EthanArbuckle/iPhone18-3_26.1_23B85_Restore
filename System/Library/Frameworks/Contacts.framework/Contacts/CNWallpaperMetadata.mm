@interface CNWallpaperMetadata
+ (id)log;
- (BOOL)isEqual:(id)equal;
- (CNWallpaperMetadata)initWithCoder:(id)coder;
- (CNWallpaperMetadata)initWithDataRepresentation:(id)representation;
- (CNWallpaperMetadata)initWithFontDescription:(id)description fontColorDescription:(id)colorDescription backgroundColorDescription:(id)backgroundColorDescription extensionBundleID:(id)d vertical:(BOOL)vertical;
- (NSData)dataRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNWallpaperMetadata

+ (id)log
{
  if (log_cn_once_token_0_2 != -1)
  {
    +[CNWallpaperMetadata log];
  }

  v3 = log_cn_once_object_0_2;

  return v3;
}

uint64_t __26__CNWallpaperMetadata_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNWallpaperMetadata");
  v1 = log_cn_once_object_0_2;
  log_cn_once_object_0_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNWallpaperMetadata)initWithFontDescription:(id)description fontColorDescription:(id)colorDescription backgroundColorDescription:(id)backgroundColorDescription extensionBundleID:(id)d vertical:(BOOL)vertical
{
  descriptionCopy = description;
  colorDescriptionCopy = colorDescription;
  backgroundColorDescriptionCopy = backgroundColorDescription;
  dCopy = d;
  v21.receiver = self;
  v21.super_class = CNWallpaperMetadata;
  v17 = [(CNWallpaperMetadata *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_fontDescription, description);
    objc_storeStrong(&v18->_fontColorDescription, colorDescription);
    objc_storeStrong(&v18->_backgroundColorDescription, backgroundColorDescription);
    objc_storeStrong(&v18->_extensionBundleID, d);
    v18->_vertical = vertical;
    v19 = v18;
  }

  return v18;
}

- (CNWallpaperMetadata)initWithDataRepresentation:(id)representation
{
  if (representation)
  {
    v4 = MEMORY[0x1E696ACD0];
    representationCopy = representation;
    v17 = 0;
    v6 = [v4 unarchivedObjectOfClass:objc_opt_class() fromData:representationCopy error:&v17];

    v7 = v17;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = [objc_opt_class() log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(CNWallpaperMetadata *)v7 initWithDataRepresentation:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSData)dataRepresentation
{
  v13 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v13];
  v3 = v13;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [objc_opt_class() log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CNWallpaperMetadata *)v3 dataRepresentation:v5];
    }
  }

  return v2;
}

- (CNWallpaperMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntForKey:@"version"];
  if (v5 >= 3)
  {
    v31 = v5;
    v32 = [objc_opt_class() log];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [(CNWallpaperMetadata *)v31 initWithCoder:v32, v33, v34, v35, v36, v37, v38];
    }

    selfCopy = 0;
  }

  else
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"_fontDescription"];
    v11 = [v10 copy];
    fontDescription = self->_fontDescription;
    self->_fontDescription = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v13 setWithObjects:{v14, v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"_fontColorDescription"];
    v18 = [v17 copy];
    fontColorDescription = self->_fontColorDescription;
    self->_fontColorDescription = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = [v20 setWithObjects:{v21, v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"_backgroundColorDescription"];
    v25 = [v24 copy];
    backgroundColorDescription = self->_backgroundColorDescription;
    self->_backgroundColorDescription = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_extensionBundleID"];
    v28 = [v27 copy];
    extensionBundleID = self->_extensionBundleID;
    self->_extensionBundleID = v28;

    self->_vertical = [coderCopy decodeBoolForKey:@"_vertical"];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:2 forKey:@"version"];
  [coderCopy encodeObject:self->_fontDescription forKey:@"_fontDescription"];
  [coderCopy encodeObject:self->_fontColorDescription forKey:@"_fontColorDescription"];
  [coderCopy encodeObject:self->_backgroundColorDescription forKey:@"_backgroundColorDescription"];
  [coderCopy encodeObject:self->_extensionBundleID forKey:@"_extensionBundleID"];
  [coderCopy encodeBool:self->_vertical forKey:@"_vertical"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CNWallpaperMetadata);
  fontDescription = [(CNWallpaperMetadata *)self fontDescription];
  [(CNWallpaperMetadata *)v4 setFontDescription:fontDescription];

  fontColorDescription = [(CNWallpaperMetadata *)self fontColorDescription];
  [(CNWallpaperMetadata *)v4 setFontColorDescription:fontColorDescription];

  backgroundColorDescription = [(CNWallpaperMetadata *)self backgroundColorDescription];
  [(CNWallpaperMetadata *)v4 setBackgroundColorDescription:backgroundColorDescription];

  extensionBundleID = [(CNWallpaperMetadata *)self extensionBundleID];
  [(CNWallpaperMetadata *)v4 setExtensionBundleID:extensionBundleID];

  [(CNWallpaperMetadata *)v4 setVertical:[(CNWallpaperMetadata *)self isVertical]];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((v5 = -[CNWallpaperMetadata fontDescription](self, "fontDescription"), v6 = -[CNWallpaperMetadata fontDescription](equalCopy, "fontDescription"), !(v5 | v6)) || [v5 isEqual:v6]) && ((v7 = -[CNWallpaperMetadata fontColorDescription](self, "fontColorDescription"), v8 = -[CNWallpaperMetadata fontColorDescription](equalCopy, "fontColorDescription"), !(v7 | v8)) || objc_msgSend(v7, "isEqual:", v8)) && ((v9 = -[CNWallpaperMetadata backgroundColorDescription](self, "backgroundColorDescription"), v10 = -[CNWallpaperMetadata backgroundColorDescription](equalCopy, "backgroundColorDescription"), !(v9 | v10)) || objc_msgSend(v9, "isEqual:", v10)) && ((v11 = -[CNWallpaperMetadata extensionBundleID](self, "extensionBundleID"), v12 = -[CNWallpaperMetadata extensionBundleID](equalCopy, "extensionBundleID"), !(v11 | v12)) || objc_msgSend(v11, "isEqual:", v12)))
    {
      isVertical = [(CNWallpaperMetadata *)self isVertical];
      v14 = isVertical ^ [(CNWallpaperMetadata *)equalCopy isVertical]^ 1;
    }

    else
    {
      LOBYTE(v14) = 0;
    }
  }

  return v14;
}

@end