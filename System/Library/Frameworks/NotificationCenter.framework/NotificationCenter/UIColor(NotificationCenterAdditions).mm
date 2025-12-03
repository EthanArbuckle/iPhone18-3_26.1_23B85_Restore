@interface UIColor(NotificationCenterAdditions)
+ (id)nc_labelColor;
@end

@implementation UIColor(NotificationCenterAdditions)

+ (id)nc_labelColor
{
  v18[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D75348];
  v16 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:0];
  v17[0] = v16;
  v15 = [MEMORY[0x277D26740] _visualStylingProviderForRecipe:3 category:1 andUserInterfaceStyle:1];
  v14 = [v15 _visualStylingForStyle:0];
  color = [v14 color];
  v18[0] = color;
  v1 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
  v17[1] = v1;
  v2 = [MEMORY[0x277D26740] _visualStylingProviderForRecipe:3 category:1 andUserInterfaceStyle:1];
  v3 = [v2 _visualStylingForStyle:0];
  color2 = [v3 color];
  v18[1] = color2;
  v5 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  v17[2] = v5;
  v6 = [MEMORY[0x277D26740] _visualStylingProviderForRecipe:3 category:1 andUserInterfaceStyle:2];
  v7 = [v6 _visualStylingForStyle:0];
  color3 = [v7 color];
  v18[2] = color3;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v10 = [v0 _dynamicColorWithColorsByTraitCollection:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end