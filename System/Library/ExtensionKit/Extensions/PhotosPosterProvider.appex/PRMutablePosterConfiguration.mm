@interface PRMutablePosterConfiguration
- (NSString)pu_displayNameLocalizationKey;
- (void)setPu_displayNameLocalizationKey:(id)a3;
@end

@implementation PRMutablePosterConfiguration

- (NSString)pu_displayNameLocalizationKey
{
  v2 = self;
  PRMutablePosterConfiguration.pu_displayNameLocalizationKey.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_10002F3D4();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setPu_displayNameLocalizationKey:(id)a3
{
  if (a3)
  {
    v4 = sub_10002F404();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  PRMutablePosterConfiguration.pu_displayNameLocalizationKey.setter(v4, v6);
}

@end