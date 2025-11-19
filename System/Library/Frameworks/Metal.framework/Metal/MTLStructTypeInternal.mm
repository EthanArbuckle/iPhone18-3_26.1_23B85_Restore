@interface MTLStructTypeInternal
- (BOOL)isEqual:(id)a3;
- (BOOL)isStructLayoutThreadSafeWith:(id)a3;
- (MTLStructTypeInternal)init;
- (MTLStructTypeInternal)initWithMembers:(id *)a3 count:(unint64_t)a4;
- (MTLStructTypeInternal)initWithMembers:(id *)a3 count:(unint64_t)a4 typeName:(id)a5;
- (id)description;
- (id)formattedDescription:(unint64_t)a3 withPrintedTypes:(id)a4;
- (void)dealloc;
- (void)setMembers:(id *)a3 count:(unint64_t)a4;
@end

@implementation MTLStructTypeInternal

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLStructTypeInternal;
  [(MTLStructTypeInternal *)&v3 dealloc];
}

- (MTLStructTypeInternal)init
{
  v3.receiver = self;
  v3.super_class = MTLStructTypeInternal;
  result = [(MTLStructTypeInternal *)&v3 init];
  result->_dataType = 1;
  return result;
}

- (MTLStructTypeInternal)initWithMembers:(id *)a3 count:(unint64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = MTLStructTypeInternal;
  v6 = [(MTLStructTypeInternal *)&v19 init];
  v6->_dataType = 1;
  v6->_members = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:a3 count:a4];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  members = v6->_members;
  v9 = [(NSArray *)members countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(members);
        }

        -[NSDictionary setObject:forKey:](v7, "setObject:forKey:", *(*(&v15 + 1) + 8 * i), [*(*(&v15 + 1) + 8 * i) name]);
      }

      v10 = [(NSArray *)members countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v10);
  }

  v6->_dictionary = v7;
  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

- (MTLStructTypeInternal)initWithMembers:(id *)a3 count:(unint64_t)a4 typeName:(id)a5
{
  v6 = [(MTLStructTypeInternal *)self initWithMembers:a3 count:a4];
  v6->_typeName = [a5 copy];
  return v6;
}

- (void)setMembers:(id *)a3 count:(unint64_t)a4
{
  v19 = *MEMORY[0x1E69E9840];

  self->_members = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:a3 count:a4];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  members = self->_members;
  v9 = [(NSArray *)members countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(members);
        }

        -[NSDictionary setObject:forKey:](v7, "setObject:forKey:", *(*(&v14 + 1) + 8 * i), [*(*(&v14 + 1) + 8 * i) name]);
      }

      v10 = [(NSArray *)members countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  self->_dictionary = v7;
  v13 = *MEMORY[0x1E69E9840];
}

- (id)formattedDescription:(unint64_t)a3 withPrintedTypes:(id)a4
{
  v28[3] = *MEMORY[0x1E69E9840];
  v7 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:128];
  v28[0] = v7;
  v28[1] = @"DataType =";
  v28[2] = MTLDataTypeString(self->_dataType);
  [v8 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v28, 3)}];
  if ([a4 containsObject:self])
  {
    v27[0] = v7;
    v27[1] = @"<Recursive>";
    [v8 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v27, 2)}];
  }

  else
  {
    [a4 addObject:self];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = self;
    obj = self->_members;
    v9 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v22;
      do
      {
        v13 = 0;
        v14 = v11;
        do
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v21 + 1) + 8 * v13);
          v25[0] = v7;
          v11 = (v14 + 1);
          v25[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", v14];
          v25[2] = [v15 formattedDescription:a3 + 4 withPrintedTypes:a4];
          [v8 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v25, 3)}];
          ++v13;
          v14 = v11;
        }

        while (v10 != v13);
        v10 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v10);
    }

    [a4 removeLastObject];
    self = v18;
  }

  v20.receiver = self;
  v20.super_class = MTLStructTypeInternal;
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", -[MTLStructTypeInternal description](&v20, sel_description), objc_msgSend(v8, "componentsJoinedByString:", @" "];
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(MTLStructTypeInternal *)self formattedDescription:0 withPrintedTypes:v3];

  return v4;
}

- (BOOL)isStructLayoutThreadSafeWith:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = [a3 members];
  v5 = [(NSArray *)self->_members count];
  if (v5 == [v4 count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = self->_members;
    v20 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v20)
    {
      v19 = *v26;
      v6 = 1;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v25 + 1) + 8 * i);
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v9 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = 0;
            v12 = *v22;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v22 != v12)
                {
                  objc_enumerationMutation(v4);
                }

                v14 = *(*(&v21 + 1) + 8 * j);
                v15 = [v14 offset];
                if (v15 == [v8 offset])
                {
                  v6 &= [v8 isMemberLayoutThreadSafeWith:v14];
                  v11 = 1;
                }
              }

              v10 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v10);
          }

          else
          {
            v11 = 0;
          }

          v6 &= v11;
        }

        v20 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v20);
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_dataType == *(a3 + 1))
  {
    v5 = [(NSArray *)self->_members count];
    if (v5 == [*(a3 + 3) count])
    {
      if (![(NSArray *)self->_members count])
      {
        return self->_isIndirectArgumentBuffer == *(a3 + 32);
      }

      v6 = 0;
      while (([-[NSArray objectAtIndexedSubscript:](self->_members objectAtIndexedSubscript:{v6), "isEqual:", objc_msgSend(*(a3 + 3), "objectAtIndexedSubscript:", v6)}] & 1) != 0)
      {
        if ([(NSArray *)self->_members count]<= ++v6)
        {
          return self->_isIndirectArgumentBuffer == *(a3 + 32);
        }
      }
    }
  }

  return 0;
}

@end