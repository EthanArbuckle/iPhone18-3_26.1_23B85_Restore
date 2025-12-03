@interface NIDevicePresenceConfiguration
+ (BOOL)_validateRegionPredicates:(id)predicates outer:(id)outer;
+ (const)_NIDevicePresenceMonitoringOptionToString:(unint64_t)string;
+ (float)_radiusFromDevicePresencePreset:(int64_t)preset;
- (BOOL)isEqual:(id)equal;
- (NIDevicePresenceConfiguration)initWithCoder:(id)coder;
- (NIDevicePresenceConfiguration)initWithDiscoveryToken:(id)token regions:(id)regions preferredUpdateRate:(int64_t)rate error:(id *)error;
- (NIDevicePresenceConfiguration)initWithInnerBoundary:(id)boundary outerBoundary:(id)outerBoundary error:(id *)error;
- (NIDevicePresenceConfiguration)initWithInnerBoundary:(id)boundary outerBoundary:(id)outerBoundary monitoringOption:(unint64_t)option allowedDevices:(unint64_t)devices error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionInternal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NIDevicePresenceConfiguration

- (NIDevicePresenceConfiguration)initWithInnerBoundary:(id)boundary outerBoundary:(id)outerBoundary error:(id *)error
{
  v23[2] = *MEMORY[0x1E69E9840];
  boundaryCopy = boundary;
  outerBoundaryCopy = outerBoundary;
  v22.receiver = self;
  v22.super_class = NIDevicePresenceConfiguration;
  initInternal = [(NIConfiguration *)&v22 initInternal];
  if (!initInternal)
  {
    goto LABEL_6;
  }

  v11 = [boundaryCopy copy];
  v12 = initInternal[7];
  initInternal[7] = v11;

  v13 = [outerBoundaryCopy copy];
  v14 = initInternal[8];
  initInternal[8] = v13;

  initInternal[5] = 1;
  initInternal[6] = 2;
  if (!outerBoundaryCopy)
  {
    v15 = [[NIRegionPredicate alloc] initWithName:@"default-max-sensor-region" devicePresencePreset:5];
    v16 = initInternal[8];
    initInternal[8] = v15;
  }

  v23[0] = initInternal[7];
  v23[1] = initInternal[8];
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v18 = initInternal[9];
  initInternal[9] = v17;

  if ([NIDevicePresenceConfiguration _validateRegionPredicates:initInternal[7] outer:initInternal[8]])
  {
    *(initInternal + 32) = 0;
LABEL_6:
    v19 = initInternal;
    goto LABEL_10;
  }

  if (error)
  {
    NIInternalErrorWithCodeAndUserInfo(-10013, 0);
    *error = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

LABEL_10:

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (NIDevicePresenceConfiguration)initWithInnerBoundary:(id)boundary outerBoundary:(id)outerBoundary monitoringOption:(unint64_t)option allowedDevices:(unint64_t)devices error:(id *)error
{
  boundaryCopy = boundary;
  outerBoundaryCopy = outerBoundary;
  v14 = [objc_alloc(objc_opt_class()) initWithInnerBoundary:boundaryCopy outerBoundary:outerBoundaryCopy error:error];

  if (v14)
  {
    v14->_allowedDevices = devices;
    v14->_monitoringOption = option;
  }

  return v14;
}

- (NIDevicePresenceConfiguration)initWithDiscoveryToken:(id)token regions:(id)regions preferredUpdateRate:(int64_t)rate error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  regionsCopy = regions;
  v13 = objc_alloc(objc_opt_class());
  firstObject = [regionsCopy firstObject];
  lastObject = [regionsCopy lastObject];
  v16 = [v13 initWithInnerBoundary:firstObject outerBoundary:lastObject error:error];

  if (v16)
  {
    objc_storeStrong(&v16->_token, token);
    v16->_allowedDevices = 2;
    v16->_monitoringOption = 1;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = regionsCopy;
    v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v18)
    {
      v19 = *v26;
      do
      {
        v20 = 0;
        do
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v25 + 1) + 8 * v20++) setPreferredUpdateRate:{rate, v25}];
        }

        while (v18 != v20);
        v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v18);
    }

    v21 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v17 copyItems:1];
    monitoredRegions = v16->_monitoredRegions;
    v16->_monitoredRegions = v21;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v15.receiver = self;
  v15.super_class = NIDevicePresenceConfiguration;
  v5 = [(NIConfiguration *)&v15 copyWithZone:?];
  [v5 setAllowedDevices:self->_allowedDevices];
  [v5 setMonitoringOption:self->_monitoringOption];
  [v5 setCameraAssistanceEnabled:self->_cameraAssistanceEnabled];
  v6 = [(NIRegionPredicate *)self->_innerBoundary copyWithZone:zone];
  v7 = v5[7];
  v5[7] = v6;

  v8 = [(NIRegionPredicate *)self->_outerBoundary copyWithZone:zone];
  v9 = v5[8];
  v5[8] = v8;

  v10 = [(NSArray *)self->_monitoredRegions copyWithZone:zone];
  v11 = v5[9];
  v5[9] = v10;

  v12 = [(NIDiscoveryToken *)self->_token copyWithZone:zone];
  v13 = v5[10];
  v5[10] = v12;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = NIDevicePresenceConfiguration;
  [(NIConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_innerBoundary forKey:@"innerboundary"];
  [coderCopy encodeObject:self->_outerBoundary forKey:@"outerboundary"];
  [coderCopy encodeObject:self->_monitoredRegions forKey:@"monitoredRegions"];
  [coderCopy encodeObject:self->_token forKey:@"token"];
  [coderCopy encodeInteger:self->_allowedDevices forKey:@"allowedDevices"];
  [coderCopy encodeInteger:self->_monitoringOption forKey:@"monitoringOption"];
  [coderCopy encodeBool:self->_cameraAssistanceEnabled forKey:@"cameraAssistanceEnabled"];
}

