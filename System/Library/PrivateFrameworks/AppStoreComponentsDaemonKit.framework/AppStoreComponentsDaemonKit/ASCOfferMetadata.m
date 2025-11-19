@interface ASCOfferMetadata
+ (ASCOfferMetadata)deeplinkMetadata;
+ (ASCOfferMetadata)emptyMetadata;
+ (ASCOfferMetadata)indeterminateProgressMetadata;
+ (ASCOfferMetadata)placeholderMetadata;
+ (id)iconMetadataWithImageName:(id)a3 animationName:(id)a4;
+ (id)progressMetadataWithValue:(double)a3;
+ (id)textMetadataWithTitle:(id)a3 subtitle:(id)a4;
- (ASCOfferMetadata)init;
- (ASCOfferMetadata)initWithCoder:(id)a3;
- (id)_init;
@end

@implementation ASCOfferMetadata

- (id)_init
{
  v3.receiver = self;
  v3.super_class = ASCOfferMetadata;
  return [(ASCOfferMetadata *)&v3 init];
}

- (ASCOfferMetadata)init
{
  [(ASCOfferMetadata *)self doesNotRecognizeSelector:a2];

  return 0;
}

+ (ASCOfferMetadata)emptyMetadata
{
  v2 = objc_alloc_init(ASCEmptyOfferMetadata);

  return v2;
}

+ (id)textMetadataWithTitle:(id)a3 subtitle:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[ASCTextOfferMetadata alloc] initWithTitle:v6 subtitle:v5];

  return v7;
}

+ (id)iconMetadataWithImageName:(id)a3 animationName:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[ASCIconOfferMetadata alloc] initWithBaseImageName:v6 animationName:v5];

  return v7;
}

+ (ASCOfferMetadata)placeholderMetadata
{
  v2 = objc_alloc_init(ASCPlaceholderOfferMetadata);

  return v2;
}

+ (ASCOfferMetadata)indeterminateProgressMetadata
{
  v2 = [[ASCProgressOfferMetadata alloc] initIndeterminate];

  return v2;
}

+ (id)progressMetadataWithValue:(double)a3
{
  v3 = [[ASCProgressOfferMetadata alloc] initWithPercent:1 cancellable:a3];

  return v3;
}

+ (ASCOfferMetadata)deeplinkMetadata
{
  v2 = objc_alloc_init(ASCDeeplinkOfferMetadata);

  return v2;
}

- (ASCOfferMetadata)initWithCoder:(id)a3
{
  +[ASCEligibility assertCurrentProcessEligibility];
  v5.receiver = self;
  v5.super_class = ASCOfferMetadata;
  return [(ASCOfferMetadata *)&v5 init];
}

@end