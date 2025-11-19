@interface WFTrelloBoardContentItem
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
- (id)board;
- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5;
@end

@implementation WFTrelloBoardContentItem

+ (id)outputTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [MEMORY[0x277CFC490] typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [MEMORY[0x277CFC490] typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Trello boards", @"Trello boards");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Trello board", @"Trello board");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)propertyBuilders
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CFC338] block:&__block_literal_global_3361 name:@"Description" class:objc_opt_class()];
  v3 = [v2 userInfo:@"WFTrelloDescriptionProperty"];
  v9[0] = v3;
  v4 = [MEMORY[0x277CFC338] block:&__block_literal_global_166 name:@"URL" class:objc_opt_class()];
  v5 = [v4 userInfo:@"WFTrelloURLProperty"];
  v9[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

void __44__WFTrelloBoardContentItem_propertyBuilders__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = a4;
  v8 = [a2 board];
  v7 = [v8 URL];
  (a4)[2](v6, v7);
}

void __44__WFTrelloBoardContentItem_propertyBuilders__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [a2 board];
  v8 = [v6 itemDescription];

  if ([v8 length])
  {
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  (v5)[2](v5, v7);
}

- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5
{
  if (objc_opt_class() == a3)
  {
    v7 = MEMORY[0x277CFC488];
    v8 = [(WFTrelloBoardContentItem *)self board];
    v9 = [v8 URL];
    v10 = [(WFTrelloBoardContentItem *)self name];
    v6 = [v7 object:v9 named:v10];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)board
{
  v3 = objc_opt_class();

  return [(WFTrelloBoardContentItem *)self objectForClass:v3];
}

@end