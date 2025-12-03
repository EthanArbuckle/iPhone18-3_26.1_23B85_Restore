@interface VKLabelMarker(MKTransitArtworkExtras)
- (id)shieldDataSource;
@end

@implementation VKLabelMarker(MKTransitArtworkExtras)

- (id)shieldDataSource
{
  shields = [self shields];
  firstObject = [shields firstObject];

  return firstObject;
}

@end