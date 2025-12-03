@interface MSSSettingsUtilities
+ (id)photosMainPaneLocalizedResource;
+ (id)sharedLibraryPaneLocalizedResource;
@end

@implementation MSSSettingsUtilities

+ (id)sharedLibraryPaneLocalizedResource
{
  v2 = [_NSLocalizedStringResource alloc];
  v3 = +[NSLocale currentLocale];
  v4 = +[NSBundle px_bundle];
  bundleURL = [v4 bundleURL];
  v6 = [v2 initWithKey:@"PXSharedLibrary_Profile_SharedLibrarySectionTitle" table:@"PhotosUICoreSharedLibrary" locale:v3 bundleURL:bundleURL];

  return v6;
}

+ (id)photosMainPaneLocalizedResource
{
  v3 = [_NSLocalizedStringResource alloc];
  v4 = +[NSLocale currentLocale];
  v5 = [NSBundle bundleForClass:self];
  bundleURL = [v5 bundleURL];
  v7 = [v3 initWithKey:@"PHOTOS" table:@"Photos" locale:v4 bundleURL:bundleURL];

  return v7;
}

@end