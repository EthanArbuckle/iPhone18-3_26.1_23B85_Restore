@interface AKTextFieldAnnotation
- (AKTextFieldAnnotation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKTextFieldAnnotation

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = AKTextFieldAnnotation;
  [(AKRectangularShapeAnnotation *)&v7 encodeWithCoder:v4];
  v5 = [(AKTextFieldAnnotation *)self fieldName];

  if (v5)
  {
    v6 = [(AKTextFieldAnnotation *)self fieldName];
    [v4 encodeObject:v6 forKey:@"fieldName"];
  }
}

- (AKTextFieldAnnotation)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AKTextFieldAnnotation;
  v5 = [(AKRectangularShapeAnnotation *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fieldName"];
    [(AKTextFieldAnnotation *)v5 setFieldName:v6];
  }

  return v5;
}

@end