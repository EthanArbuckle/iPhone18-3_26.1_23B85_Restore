@interface SRFaceMetricsExpression
+ (id)partialFaceMetricsExpressionWithIdentifier:(id)identifier value:(double)value;
+ (id)wholeFaceMetricsExpressionWithIdentifier:(id)identifier value:(double)value;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SRFaceMetricsExpression)init;
- (SRFaceMetricsExpression)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (SRFaceMetricsExpression)initWithCoder:(id)coder;
- (SRFaceMetricsExpression)initWithIdentifier:(id)identifier value:(double)value;
- (id)binarySampleRepresentation;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRFaceMetricsExpression

- (SRFaceMetricsExpression)init
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];

  return 0;
}

- (SRFaceMetricsExpression)initWithIdentifier:(id)identifier value:(double)value
{
  v8.receiver = self;
  v8.super_class = SRFaceMetricsExpression;
  v6 = [(SRFaceMetricsExpression *)&v8 init];
  if (v6)
  {
    v6->_identifier = [identifier copy];
    v6->_value = value;
  }

  return v6;
}

+ (id)wholeFaceMetricsExpressionWithIdentifier:(id)identifier value:(double)value
{
  v4 = [[SRFaceMetricsExpression alloc] initWithIdentifier:identifier value:value];

  return v4;
}

+ (id)partialFaceMetricsExpressionWithIdentifier:(id)identifier value:(double)value
{
  v4 = [[SRFaceMetricsExpression alloc] initWithIdentifier:identifier value:value];

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SRFaceMetricsExpression;
  [(SRFaceMetricsExpression *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeObject:-[SRFaceMetricsExpression identifier](self forKey:{"identifier"), @"identifier"}];
  [(SRFaceMetricsExpression *)self value];

  [coder encodeDouble:@"value" forKey:?];
}

- (SRFaceMetricsExpression)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  [coder decodeDoubleForKey:@"value"];

  return [(SRFaceMetricsExpression *)self initWithIdentifier:v6 value:?];
}

- (id)binarySampleRepresentation
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v7];
  v3 = v7;
  if (v7)
  {
    v4 = SRLogFaceMetrics;
    if (os_log_type_enabled(SRLogFaceMetrics, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v9 = v3;
      _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "Failed to archive data because %{public}@", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

- (SRFaceMetricsExpression)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  if ([representation length])
  {
    v11.receiver = self;
    v11.super_class = SRFaceMetricsExpression;
    result = [(SRFaceMetricsExpression *)&v11 init];
    if (!result)
    {
      return result;
    }

    v8 = result;
    v10 = 0;
    v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:representation error:&v10];

    if (v9)
    {
      return v9;
    }
  }

  else
  {
  }

  return 0;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(SRFaceMetricsExpression *)self identifier];
  [(SRFaceMetricsExpression *)self value];
  return [v3 stringWithFormat:@"%@ (%p) {identifier: %@, value: %f}", v5, self, identifier, v7];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = -[NSString isEqualToString:](-[SRFaceMetricsExpression identifier](self, "identifier"), "isEqualToString:", [equal identifier]);
      if (v5)
      {
        [(SRFaceMetricsExpression *)self value];
        v7 = v6;
        [equal value];
        LOBYTE(v5) = v7 == v8;
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)[(SRFaceMetricsExpression *)self identifier] hash];
  [(SRFaceMetricsExpression *)self value];
  return v3 ^ v4;
}

@end