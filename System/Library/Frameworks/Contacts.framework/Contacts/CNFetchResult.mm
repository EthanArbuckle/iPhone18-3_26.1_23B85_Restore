@interface CNFetchResult
- (CNFetchResult)initWithValue:(id)a3 currentHistoryToken:(id)a4;
- (id)description;
@end

@implementation CNFetchResult

- (CNFetchResult)initWithValue:(id)a3 currentHistoryToken:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = CNFetchResult;
  v9 = [(CNFetchResult *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_value, a3);
    v11 = [v8 copy];
    currentHistoryToken = v10->_currentHistoryToken;
    v10->_currentHistoryToken = v11;

    v13 = v10;
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNFetchResult *)self value];
  v5 = [v3 appendName:@"value" object:v4];

  v6 = [(CNFetchResult *)self currentHistoryToken];
  v7 = [v3 appendName:@"currentHistoryToken" object:v6];

  v8 = [v3 build];

  return v8;
}

@end