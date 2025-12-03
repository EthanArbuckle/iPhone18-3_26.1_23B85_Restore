@interface NTKActivityAnalogRichFaceBundle
- (id)galleryTitleForDevice:(id)device;
@end

@implementation NTKActivityAnalogRichFaceBundle

- (id)galleryTitleForDevice:(id)device
{
  if (_os_feature_enabled_impl())
  {
    v7.receiver = self;
    v7.super_class = NTKActivityAnalogRichFaceBundle;
    galleryTitle = [(NTKActivityAnalogRichFaceBundle *)&v7 galleryTitle];
    v5 = [NSString stringWithFormat:@"%@ (Legacy)", galleryTitle];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end