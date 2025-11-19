@interface ASCDeeplinkOfferMetadata
- (ASCDeeplinkOfferMetadata)init;
- (ASCDeeplinkOfferMetadata)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
@end

@implementation ASCDeeplinkOfferMetadata

- (ASCDeeplinkOfferMetadata)init
{
  v3.receiver = self;
  v3.super_class = ASCDeeplinkOfferMetadata;
  return [(ASCOfferMetadata *)&v3 _init];
}

- (ASCDeeplinkOfferMetadata)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = ASCDeeplinkOfferMetadata;
  return [(ASCOfferMetadata *)&v4 initWithCoder:a3];
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v3 = a3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

@end