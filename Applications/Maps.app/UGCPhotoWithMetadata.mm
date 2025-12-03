@interface UGCPhotoWithMetadata
- (BOOL)isEqual:(id)equal;
- (GEORPPhotoMetadata)photoMetadata;
- (NSString)identifier;
- (UGCPhotoWithMetadata)initWithImageData:(id)data PHAsset:(id)asset sourceType:(int64_t)type;
- (UGCPhotoWithMetadata)initWithImageData:(id)data date:(id)date location:(id)location source:(int64_t)source;
- (UIImage)image;
@end

@implementation UGCPhotoWithMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = 0;
  if (equalCopy && (isKindOfClass & 1) != 0)
  {
    v7 = equalCopy;
    image = [(UGCPhotoWithMetadata *)self image];
    image2 = [v7 image];
    if ([image isEqual:image2])
    {
      photoMetadata = [(UGCPhotoWithMetadata *)self photoMetadata];
      photoMetadata2 = [v7 photoMetadata];
      v6 = [photoMetadata isEqual:photoMetadata2];
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
    uUIDString = [v5 UUIDString];
    v7 = [v4 initWithUUID:uUIDString location:self->_location];
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

    geotag = [(GEORPPhotoMetadata *)photoMetadata geotag];
    [geotag setTimestamp:0.0];

    geotag2 = [(GEORPPhotoMetadata *)self->_photoMetadata geotag];
    [geotag2 setHasTimestamp:0];

    photoMetadata = self->_photoMetadata;
  }

LABEL_7:

  return photoMetadata;
}

- (NSString)identifier
{
  photoMetadata = [(UGCPhotoWithMetadata *)self photoMetadata];
  clientImageUuid = [photoMetadata clientImageUuid];

  return clientImageUuid;
}

- (UGCPhotoWithMetadata)initWithImageData:(id)data PHAsset:(id)asset sourceType:(int64_t)type
{
  assetCopy = asset;
  dataCopy = data;
  creationDate = [assetCopy creationDate];
  location = [assetCopy location];

  v12 = [(UGCPhotoWithMetadata *)self initWithImageData:dataCopy date:creationDate location:location source:type];
  return v12;
}

- (UGCPhotoWithMetadata)initWithImageData:(id)data date:(id)date location:(id)location source:(int64_t)source
{
  dataCopy = data;
  dateCopy = date;
  locationCopy = location;
  if (!dataCopy)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
LABEL_13:
      selfCopy = 0;
      goto LABEL_9;
    }

    *buf = 0;
    v24 = "Assertion failed: imageData != ((void *)0)";
LABEL_15:
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, v24, buf, 2u);
    goto LABEL_13;
  }

  if (!source)
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
    objc_storeStrong(&v14->_rawImageData, data);
    objc_storeStrong(&v15->_date, date);
    v15->_sourceType = source;
    objc_storeStrong(&v15->_location, location);
    v16 = CGImageSourceCreateWithData(v15->_rawImageData, 0);
    if (v16)
    {
      v17 = v16;
      Type = CGImageSourceGetType(v16);
      if (Type)
      {
        v19 = [UTType typeWithIdentifier:Type];
        preferredMIMEType = [v19 preferredMIMEType];
        mimeType = v15->_mimeType;
        v15->_mimeType = preferredMIMEType;
      }

      CFRelease(v17);
    }
  }

  self = v15;
  selfCopy = self;
LABEL_9:

  return selfCopy;
}

@end