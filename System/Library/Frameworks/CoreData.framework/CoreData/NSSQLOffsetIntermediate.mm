@interface NSSQLOffsetIntermediate
- (NSSQLOffsetIntermediate)initWithOffset:(unint64_t)a3 inScope:(id)a4;
- (id)generateSQLStringInContext:(id)a3;
@end

@implementation NSSQLOffsetIntermediate

- (NSSQLOffsetIntermediate)initWithOffset:(unint64_t)a3 inScope:(id)a4
{
  v6.receiver = self;
  v6.super_class = NSSQLOffsetIntermediate;
  result = [(NSSQLIntermediate *)&v6 initWithScope:a4];
  if (result)
  {
    result->_offset = a3;
  }

  return result;
}

- (id)generateSQLStringInContext:(id)a3
{
  if ([a3 objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  if ([(NSSQLIntermediate *)self isUpdateScoped])
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v7 = MEMORY[0x1E696AEC0];
    v8 = @"Unsupported join (offsets not allowed in updates)";
LABEL_12:
    [a3 setObject:objc_msgSend(v5 forKey:{"exceptionWithName:reason:userInfo:", v6, objc_msgSend(v7, "stringWithFormat:", v8), 0), @"NSUnderlyingException"}];
    return 0;
  }

  v9 = [(NSSQLIntermediate *)self fetchIntermediate];
  if (!v9 || !v9[6])
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v7 = MEMORY[0x1E696AEC0];
    v8 = @"Invalid SQL (must specify a limit with an offset)";
    goto LABEL_12;
  }

  v10 = [a3 valueForKey:@"substitutionVariables"];
  if (!v10)
  {
    return [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" OFFSET %lu", self->_offset];
  }

  v11 = v10;
  v12 = [v10 valueForKey:@"FETCH_REQUEST_OFFSET_SUBSTITUTION"];
  if (!v12)
  {
    return [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" OFFSET %lu", self->_offset];
  }

  v13 = v12;
  if ([v12 expressionType])
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = @"Unable to generate SQL - non-constant expression for offset substitution.";
LABEL_20:
    [a3 setValue:objc_msgSend(v14 forKey:{"exceptionWithName:reason:userInfo:", v15, v16, v11), @"NSUnderlyingException"}];
    return 0;
  }

  v18 = [v13 constantValue];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = @"Unable to generate SQL - non-NSNumber value for offset substitution.";
    goto LABEL_20;
  }

  v19 = [objc_msgSend(a3 valueForKey:{@"bindVars", "count"}];
  v20 = [(NSSQLIntermediate *)self _generateSQLForConstantValue:v18 inContext:a3];
  if ([objc_msgSend(a3 valueForKey:{@"bindVars", "count"}] - v19 >= 2)
  {
    if (![a3 valueForKey:@"NSUnderlyingException"])
    {
      [a3 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Invalid variable substitution - multiple values not supported for limit %@", v18), 0), @"NSUnderlyingException"}];
    }

    return 0;
  }

  v21 = [a3 valueForKey:@"subOrder"];
  [v21 addObject:@"FETCH_REQUEST_OFFSET_SUBSTITUTION"];
  [v21 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v19)}];
  v22 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" OFFSET %@", v20];

  return v22;
}

@end