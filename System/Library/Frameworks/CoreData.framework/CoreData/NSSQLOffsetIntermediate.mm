@interface NSSQLOffsetIntermediate
- (NSSQLOffsetIntermediate)initWithOffset:(unint64_t)offset inScope:(id)scope;
- (id)generateSQLStringInContext:(id)context;
@end

@implementation NSSQLOffsetIntermediate

- (NSSQLOffsetIntermediate)initWithOffset:(unint64_t)offset inScope:(id)scope
{
  v6.receiver = self;
  v6.super_class = NSSQLOffsetIntermediate;
  result = [(NSSQLIntermediate *)&v6 initWithScope:scope];
  if (result)
  {
    result->_offset = offset;
  }

  return result;
}

- (id)generateSQLStringInContext:(id)context
{
  if ([context objectForKey:@"NSUnderlyingException"])
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
    [context setObject:objc_msgSend(v5 forKey:{"exceptionWithName:reason:userInfo:", v6, objc_msgSend(v7, "stringWithFormat:", v8), 0), @"NSUnderlyingException"}];
    return 0;
  }

  fetchIntermediate = [(NSSQLIntermediate *)self fetchIntermediate];
  if (!fetchIntermediate || !fetchIntermediate[6])
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v7 = MEMORY[0x1E696AEC0];
    v8 = @"Invalid SQL (must specify a limit with an offset)";
    goto LABEL_12;
  }

  v10 = [context valueForKey:@"substitutionVariables"];
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
    [context setValue:objc_msgSend(v14 forKey:{"exceptionWithName:reason:userInfo:", v15, v16, v11), @"NSUnderlyingException"}];
    return 0;
  }

  constantValue = [v13 constantValue];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = @"Unable to generate SQL - non-NSNumber value for offset substitution.";
    goto LABEL_20;
  }

  v19 = [objc_msgSend(context valueForKey:{@"bindVars", "count"}];
  v20 = [(NSSQLIntermediate *)self _generateSQLForConstantValue:constantValue inContext:context];
  if ([objc_msgSend(context valueForKey:{@"bindVars", "count"}] - v19 >= 2)
  {
    if (![context valueForKey:@"NSUnderlyingException"])
    {
      [context setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Invalid variable substitution - multiple values not supported for limit %@", constantValue), 0), @"NSUnderlyingException"}];
    }

    return 0;
  }

  v21 = [context valueForKey:@"subOrder"];
  [v21 addObject:@"FETCH_REQUEST_OFFSET_SUBSTITUTION"];
  [v21 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v19)}];
  v22 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" OFFSET %@", v20];

  return v22;
}

@end