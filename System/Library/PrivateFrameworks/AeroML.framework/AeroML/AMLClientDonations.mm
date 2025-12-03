@interface AMLClientDonations
- (AMLClientDonations)initWithFeaturesConfiguration:(id)configuration featureProvider:(id)provider batchProvider:(id)batchProvider arrayProvider:(id)arrayProvider metadata:(id)metadata donationTime:(id)time;
- (AMLFeaturesConfiguration)featuresConfiguration;
- (AMLFeaturesDonationMetadata)metadata;
- (MLArrayBatchProvider)arrayProvider;
- (MLBatchProvider)batchProvider;
- (MLFeatureProvider)featureProvider;
- (NSString)donationTime;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMLClientDonations

- (MLFeatureProvider)featureProvider
{
  v2 = sub_21AED1F94();

  return v2;
}

- (MLBatchProvider)batchProvider
{
  v2 = sub_21AED1FD4();

  return v2;
}

- (MLArrayBatchProvider)arrayProvider
{
  v2 = sub_21AED2014();

  return v2;
}

- (AMLFeaturesConfiguration)featuresConfiguration
{
  v2 = sub_21AED2078();

  return v2;
}

- (AMLFeaturesDonationMetadata)metadata
{
  v2 = sub_21AED20DC();

  return v2;
}

- (NSString)donationTime
{
  sub_21AED2164();
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

- (AMLClientDonations)initWithFeaturesConfiguration:(id)configuration featureProvider:(id)provider batchProvider:(id)batchProvider arrayProvider:(id)arrayProvider metadata:(id)metadata donationTime:(id)time
{
  if (time)
  {
    v13 = sub_21AF097CC();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  configurationCopy = configuration;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  arrayProviderCopy = arrayProvider;
  metadataCopy = metadata;
  return AMLClientDonations.init(featuresConfiguration:featureProvider:batchProvider:arrayProvider:metadata:donationTime:)(configuration, provider, batchProvider, arrayProvider, metadata, v13, v15);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  AMLClientDonations.copy(with:)(v6);

  sub_21AEAF9B0(v6, v6[3]);
  v4 = sub_21AF09E3C();
  sub_21AEA79F0(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  AMLClientDonations.encode(with:)(coderCopy);
}

@end