@interface CNGroupIdentityInlineActionsViewConfiguration
- (CNGroupIdentityInlineActionsViewConfiguration)initWithDefaultActionItems:(id)items displaysUnavailableActionTypes:(BOOL)types actionViewStyle:(int64_t)style;
@end

@implementation CNGroupIdentityInlineActionsViewConfiguration

- (CNGroupIdentityInlineActionsViewConfiguration)initWithDefaultActionItems:(id)items displaysUnavailableActionTypes:(BOOL)types actionViewStyle:(int64_t)style
{
  itemsCopy = items;
  v21.receiver = self;
  v21.super_class = CNGroupIdentityInlineActionsViewConfiguration;
  v9 = [(CNGroupIdentityInlineActionsViewConfiguration *)&v21 init];
  v10 = v9;
  if (v9)
  {
    v9->_displaysUnavailableActionTypes = types;
    array = [MEMORY[0x1E695DF70] array];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __123__CNGroupIdentityInlineActionsViewConfiguration_initWithDefaultActionItems_displaysUnavailableActionTypes_actionViewStyle___block_invoke;
    v19[3] = &unk_1E74E2788;
    v20 = array;
    v12 = array;
    v13 = [itemsCopy _cn_indexBy:v19];
    actionsPerType = v10->_actionsPerType;
    v10->_actionsPerType = v13;

    v15 = [v12 copy];
    supportedActionTypes = v10->_supportedActionTypes;
    v10->_supportedActionTypes = v15;

    v10->_actionViewStyle = style;
    v17 = v10;
  }

  return v10;
}

id __123__CNGroupIdentityInlineActionsViewConfiguration_initWithDefaultActionItems_displaysUnavailableActionTypes_actionViewStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 actionType];
  [*(a1 + 32) _cn_addNonNilObjectIfNotPresent:v3];

  return v3;
}

@end