@interface CNContactActionsContext
- (CNContactActionsContext)init;
- (CNContactActionsContext)initWithDataSource:(id)a3 environment:(id)a4;
- (id)description;
- (void)setCacheEntryLimit:(unint64_t)a3;
@end

@implementation CNContactActionsContext

- (void)setCacheEntryLimit:(unint64_t)a3
{
  if (!a3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"CNContactActionsContext.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"limit > 0"}];
  }

  dataSource = self->_dataSource;

  [(CNUIUserActionListDataSource *)dataSource setCacheCapacity:a3];
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"dataSource" object:self->_dataSource];
  v5 = [v3 build];

  return v5;
}

- (CNContactActionsContext)initWithDataSource:(id)a3 environment:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNContactActionsContext;
  v9 = [(CNContactActionsContext *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataSource, a3);
    objc_storeStrong(&v10->_environment, a4);
    v11 = v10;
  }

  return v10;
}

- (CNContactActionsContext)init
{
  v3 = +[CNUIContactsEnvironment currentEnvironment];
  v4 = objc_alloc(MEMORY[0x1E6996BE8]);
  v5 = [v3 actionDiscoveringEnvironment];
  v6 = [v4 initWithDiscoveringEnvironment:v5];

  v7 = [(CNContactActionsContext *)self initWithDataSource:v6 environment:v3];
  return v7;
}

@end