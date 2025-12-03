@interface INIntentDonationMetadata
+ (Class)_intentClass;
- (INIntentDonationMetadata)initWithCoder:(id)coder;
- (id)_init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation INIntentDonationMetadata

- (INIntentDonationMetadata)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INIntentDonationMetadata;
  return [(INIntentDonationMetadata *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 _init];
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = INIntentDonationMetadata;
  return [(INIntentDonationMetadata *)&v3 init];
}

+ (Class)_intentClass
{
  result = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"+[INIntentDonationMetadata _intentClass] must be overridden"];
  __break(1u);
  return result;
}

@end