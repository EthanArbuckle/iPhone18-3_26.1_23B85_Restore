@interface CNGroupIdentityInlineActionsViewConfiguration
- (CNGroupIdentityInlineActionsViewConfiguration)initWithDefaultActionItems:(id)a3 displaysUnavailableActionTypes:(BOOL)a4 actionViewStyle:(int64_t)a5;
@end

@implementation CNGroupIdentityInlineActionsViewConfiguration

- (CNGroupIdentityInlineActionsViewConfiguration)initWithDefaultActionItems:(id)a3 displaysUnavailableActionTypes:(BOOL)a4 actionViewStyle:(int64_t)a5
{
  v8 = a3;
  v21.receiver = self;
  v21.super_class = CNGroupIdentityInlineActionsViewConfiguration;
  v9 = [(CNGroupIdentityInlineActionsViewConfiguration *)&v21 init];
  v10 = v9;
  if (v9)
  {
    v9->_displaysUnavailableActionTypes = a4;
    v11 = [MEMORY[0x1E695DF70] array];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __123__CNGroupIdentityInlineActionsViewConfiguration_initWithDefaultActionItems_displaysUnavailableActionTypes_actionViewStyle___block_invoke;
    v19[3] = &unk_1E74E2788;
    v20 = v11;
    v12 = v11;
    v13 = [v8 _cn_indexBy:v19];
    actionsPerType = v10->_actionsPerType;
    v10->_actionsPerType = v13;

    v15 = [v12 copy];
    supportedActionTypes = v10->_supportedActionTypes;
    v10->_supportedActionTypes = v15;

    v10->_actionViewStyle = a5;
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