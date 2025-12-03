@interface PRMutablePosterConfiguration
- (NSString)pu_displayNameLocalizationKey;
- (void)setPu_displayNameLocalizationKey:(id)key;
@end

@implementation PRMutablePosterConfiguration

- (NSString)pu_displayNameLocalizationKey
{
  selfCopy = self;
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

- (void)setPu_displayNameLocalizationKey:(id)key
{
  if (key)
  {
    v4 = sub_10002F404();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  PRMutablePosterConfiguration.pu_displayNameLocalizationKey.setter(v4, v6);
}

@end