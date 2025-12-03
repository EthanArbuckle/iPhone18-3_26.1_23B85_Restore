@interface HKDataCollectorTaskServerConfiguration
- (HKDataCollectorTaskServerConfiguration)initWithCoder:(id)coder;
- (HKDataCollectorTaskServerConfiguration)initWithQuantityType:(id)type bundleIdentifier:(id)identifier canResumeFromLastDatum:(BOOL)datum;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKDataCollectorTaskServerConfiguration

- (HKDataCollectorTaskServerConfiguration)initWithQuantityType:(id)type bundleIdentifier:(id)identifier canResumeFromLastDatum:(BOOL)datum
{
  typeCopy = type;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = HKDataCollectorTaskServerConfiguration;
  v10 = [(HKDataCollectorTaskServerConfiguration *)&v16 init];
  if (v10)
  {
    v11 = [typeCopy copy];
    quantityType = v10->_quantityType;
    v10->_quantityType = v11;

    v13 = [identifierCopy copy];
    bundleIdentifier = v10->_bundleIdentifier;
    v10->_bundleIdentifier = v13;

    v10->_canResumeFromLastDatum = datum;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HKDataCollectorTaskServerConfiguration alloc];
  quantityType = self->_quantityType;
  bundleIdentifier = self->_bundleIdentifier;
  canResumeFromLastDatum = self->_canResumeFromLastDatum;

  return [(HKDataCollectorTaskServerConfiguration *)v4 initWithQuantityType:quantityType bundleIdentifier:bundleIdentifier canResumeFromLastDatum:canResumeFromLastDatum];
}

- (HKDataCollectorTaskServerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = HKDataCollectorTaskServerConfiguration;
  v5 = [(HKTaskConfiguration *)&v12 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"quantity_type"];
  quantityType = v5->_quantityType;
  v5->_quantityType = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundle_identifier"];
  bundleIdentifier = v5->_bundleIdentifier;
  v5->_bundleIdentifier = v8;

  v5->_canResumeFromLastDatum = [coderCopy decodeBoolForKey:@"can_resume"];
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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKDataCollectorTaskServerConfiguration;
  coderCopy = coder;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_quantityType forKey:{@"quantity_type", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundle_identifier"];
  [coderCopy encodeBool:self->_canResumeFromLastDatum forKey:@"can_resume"];
}

@end