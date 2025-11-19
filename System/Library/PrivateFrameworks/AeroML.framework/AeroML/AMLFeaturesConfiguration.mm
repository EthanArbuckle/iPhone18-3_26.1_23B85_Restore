@interface AMLFeaturesConfiguration
- (AMLFeaturesConfiguration)initWithBundleIdentifier:(id)a3 modelName:(id)a4 versionId:(id)a5 expirationPolicy:(int)a6 featuresDescription:(id)a7;
- (AMLFeaturesConfiguration)initWithBundleIdentifier:(id)a3 modelName:(id)a4 versionId:(id)a5 expirationPolicy:(int)a6 featuresDescription:(id)a7 configurationId:(id)a8;
- (AMLFeaturesSpecification)featuresDescription;
- (NSString)modelName;
- (void)encodeWithCoder:(id)a3;
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

- (AMLFeaturesConfiguration)initWithBundleIdentifier:(id)a3 modelName:(id)a4 versionId:(id)a5 expirationPolicy:(int)a6 featuresDescription:(id)a7
{
  v10 = sub_21AF097CC();
  v12 = v11;
  if (a4)
  {
    a4 = sub_21AF097CC();
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_21AF097CC();
  return AMLFeaturesConfiguration.init(bundleIdentifier:modelName:versionId:expirationPolicy:featuresDescription:)(v10, v12, a4, v14, v15, v16, a6, a7);
}

- (AMLFeaturesConfiguration)initWithBundleIdentifier:(id)a3 modelName:(id)a4 versionId:(id)a5 expirationPolicy:(int)a6 featuresDescription:(id)a7 configurationId:(id)a8
{
  v10 = sub_21AF097CC();
  v12 = v11;
  if (a4)
  {
    a4 = sub_21AF097CC();
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_21AF097CC();
  v17 = v16;
  v18 = sub_21AF097CC();
  return sub_21AEED1A4(v10, v12, a4, v14, v15, v17, a6, a7, v18, v19);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  AMLFeaturesConfiguration.encode(with:)(v4);
}

@end