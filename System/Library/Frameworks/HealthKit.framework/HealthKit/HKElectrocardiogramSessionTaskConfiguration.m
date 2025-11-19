@interface HKElectrocardiogramSessionTaskConfiguration
- (HKElectrocardiogramSessionTaskConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKElectrocardiogramSessionTaskConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setSessionConfiguration:self->_sessionConfiguration];
  return v4;
}

- (HKElectrocardiogramSessionTaskConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKElectrocardiogramSessionTaskConfiguration;
  v5 = [(HKTaskConfiguration *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionConfiguration"];
    sessionConfiguration = v5->_sessionConfiguration;
    v5->_sessionConfiguration = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKElectrocardiogramSessionTaskConfiguration;
  v4 = a3;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_sessionConfiguration forKey:{@"sessionConfiguration", v5.receiver, v5.super_class}];
}

@end