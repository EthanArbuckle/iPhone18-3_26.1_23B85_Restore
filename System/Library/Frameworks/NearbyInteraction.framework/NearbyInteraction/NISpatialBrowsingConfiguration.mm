@interface NISpatialBrowsingConfiguration
+ (id)responderConfigurationWithIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (NISpatialBrowsingConfiguration)init;
- (NISpatialBrowsingConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionInternal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NISpatialBrowsingConfiguration

+ (id)responderConfigurationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NISpatialBrowsingConfiguration.mm" lineNumber:24 description:@"deviceIdentifier cannot be nil."];
  }

  v6 = objc_alloc_init(NISpatialBrowsingConfiguration);
  [(NISpatialBrowsingConfiguration *)v6 setResponder:1];
  [(NISpatialBrowsingConfiguration *)v6 setDeviceIdentifier:identifierCopy];

  return v6;
}

- (NISpatialBrowsingConfiguration)init
{
  v6.receiver = self;
  v6.super_class = NISpatialBrowsingConfiguration;
  initInternal = [(NIConfiguration *)&v6 initInternal];
  v3 = initInternal;
  if (initInternal)
  {
    initInternal->_responder = 0;
    initInternal->_updatesPolicy = 1;
    deviceIdentifier = initInternal->_deviceIdentifier;
    initInternal->_deviceIdentifier = 0;

    v3->_maxNearbyObjectAge = 10.0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NISpatialBrowsingConfiguration;
  v4 = [(NIConfiguration *)&v6 copyWithZone:zone];
  [v4 setResponder:self->_responder];
  [v4 setDeviceIdentifier:self->_deviceIdentifier];
  [v4 setUpdatesPolicy:self->_updatesPolicy];
  [v4 setMaxNearbyObjectAge:self->_maxNearbyObjectAge];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = NISpatialBrowsingConfiguration;
  [(NIConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_responder forKey:@"responder"];
  [coderCopy encodeObject:self->_deviceIdentifier forKey:@"deviceIdentifier"];
  [coderCopy encodeInteger:self->_updatesPolicy forKey:@"updatesPolicy"];
  [coderCopy encodeDouble:@"maxNearbyObjectAge" forKey:self->_maxNearbyObjectAge];
}

- (NISpatialBrowsingConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = NISpatialBrowsingConfiguration;
  v5 = [(NIConfiguration *)&v14 initWithCoder:coderCopy];
  if (v5 && (v6 = [coderCopy decodeIntegerForKey:@"updatesPolicy"], v6 < 2))
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
    v8 = [coderCopy decodeBoolForKey:@"responder"];
    [coderCopy decodeDoubleForKey:@"maxNearbyObjectAge"];
    v10 = v9;
    v5->_responder = v8;
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v7;

    v5->_updatesPolicy = v6;
    v5->_maxNearbyObjectAge = v10;
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    if (v5 == self)
    {
      v13 = 1;
    }

    else
    {
      isResponder = [(NISpatialBrowsingConfiguration *)v5 isResponder];
      responder = self->_responder;
      updatesPolicy = [(NISpatialBrowsingConfiguration *)v6 updatesPolicy];
      updatesPolicy = self->_updatesPolicy;
      deviceIdentifier = [(NISpatialBrowsingConfiguration *)v6 deviceIdentifier];
      if (deviceIdentifier)
      {
        v12 = 0;
      }

      else
      {
        v12 = self->_deviceIdentifier == 0;
      }

      deviceIdentifier2 = [(NISpatialBrowsingConfiguration *)v6 deviceIdentifier];
      v15 = [deviceIdentifier2 isEqualToString:self->_deviceIdentifier];

      [(NISpatialBrowsingConfiguration *)v6 maxNearbyObjectAge];
      v13 = 0;
      if (responder == isResponder && updatesPolicy == updatesPolicy)
      {
        v13 = (v12 | v15) & (v16 == self->_maxNearbyObjectAge);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_deviceIdentifier hash];
  responder = self->_responder;
  updatesPolicy = self->_updatesPolicy;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_maxNearbyObjectAge];
  v7 = [v6 hash];

  return v3 ^ responder ^ updatesPolicy ^ v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  descriptionInternal = [(NISpatialBrowsingConfiguration *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, descriptionInternal];

  return v7;
}

- (id)descriptionInternal
{
  if (self->_responder)
  {
    v2 = @"Yes";
  }

  else
  {
    v2 = @"No";
  }

  if (self->_updatesPolicy == 1)
  {
    v3 = @"SignificantChanges";
  }

  else
  {
    v3 = @"Stream";
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<maxNearbyObjectAge: %0.2fsec, isResponder: %@, deviceIdentifier: %@, updatesPolicy: %@>", *&self->_maxNearbyObjectAge, v2, self->_deviceIdentifier, v3];

  return v4;
}

@end