@interface ASCDeeplinkOfferMetadata
- (ASCDeeplinkOfferMetadata)init;
- (ASCDeeplinkOfferMetadata)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
@end

@implementation ASCDeeplinkOfferMetadata

- (ASCDeeplinkOfferMetadata)init
{
  v3.receiver = self;
  v3.super_class = ASCDeeplinkOfferMetadata;
  return [(ASCOfferMetadata *)&v3 _init];
}

- (ASCDeeplinkOfferMetadata)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = ASCDeeplinkOfferMetadata;
  return [(ASCOfferMetadata *)&v4 initWithCoder:coder];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    equalCopy = equal;
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