@interface CNContactActionsContext
- (CNContactActionsContext)init;
- (CNContactActionsContext)initWithDataSource:(id)source environment:(id)environment;
- (id)description;
- (void)setCacheEntryLimit:(unint64_t)limit;
@end

@implementation CNContactActionsContext

- (void)setCacheEntryLimit:(unint64_t)limit
{
  if (!limit)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactActionsContext.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"limit > 0"}];
  }

  dataSource = self->_dataSource;

  [(CNUIUserActionListDataSource *)dataSource setCacheCapacity:limit];
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"dataSource" object:self->_dataSource];
  build = [v3 build];

  return build;
}

- (CNContactActionsContext)initWithDataSource:(id)source environment:(id)environment
{
  sourceCopy = source;
  environmentCopy = environment;
  v13.receiver = self;
  v13.super_class = CNContactActionsContext;
  v9 = [(CNContactActionsContext *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataSource, source);
    objc_storeStrong(&v10->_environment, environment);
    v11 = v10;
  }

  return v10;
}

- (CNContactActionsContext)init
{
  v3 = +[CNUIContactsEnvironment currentEnvironment];
  v4 = objc_alloc(MEMORY[0x1E6996BE8]);
  actionDiscoveringEnvironment = [v3 actionDiscoveringEnvironment];
  v6 = [v4 initWithDiscoveringEnvironment:actionDiscoveringEnvironment];

  v7 = [(CNContactActionsContext *)self initWithDataSource:v6 environment:v3];
  return v7;
}

@end