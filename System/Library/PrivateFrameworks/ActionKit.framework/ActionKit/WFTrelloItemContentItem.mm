@interface WFTrelloItemContentItem
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)ownedTypes;
+ (id)propertyBuilders;
+ (id)stringConversionBehavior;
@end

@implementation WFTrelloItemContentItem

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Trello items", @"Trello items");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Trello item", @"Trello item");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [MEMORY[0x277CFC490] typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (id)stringConversionBehavior
{
  v2 = MEMORY[0x277CFC310];
  v3 = [a1 propertyForName:@"Name"];
  v4 = [v2 accessingProperty:v3];

  return v4;
}

+ (id)propertyBuilders
{
  v14[4] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CFC338] block:&__block_literal_global_1361 name:@"Description" class:objc_opt_class()];
  v3 = [v2 userInfo:@"WFTrelloDescriptionProperty"];
  v14[0] = v3;
  v4 = [MEMORY[0x277CFC338] block:&__block_literal_global_178 name:@"URL" class:objc_opt_class()];
  v5 = [v4 userInfo:@"WFTrelloURLProperty"];
  v14[1] = v5;
  v6 = [MEMORY[0x277CFC338] block:&__block_literal_global_184 name:@"Card Due Date" class:objc_opt_class()];
  v7 = [v6 userInfo:@"WFTrelloDueDateProperty"];
  v14[2] = v7;
  v8 = [MEMORY[0x277CFC338] block:&__block_literal_global_190 name:@"Card Attachments" class:objc_opt_class()];
  v9 = [v8 multipleValues:1];
  v10 = [v9 userInfo:@"WFTrelloAttachmentsProperty"];
  v14[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end