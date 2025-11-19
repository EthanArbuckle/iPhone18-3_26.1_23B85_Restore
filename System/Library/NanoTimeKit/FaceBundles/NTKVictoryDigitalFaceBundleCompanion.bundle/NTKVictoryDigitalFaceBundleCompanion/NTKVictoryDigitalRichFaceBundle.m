@interface NTKVictoryDigitalRichFaceBundle
- (id)galleryTitle;
@end

@implementation NTKVictoryDigitalRichFaceBundle

- (id)galleryTitle
{
  if (_os_feature_enabled_impl())
  {
    v6.receiver = self;
    v6.super_class = NTKVictoryDigitalRichFaceBundle;
    v3 = [(NTKVictoryDigitalFaceBundle *)&v6 galleryTitle];
    v4 = [NSString stringWithFormat:@"%@ (Legacy)", v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end