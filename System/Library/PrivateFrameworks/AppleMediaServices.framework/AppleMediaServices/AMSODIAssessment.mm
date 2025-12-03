@interface AMSODIAssessment
- (AMSODIAssessment)initWithCoder:(id)coder;
- (AMSODIAssessment)initWithStringValue:(id)value;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSODIAssessment

- (AMSODIAssessment)initWithStringValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = AMSODIAssessment;
  v5 = [(AMSODIAssessment *)&v9 init];
  if (v5)
  {
    v6 = [valueCopy copy];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(AMSODIAssessment);
  v6 = [(NSString *)self->_stringValue copyWithZone:zone];
  stringValue = v5->_stringValue;
  v5->_stringValue = v6;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  stringValue = [(AMSODIAssessment *)self stringValue];
  [coderCopy encodeObject:stringValue forKey:@"stringValue"];
}

- (AMSODIAssessment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = AMSODIAssessment;
  v5 = [(AMSODIAssessment *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stringValue"];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;
  }

  return v5;
}

@end