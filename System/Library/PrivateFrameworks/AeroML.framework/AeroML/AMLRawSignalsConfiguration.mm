@interface AMLRawSignalsConfiguration
- (AMLFeaturesSpecification)rawSignalsDescription;
- (AMLRawSignalsConfiguration)initWithBundleIdentifier:(id)identifier modelName:(id)name versionId:(id)id expirationPolicy:(int)policy rawSignalsDescription:(id)description;
- (AMLRawSignalsConfiguration)initWithBundleIdentifier:(id)identifier modelName:(id)name versionId:(id)id expirationPolicy:(int)policy rawSignalsDescription:(id)description configurationId:(id)configurationId;
- (NSString)modelName;
- (void)encodeWithCoder:(id)coder;
- (void)setModelName:(id)name;
- (void)setRawSignalsDescription:(id)description;
@end

@implementation AMLRawSignalsConfiguration

- (NSString)modelName
{
  sub_21AF0107C();
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

- (void)setModelName:(id)name
{
  if (name)
  {
    v4 = sub_21AF097CC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_21AF01128(v4, v6);
}

- (AMLFeaturesSpecification)rawSignalsDescription
{
  v2 = sub_21AF012AC();

  return v2;
}

- (void)setRawSignalsDescription:(id)description
{
  descriptionCopy = description;
  selfCopy = self;
  sub_21AF01314(descriptionCopy);
}

- (AMLRawSignalsConfiguration)initWithBundleIdentifier:(id)identifier modelName:(id)name versionId:(id)id expirationPolicy:(int)policy rawSignalsDescription:(id)description
{
  sub_21AF097CC();
  if (name)
  {
    sub_21AF097CC();
  }

  sub_21AF097CC();
  descriptionCopy = description;
  AMLRawSignalsConfiguration.init(bundleIdentifier:modelName:versionId:expirationPolicy:rawSignalsDescription:)();
  return result;
}

- (AMLRawSignalsConfiguration)initWithBundleIdentifier:(id)identifier modelName:(id)name versionId:(id)id expirationPolicy:(int)policy rawSignalsDescription:(id)description configurationId:(id)configurationId
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
  return sub_21AF01810(v10, v12, name, v14, v15, v17, policy, description, v18, v19);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  AMLRawSignalsConfiguration.encode(with:)(coderCopy);
}

@end