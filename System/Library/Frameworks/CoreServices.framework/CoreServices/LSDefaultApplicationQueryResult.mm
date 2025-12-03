@interface LSDefaultApplicationQueryResult
+ (id)queryResultForCategory:(unint64_t)category error:(id *)error;
- (LSDefaultApplicationQueryResult)initWithCoder:(id)coder;
- (LSDefaultApplicationQueryResult)initWithReferenceDate:(id)date didRefresh:(BOOL)refresh refreshAfter:(id)after defaultForCategory:(BOOL)category;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LSDefaultApplicationQueryResult

- (LSDefaultApplicationQueryResult)initWithReferenceDate:(id)date didRefresh:(BOOL)refresh refreshAfter:(id)after defaultForCategory:(BOOL)category
{
  dateCopy = date;
  afterCopy = after;
  v16.receiver = self;
  v16.super_class = LSDefaultApplicationQueryResult;
  v13 = [(LSDefaultApplicationQueryResult *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_referenceDate, date);
    v14->_didRefresh = refresh;
    objc_storeStrong(&v14->_refreshAfter, after);
    v14->_defaultForCategory = category;
  }

  return v14;
}

- (LSDefaultApplicationQueryResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referenceDate"];
  v6 = [coderCopy decodeBoolForKey:@"didRefresh"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"refreshAfter"];
  v8 = [coderCopy decodeBoolForKey:@"defaultForCategory"];

  if (v5)
  {
    self = [(LSDefaultApplicationQueryResult *)self initWithReferenceDate:v5 didRefresh:v6 refreshAfter:v7 defaultForCategory:v8];
  }

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  referenceDate = self->_referenceDate;
  coderCopy = coder;
  [coderCopy encodeObject:referenceDate forKey:@"referenceDate"];
  [coderCopy encodeBool:self->_didRefresh forKey:@"didRefresh"];
  [coderCopy encodeObject:self->_refreshAfter forKey:@"refreshAfter"];
  [coderCopy encodeBool:self->_defaultForCategory forKey:@"defaultForCategory"];
}

+ (id)queryResultForCategory:(unint64_t)category error:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__28;
  v22 = __Block_byref_object_dispose__28;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__28;
  v16 = __Block_byref_object_dispose__28;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__LSDefaultApplicationQueryResult_queryResultForCategory_error___block_invoke;
  v11[3] = &unk_1E6A198D0;
  v11[4] = &v18;
  v6 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__LSDefaultApplicationQueryResult_queryResultForCategory_error___block_invoke_2;
  v10[3] = &unk_1E6A1CD10;
  v10[4] = &v12;
  v10[5] = &v18;
  [v6 getCurrentApplicationDefaultInfoForCategory:category completion:v10];

  v7 = v13[5];
  if (error && !v7)
  {
    *error = v19[5];
    v7 = v13[5];
  }

  v8 = v7;
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __64__LSDefaultApplicationQueryResult_queryResultForCategory_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

@end