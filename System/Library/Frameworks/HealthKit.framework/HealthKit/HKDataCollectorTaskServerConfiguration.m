@interface HKDataCollectorTaskServerConfiguration
- (HKDataCollectorTaskServerConfiguration)initWithCoder:(id)a3;
- (HKDataCollectorTaskServerConfiguration)initWithQuantityType:(id)a3 bundleIdentifier:(id)a4 canResumeFromLastDatum:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKDataCollectorTaskServerConfiguration

- (HKDataCollectorTaskServerConfiguration)initWithQuantityType:(id)a3 bundleIdentifier:(id)a4 canResumeFromLastDatum:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = HKDataCollectorTaskServerConfiguration;
  v10 = [(HKDataCollectorTaskServerConfiguration *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    quantityType = v10->_quantityType;
    v10->_quantityType = v11;

    v13 = [v9 copy];
    bundleIdentifier = v10->_bundleIdentifier;
    v10->_bundleIdentifier = v13;

    v10->_canResumeFromLastDatum = a5;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HKDataCollectorTaskServerConfiguration alloc];
  quantityType = self->_quantityType;
  bundleIdentifier = self->_bundleIdentifier;
  canResumeFromLastDatum = self->_canResumeFromLastDatum;

  return [(HKDataCollectorTaskServerConfiguration *)v4 initWithQuantityType:quantityType bundleIdentifier:bundleIdentifier canResumeFromLastDatum:canResumeFromLastDatum];
}

- (HKDataCollectorTaskServerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HKDataCollectorTaskServerConfiguration;
  v5 = [(HKTaskConfiguration *)&v12 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"quantity_type"];
  quantityType = v5->_quantityType;
  v5->_quantityType = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundle_identifier"];
  bundleIdentifier = v5->_bundleIdentifier;
  v5->_bundleIdentifier = v8;

  v5->_canResumeFromLastDatum = [v4 decodeBoolForKey:@"can_resume"];
  if (!v5->_quantityType)
  {
    goto LABEL_5;
  }

  if (v5->_bundleIdentifier)
  {
LABEL_4:
    v10 = v5;
  }

  else
  {
LABEL_5:
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKDataCollectorTaskServerConfiguration;
  v4 = a3;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_quantityType forKey:{@"quantity_type", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_bundleIdentifier forKey:@"bundle_identifier"];
  [v4 encodeBool:self->_canResumeFromLastDatum forKey:@"can_resume"];
}

@end