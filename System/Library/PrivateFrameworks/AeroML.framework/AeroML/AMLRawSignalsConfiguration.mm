@interface AMLRawSignalsConfiguration
- (AMLFeaturesSpecification)rawSignalsDescription;
- (AMLRawSignalsConfiguration)initWithBundleIdentifier:(id)a3 modelName:(id)a4 versionId:(id)a5 expirationPolicy:(int)a6 rawSignalsDescription:(id)a7;
- (AMLRawSignalsConfiguration)initWithBundleIdentifier:(id)a3 modelName:(id)a4 versionId:(id)a5 expirationPolicy:(int)a6 rawSignalsDescription:(id)a7 configurationId:(id)a8;
- (NSString)modelName;
- (void)encodeWithCoder:(id)a3;
- (void)setModelName:(id)a3;
- (void)setRawSignalsDescription:(id)a3;
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

- (void)setModelName:(id)a3
{
  if (a3)
  {
    v4 = sub_21AF097CC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_21AF01128(v4, v6);
}

- (AMLFeaturesSpecification)rawSignalsDescription
{
  v2 = sub_21AF012AC();

  return v2;
}

- (void)setRawSignalsDescription:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21AF01314(v4);
}

- (AMLRawSignalsConfiguration)initWithBundleIdentifier:(id)a3 modelName:(id)a4 versionId:(id)a5 expirationPolicy:(int)a6 rawSignalsDescription:(id)a7
{
  sub_21AF097CC();
  if (a4)
  {
    sub_21AF097CC();
  }

  sub_21AF097CC();
  v9 = a7;
  AMLRawSignalsConfiguration.init(bundleIdentifier:modelName:versionId:expirationPolicy:rawSignalsDescription:)();
  return result;
}

- (AMLRawSignalsConfiguration)initWithBundleIdentifier:(id)a3 modelName:(id)a4 versionId:(id)a5 expirationPolicy:(int)a6 rawSignalsDescription:(id)a7 configurationId:(id)a8
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
  return sub_21AF01810(v10, v12, a4, v14, v15, v17, a6, a7, v18, v19);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  AMLRawSignalsConfiguration.encode(with:)(v4);
}

@end