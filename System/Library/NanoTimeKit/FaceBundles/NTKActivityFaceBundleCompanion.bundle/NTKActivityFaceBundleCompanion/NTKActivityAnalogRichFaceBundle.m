@interface NTKActivityAnalogRichFaceBundle
- (id)galleryTitleForDevice:(id)a3;
@end

@implementation NTKActivityAnalogRichFaceBundle

- (id)galleryTitleForDevice:(id)a3
{
  if (_os_feature_enabled_impl())
  {
    v7.receiver = self;
    v7.super_class = NTKActivityAnalogRichFaceBundle;
    v4 = [(NTKActivityAnalogRichFaceBundle *)&v7 galleryTitle];
    v5 = [NSString stringWithFormat:@"%@ (Legacy)", v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end