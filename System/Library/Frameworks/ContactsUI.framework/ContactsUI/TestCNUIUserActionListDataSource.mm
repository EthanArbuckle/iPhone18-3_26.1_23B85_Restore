@interface TestCNUIUserActionListDataSource
+ (id)allActionTypes;
- (TestCNUIUserActionListDataSource)initWithActionsByActionTypeByContact:(id)contact;
- (id)actionTypesForConsumer:(id)consumer;
- (id)consumer:(id)consumer actionModelsForActionType:(id)type;
- (id)consumer:(id)consumer actionModelsForActionType:(id)type handler:(id)handler;
- (id)consumer:(id)consumer imageForActionType:(id)type;
- (id)consumer:(id)consumer localizedDisplayNameForActionType:(id)type;
- (id)thirdPartyActionsForContactProperty:(id)property;
- (id)thirdPartyActionsForCurrentContactAndPropertyKey:(id)key identifier:(id)identifier;
- (id)thirdPartyTargetsForActionTypes:(id)types;
- (void)setContact:(id)contact;
@end

@implementation TestCNUIUserActionListDataSource

- (id)consumer:(id)consumer imageForActionType:(id)type
{
  consumerCopy = consumer;
  typeCopy = type;
  selfCopy = self;
  v9 = CNUnimplementedMethodException();
  objc_exception_throw(v9);
}

- (id)thirdPartyActionsForCurrentContactAndPropertyKey:(id)key identifier:(id)identifier
{
  keyCopy = key;
  identifierCopy = identifier;
  selfCopy = self;
  v9 = CNUnimplementedMethodException();
  objc_exception_throw(v9);
}

- (id)thirdPartyActionsForContactProperty:(id)property
{
  propertyCopy = property;
  selfCopy = self;
  v6 = CNUnimplementedMethodException();
  objc_exception_throw(v6);
}

- (id)thirdPartyTargetsForActionTypes:(id)types
{
  typesCopy = types;
  selfCopy = self;
  v6 = CNUnimplementedMethodException();
  objc_exception_throw(v6);
}

- (id)consumer:(id)consumer localizedDisplayNameForActionType:(id)type
{
  consumerCopy = consumer;
  typeCopy = type;
  selfCopy = self;
  v9 = CNUnimplementedMethodException();
  objc_exception_throw(v9);
}

- (id)consumer:(id)consumer actionModelsForActionType:(id)type
{
  consumerCopy = consumer;
  typeCopy = type;
  selfCopy = self;
  v9 = CNUnimplementedMethodException();
  objc_exception_throw(v9);
}

- (id)actionTypesForConsumer:(id)consumer
{
  v3 = objc_opt_class();

  return [v3 allActionTypes];
}

- (id)consumer:(id)consumer actionModelsForActionType:(id)type handler:(id)handler
{
  handlerCopy = handler;
  typeCopy = type;
  userActionListModelResultBlocksByActionTypeAskedFor = [(TestCNUIUserActionListDataSource *)self userActionListModelResultBlocksByActionTypeAskedFor];
  v10 = [handlerCopy copy];

  [userActionListModelResultBlocksByActionTypeAskedFor setValue:v10 forKey:typeCopy];
  v11 = objc_alloc_init(MEMORY[0x1E6996668]);

  return v11;
}

- (void)setContact:(id)contact
{
  v24 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  objc_storeStrong(&self->_contact, contact);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  userActionListModelResultBlocksByActionTypeAskedFor = [(TestCNUIUserActionListDataSource *)self userActionListModelResultBlocksByActionTypeAskedFor];
  allKeys = [userActionListModelResultBlocksByActionTypeAskedFor allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        userActionListModelResultBlocksByActionTypeAskedFor2 = [(TestCNUIUserActionListDataSource *)self userActionListModelResultBlocksByActionTypeAskedFor];
        v13 = [userActionListModelResultBlocksByActionTypeAskedFor2 objectForKeyedSubscript:v11];

        actionsByActionTypeByContact = [(TestCNUIUserActionListDataSource *)self actionsByActionTypeByContact];
        contact = [(TestCNUIUserActionListDataSource *)self contact];
        v16 = [actionsByActionTypeByContact objectForKeyedSubscript:contact];
        v17 = [v16 objectForKeyedSubscript:v11];
        (v13)[2](v13, v17);

        ++v10;
      }

      while (v8 != v10);
      v8 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }
}

- (TestCNUIUserActionListDataSource)initWithActionsByActionTypeByContact:(id)contact
{
  contactCopy = contact;
  v12.receiver = self;
  v12.super_class = TestCNUIUserActionListDataSource;
  v6 = [(TestCNUIUserActionListDataSource *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_actionsByActionTypeByContact, contact);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    userActionListModelResultBlocksByActionTypeAskedFor = v7->_userActionListModelResultBlocksByActionTypeAskedFor;
    v7->_userActionListModelResultBlocksByActionTypeAskedFor = dictionary;

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