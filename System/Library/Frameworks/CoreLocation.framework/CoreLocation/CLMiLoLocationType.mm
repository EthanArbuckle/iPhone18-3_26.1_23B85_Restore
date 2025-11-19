@interface CLMiLoLocationType
- (CLMiLoLocationType)initWithCoder:(id)a3;
- (CLMiLoLocationType)initWithLocationTypeEnum:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CLMiLoLocationType

- (CLMiLoLocationType)initWithLocationTypeEnum:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = CLMiLoLocationType;
  result = [(CLMiLoLocationType *)&v5 init];
  if (result)
  {
    result->_locationType = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [(CLMiLoLocationType *)self locationType];

  return MEMORY[0x1EEE66B58](v4, sel_initWithLocationTypeEnum_);
}

- (CLMiLoLocationType)initWithCoder:(id)a3
{
  [a3 decodeIntegerForKey:@"kCLMiLoConnectionCodingKeyLocationType"];

  return MEMORY[0x1EEE66B58](self, sel_initWithLocationTypeEnum_);
}

@end