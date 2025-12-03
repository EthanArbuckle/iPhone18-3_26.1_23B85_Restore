@interface HKQueryServerConfiguration
- (HKQueryServerConfiguration)init;
- (HKQueryServerConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = HKQueryServerConfiguration;
  v4 = [(HKTaskConfiguration *)&v6 copyWithZone:zone];
  [v4 setObjectType:self->_objectType];
  [v4 setDebugIdentifier:self->_debugIdentifier];
  [v4 setFilter:self->_filter];
  [v4 setQualityOfService:self->_qualityOfService];
  [v4 setShouldDeactivateAfterInitialResults:self->_shouldDeactivateAfterInitialResults];
  [v4 setShouldSuppressDataCollection:self->_shouldSuppressDataCollection];
  [v4 setActivationTime:self->_activationTime];
  return v4;
}

- (HKQueryServerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = HKQueryServerConfiguration;
  v5 = [(HKTaskConfiguration *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    objectType = v5->_objectType;
    v5->_objectType = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"debugID"];
    debugIdentifier = v5->_debugIdentifier;
    v5->_debugIdentifier = v8;

    v5->_shouldDeactivateAfterInitialResults = [coderCopy decodeBoolForKey:@"deactivate"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filter"];
    filter = v5->_filter;
    v5->_filter = v10;

    v5->_qualityOfService = [coderCopy decodeIntegerForKey:@"qos"];
    v5->_shouldSuppressDataCollection = [coderCopy decodeBoolForKey:@"suppress"];
    [coderCopy decodeDoubleForKey:@"activationDate"];
    v5->_activationTime = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKQueryServerConfiguration;
  coderCopy = coder;
  [(HKTaskConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_objectType forKey:{@"type", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_debugIdentifier forKey:@"debugID"];
  [coderCopy encodeBool:self->_shouldDeactivateAfterInitialResults forKey:@"deactivate"];
  [coderCopy encodeObject:self->_filter forKey:@"filter"];
  [coderCopy encodeInteger:self->_qualityOfService forKey:@"qos"];
  [coderCopy encodeBool:self->_shouldSuppressDataCollection forKey:@"suppress"];
  [coderCopy encodeDouble:@"activationDate" forKey:self->_activationTime];
}

@end