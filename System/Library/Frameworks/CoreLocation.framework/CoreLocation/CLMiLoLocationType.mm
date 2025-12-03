@interface CLMiLoLocationType
- (CLMiLoLocationType)initWithCoder:(id)coder;
- (CLMiLoLocationType)initWithLocationTypeEnum:(unint64_t)enum;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CLMiLoLocationType

- (CLMiLoLocationType)initWithLocationTypeEnum:(unint64_t)enum
{
  v5.receiver = self;
  v5.super_class = CLMiLoLocationType;
  result = [(CLMiLoLocationType *)&v5 init];
  if (result)
  {
    result->_locationType = enum;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [(CLMiLoLocationType *)self locationType];

  return MEMORY[0x1EEE66B58](v4, sel_initWithLocationTypeEnum_);
}

- (CLMiLoLocationType)initWithCoder:(id)coder
{
  [coder decodeIntegerForKey:@"kCLMiLoConnectionCodingKeyLocationType"];

  return MEMORY[0x1EEE66B58](self, sel_initWithLocationTypeEnum_);
}

@end