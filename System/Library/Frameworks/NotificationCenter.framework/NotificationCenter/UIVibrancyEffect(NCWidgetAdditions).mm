@interface UIVibrancyEffect(NCWidgetAdditions)
+ (id)_widgetEffectForPrivateVibrancyStyle:()NCWidgetAdditions;
+ (uint64_t)widgetEffectForVibrancyStyle:()NCWidgetAdditions;
@end

@implementation UIVibrancyEffect(NCWidgetAdditions)

+ (id)_widgetEffectForPrivateVibrancyStyle:()NCWidgetAdditions
{
  v4 = _MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyle();
  v5 = _MTCoreMaterialRecipeNameForMaterialRecipeAndUserInterfaceStyle();
  v6 = [MEMORY[0x277D75D00] _vibrantEffectForLightMaterial:v4 darkMaterial:v5 vibrancyStyle:a3];

  return v6;
}

+ (uint64_t)widgetEffectForVibrancyStyle:()NCWidgetAdditions
{
  v2 = _MTInternalVibrancyEffectStyleForPublicStyle();

  return [a1 _widgetEffectForPrivateVibrancyStyle:v2];
}

@end