- (NIDevicePresenceConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = NIDevicePresenceConfiguration;
  v5 = [(NIConfiguration *)&v18 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"monitoredRegions"];
  monitoredRegions = v5->_monitoredRegions;
  v5->_monitoredRegions = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"innerboundary"];
  innerBoundary = v5->_innerBoundary;
  v5->_innerBoundary = v8;

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"outerboundary"];
  outerBoundary = v5->_outerBoundary;
  v5->_outerBoundary = v10;

  v12 = [coderCopy decodeIntegerForKey:@"allowedDevices"];
  if (![NIInternalUtils isIntValidRelationshipSpecifier:v12])
  {
    goto LABEL_5;
  }

  v5->_allowedDevices = v12;
  v13 = [coderCopy decodeIntegerForKey:@"monitoringOption"];
  if ((v13 - 1) < 3)
  {
    v5->_monitoringOption = v13;
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"token"];
    token = v5->_token;
    v5->_token = v14;

    v5->_cameraAssistanceEnabled = [coderCopy decodeBoolForKey:@"cameraAssistanceEnabled"];
    v16 = v5;
  }

  else
  {
LABEL_5:
    v16 = 0;
  }

  return v16;
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
      innerBoundary = [(NIDevicePresenceConfiguration *)v5 innerBoundary];
      v8 = [innerBoundary isEqual:self->_innerBoundary];

      outerBoundary = [(NIDevicePresenceConfiguration *)v6 outerBoundary];
      v10 = [outerBoundary isEqual:self->_outerBoundary];

      outerBoundary2 = [(NIDevicePresenceConfiguration *)v6 outerBoundary];
      if (outerBoundary2)
      {
        v12 = 0;
      }

      else
      {
        v12 = self->_outerBoundary == 0;
      }

      monitoredRegions = [(NIDevicePresenceConfiguration *)v6 monitoredRegions];
      v15 = [monitoredRegions isEqualToArray:self->_monitoredRegions];

      allowedDevices = [(NIDevicePresenceConfiguration *)v6 allowedDevices];
      v26 = v15;
      allowedDevices = self->_allowedDevices;
      monitoringOption = [(NIDevicePresenceConfiguration *)v6 monitoringOption];
      monitoringOption = self->_monitoringOption;
      token = [(NIDevicePresenceConfiguration *)v6 token];
      token = self->_token;

      isCameraAssistanceEnabled = [(NIDevicePresenceConfiguration *)v6 isCameraAssistanceEnabled];
      v21 = v8 & (v10 | v12);
      if (allowedDevices != allowedDevices)
      {
        v21 = 0;
      }

      if (monitoringOption != monitoringOption)
      {
        v21 = 0;
      }

      v13 = (v21 & v26) == 1 && token == token && isCameraAssistanceEnabled == self->_cameraAssistanceEnabled;
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
  v3 = [(NIRegionPredicate *)self->_innerBoundary hash];
  v4 = [(NIRegionPredicate *)self->_outerBoundary hash]^ v3;
  v5 = self->_allowedDevices ^ self->_monitoringOption;
  v6 = v4 ^ v5 ^ [(NIDiscoveryToken *)self->_token hash];
  return v6 ^ [(NSArray *)self->_monitoredRegions hash]^ self->_cameraAssistanceEnabled;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  descriptionInternal = [(NIDevicePresenceConfiguration *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, descriptionInternal];

  return v7;
}

- (id)descriptionInternal
{
  v3 = MEMORY[0x1E696AEC0];
  innerBoundary = self->_innerBoundary;
  outerBoundary = self->_outerBoundary;
  v6 = [NIInternalUtils NIRelationshipSpecifierToString:self->_allowedDevices];
  v7 = [NIDevicePresenceConfiguration _NIDevicePresenceMonitoringOptionToString:self->_monitoringOption];
  if (self->_cameraAssistanceEnabled)
  {
    v8 = "Yes";
  }

  else
  {
    v8 = "No";
  }

  return [v3 stringWithFormat:@"<innerboundary: %@, outerboundary: %@, allowedDevices: %s, monitoringOption: %s>, isCameraAssistanceEnabled: %s", innerBoundary, outerBoundary, v6, v7, v8];
}

+ (BOOL)_validateRegionPredicates:(id)predicates outer:(id)outer
{
  predicatesCopy = predicates;
  outerCopy = outer;
  if ([NIDevicePresenceConfiguration _validateRegionIsPreset:predicatesCopy]&& [NIDevicePresenceConfiguration _validateRegionIsPreset:outerCopy])
  {
    +[NIDevicePresenceConfiguration _radiusFromDevicePresencePreset:](NIDevicePresenceConfiguration, "_radiusFromDevicePresencePreset:", [outerCopy devicePresencePreset]);
    v8 = v7;
    +[NIDevicePresenceConfiguration _radiusFromDevicePresencePreset:](NIDevicePresenceConfiguration, "_radiusFromDevicePresencePreset:", [predicatesCopy devicePresencePreset]);
    v10 = v8 >= v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (float)_radiusFromDevicePresencePreset:(int64_t)preset
{
  if ((preset - 1) > 7)
  {
    return 3.4028e38;
  }

  else
  {
    return flt_1BAC84908[preset - 1];
  }
}

+ (const)_NIDevicePresenceMonitoringOptionToString:(unint64_t)string
{
  if (string - 1 > 2)
  {
    return "N/A";
  }

  else
  {
    return off_1E7F14128[string - 1];
  }
}

@end