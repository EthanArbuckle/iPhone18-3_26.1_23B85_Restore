@interface HKElectrocardiogramSessionTaskConfiguration
- (HKElectrocardiogramSessionTaskConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKElectrocardiogramSessionTaskConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setSessionConfiguration:self->_sessionConfiguration];
  return v4;
}

- (HKElectrocardiogramSessionTaskConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HKElectrocardiogramSessionTaskConfiguration;
  v5 = [(HKTaskConfiguration *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionConfiguration"];
    sessionConfiguration = v5->_sessionConfiguration;
    v5->_sessionConfiguration = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKElectrocardiogramSessionTaskConfiguration;
  coderCopy = coder;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sessionConfiguration forKey:{@"sessionConfiguration", v5.receiver, v5.super_class}];
}

@end