@interface AMLFeaturesDonationMetadata
- (AMLFeaturesDonationMetadata)initWithSessionId:(id)a3 metadata:(id)a4;
- (NSDictionary)metadata;
- (void)encodeWithCoder:(id)a3;
- (void)setMetadata:(id)a3;
- (void)setSessionId:(id)a3;
@end

@implementation AMLFeaturesDonationMetadata

- (void)setSessionId:(id)a3
{
  v4 = sub_21AF097CC();
  v6 = v5;
  v7 = self;
  sub_21AEEE624(v4, v6);
}

- (NSDictionary)metadata
{
  if (sub_21AEEE6B0())
  {
    v2 = sub_21AF0971C();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setMetadata:(id)a3
{
  if (a3)
  {
    v4 = sub_21AF0972C();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_21AEEE748(v4);
}

- (AMLFeaturesDonationMetadata)initWithSessionId:(id)a3 metadata:(id)a4
{
  v5 = sub_21AF097CC();
  v7 = v6;
  if (a4)
  {
    v8 = sub_21AF0972C();
  }

  else
  {
    v8 = 0;
  }

  return AMLFeaturesDonationMetadata.init(sessionId:metadata:)(v5, v7, v8);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21AEEE9F4();
}

@end