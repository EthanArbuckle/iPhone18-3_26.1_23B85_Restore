@interface RAPPhotoWithMetadata
- (RAPPhotoWithMetadata)initWithCoder:(id)a3;
- (RAPPhotoWithMetadata)initWithRAPPhoto:(id)a3;
- (RAPPhotoWithMetadata)initWithRAPPhoto:(id)a3 photoType:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RAPPhotoWithMetadata

- (void)encodeWithCoder:(id)a3
{
  rawImageData = self->_rawImageData;
  v5 = a3;
  v6 = NSStringFromSelector("rawImageData");
  [v5 encodeObject:rawImageData forKey:v6];

  photoMetadata = self->_photoMetadata;
  v8 = NSStringFromSelector("photoMetadata");
  [v5 encodeObject:photoMetadata forKey:v8];

  v10 = [NSNumber numberWithInteger:self->_photoType];
  v9 = NSStringFromSelector("photoType");
  [v5 encodeObject:v10 forKey:v9];
}

- (RAPPhotoWithMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = RAPPhotoWithMetadata;
  v5 = [(RAPPhotoWithMetadata *)&v18 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("rawImageData");
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    rawImageData = v5->_rawImageData;
    v5->_rawImageData = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector("photoMetadata");
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    photoMetadata = v5->_photoMetadata;
    v5->_photoMetadata = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector("photoType");
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];

    v5->_photoType = [v16 integerValue];
  }

  return v5;
}

- (RAPPhotoWithMetadata)initWithRAPPhoto:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = RAPPhotoWithMetadata;
  v5 = [(RAPPhotoWithMetadata *)&v16 init];
  if (v5)
  {
    v6 = [v4 photo];
    v7 = UIImageJPEGRepresentation(v6, 0.400000006);
    rawImageData = v5->_rawImageData;
    v5->_rawImageData = v7;

    v9 = [GEORPPhotoMetadata alloc];
    v10 = +[NSUUID UUID];
    v11 = [v10 UUIDString];
    v12 = [v4 location];
    v13 = [v9 initWithUUID:v11 location:v12];
    photoMetadata = v5->_photoMetadata;
    v5->_photoMetadata = v13;
  }

  return v5;
}

- (RAPPhotoWithMetadata)initWithRAPPhoto:(id)a3 photoType:(int64_t)a4
{
  result = [(RAPPhotoWithMetadata *)self initWithRAPPhoto:a3];
  if (result)
  {
    result->_photoType = a4;
  }

  return result;
}

@end