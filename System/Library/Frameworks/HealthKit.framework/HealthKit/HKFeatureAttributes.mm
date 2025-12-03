@interface HKFeatureAttributes
+ (id)featureAttributesDerivedFromOSBuildAndFeatureVersion:(id)version;
+ (id)featureAttributesDerivedFromOSBuildAndFeatureVersion:(id)version deviceIdentifier:(id)identifier;
+ (id)featureAttributesDerivedFromOSBuildAndFeatureVersion:(id)version watchDeviceIdentifier:(id)identifier phoneDeviceIdentifier:(id)deviceIdentifier;
- (BOOL)isEqual:(id)equal;
- (HKFeatureAttributes)initWithCoder:(id)coder;
- (HKFeatureAttributes)initWithFeatureVersion:(id)version updateVersion:(id)updateVersion UDIDeviceIdentifier:(id)identifier yearOfRelease:(id)release;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKFeatureAttributes

+ (id)featureAttributesDerivedFromOSBuildAndFeatureVersion:(id)version
{
  versionCopy = version;
  v4 = +[_HKBehavior sharedBehavior];
  currentOSBuild = [v4 currentOSBuild];
  v6 = HKFeatureUpdateVersionFromMajorVersionAndBuildVersion(versionCopy, currentOSBuild);

  v7 = [[HKFeatureAttributes alloc] initWithFeatureVersion:versionCopy updateVersion:v6 UDIDeviceIdentifier:0 yearOfRelease:0];

  return v7;
}

+ (id)featureAttributesDerivedFromOSBuildAndFeatureVersion:(id)version watchDeviceIdentifier:(id)identifier phoneDeviceIdentifier:(id)deviceIdentifier
{
  deviceIdentifierCopy = deviceIdentifier;
  identifierCopy = identifier;
  versionCopy = version;
  v11 = +[_HKBehavior sharedBehavior];
  if ([v11 isAppleWatch])
  {
    v12 = identifierCopy;
  }

  else
  {
    v12 = deviceIdentifierCopy;
  }

  v13 = v12;

  v14 = [self featureAttributesDerivedFromOSBuildAndFeatureVersion:versionCopy deviceIdentifier:v13];

  return v14;
}

+ (id)featureAttributesDerivedFromOSBuildAndFeatureVersion:(id)version deviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  versionCopy = version;
  v7 = +[_HKBehavior sharedBehavior];
  currentOSBuild = [v7 currentOSBuild];
  v9 = HKFeatureUpdateVersionFromMajorVersionAndBuildVersion(versionCopy, currentOSBuild);

  v10 = HKUDIDeviceIdentifierFromDeviceIdentifierAndBatchNumber(identifierCopy, v9);

  v11 = [[HKFeatureAttributes alloc] initWithFeatureVersion:versionCopy updateVersion:v9 UDIDeviceIdentifier:v10 yearOfRelease:@"2025"];

  return v11;
}

- (HKFeatureAttributes)initWithFeatureVersion:(id)version updateVersion:(id)updateVersion UDIDeviceIdentifier:(id)identifier yearOfRelease:(id)release
{
  versionCopy = version;
  updateVersionCopy = updateVersion;
  identifierCopy = identifier;
  releaseCopy = release;
  v24.receiver = self;
  v24.super_class = HKFeatureAttributes;
  v14 = [(HKFeatureAttributes *)&v24 init];
  if (v14)
  {
    v15 = [versionCopy copy];
    featureVersion = v14->_featureVersion;
    v14->_featureVersion = v15;

    v17 = [updateVersionCopy copy];
    updateVersion = v14->_updateVersion;
    v14->_updateVersion = v17;

    v19 = [identifierCopy copy];
    UDIDeviceIdentifier = v14->_UDIDeviceIdentifier;
    v14->_UDIDeviceIdentifier = v19;

    v21 = [releaseCopy copy];
    yearOfRelease = v14->_yearOfRelease;
    v14->_yearOfRelease = v21;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v16.receiver = self;
  v16.super_class = HKFeatureAttributes;
  if (![(HKFeatureAttributes *)&v16 isEqual:equalCopy])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_19;
    }

    v6 = equalCopy;
    featureVersion = self->_featureVersion;
    v8 = v6[1];
    if (featureVersion != v8 && (!v8 || ![(NSString *)featureVersion isEqualToString:?]))
    {
      goto LABEL_17;
    }

    updateVersion = self->_updateVersion;
    v10 = v6[2];
    if (updateVersion != v10 && (!v10 || ![(NSString *)updateVersion isEqualToString:?]))
    {
      goto LABEL_17;
    }

    UDIDeviceIdentifier = self->_UDIDeviceIdentifier;
    v12 = v6[3];
    if (UDIDeviceIdentifier != v12 && (!v12 || ![(NSString *)UDIDeviceIdentifier isEqualToString:?]))
    {
      goto LABEL_17;
    }

    yearOfRelease = self->_yearOfRelease;
    v14 = v6[4];
    if (yearOfRelease == v14)
    {
      v5 = 1;
      goto LABEL_18;
    }

    if (v14)
    {
      v5 = [(NSString *)yearOfRelease isEqualToString:?];
    }

    else
    {
LABEL_17:
      v5 = 0;
    }

LABEL_18:

    goto LABEL_19;
  }

  v5 = 1;
LABEL_19:

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_featureVersion hash];
  v4 = [(NSString *)self->_updateVersion hash]^ v3;
  v5 = [(NSString *)self->_UDIDeviceIdentifier hash];
  return v4 ^ v5 ^ [(NSString *)self->_yearOfRelease hash];
}

- (HKFeatureAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = HKFeatureAttributes;
  v5 = [(HKFeatureAttributes *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"featureVersion"];
    featureVersion = v5->_featureVersion;
    v5->_featureVersion = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"updateVersion"];
    updateVersion = v5->_updateVersion;
    v5->_updateVersion = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UDIDeviceIdentifier"];
    UDIDeviceIdentifier = v5->_UDIDeviceIdentifier;
    v5->_UDIDeviceIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"yearOfRelease"];
    yearOfRelease = v5->_yearOfRelease;
    v5->_yearOfRelease = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  featureVersion = self->_featureVersion;
  coderCopy = coder;
  [coderCopy encodeObject:featureVersion forKey:@"featureVersion"];
  [coderCopy encodeObject:self->_updateVersion forKey:@"updateVersion"];
  [coderCopy encodeObject:self->_UDIDeviceIdentifier forKey:@"UDIDeviceIdentifier"];
  [coderCopy encodeObject:self->_yearOfRelease forKey:@"yearOfRelease"];
}

@end