@interface HKQueryServerConfiguration
- (HKQueryServerConfiguration)init;
- (HKQueryServerConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKQueryServerConfiguration

- (HKQueryServerConfiguration)init
{
  v3.receiver = self;
  v3.super_class = HKQueryServerConfiguration;
  result = [(HKQueryServerConfiguration *)&v3 init];
  if (result)
  {
    result->_qualityOfService = -1;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = HKQueryServerConfiguration;
  v4 = [(HKTaskConfiguration *)&v6 copyWithZone:a3];
  [v4 setObjectType:self->_objectType];
  [v4 setDebugIdentifier:self->_debugIdentifier];
  [v4 setFilter:self->_filter];
  [v4 setQualityOfService:self->_qualityOfService];
  [v4 setShouldDeactivateAfterInitialResults:self->_shouldDeactivateAfterInitialResults];
  [v4 setShouldSuppressDataCollection:self->_shouldSuppressDataCollection];
  [v4 setActivationTime:self->_activationTime];
  return v4;
}

- (HKQueryServerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HKQueryServerConfiguration;
  v5 = [(HKTaskConfiguration *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    objectType = v5->_objectType;
    v5->_objectType = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"debugID"];
    debugIdentifier = v5->_debugIdentifier;
    v5->_debugIdentifier = v8;

    v5->_shouldDeactivateAfterInitialResults = [v4 decodeBoolForKey:@"deactivate"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"filter"];
    filter = v5->_filter;
    v5->_filter = v10;

    v5->_qualityOfService = [v4 decodeIntegerForKey:@"qos"];
    v5->_shouldSuppressDataCollection = [v4 decodeBoolForKey:@"suppress"];
    [v4 decodeDoubleForKey:@"activationDate"];
    v5->_activationTime = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKQueryServerConfiguration;
  v4 = a3;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_objectType forKey:{@"type", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_debugIdentifier forKey:@"debugID"];
  [v4 encodeBool:self->_shouldDeactivateAfterInitialResults forKey:@"deactivate"];
  [v4 encodeObject:self->_filter forKey:@"filter"];
  [v4 encodeInteger:self->_qualityOfService forKey:@"qos"];
  [v4 encodeBool:self->_shouldSuppressDataCollection forKey:@"suppress"];
  [v4 encodeDouble:@"activationDate" forKey:self->_activationTime];
}

@end