@interface ASCOfferMetadata
+ (ASCOfferMetadata)deeplinkMetadata;
+ (ASCOfferMetadata)emptyMetadata;
+ (ASCOfferMetadata)indeterminateProgressMetadata;
+ (ASCOfferMetadata)placeholderMetadata;
+ (id)iconMetadataWithImageName:(id)name animationName:(id)animationName;
+ (id)progressMetadataWithValue:(double)value;
+ (id)textMetadataWithTitle:(id)title subtitle:(id)subtitle;
- (ASCOfferMetadata)init;
- (ASCOfferMetadata)initWithCoder:(id)coder;
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

+ (id)textMetadataWithTitle:(id)title subtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  titleCopy = title;
  v7 = [[ASCTextOfferMetadata alloc] initWithTitle:titleCopy subtitle:subtitleCopy];

  return v7;
}

+ (id)iconMetadataWithImageName:(id)name animationName:(id)animationName
{
  animationNameCopy = animationName;
  nameCopy = name;
  v7 = [[ASCIconOfferMetadata alloc] initWithBaseImageName:nameCopy animationName:animationNameCopy];

  return v7;
}

+ (ASCOfferMetadata)placeholderMetadata
{
  v2 = objc_alloc_init(ASCPlaceholderOfferMetadata);

  return v2;
}

+ (ASCOfferMetadata)indeterminateProgressMetadata
{
  initIndeterminate = [[ASCProgressOfferMetadata alloc] initIndeterminate];

  return initIndeterminate;
}

+ (id)progressMetadataWithValue:(double)value
{
  v3 = [[ASCProgressOfferMetadata alloc] initWithPercent:1 cancellable:value];

  return v3;
}

+ (ASCOfferMetadata)deeplinkMetadata
{
  v2 = objc_alloc_init(ASCDeeplinkOfferMetadata);

  return v2;
}

- (ASCOfferMetadata)initWithCoder:(id)coder
{
  +[ASCEligibility assertCurrentProcessEligibility];
  v5.receiver = self;
  v5.super_class = ASCOfferMetadata;
  return [(ASCOfferMetadata *)&v5 init];
}

@end