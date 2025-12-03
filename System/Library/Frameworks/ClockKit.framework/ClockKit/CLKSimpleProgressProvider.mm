@interface CLKSimpleProgressProvider
+ (id)simpleProgressProviderWithProgress:(double)progress;
- (BOOL)isEqual:(id)equal;
- (CLKSimpleProgressProvider)initWithCoder:(id)coder;
- (id)JSONObjectRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_validate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLKSimpleProgressProvider

+ (id)simpleProgressProviderWithProgress:(double)progress
{
  v4 = objc_alloc_init(self);
  [v4 setProgress:progress];

  return v4;
}

- (void)_validate
{
  v2.receiver = self;
  v2.super_class = CLKSimpleProgressProvider;
  [(CLKProgressProvider *)&v2 _validate];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = CLKSimpleProgressProvider;
  result = [(CLKProgressProvider *)&v5 copyWithZone:zone];
  if (result != self)
  {
    *(result + 7) = *&self->_progress;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = CLKSimpleProgressProvider;
  v5 = [(CLKProgressProvider *)&v7 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_progress == equalCopy[7];

  return v5;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = CLKSimpleProgressProvider;
  v3 = [(CLKProgressProvider *)&v7 hash];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_progress];
  v5 = (v3 + [v4 hash] * 100.0);

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CLKSimpleProgressProvider;
  coderCopy = coder;
  [(CLKProgressProvider *)&v6 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:{self->_progress, v6.receiver, v6.super_class}];
  [coderCopy encodeObject:v5 forKey:@"_progress"];
}

- (CLKSimpleProgressProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CLKSimpleProgressProvider;
  v5 = [(CLKProgressProvider *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_progress"];
    [v6 floatValue];
    v5->_progress = v7;
  }

  return v5;
}

- (id)JSONObjectRepresentation
{
  v6.receiver = self;
  v6.super_class = CLKSimpleProgressProvider;
  jSONObjectRepresentation = [(CLKProgressProvider *)&v6 JSONObjectRepresentation];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_progress];
  [jSONObjectRepresentation setObject:v4 forKeyedSubscript:@"progress"];

  return jSONObjectRepresentation;
}

@end