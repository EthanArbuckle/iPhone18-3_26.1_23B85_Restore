@interface AKTextFieldAnnotation
- (AKTextFieldAnnotation)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKTextFieldAnnotation

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = AKTextFieldAnnotation;
  [(AKRectangularShapeAnnotation *)&v7 encodeWithCoder:coderCopy];
  fieldName = [(AKTextFieldAnnotation *)self fieldName];

  if (fieldName)
  {
    fieldName2 = [(AKTextFieldAnnotation *)self fieldName];
    [coderCopy encodeObject:fieldName2 forKey:@"fieldName"];
  }
}

- (AKTextFieldAnnotation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = AKTextFieldAnnotation;
  v5 = [(AKRectangularShapeAnnotation *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fieldName"];
    [(AKTextFieldAnnotation *)v5 setFieldName:v6];
  }

  return v5;
}

@end