@interface WFAppearanceSettingContentItem
+ (id)contentCategories;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)ownedTypes;
+ (id)propertyBuilders;
- (WFAppearanceSettingValue)settingValue;
@end

@implementation WFAppearanceSettingContentItem

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Appearances", @"Appearances");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Appearance", @"Appearance");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)contentCategories
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CFC5E8];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [MEMORY[0x277CFC490] typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (id)propertyBuilders
{
  v14[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CFC338];
  v3 = WFLocalizedContentPropertyNameMarker(@"Dark Mode Is On");
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [v2 keyPath:@"settingValue.isDarkModeOn" name:v3 class:objc_opt_class()];
  v6 = WFLocalizedContentPropertyNameMarker(@"Light Mode Is On");
  v7 = [v5 negativeName:v6];
  v14[0] = v7;
  v8 = MEMORY[0x277CFC338];
  v9 = WFLocalizedContentPropertyNameMarker(@"Inverse Appearance");
  v10 = [v8 keyPath:@"settingValue.valueByInvertingSetting" name:v9 class:objc_opt_class()];
  v14[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (WFAppearanceSettingValue)settingValue
{
  v3 = objc_opt_class();

  return [(WFAppearanceSettingContentItem *)self objectForClass:v3];
}

@end