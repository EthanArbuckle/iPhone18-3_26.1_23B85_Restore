@interface AXRImageDescriptorAppearance
+ (id)configuration;
+ (id)homeScreenService;
+ (id)tintColor;
+ (int64_t)appearance;
+ (int64_t)appearanceVariant;
+ (int64_t)imageAppearanceForColor;
@end

@implementation AXRImageDescriptorAppearance

+ (id)homeScreenService
{
  if (homeScreenService_onceToken != -1)
  {
    +[AXRImageDescriptorAppearance homeScreenService];
  }

  v3 = homeScreenService_homeScreenService;

  return v3;
}

uint64_t __49__AXRImageDescriptorAppearance_homeScreenService__block_invoke()
{
  homeScreenService_homeScreenService = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)configuration
{
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v3 = *&v2;
  v4 = configuration_cachedConfiguration;
  if (!configuration_cachedConfiguration || v2 - *&configuration_lastFetchTime > 30.0)
  {
    homeScreenService = [objc_opt_class() homeScreenService];
    homeScreenIconStyleConfiguration = [homeScreenService homeScreenIconStyleConfiguration];
    v7 = configuration_cachedConfiguration;
    configuration_cachedConfiguration = homeScreenIconStyleConfiguration;

    configuration_lastFetchTime = v3;
    v4 = configuration_cachedConfiguration;
  }

  return v4;
}

+ (int64_t)appearance
{
  configuration = [self configuration];
  if ([configuration updatedConfigurationType] == 2)
  {
    imageAppearanceForColor = 2;
  }

  else
  {
    imageAppearanceForColor = [self imageAppearanceForColor];
  }

  return imageAppearanceForColor;
}

+ (int64_t)imageAppearanceForColor
{
  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  configuration = [self configuration];
  variant = [configuration variant];
  if (variant >= 2)
  {
    variant = [currentTraitCollection userInterfaceStyle] == 2;
  }

  return variant;
}

+ (int64_t)appearanceVariant
{
  configuration = [self configuration];
  updatedConfigurationType = [configuration updatedConfigurationType];
  v4 = 3;
  if (updatedConfigurationType != 1)
  {
    v4 = 0;
  }

  if (updatedConfigurationType == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

+ (id)tintColor
{
  configuration = [self configuration];
  if ([configuration updatedConfigurationType] == 2)
  {
    tintColor = [configuration tintColor];
    uIColor = [tintColor UIColor];
  }

  else
  {
    uIColor = 0;
  }

  return uIColor;
}

@end