@interface AVAnnotationSVGRepresentation
- (AVAnnotationSVGRepresentation)initWithSVG:(id)g;
- (BOOL)isEqual:(id)equal;
- (id)_initWithPropertyList:(id)list binaryData:(id)data;
- (id)_propertyListAndBinaryData:(id *)data;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation AVAnnotationSVGRepresentation

- (AVAnnotationSVGRepresentation)initWithSVG:(id)g
{
  v6.receiver = self;
  v6.super_class = AVAnnotationSVGRepresentation;
  v4 = [(AVAnnotationRepresentation *)&v6 _initWithRepresentationType:@"AVAnnotationRepresentationTypeSVG"];
  if (v4)
  {
    v4->_svg = [g copy];
  }

  return v4;
}

- (id)_initWithPropertyList:(id)list binaryData:(id)data
{
  v8.receiver = self;
  v8.super_class = AVAnnotationSVGRepresentation;
  v5 = [(AVAnnotationRepresentation *)&v8 _initWithPropertyList:list binaryData:data];
  if (v5 && (v6 = [list objectForKey:@"AVAnnotationRepresentationArchiveKeySVG"], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5[4] = [v6 copy];
  }

  else
  {

    return 0;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAnnotationSVGRepresentation;
  [(AVAnnotationRepresentation *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  v7.receiver = self;
  v7.super_class = AVAnnotationSVGRepresentation;
  v5 = [(AVAnnotationRepresentation *)&v7 isEqual:?];
  if (equal != self)
  {
    LOBYTE(v5) = equal && (objc_opt_class(), (objc_opt_isKindOfClass() & v5 & 1) != 0) && -[NSString isEqualToString:](-[AVAnnotationSVGRepresentation svg](self, "svg"), "isEqualToString:", [equal svg]);
  }

  return v5;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = AVAnnotationSVGRepresentation;
  v3 = [(AVAnnotationRepresentation *)&v5 hash];
  return [(NSString *)[(AVAnnotationSVGRepresentation *)self svg] hash]^ v3;
}

- (id)_propertyListAndBinaryData:(id *)data
{
  v7.receiver = self;
  v7.super_class = AVAnnotationSVGRepresentation;
  v5 = [(AVAnnotationRepresentation *)&v7 _propertyListAndBinaryData:?];
  [v5 setObject:-[AVAnnotationSVGRepresentation svg](self forKey:{"svg"), @"AVAnnotationRepresentationArchiveKeySVG"}];
  if (data)
  {
    *data = [MEMORY[0x1E695DEF0] data];
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