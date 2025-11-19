@interface SRFaceMetricsExpression
+ (id)partialFaceMetricsExpressionWithIdentifier:(id)a3 value:(double)a4;
+ (id)wholeFaceMetricsExpressionWithIdentifier:(id)a3 value:(double)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SRFaceMetricsExpression)init;
- (SRFaceMetricsExpression)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (SRFaceMetricsExpression)initWithCoder:(id)a3;
- (SRFaceMetricsExpression)initWithIdentifier:(id)a3 value:(double)a4;
- (id)binarySampleRepresentation;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRFaceMetricsExpression

- (SRFaceMetricsExpression)init
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];

  return 0;
}

- (SRFaceMetricsExpression)initWithIdentifier:(id)a3 value:(double)a4
{
  v8.receiver = self;
  v8.super_class = SRFaceMetricsExpression;
  v6 = [(SRFaceMetricsExpression *)&v8 init];
  if (v6)
  {
    v6->_identifier = [a3 copy];
    v6->_value = a4;
  }

  return v6;
}

+ (id)wholeFaceMetricsExpressionWithIdentifier:(id)a3 value:(double)a4
{
  v4 = [[SRFaceMetricsExpression alloc] initWithIdentifier:a3 value:a4];

  return v4;
}

+ (id)partialFaceMetricsExpressionWithIdentifier:(id)a3 value:(double)a4
{
  v4 = [[SRFaceMetricsExpression alloc] initWithIdentifier:a3 value:a4];

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SRFaceMetricsExpression;
  [(SRFaceMetricsExpression *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 encodeObject:-[SRFaceMetricsExpression identifier](self forKey:{"identifier"), @"identifier"}];
  [(SRFaceMetricsExpression *)self value];

  [a3 encodeDouble:@"value" forKey:?];
}

- (SRFaceMetricsExpression)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  [a3 decodeDoubleForKey:@"value"];

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

- (SRFaceMetricsExpression)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  if ([a3 length])
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
    v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:a3 error:&v10];

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
  v6 = [(SRFaceMetricsExpression *)self identifier];
  [(SRFaceMetricsExpression *)self value];
  return [v3 stringWithFormat:@"%@ (%p) {identifier: %@, value: %f}", v5, self, v6, v7];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = -[NSString isEqualToString:](-[SRFaceMetricsExpression identifier](self, "identifier"), "isEqualToString:", [a3 identifier]);
      if (v5)
      {
        [(SRFaceMetricsExpression *)self value];
        v7 = v6;
        [a3 value];
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