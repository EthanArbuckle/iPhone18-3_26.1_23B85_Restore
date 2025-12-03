@interface AVAnnotationImageRepresentation
- (AVAnnotationImageRepresentation)initWithImageData:(id)data fileType:(id)type;
- (BOOL)isEqual:(id)equal;
- (id)_initWithPropertyList:(id)list binaryData:(id)data;
- (id)_propertyListAndBinaryData:(id *)data;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation AVAnnotationImageRepresentation

- (AVAnnotationImageRepresentation)initWithImageData:(id)data fileType:(id)type
{
  v8.receiver = self;
  v8.super_class = AVAnnotationImageRepresentation;
  v6 = [(AVAnnotationRepresentation *)&v8 _initWithRepresentationType:@"AVAnnotationRepresentationTypeImage"];
  if (v6)
  {
    v6->_imageData = [data copy];
    v6->_fileType = [type copy];
  }

  return v6;
}

- (id)_initWithPropertyList:(id)list binaryData:(id)data
{
  v10.receiver = self;
  v10.super_class = AVAnnotationImageRepresentation;
  v6 = [AVAnnotationRepresentation _initWithPropertyList:sel__initWithPropertyList_binaryData_ binaryData:?];
  v7 = v6;
  if (data && v6 && (v6[4] = [data copy], v8 = objc_msgSend(list, "objectForKey:", @"AVAnnotationRepresentationArchiveKeyFileType"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7[5] = [v8 copy];
  }

  else
  {

    return 0;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAnnotationImageRepresentation;
  [(AVAnnotationRepresentation *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  v7.receiver = self;
  v7.super_class = AVAnnotationImageRepresentation;
  v5 = [(AVAnnotationRepresentation *)&v7 isEqual:?];
  if (equal != self)
  {
    LOBYTE(v5) = equal && (objc_opt_class(), (objc_opt_isKindOfClass() & v5 & 1) != 0) && -[NSData isEqualToData:](-[AVAnnotationImageRepresentation imageData](self, "imageData"), "isEqualToData:", [equal imageData]) && -[NSString isEqualToString:](-[AVAnnotationImageRepresentation fileType](self, "fileType"), "isEqualToString:", objc_msgSend(equal, "fileType"));
  }

  return v5;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = AVAnnotationImageRepresentation;
  v3 = [(AVAnnotationRepresentation *)&v6 hash];
  v4 = [(NSData *)[(AVAnnotationImageRepresentation *)self imageData] hash];
  return v4 ^ [(NSString *)[(AVAnnotationImageRepresentation *)self fileType] hash]^ v3;
}

- (id)_propertyListAndBinaryData:(id *)data
{
  v7.receiver = self;
  v7.super_class = AVAnnotationImageRepresentation;
  v5 = [(AVAnnotationRepresentation *)&v7 _propertyListAndBinaryData:?];
  [v5 setObject:-[AVAnnotationImageRepresentation fileType](self forKey:{"fileType"), @"AVAnnotationRepresentationArchiveKeyFileType"}];
  if (data)
  {
    *data = [(AVAnnotationImageRepresentation *)self imageData];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p>", NSStringFromClass(v4), self];
}

@end