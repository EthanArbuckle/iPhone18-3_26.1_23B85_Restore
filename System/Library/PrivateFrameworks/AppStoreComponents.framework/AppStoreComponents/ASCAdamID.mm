@interface ASCAdamID
+ (ASCAdamID)invalidAdamID;
- (ASCAdamID)initWithCoder:(id)coder;
- (ASCAdamID)initWithInt64:(int64_t)int64;
- (ASCAdamID)initWithNumberValue:(id)value;
- (ASCAdamID)initWithStringValue:(id)value;
- (BOOL)isEqual:(id)equal;
- (NSNumber)numberValue;
- (id)description;
- (int64_t)int64value;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCAdamID

- (ASCAdamID)initWithStringValue:(id)value
{
  valueCopy = value;
  +[ASCEligibility assertCurrentProcessEligibility];
  v9.receiver = self;
  v9.super_class = ASCAdamID;
  v5 = [(ASCAdamID *)&v9 init];
  if (v5)
  {
    v6 = [valueCopy copy];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;
  }

  return v5;
}

- (ASCAdamID)initWithNumberValue:(id)value
{
  stringValue = [value stringValue];
  v5 = [(ASCAdamID *)self initWithStringValue:stringValue];

  return v5;
}

- (ASCAdamID)initWithInt64:(int64_t)int64
{
  int64 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%lld", int64];
  v5 = [(ASCAdamID *)self initWithStringValue:int64];

  return v5;
}

+ (ASCAdamID)invalidAdamID
{
  v2 = [[self alloc] initWithInt64:0x8000000000000000];

  return v2;
}

- (ASCAdamID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stringValue"];

  if (v5)
  {
    self = [(ASCAdamID *)self initWithStringValue:v5];
    selfCopy = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASCAdamID initWithCoder:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  stringValue = [(ASCAdamID *)self stringValue];
  [coderCopy encodeObject:stringValue forKey:@"stringValue"];
}

- (unint64_t)hash
{
  stringValue = [(ASCAdamID *)self stringValue];
  v3 = [stringValue hash];

  return v3 + 47;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    stringValue = [(ASCAdamID *)self stringValue];
    stringValue2 = [v7 stringValue];
    v10 = stringValue2;
    if (stringValue && stringValue2)
    {
      v11 = [stringValue isEqual:stringValue2];
    }

    else
    {
      v11 = stringValue == stringValue2;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  stringValue = [(ASCAdamID *)self stringValue];
  [(ASCDescriber *)v3 addSensitiveObject:stringValue withName:@"stringValue"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

- (NSNumber)numberValue
{
  v3 = objc_alloc(MEMORY[0x277CCABB0]);
  stringValue = [(ASCAdamID *)self stringValue];
  v5 = [v3 initWithLongLong:{objc_msgSend(stringValue, "longLongValue")}];

  return v5;
}

- (int64_t)int64value
{
  stringValue = [(ASCAdamID *)self stringValue];
  longLongValue = [stringValue longLongValue];

  return longLongValue;
}

@end