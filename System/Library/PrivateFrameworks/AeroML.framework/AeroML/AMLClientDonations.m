@interface AMLClientDonations
- (AMLClientDonations)initWithFeaturesConfiguration:(id)a3 featureProvider:(id)a4 batchProvider:(id)a5 arrayProvider:(id)a6 metadata:(id)a7 donationTime:(id)a8;
- (AMLFeaturesConfiguration)featuresConfiguration;
- (AMLFeaturesDonationMetadata)metadata;
- (MLArrayBatchProvider)arrayProvider;
- (MLBatchProvider)batchProvider;
- (MLFeatureProvider)featureProvider;
- (NSString)donationTime;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
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

- (AMLClientDonations)initWithFeaturesConfiguration:(id)a3 featureProvider:(id)a4 batchProvider:(id)a5 arrayProvider:(id)a6 metadata:(id)a7 donationTime:(id)a8
{
  if (a8)
  {
    v13 = sub_21AF097CC();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v17 = a6;
  v18 = a7;
  return AMLClientDonations.init(featuresConfiguration:featureProvider:batchProvider:arrayProvider:metadata:donationTime:)(a3, a4, a5, a6, a7, v13, v15);
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  AMLClientDonations.copy(with:)(v6);

  sub_21AEAF9B0(v6, v6[3]);
  v4 = sub_21AF09E3C();
  sub_21AEA79F0(v6);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  AMLClientDonations.encode(with:)(v4);
}

@end