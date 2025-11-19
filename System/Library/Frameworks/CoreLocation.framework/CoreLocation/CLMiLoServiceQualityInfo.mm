@interface CLMiLoServiceQualityInfo
- (CLMiLoServiceQualityInfo)initWithCoder:(id)a3;
- (CLMiLoServiceQualityInfo)initWithQuality:(unint64_t)a3 andReasons:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLMiLoServiceQualityInfo

- (CLMiLoServiceQualityInfo)initWithQuality:(unint64_t)a3 andReasons:(id)a4
{
  v9.receiver = self;
  v9.super_class = CLMiLoServiceQualityInfo;
  v6 = [(CLMiLoServiceQualityInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_serviceQuality = a3;
    v6->_serviceQualityReasons = [a4 copy];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMiLoServiceQualityInfo;
  [(CLMiLoServiceQualityInfo *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  serviceQuality = self->_serviceQuality;
  serviceQualityReasons = self->_serviceQualityReasons;

  return MEMORY[0x1EEE66B58](v4, sel_initWithQuality_andReasons_);
}

- (CLMiLoServiceQualityInfo)initWithCoder:(id)a3
{
  [a3 decodeIntegerForKey:@"kCLMiLoConnectionCodingKeyServiceQuality"];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"kCLMiLoConnectionCodingKeyServiceQualityReasons"}];

  return MEMORY[0x1EEE66B58](self, sel_initWithQuality_andReasons_);
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInteger:self->_serviceQuality forKey:@"kCLMiLoConnectionCodingKeyServiceQuality"];
  serviceQualityReasons = self->_serviceQualityReasons;

  [a3 encodeObject:serviceQualityReasons forKey:@"kCLMiLoConnectionCodingKeyServiceQualityReasons"];
}

@end