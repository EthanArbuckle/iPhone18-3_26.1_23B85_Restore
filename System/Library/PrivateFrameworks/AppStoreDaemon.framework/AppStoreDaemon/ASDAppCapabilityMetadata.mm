@interface ASDAppCapabilityMetadata
+ (id)metadataWithAction:(int64_t)action bundleID:(id)d capabilities:(id)capabilities;
+ (id)metadataWithAction:(int64_t)action entitlements:(id)entitlements infoPlist:(id)plist;
- (ASDAppCapabilityMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setSupportsFeatureB:(BOOL)b;
@end

@implementation ASDAppCapabilityMetadata

+ (id)metadataWithAction:(int64_t)action entitlements:(id)entitlements infoPlist:(id)plist
{
  v6 = objc_opt_new();
  [v6 setAction:action];
  [v6 setFeatures:0];

  return v6;
}

+ (id)metadataWithAction:(int64_t)action bundleID:(id)d capabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  dCopy = d;
  v9 = objc_opt_new();
  [v9 setAction:action];
  [v9 setBundleID:dCopy];

  v10 = ([capabilitiesCopy containsObject:@"a"] & 1) != 0 || objc_msgSend(capabilitiesCopy, "containsObject:", @"supports-alternate-distribution");
  if ([capabilitiesCopy containsObject:@"is-custom-browser-engine-app"])
  {
    v10 |= 2uLL;
  }

  if ([capabilitiesCopy containsObject:@"uses-non-webkit-browser-engine"])
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

- (void)setSupportsFeatureB:(BOOL)b
{
  v3 = 2;
  if (!b)
  {
    v3 = 0;
  }

  self->_features = self->_features & 0xFFFFFFFFFFFFFFFDLL | v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDAppCapabilityMetadata allocWithZone:](ASDAppCapabilityMetadata init];
  v5->_action = self->_action;
  v6 = [(NSString *)self->_bundleID copyWithZone:zone];
  bundleID = v5->_bundleID;
  v5->_bundleID = v6;

  v5->_features = self->_features;
  return v5;
}

- (ASDAppCapabilityMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASDAppCapabilityMetadata *)self init];
  if (v5)
  {
    v5->_action = [coderCopy decodeIntegerForKey:@"A"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"B"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v5->_features = [coderCopy decodeIntegerForKey:@"C"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  action = self->_action;
  coderCopy = coder;
  [coderCopy encodeInteger:action forKey:@"A"];
  [coderCopy encodeObject:self->_bundleID forKey:@"B"];
  [coderCopy encodeInteger:self->_features forKey:@"C"];
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