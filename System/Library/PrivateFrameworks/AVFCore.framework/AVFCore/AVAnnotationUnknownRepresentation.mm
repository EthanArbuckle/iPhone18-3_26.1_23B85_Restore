@interface AVAnnotationUnknownRepresentation
- (BOOL)isEqual:(id)equal;
- (id)_initWithPropertyList:(id)list binaryData:(id)data;
- (id)_propertyListAndBinaryData:(id *)data;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation AVAnnotationUnknownRepresentation

- (id)_initWithPropertyList:(id)list binaryData:(id)data
{
  v8.receiver = self;
  v8.super_class = AVAnnotationUnknownRepresentation;
  v6 = [AVAnnotationRepresentation _initWithPropertyList:sel__initWithPropertyList_binaryData_ binaryData:?];
  if (v6)
  {
    v6[4] = [list copy];
    v6[5] = [data copy];
    [v6 _setRepresentationType:@"AVAnnotationRepresentationTypeUnknown"];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAnnotationUnknownRepresentation;
  [(AVAnnotationRepresentation *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  v9.receiver = self;
  v9.super_class = AVAnnotationUnknownRepresentation;
  v5 = [(AVAnnotationRepresentation *)&v9 isEqual:?];
  if (equal != self)
  {
    if (!equal)
    {
      goto LABEL_7;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    v8 = 0;
    v6 = [equal _propertyListAndBinaryData:&v8];
    if (v5)
    {
      if ([(NSDictionary *)self->_properties isEqualToDictionary:v6])
      {
        LOBYTE(v5) = [(NSData *)self->_binaryData isEqualToData:v8];
        return v5;
      }

LABEL_7:
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = AVAnnotationUnknownRepresentation;
  v3 = [(AVAnnotationRepresentation *)&v6 hash];
  v4 = [(NSDictionary *)self->_properties hash]^ v3;
  return v4 ^ [(NSData *)self->_binaryData hash];
}

- (id)_propertyListAndBinaryData:(id *)data
{
  if (data)
  {
    *data = self->_binaryData;
  }

  v3 = [(NSDictionary *)self->_properties mutableCopy];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p>", NSStringFromClass(v4), self];
}

@end