@interface NSSQLGroupByIntermediate
- (NSSQLGroupByIntermediate)initWithProperties:(id)a3 inScope:(id)a4;
- (id)generateSQLStringInContext:(id)a3;
- (void)dealloc;
@end

@implementation NSSQLGroupByIntermediate

- (void)dealloc
{
  self->_properties = 0;
  v3.receiver = self;
  v3.super_class = NSSQLGroupByIntermediate;
  [(NSSQLGroupByIntermediate *)&v3 dealloc];
}

- (NSSQLGroupByIntermediate)initWithProperties:(id)a3 inScope:(id)a4
{
  v7.receiver = self;
  v7.super_class = NSSQLGroupByIntermediate;
  v5 = [(NSSQLIntermediate *)&v7 initWithScope:a4];
  if (v5)
  {
    v5->_properties = [a3 copy];
  }

  return v5;
}

- (id)generateSQLStringInContext:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(NSSQLIntermediate *)self isUpdateScoped])
  {
    [a3 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unsupported clause (group by not allowed in updates)", 0), @"NSUnderlyingException"}];
LABEL_20:
    v6 = 0;
  }

  else
  {
    v5 = [(NSSQLIntermediate *)self fetchIntermediate];
    v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = self->_properties;
    v7 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v23;
      while (2)
      {
        v11 = 0;
        v12 = -v9;
        v20 = v8 + v9;
        do
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v22 + 1) + 8 * v11);
          if ([v13 _propertyType] == 5)
          {
            -[NSSQLFetchIntermediate addGroupByKeypath:](v5, [objc_msgSend(v13 "expression")]);
            v14 = [v13 expression];
          }

          else
          {
            v15 = [v13 name];
            [(NSSQLFetchIntermediate *)v5 addGroupByKeypath:v15];
            v14 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v15];
          }

          v16 = [(NSSQLIntermediate *)self _generateSQLForExpression:v14 allowToMany:0 inContext:a3];
          if (!v16)
          {
            if (![a3 valueForKey:@"NSUnderlyingException"])
            {
              [a3 setValue:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Failed to generate SQL for group by property: %@", v13), 0), @"NSUnderlyingException"}];
            }

            goto LABEL_20;
          }

          v17 = v16;
          if (v12 != v11)
          {
            [v6 appendString:{@", "}];
          }

          [v6 appendString:v17];

          ++v11;
        }

        while (v8 != v11);
        v8 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
        v9 = v20;
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v6;
}

@end