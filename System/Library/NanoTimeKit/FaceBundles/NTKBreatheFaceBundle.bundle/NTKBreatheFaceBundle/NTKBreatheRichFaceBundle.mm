@interface NTKBreatheRichFaceBundle
- (id)galleryTitle;
@end

@implementation NTKBreatheRichFaceBundle

- (id)galleryTitle
{
  if (_os_feature_enabled_impl())
  {
    v6.receiver = self;
    v6.super_class = NTKBreatheRichFaceBundle;
    galleryTitle = [(NTKBreatheFaceBundle *)&v6 galleryTitle];
    v4 = [NSString stringWithFormat:@"%@ (Legacy)", galleryTitle];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end