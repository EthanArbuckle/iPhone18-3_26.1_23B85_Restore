@interface CNTestFuture
+ (id)futureWithError:(id)a3;
+ (id)futureWithResult:(id)a3;
- (CNTestFuture)initWithCoder:(id)a3;
- (CNTestFuture)initWithError:(id)a3;
- (CNTestFuture)initWithResult:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNTestFuture

- (void)encodeWithCoder:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (([v5 allowsKeyedCoding] & 1) == 0)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"CNTestFuture.m" lineNumber:87 description:0];
  }

  v6 = [(CNTestFuture *)self result];

  if (v6)
  {
    v7 = [(CNTestFuture *)self result];
    v8 = objc_opt_class();

    v9 = MEMORY[0x1E695DFA8];
    v10 = nameForSanitizedClass(v8);
    v11 = [v9 setWithObject:v10];

    v12 = [(CNTestFuture *)self result];
    v13 = [v12 conformsToProtocol:&unk_1F0E28DB8];

    if (v13)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v14 = [(CNTestFuture *)self result];
      v15 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
              objc_enumerationMutation(v14);
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
          v16 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v16);
      }
    }

    [v5 encodeObject:v11 forKey:@"resultClasses"];
    v22 = [(CNTestFuture *)self result];
    [v5 encodeObject:v22 forKey:@"result"];
  }

  else
  {
    v23 = [(CNTestFuture *)self error];

    if (v23)
    {
      v24 = [(CNTestFuture *)self error];
      [v5 encodeObject:v24 forKey:@"error"];
    }
  }
}

- (CNTestFuture)initWithCoder:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = CNTestFuture;
  v6 = [(CNTestFuture *)&v21 init];
  if (v6)
  {

    if (([v5 allowsKeyedCoding] & 1) == 0)
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      [v20 handleFailureInMethod:a2 object:0 file:@"CNTestFuture.m" lineNumber:56 description:0];
    }

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v5 decodeObjectOfClasses:v9 forKey:@"resultClasses"];

    v11 = MEMORY[0x1E695DFD8];
    v12 = [v10 allObjects];
    v13 = [v12 _cn_map:&__block_literal_global_3615];
    v14 = [v11 setWithArray:v13];

    v15 = [v5 decodeObjectOfClasses:v14 forKey:@"result"];
    if (v15)
    {
      v16 = [MEMORY[0x1E6996720] futureWithResult:v15];
    }

    else
    {
      v18 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
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

- (CNTestFuture)initWithError:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNTestFuture;
  v6 = [(CNTestFuture *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, a3);
    v8 = v7;
  }

  return v7;
}

- (CNTestFuture)initWithResult:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNTestFuture;
  v6 = [(CNTestFuture *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_result, a3);
    v8 = v7;
  }

  return v7;
}

+ (id)futureWithError:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithError:v4];

  return v5;
}

+ (id)futureWithResult:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithResult:v4];

  return v5;
}

@end