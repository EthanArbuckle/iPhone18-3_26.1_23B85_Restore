@interface CNTestFuture
+ (id)futureWithError:(id)error;
+ (id)futureWithResult:(id)result;
- (CNTestFuture)initWithCoder:(id)coder;
- (CNTestFuture)initWithError:(id)error;
- (CNTestFuture)initWithResult:(id)result;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNTestFuture

- (void)encodeWithCoder:(id)coder
{
  v32 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNTestFuture.m" lineNumber:87 description:0];
  }

  result = [(CNTestFuture *)self result];

  if (result)
  {
    result2 = [(CNTestFuture *)self result];
    v8 = objc_opt_class();

    v9 = MEMORY[0x1E695DFA8];
    v10 = nameForSanitizedClass(v8);
    v11 = [v9 setWithObject:v10];

    result3 = [(CNTestFuture *)self result];
    v13 = [result3 conformsToProtocol:&unk_1F0E28DB8];

    if (v13)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      result4 = [(CNTestFuture *)self result];
      v15 = [result4 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v28;
        do
        {
          v18 = 0;
          do
          {
            if (*v28 != v17)
            {
              objc_enumerationMutation(result4);
            }

            if (([*(*(&v27 + 1) + 8 * v18) conformsToProtocol:&unk_1F0D60920] & 1) == 0)
            {
              [MEMORY[0x1E696AAA8] currentHandler];
              v21 = v26 = a2;
              [v21 handleFailureInMethod:v26 object:self file:@"CNTestFuture.m" lineNumber:93 description:0];

              a2 = v26;
            }

            v19 = objc_opt_class();
            v20 = nameForSanitizedClass(v19);
            [v11 addObject:v20];

            ++v18;
          }

          while (v16 != v18);
          v16 = [result4 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v16);
      }
    }

    [coderCopy encodeObject:v11 forKey:@"resultClasses"];
    result5 = [(CNTestFuture *)self result];
    [coderCopy encodeObject:result5 forKey:@"result"];
  }

  else
  {
    error = [(CNTestFuture *)self error];

    if (error)
    {
      error2 = [(CNTestFuture *)self error];
      [coderCopy encodeObject:error2 forKey:@"error"];
    }
  }
}

- (CNTestFuture)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = CNTestFuture;
  v6 = [(CNTestFuture *)&v21 init];
  if (v6)
  {

    if (([coderCopy allowsKeyedCoding] & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:0 file:@"CNTestFuture.m" lineNumber:56 description:0];
    }

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"resultClasses"];

    v11 = MEMORY[0x1E695DFD8];
    allObjects = [v10 allObjects];
    v13 = [allObjects _cn_map:&__block_literal_global_3615];
    v14 = [v11 setWithArray:v13];

    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"result"];
    if (v15)
    {
      v16 = [MEMORY[0x1E6996720] futureWithResult:v15];
    }

    else
    {
      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
      v16 = [MEMORY[0x1E6996720] futureWithError:v18];
    }

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (CNTestFuture)initWithError:(id)error
{
  errorCopy = error;
  v10.receiver = self;
  v10.super_class = CNTestFuture;
  v6 = [(CNTestFuture *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, error);
    v8 = v7;
  }

  return v7;
}

- (CNTestFuture)initWithResult:(id)result
{
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = CNTestFuture;
  v6 = [(CNTestFuture *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_result, result);
    v8 = v7;
  }

  return v7;
}

+ (id)futureWithError:(id)error
{
  errorCopy = error;
  v5 = [[self alloc] initWithError:errorCopy];

  return v5;
}

+ (id)futureWithResult:(id)result
{
  resultCopy = result;
  v5 = [[self alloc] initWithResult:resultCopy];

  return v5;
}

@end