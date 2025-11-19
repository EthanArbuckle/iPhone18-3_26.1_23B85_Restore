@interface ASDAppCapabilityMetadata
+ (id)metadataWithAction:(int64_t)a3 bundleID:(id)a4 capabilities:(id)a5;
+ (id)metadataWithAction:(int64_t)a3 entitlements:(id)a4 infoPlist:(id)a5;
- (ASDAppCapabilityMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setSupportsFeatureB:(BOOL)a3;
@end

@implementation ASDAppCapabilityMetadata

+ (id)metadataWithAction:(int64_t)a3 entitlements:(id)a4 infoPlist:(id)a5
{
  v6 = objc_opt_new();
  [v6 setAction:a3];
  [v6 setFeatures:0];

  return v6;
}

+ (id)metadataWithAction:(int64_t)a3 bundleID:(id)a4 capabilities:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = objc_opt_new();
  [v9 setAction:a3];
  [v9 setBundleID:v8];

  v10 = ([v7 containsObject:@"a"] & 1) != 0 || objc_msgSend(v7, "containsObject:", @"supports-alternate-distribution");
  if ([v7 containsObject:@"is-custom-browser-engine-app"])
  {
    v10 |= 2uLL;
  }

  if ([v7 containsObject:@"uses-non-webkit-browser-engine"])
  {
    v11 = v10 | 2;
  }

  else
  {
    v11 = v10;
  }

  [v9 setFeatures:v11];

  return v9;
}

- (void)setSupportsFeatureB:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  self->_features = self->_features & 0xFFFFFFFFFFFFFFFDLL | v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDAppCapabilityMetadata allocWithZone:](ASDAppCapabilityMetadata init];
  v5->_action = self->_action;
  v6 = [(NSString *)self->_bundleID copyWithZone:a3];
  bundleID = v5->_bundleID;
  v5->_bundleID = v6;

  v5->_features = self->_features;
  return v5;
}

- (ASDAppCapabilityMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASDAppCapabilityMetadata *)self init];
  if (v5)
  {
    v5->_action = [v4 decodeIntegerForKey:@"A"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"B"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v5->_features = [v4 decodeIntegerForKey:@"C"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  action = self->_action;
  v5 = a3;
  [v5 encodeInteger:action forKey:@"A"];
  [v5 encodeObject:self->_bundleID forKey:@"B"];
  [v5 encodeInteger:self->_features forKey:@"C"];
}

- (id)description
{
  if ([(NSString *)self->_bundleID length])
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", self->_bundleID];
  }

  else
  {
    v3 = &stru_1F30184F0;
  }

  action = self->_action;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Action: %ld Features: %ld", v3, action, self->_features];

  return v5;
}

@end