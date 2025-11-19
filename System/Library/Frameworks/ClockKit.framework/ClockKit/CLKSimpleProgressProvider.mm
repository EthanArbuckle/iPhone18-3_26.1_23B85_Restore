@interface CLKSimpleProgressProvider
+ (id)simpleProgressProviderWithProgress:(double)a3;
- (BOOL)isEqual:(id)a3;
- (CLKSimpleProgressProvider)initWithCoder:(id)a3;
- (id)JSONObjectRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_validate;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLKSimpleProgressProvider

+ (id)simpleProgressProviderWithProgress:(double)a3
{
  v4 = objc_alloc_init(a1);
  [v4 setProgress:a3];

  return v4;
}

- (void)_validate
{
  v2.receiver = self;
  v2.super_class = CLKSimpleProgressProvider;
  [(CLKProgressProvider *)&v2 _validate];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = CLKSimpleProgressProvider;
  result = [(CLKProgressProvider *)&v5 copyWithZone:a3];
  if (result != self)
  {
    *(result + 7) = *&self->_progress;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CLKSimpleProgressProvider;
  v5 = [(CLKProgressProvider *)&v7 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_progress == v4[7];

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

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CLKSimpleProgressProvider;
  v4 = a3;
  [(CLKProgressProvider *)&v6 encodeWithCoder:v4];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:{self->_progress, v6.receiver, v6.super_class}];
  [v4 encodeObject:v5 forKey:@"_progress"];
}

- (CLKSimpleProgressProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CLKSimpleProgressProvider;
  v5 = [(CLKProgressProvider *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_progress"];
    [v6 floatValue];
    v5->_progress = v7;
  }

  return v5;
}

- (id)JSONObjectRepresentation
{
  v6.receiver = self;
  v6.super_class = CLKSimpleProgressProvider;
  v3 = [(CLKProgressProvider *)&v6 JSONObjectRepresentation];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_progress];
  [v3 setObject:v4 forKeyedSubscript:@"progress"];

  return v3;
}

@end