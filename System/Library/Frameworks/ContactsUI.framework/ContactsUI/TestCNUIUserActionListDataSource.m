@interface TestCNUIUserActionListDataSource
+ (id)allActionTypes;
- (TestCNUIUserActionListDataSource)initWithActionsByActionTypeByContact:(id)a3;
- (id)actionTypesForConsumer:(id)a3;
- (id)consumer:(id)a3 actionModelsForActionType:(id)a4;
- (id)consumer:(id)a3 actionModelsForActionType:(id)a4 handler:(id)a5;
- (id)consumer:(id)a3 imageForActionType:(id)a4;
- (id)consumer:(id)a3 localizedDisplayNameForActionType:(id)a4;
- (id)thirdPartyActionsForContactProperty:(id)a3;
- (id)thirdPartyActionsForCurrentContactAndPropertyKey:(id)a3 identifier:(id)a4;
- (id)thirdPartyTargetsForActionTypes:(id)a3;
- (void)setContact:(id)a3;
@end

@implementation TestCNUIUserActionListDataSource

- (id)consumer:(id)a3 imageForActionType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = CNUnimplementedMethodException();
  objc_exception_throw(v9);
}

- (id)thirdPartyActionsForCurrentContactAndPropertyKey:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = CNUnimplementedMethodException();
  objc_exception_throw(v9);
}

- (id)thirdPartyActionsForContactProperty:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = CNUnimplementedMethodException();
  objc_exception_throw(v6);
}

- (id)thirdPartyTargetsForActionTypes:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = CNUnimplementedMethodException();
  objc_exception_throw(v6);
}

- (id)consumer:(id)a3 localizedDisplayNameForActionType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = CNUnimplementedMethodException();
  objc_exception_throw(v9);
}

- (id)consumer:(id)a3 actionModelsForActionType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = CNUnimplementedMethodException();
  objc_exception_throw(v9);
}

- (id)actionTypesForConsumer:(id)a3
{
  v3 = objc_opt_class();

  return [v3 allActionTypes];
}

- (id)consumer:(id)a3 actionModelsForActionType:(id)a4 handler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(TestCNUIUserActionListDataSource *)self userActionListModelResultBlocksByActionTypeAskedFor];
  v10 = [v7 copy];

  [v9 setValue:v10 forKey:v8];
  v11 = objc_alloc_init(MEMORY[0x1E6996668]);

  return v11;
}

- (void)setContact:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = a3;
  objc_storeStrong(&self->_contact, a3);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(TestCNUIUserActionListDataSource *)self userActionListModelResultBlocksByActionTypeAskedFor];
  v6 = [v5 allKeys];

  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v12 = [(TestCNUIUserActionListDataSource *)self userActionListModelResultBlocksByActionTypeAskedFor];
        v13 = [v12 objectForKeyedSubscript:v11];

        v14 = [(TestCNUIUserActionListDataSource *)self actionsByActionTypeByContact];
        v15 = [(TestCNUIUserActionListDataSource *)self contact];
        v16 = [v14 objectForKeyedSubscript:v15];
        v17 = [v16 objectForKeyedSubscript:v11];
        (v13)[2](v13, v17);

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }
}

- (TestCNUIUserActionListDataSource)initWithActionsByActionTypeByContact:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = TestCNUIUserActionListDataSource;
  v6 = [(TestCNUIUserActionListDataSource *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_actionsByActionTypeByContact, a3);
    v8 = [MEMORY[0x1E695DF90] dictionary];
    userActionListModelResultBlocksByActionTypeAskedFor = v7->_userActionListModelResultBlocksByActionTypeAskedFor;
    v7->_userActionListModelResultBlocksByActionTypeAskedFor = v8;

    v10 = v7;
  }

  return v7;
}

+ (id)allActionTypes
{
  v6[4] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695C178];
  v6[0] = *MEMORY[0x1E695C170];
  v6[1] = v2;
  v3 = *MEMORY[0x1E695C150];
  v6[2] = *MEMORY[0x1E695C1B8];
  v6[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];

  return v4;
}

@end