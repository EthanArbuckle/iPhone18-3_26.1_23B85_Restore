@interface CNFetchResult
- (CNFetchResult)initWithValue:(id)value currentHistoryToken:(id)token;
- (id)description;
@end

@implementation CNFetchResult

- (CNFetchResult)initWithValue:(id)value currentHistoryToken:(id)token
{
  valueCopy = value;
  tokenCopy = token;
  v15.receiver = self;
  v15.super_class = CNFetchResult;
  v9 = [(CNFetchResult *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_value, value);
    v11 = [tokenCopy copy];
    currentHistoryToken = v10->_currentHistoryToken;
    v10->_currentHistoryToken = v11;

    v13 = v10;
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  value = [(CNFetchResult *)self value];
  v5 = [v3 appendName:@"value" object:value];

  currentHistoryToken = [(CNFetchResult *)self currentHistoryToken];
  v7 = [v3 appendName:@"currentHistoryToken" object:currentHistoryToken];

  build = [v3 build];

  return build;
}

@end