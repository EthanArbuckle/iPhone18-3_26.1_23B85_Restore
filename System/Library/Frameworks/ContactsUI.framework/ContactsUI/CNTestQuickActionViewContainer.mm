@interface CNTestQuickActionViewContainer
- (CNTestQuickActionViewContainer)initWithActionTypes:(id)types;
- (id)viewForActionType:(id)type;
@end

@implementation CNTestQuickActionViewContainer

- (id)viewForActionType:(id)type
{
  typeCopy = type;
  actionViewsByActionType = [(CNTestQuickActionViewContainer *)self actionViewsByActionType];
  v6 = [actionViewsByActionType objectForKeyedSubscript:typeCopy];

  return v6;
}

- (CNTestQuickActionViewContainer)initWithActionTypes:(id)types
{
  typesCopy = types;
  v11.receiver = self;
  v11.super_class = CNTestQuickActionViewContainer;
  v5 = [(CNTestQuickActionViewContainer *)&v11 init];
  if (v5)
  {
    v6 = [typesCopy _cn_indexBy:*MEMORY[0x1E6996520]];
    v7 = [v6 _cn_map:&__block_literal_global_35240];
    actionViewsByActionType = v5->_actionViewsByActionType;
    v5->_actionViewsByActionType = v7;

    v9 = v5;
  }

  return v5;
}

id __54__CNTestQuickActionViewContainer_initWithActionTypes___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v2 = a2;
  v3 = objc_alloc_init(CNTestQuickActionView);
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

@end