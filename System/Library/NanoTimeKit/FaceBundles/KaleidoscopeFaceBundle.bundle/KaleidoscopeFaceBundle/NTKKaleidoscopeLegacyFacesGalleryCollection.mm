@interface NTKKaleidoscopeLegacyFacesGalleryCollection
- (id)title;
@end

@implementation NTKKaleidoscopeLegacyFacesGalleryCollection

- (id)title
{
  if (_os_feature_enabled_impl())
  {
    v6.receiver = self;
    v6.super_class = NTKKaleidoscopeLegacyFacesGalleryCollection;
    v3 = [(NTKKaleidoscopeFacesGalleryCollection *)&v6 title];
    v4 = [NSString stringWithFormat:@"%@ (Legacy)", v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end