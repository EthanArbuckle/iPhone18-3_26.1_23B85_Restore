@interface RAPPhotoWithMetadata
- (RAPPhotoWithMetadata)initWithCoder:(id)coder;
- (RAPPhotoWithMetadata)initWithRAPPhoto:(id)photo;
- (RAPPhotoWithMetadata)initWithRAPPhoto:(id)photo photoType:(int64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RAPPhotoWithMetadata

- (void)encodeWithCoder:(id)coder
{
  rawImageData = self->_rawImageData;
  coderCopy = coder;
  v6 = NSStringFromSelector("rawImageData");
  [coderCopy encodeObject:rawImageData forKey:v6];

  photoMetadata = self->_photoMetadata;
  v8 = NSStringFromSelector("photoMetadata");
  [coderCopy encodeObject:photoMetadata forKey:v8];

  v10 = [NSNumber numberWithInteger:self->_photoType];
  v9 = NSStringFromSelector("photoType");
  [coderCopy encodeObject:v10 forKey:v9];
}

- (RAPPhotoWithMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = RAPPhotoWithMetadata;
  v5 = [(RAPPhotoWithMetadata *)&v18 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("rawImageData");
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    rawImageData = v5->_rawImageData;
    v5->_rawImageData = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector("photoMetadata");
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    photoMetadata = v5->_photoMetadata;
    v5->_photoMetadata = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector("photoType");
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];

    v5->_photoType = [v16 integerValue];
  }

  return v5;
}

- (RAPPhotoWithMetadata)initWithRAPPhoto:(id)photo
{
  photoCopy = photo;
  v16.receiver = self;
  v16.super_class = RAPPhotoWithMetadata;
  v5 = [(RAPPhotoWithMetadata *)&v16 init];
  if (v5)
  {
    photo = [photoCopy photo];
    v7 = UIImageJPEGRepresentation(photo, 0.400000006);
    rawImageData = v5->_rawImageData;
    v5->_rawImageData = v7;

    v9 = [GEORPPhotoMetadata alloc];
    v10 = +[NSUUID UUID];
    uUIDString = [v10 UUIDString];
    location = [photoCopy location];
    v13 = [v9 initWithUUID:uUIDString location:location];
    photoMetadata = v5->_photoMetadata;
    v5->_photoMetadata = v13;
  }

  return v5;
}

- (RAPPhotoWithMetadata)initWithRAPPhoto:(id)photo photoType:(int64_t)type
{
  result = [(RAPPhotoWithMetadata *)self initWithRAPPhoto:photo];
  if (result)
  {
    result->_photoType = type;
  }

  return result;
}

@end