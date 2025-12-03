@interface NTKFireWaterRichFaceBundle
- (id)galleryTitle;
@end

@implementation NTKFireWaterRichFaceBundle

- (id)galleryTitle
{
  if (_os_feature_enabled_impl())
  {
    v6.receiver = self;
    v6.super_class = NTKFireWaterRichFaceBundle;
    galleryTitle = [(NTKFireWaterFaceBundle *)&v6 galleryTitle];
    v4 = [NSString stringWithFormat:@"%@ (Legacy)", galleryTitle];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end