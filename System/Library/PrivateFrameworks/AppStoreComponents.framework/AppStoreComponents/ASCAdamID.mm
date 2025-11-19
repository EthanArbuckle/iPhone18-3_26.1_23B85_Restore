@interface ASCAdamID
+ (ASCAdamID)invalidAdamID;
- (ASCAdamID)initWithCoder:(id)a3;
- (ASCAdamID)initWithInt64:(int64_t)a3;
- (ASCAdamID)initWithNumberValue:(id)a3;
- (ASCAdamID)initWithStringValue:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSNumber)numberValue;
- (id)description;
- (int64_t)int64value;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCAdamID

- (ASCAdamID)initWithStringValue:(id)a3
{
  v4 = a3;
  +[ASCEligibility assertCurrentProcessEligibility];
  v9.receiver = self;
  v9.super_class = ASCAdamID;
  v5 = [(ASCAdamID *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;
  }

  return v5;
}

- (ASCAdamID)initWithNumberValue:(id)a3
{
  v4 = [a3 stringValue];
  v5 = [(ASCAdamID *)self initWithStringValue:v4];

  return v5;
}

- (ASCAdamID)initWithInt64:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%lld", a3];
  v5 = [(ASCAdamID *)self initWithStringValue:v4];

  return v5;
}

+ (ASCAdamID)invalidAdamID
{
  v2 = [[a1 alloc] initWithInt64:0x8000000000000000];

  return v2;
}

- (ASCAdamID)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stringValue"];

  if (v5)
  {
    self = [(ASCAdamID *)self initWithStringValue:v5];
    v6 = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASCAdamID initWithCoder:];
    }

    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASCAdamID *)self stringValue];
  [v4 encodeObject:v5 forKey:@"stringValue"];
}

- (unint64_t)hash
{
  v2 = [(ASCAdamID *)self stringValue];
  v3 = [v2 hash];

  return v3 + 47;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
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
    v8 = [(ASCAdamID *)self stringValue];
    v9 = [v7 stringValue];
    v10 = v9;
    if (v8 && v9)
    {
      v11 = [v8 isEqual:v9];
    }

    else
    {
      v11 = v8 == v9;
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
  v4 = [(ASCAdamID *)self stringValue];
  [(ASCDescriber *)v3 addSensitiveObject:v4 withName:@"stringValue"];

  v5 = [(ASCDescriber *)v3 finalizeDescription];

  return v5;
}

- (NSNumber)numberValue
{
  v3 = objc_alloc(MEMORY[0x277CCABB0]);
  v4 = [(ASCAdamID *)self stringValue];
  v5 = [v3 initWithLongLong:{objc_msgSend(v4, "longLongValue")}];

  return v5;
}

- (int64_t)int64value
{
  v2 = [(ASCAdamID *)self stringValue];
  v3 = [v2 longLongValue];

  return v3;
}

@end