@interface UGCPhotoWithMetadata
- (BOOL)isEqual:(id)a3;
- (GEORPPhotoMetadata)photoMetadata;
- (NSString)identifier;
- (UGCPhotoWithMetadata)initWithImageData:(id)a3 PHAsset:(id)a4 sourceType:(int64_t)a5;
- (UGCPhotoWithMetadata)initWithImageData:(id)a3 date:(id)a4 location:(id)a5 source:(int64_t)a6;
- (UIImage)image;
@end

@implementation UGCPhotoWithMetadata

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = 0;
  if (v4 && (isKindOfClass & 1) != 0)
  {
    v7 = v4;
    v8 = [(UGCPhotoWithMetadata *)self image];
    v9 = [v7 image];
    if ([v8 isEqual:v9])
    {
      v10 = [(UGCPhotoWithMetadata *)self photoMetadata];
      v11 = [v7 photoMetadata];
      v6 = [v10 isEqual:v11];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (UIImage)image
{
  image = self->_image;
  if (!image)
  {
    v4 = [[UIImage alloc] initWithData:self->_rawImageData];
    v5 = self->_image;
    self->_image = v4;

    image = self->_image;
  }

  return image;
}

- (GEORPPhotoMetadata)photoMetadata
{
  photoMetadata = self->_photoMetadata;
  if (!photoMetadata)
  {
    v4 = [GEORPPhotoMetadata alloc];
    v5 = +[NSUUID UUID];
    v6 = [v5 UUIDString];
    v7 = [v4 initWithUUID:v6 location:self->_location];
    v8 = self->_photoMetadata;
    self->_photoMetadata = v7;

    [(GEORPPhotoMetadata *)self->_photoMetadata setSize:[(NSData *)self->_rawImageData length]];
    [(GEORPPhotoMetadata *)self->_photoMetadata setMediaType:self->_mimeType];
    v9 = +[GEOPlatform sharedPlatform];
    LOBYTE(v5) = [v9 isInternalInstall];

    if (v5)
    {
      BOOL = GEOConfigGetBOOL();
      photoMetadata = self->_photoMetadata;
      if (BOOL)
      {
        goto LABEL_7;
      }
    }

    else
    {
      photoMetadata = self->_photoMetadata;
    }

    v11 = [(GEORPPhotoMetadata *)photoMetadata geotag];
    [v11 setTimestamp:0.0];

    v12 = [(GEORPPhotoMetadata *)self->_photoMetadata geotag];
    [v12 setHasTimestamp:0];

    photoMetadata = self->_photoMetadata;
  }

LABEL_7:

  return photoMetadata;
}

- (NSString)identifier
{
  v2 = [(UGCPhotoWithMetadata *)self photoMetadata];
  v3 = [v2 clientImageUuid];

  return v3;
}

- (UGCPhotoWithMetadata)initWithImageData:(id)a3 PHAsset:(id)a4 sourceType:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [v8 creationDate];
  v11 = [v8 location];

  v12 = [(UGCPhotoWithMetadata *)self initWithImageData:v9 date:v10 location:v11 source:a5];
  return v12;
}

- (UGCPhotoWithMetadata)initWithImageData:(id)a3 date:(id)a4 location:(id)a5 source:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v11)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
LABEL_13:
      v22 = 0;
      goto LABEL_9;
    }

    *buf = 0;
    v24 = "Assertion failed: imageData != ((void *)0)";
LABEL_15:
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, v24, buf, 2u);
    goto LABEL_13;
  }

  if (!a6)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v24 = "Assertion failed: sourceType != UGCSourceTypeUnknown";
    goto LABEL_15;
  }

  v25.receiver = self;
  v25.super_class = UGCPhotoWithMetadata;
  v14 = [(UGCPhotoWithMetadata *)&v25 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_rawImageData, a3);
    objc_storeStrong(&v15->_date, a4);
    v15->_sourceType = a6;
    objc_storeStrong(&v15->_location, a5);
    v16 = CGImageSourceCreateWithData(v15->_rawImageData, 0);
    if (v16)
    {
      v17 = v16;
      Type = CGImageSourceGetType(v16);
      if (Type)
      {
        v19 = [UTType typeWithIdentifier:Type];
        v20 = [v19 preferredMIMEType];
        mimeType = v15->_mimeType;
        v15->_mimeType = v20;
      }

      CFRelease(v17);
    }
  }

  self = v15;
  v22 = self;
LABEL_9:

  return v22;
}

@end