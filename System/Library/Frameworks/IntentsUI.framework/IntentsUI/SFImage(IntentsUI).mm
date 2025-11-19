@interface SFImage(IntentsUI)
- (INUISearchFoundationImageAdapter)downcastToIntentsUIVariantIfApplicable;
@end

@implementation SFImage(IntentsUI)

- (INUISearchFoundationImageAdapter)downcastToIntentsUIVariantIfApplicable
{
  v1 = [[INUISearchFoundationImageAdapter alloc] initWithPayloadImage:a1];
  v2 = [(INUISearchFoundationImageAdapter *)v1 intentsImage];

  if (v2)
  {
    v2 = v1;
  }

  return v2;
}

@end