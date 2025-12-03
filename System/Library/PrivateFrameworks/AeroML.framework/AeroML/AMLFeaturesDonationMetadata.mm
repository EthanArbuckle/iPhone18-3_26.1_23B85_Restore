@interface AMLFeaturesDonationMetadata
- (AMLFeaturesDonationMetadata)initWithSessionId:(id)id metadata:(id)metadata;
- (NSDictionary)metadata;
- (void)encodeWithCoder:(id)coder;
- (void)setMetadata:(id)metadata;
- (void)setSessionId:(id)id;
@end

@implementation AMLFeaturesDonationMetadata

- (void)setSessionId:(id)id
{
  v4 = sub_21AF097CC();
  v6 = v5;
  selfCopy = self;
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

- (void)setMetadata:(id)metadata
{
  if (metadata)
  {
    v4 = sub_21AF0972C();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_21AEEE748(v4);
}

- (AMLFeaturesDonationMetadata)initWithSessionId:(id)id metadata:(id)metadata
{
  v5 = sub_21AF097CC();
  v7 = v6;
  if (metadata)
  {
    v8 = sub_21AF0972C();
  }

  else
  {
    v8 = 0;
  }

  return AMLFeaturesDonationMetadata.init(sessionId:metadata:)(v5, v7, v8);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_21AEEE9F4();
}

@end