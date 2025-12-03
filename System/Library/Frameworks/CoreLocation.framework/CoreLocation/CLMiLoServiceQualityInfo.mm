@interface CLMiLoServiceQualityInfo
- (CLMiLoServiceQualityInfo)initWithCoder:(id)coder;
- (CLMiLoServiceQualityInfo)initWithQuality:(unint64_t)quality andReasons:(id)reasons;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLMiLoServiceQualityInfo

- (CLMiLoServiceQualityInfo)initWithQuality:(unint64_t)quality andReasons:(id)reasons
{
  v9.receiver = self;
  v9.super_class = CLMiLoServiceQualityInfo;
  v6 = [(CLMiLoServiceQualityInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_serviceQuality = quality;
    v6->_serviceQualityReasons = [reasons copy];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoServiceQualityInfo;
  [(CLMiLoServiceQualityInfo *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  serviceQuality = self->_serviceQuality;
  serviceQualityReasons = self->_serviceQualityReasons;

  return MEMORY[0x1EEE66B58](v4, sel_initWithQuality_andReasons_);
}

- (CLMiLoServiceQualityInfo)initWithCoder:(id)coder
{
  [coder decodeIntegerForKey:@"kCLMiLoConnectionCodingKeyServiceQuality"];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"kCLMiLoConnectionCodingKeyServiceQualityReasons"}];

  return MEMORY[0x1EEE66B58](self, sel_initWithQuality_andReasons_);
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInteger:self->_serviceQuality forKey:@"kCLMiLoConnectionCodingKeyServiceQuality"];
  serviceQualityReasons = self->_serviceQualityReasons;

  [coder encodeObject:serviceQualityReasons forKey:@"kCLMiLoConnectionCodingKeyServiceQualityReasons"];
}

@end