@interface NTKUtilityRichFaceBundle
- (id)galleryTitle;
@end

@implementation NTKUtilityRichFaceBundle

- (id)galleryTitle
{
  if (_os_feature_enabled_impl())
  {
    v6.receiver = self;
    v6.super_class = NTKUtilityRichFaceBundle;
    galleryTitle = [(NTKUtilityFaceBundle *)&v6 galleryTitle];
    v4 = [NSString stringWithFormat:@"%@ (Legacy)", galleryTitle];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end