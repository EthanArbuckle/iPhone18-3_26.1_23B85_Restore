@interface AMSODIAssessment
- (AMSODIAssessment)initWithCoder:(id)a3;
- (AMSODIAssessment)initWithStringValue:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSODIAssessment

- (AMSODIAssessment)initWithStringValue:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AMSODIAssessment;
  v5 = [(AMSODIAssessment *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(AMSODIAssessment);
  v6 = [(NSString *)self->_stringValue copyWithZone:a3];
  stringValue = v5->_stringValue;
  v5->_stringValue = v6;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AMSODIAssessment *)self stringValue];
  [v4 encodeObject:v5 forKey:@"stringValue"];
}

- (AMSODIAssessment)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AMSODIAssessment;
  v5 = [(AMSODIAssessment *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stringValue"];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;
  }

  return v5;
}

@end