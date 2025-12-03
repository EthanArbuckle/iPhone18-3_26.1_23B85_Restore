@interface AVAnnotationPKDrawingRepresentation
- (AVAnnotationPKDrawingRepresentation)initWithDrawingData:(id)data;
- (BOOL)isEqual:(id)equal;
- (id)_initWithPropertyList:(id)list binaryData:(id)data;
- (id)_propertyListAndBinaryData:(id *)data;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation AVAnnotationPKDrawingRepresentation

- (AVAnnotationPKDrawingRepresentation)initWithDrawingData:(id)data
{
  v6.receiver = self;
  v6.super_class = AVAnnotationPKDrawingRepresentation;
  v4 = [(AVAnnotationRepresentation *)&v6 _initWithRepresentationType:@"AVAnnotationRepresentationTypePKDrawing"];
  if (v4)
  {
    v4->_drawingData = [data copy];
  }

  return v4;
}

- (id)_initWithPropertyList:(id)list binaryData:(id)data
{
  v8.receiver = self;
  v8.super_class = AVAnnotationPKDrawingRepresentation;
  v5 = [(AVAnnotationRepresentation *)&v8 _initWithPropertyList:list binaryData:?];
  v6 = v5;
  if (data && v5)
  {
    v5[4] = [data copy];
  }

  else
  {

    return 0;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAnnotationPKDrawingRepresentation;
  [(AVAnnotationRepresentation *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  v7.receiver = self;
  v7.super_class = AVAnnotationPKDrawingRepresentation;
  v5 = [(AVAnnotationRepresentation *)&v7 isEqual:?];
  if (equal != self)
  {
    LOBYTE(v5) = equal && (objc_opt_class(), (objc_opt_isKindOfClass() & v5 & 1) != 0) && -[NSData isEqualToData:](-[AVAnnotationPKDrawingRepresentation drawingData](self, "drawingData"), "isEqualToData:", [equal drawingData]);
  }

  return v5;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = AVAnnotationPKDrawingRepresentation;
  v3 = [(AVAnnotationRepresentation *)&v5 hash];
  return [(NSData *)[(AVAnnotationPKDrawingRepresentation *)self drawingData] hash]^ v3;
}

- (id)_propertyListAndBinaryData:(id *)data
{
  v7.receiver = self;
  v7.super_class = AVAnnotationPKDrawingRepresentation;
  v5 = [(AVAnnotationRepresentation *)&v7 _propertyListAndBinaryData:?];
  if (data)
  {
    *data = [(AVAnnotationPKDrawingRepresentation *)self drawingData];
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