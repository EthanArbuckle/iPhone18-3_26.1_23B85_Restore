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
    v5 = [objc_opt_class() homeScreenService];
    v6 = [v5 homeScreenIconStyleConfiguration];
    v7 = configuration_cachedConfiguration;
    configuration_cachedConfiguration = v6;

    configuration_lastFetchTime = v3;
    v4 = configuration_cachedConfiguration;
  }

  return v4;
}

+ (int64_t)appearance
{
  v3 = [a1 configuration];
  if ([v3 updatedConfigurationType] == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = [a1 imageAppearanceForColor];
  }

  return v4;
}

+ (int64_t)imageAppearanceForColor
{
  v3 = [MEMORY[0x277D75C80] currentTraitCollection];
  v4 = [a1 configuration];
  v5 = [v4 variant];
  if (v5 >= 2)
  {
    v5 = [v3 userInterfaceStyle] == 2;
  }

  return v5;
}

+ (int64_t)appearanceVariant
{
  v2 = [a1 configuration];
  v3 = [v2 updatedConfigurationType];
  v4 = 3;
  if (v3 != 1)
  {
    v4 = 0;
  }

  if (v3 == 2)
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
  v2 = [a1 configuration];
  if ([v2 updatedConfigurationType] == 2)
  {
    v3 = [v2 tintColor];
    v4 = [v3 UIColor];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end