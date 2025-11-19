@interface NTKChronographRichFaceBundle
- (id)galleryTitle;
@end

@implementation NTKChronographRichFaceBundle

- (id)galleryTitle
{
  if (_os_feature_enabled_impl())
  {
    v6.receiver = self;
    v6.super_class = NTKChronographRichFaceBundle;
    v3 = [(NTKChronographFaceBundle *)&v6 galleryTitle];
    v4 = [NSString stringWithFormat:@"%@ (Legacy)", v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end