@interface HKFeatureAttributes
+ (id)featureAttributesDerivedFromOSBuildAndFeatureVersion:(id)a3;
+ (id)featureAttributesDerivedFromOSBuildAndFeatureVersion:(id)a3 deviceIdentifier:(id)a4;
+ (id)featureAttributesDerivedFromOSBuildAndFeatureVersion:(id)a3 watchDeviceIdentifier:(id)a4 phoneDeviceIdentifier:(id)a5;
- (BOOL)isEqual:(id)a3;
- (HKFeatureAttributes)initWithCoder:(id)a3;
- (HKFeatureAttributes)initWithFeatureVersion:(id)a3 updateVersion:(id)a4 UDIDeviceIdentifier:(id)a5 yearOfRelease:(id)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKFeatureAttributes

+ (id)featureAttributesDerivedFromOSBuildAndFeatureVersion:(id)a3
{
  v3 = a3;
  v4 = +[_HKBehavior sharedBehavior];
  v5 = [v4 currentOSBuild];
  v6 = HKFeatureUpdateVersionFromMajorVersionAndBuildVersion(v3, v5);

  v7 = [[HKFeatureAttributes alloc] initWithFeatureVersion:v3 updateVersion:v6 UDIDeviceIdentifier:0 yearOfRelease:0];

  return v7;
}

+ (id)featureAttributesDerivedFromOSBuildAndFeatureVersion:(id)a3 watchDeviceIdentifier:(id)a4 phoneDeviceIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[_HKBehavior sharedBehavior];
  if ([v11 isAppleWatch])
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  v13 = v12;

  v14 = [a1 featureAttributesDerivedFromOSBuildAndFeatureVersion:v10 deviceIdentifier:v13];

  return v14;
}

+ (id)featureAttributesDerivedFromOSBuildAndFeatureVersion:(id)a3 deviceIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[_HKBehavior sharedBehavior];
  v8 = [v7 currentOSBuild];
  v9 = HKFeatureUpdateVersionFromMajorVersionAndBuildVersion(v6, v8);

  v10 = HKUDIDeviceIdentifierFromDeviceIdentifierAndBatchNumber(v5, v9);

  v11 = [[HKFeatureAttributes alloc] initWithFeatureVersion:v6 updateVersion:v9 UDIDeviceIdentifier:v10 yearOfRelease:@"2025"];

  return v11;
}

- (HKFeatureAttributes)initWithFeatureVersion:(id)a3 updateVersion:(id)a4 UDIDeviceIdentifier:(id)a5 yearOfRelease:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = HKFeatureAttributes;
  v14 = [(HKFeatureAttributes *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    featureVersion = v14->_featureVersion;
    v14->_featureVersion = v15;

    v17 = [v11 copy];
    updateVersion = v14->_updateVersion;
    v14->_updateVersion = v17;

    v19 = [v12 copy];
    UDIDeviceIdentifier = v14->_UDIDeviceIdentifier;
    v14->_UDIDeviceIdentifier = v19;

    v21 = [v13 copy];
    yearOfRelease = v14->_yearOfRelease;
    v14->_yearOfRelease = v21;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HKFeatureAttributes;
  if (![(HKFeatureAttributes *)&v16 isEqual:v4])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_19;
    }

    v6 = v4;
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

- (HKFeatureAttributes)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HKFeatureAttributes;
  v5 = [(HKFeatureAttributes *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"featureVersion"];
    featureVersion = v5->_featureVersion;
    v5->_featureVersion = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"updateVersion"];
    updateVersion = v5->_updateVersion;
    v5->_updateVersion = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UDIDeviceIdentifier"];
    UDIDeviceIdentifier = v5->_UDIDeviceIdentifier;
    v5->_UDIDeviceIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"yearOfRelease"];
    yearOfRelease = v5->_yearOfRelease;
    v5->_yearOfRelease = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  featureVersion = self->_featureVersion;
  v5 = a3;
  [v5 encodeObject:featureVersion forKey:@"featureVersion"];
  [v5 encodeObject:self->_updateVersion forKey:@"updateVersion"];
  [v5 encodeObject:self->_UDIDeviceIdentifier forKey:@"UDIDeviceIdentifier"];
  [v5 encodeObject:self->_yearOfRelease forKey:@"yearOfRelease"];
}

@end