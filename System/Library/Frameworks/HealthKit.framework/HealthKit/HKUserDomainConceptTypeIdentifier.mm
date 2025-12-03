@interface HKUserDomainConceptTypeIdentifier
+ (id)baseUserDomainConceptIdentifier;
+ (id)listUserDomainConceptIdentifier;
+ (id)medicalUserDomainConceptIdentifier;
- (BOOL)isEqual:(id)equal;
- (HKUserDomainConceptTypeIdentifier)init;
- (HKUserDomainConceptTypeIdentifier)initWithCode:(int64_t)code schema:(id)schema;
- (HKUserDomainConceptTypeIdentifier)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKUserDomainConceptTypeIdentifier

- (HKUserDomainConceptTypeIdentifier)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKUserDomainConceptTypeIdentifier)initWithCode:(int64_t)code schema:(id)schema
{
  schemaCopy = schema;
  v12.receiver = self;
  v12.super_class = HKUserDomainConceptTypeIdentifier;
  v7 = [(HKUserDomainConceptTypeIdentifier *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    v9 = [schemaCopy copy];
    schema = v8->_schema;
    v8->_schema = v9;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (self->_code != v5->_code)
      {
        goto LABEL_9;
      }

      schema = self->_schema;
      v7 = v5->_schema;
      if (schema == v7)
      {
        v8 = 1;
        goto LABEL_11;
      }

      if (v7)
      {
        v8 = [(NSString *)schema isEqual:?];
      }

      else
      {
LABEL_9:
        v8 = 0;
      }

LABEL_11:

      goto LABEL_12;
    }

    v8 = 0;
  }

LABEL_12:

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  code = self->_code;
  coderCopy = coder;
  [coderCopy encodeInteger:code forKey:@"code"];
  [coderCopy encodeObject:self->_schema forKey:@"schema"];
}

- (HKUserDomainConceptTypeIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"code"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"schema"];

  v7 = [(HKUserDomainConceptTypeIdentifier *)self initWithCode:v5 schema:v6];
  return v7;
}

+ (id)baseUserDomainConceptIdentifier
{
  v2 = [[self alloc] initWithCode:0 schema:0];

  return v2;
}

+ (id)medicalUserDomainConceptIdentifier
{
  v2 = [[self alloc] initWithCode:1 schema:0];

  return v2;
}

+ (id)listUserDomainConceptIdentifier
{
  v2 = [[self alloc] initWithCode:2 schema:0];

  return v2;
}

@end