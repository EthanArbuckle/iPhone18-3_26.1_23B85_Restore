@interface MPModelSong
+ (id)requiredLibraryNavigationHandlerProperties;
+ (id)requiredStoreNavigationHandlerProperties;
- (NSString)musicTypeIdentifier;
- (double)preferredArtworkAspectRatio;
@end

@implementation MPModelSong

- (NSString)musicTypeIdentifier
{
  v2 = sub_AB9260();

  return v2;
}

+ (id)requiredStoreNavigationHandlerProperties
{
  v2 = sub_1597EC();

  return v2;
}

+ (id)requiredLibraryNavigationHandlerProperties
{
  v2 = sub_15A3D4();

  return v2;
}

- (double)preferredArtworkAspectRatio
{
  v2 = self;
  v3 = sub_79EF88();

  return v3;
}

@end