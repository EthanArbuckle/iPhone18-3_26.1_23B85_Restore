@interface SFImage(IntentsUI)
- (INUISearchFoundationImageAdapter)downcastToIntentsUIVariantIfApplicable;
@end

@implementation SFImage(IntentsUI)

- (INUISearchFoundationImageAdapter)downcastToIntentsUIVariantIfApplicable
{
  v1 = [[INUISearchFoundationImageAdapter alloc] initWithPayloadImage:self];
  intentsImage = [(INUISearchFoundationImageAdapter *)v1 intentsImage];

  if (intentsImage)
  {
    intentsImage = v1;
  }

  return intentsImage;
}

@end