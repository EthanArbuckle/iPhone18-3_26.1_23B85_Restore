@interface AMLFeaturesConfiguration
- (AMLFeaturesConfiguration)initWithBundleIdentifier:(id)identifier modelName:(id)name versionId:(id)id expirationPolicy:(int)policy featuresDescription:(id)description;
- (AMLFeaturesConfiguration)initWithBundleIdentifier:(id)identifier modelName:(id)name versionId:(id)id expirationPolicy:(int)policy featuresDescription:(id)description configurationId:(id)configurationId;
- (AMLFeaturesSpecification)featuresDescription;
- (NSString)modelName;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMLFeaturesConfiguration

- (NSString)modelName
{
  sub_21AEECBF8();
  if (v2)
  {
    v3 = sub_21AF097BC();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (AMLFeaturesSpecification)featuresDescription
{
  v2 = sub_21AEECCD0();

  return v2;
}

- (AMLFeaturesConfiguration)initWithBundleIdentifier:(id)identifier modelName:(id)name versionId:(id)id expirationPolicy:(int)policy featuresDescription:(id)description
{
  v10 = sub_21AF097CC();
  v12 = v11;
  if (name)
  {
    name = sub_21AF097CC();
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_21AF097CC();
  return AMLFeaturesConfiguration.init(bundleIdentifier:modelName:versionId:expirationPolicy:featuresDescription:)(v10, v12, name, v14, v15, v16, policy, description);
}

- (AMLFeaturesConfiguration)initWithBundleIdentifier:(id)identifier modelName:(id)name versionId:(id)id expirationPolicy:(int)policy featuresDescription:(id)description configurationId:(id)configurationId
{
  v10 = sub_21AF097CC();
  v12 = v11;
  if (name)
  {
    name = sub_21AF097CC();
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_21AF097CC();
  v17 = v16;
  v18 = sub_21AF097CC();
  return sub_21AEED1A4(v10, v12, name, v14, v15, v17, policy, description, v18, v19);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  AMLFeaturesConfiguration.encode(with:)(coderCopy);
}

@end