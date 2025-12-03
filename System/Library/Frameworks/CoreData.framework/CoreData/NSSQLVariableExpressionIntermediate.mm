@interface NSSQLVariableExpressionIntermediate
- (id)generateSQLStringInContext:(id)context;
@end

@implementation NSSQLVariableExpressionIntermediate

- (id)generateSQLStringInContext:(id)context
{
  variable = [(NSExpression *)self->super._expression variable];
  v6 = [objc_msgSend(context valueForKey:{@"substitutionVariables", "valueForKey:", variable}];
  if (!v6)
  {
    v10 = [objc_msgSend(-[NSSQLIntermediate fetchIntermediate](self "fetchIntermediate")];
    if (v10)
    {
      return v10;
    }

    if (![context objectForKey:@"NSUnderlyingException"])
    {
      [context setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"unable to resolve variable expression: %@", self->super._expression), 0), @"NSUnderlyingException"}];
    }

    return 0;
  }

  v7 = v6;
  isTargetColumnsScoped = [(NSSQLIntermediate *)self isTargetColumnsScoped];
  v9 = [objc_msgSend(context valueForKey:{@"selectBindVars", "count"}];
  v10 = [(NSSQLIntermediate *)self _generateSQLForExpression:v7 allowToMany:self->super._allowToMany inContext:context];
  if ([objc_msgSend(context valueForKey:{@"selectBindVars", "count"}] - v9 >= 2)
  {
    if (![context valueForKey:@"NSUnderlyingException"])
    {
      [context setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Invalid variable substitution - multiple values not supported here %@", self->super._expression), 0), @"NSUnderlyingException"}];
    }

    return 0;
  }

  if (isTargetColumnsScoped)
  {
    v11 = @"columnSubOrder";
  }

  else
  {
    v11 = @"subOrder";
  }

  v12 = [context valueForKey:v11];
  [v12 addObject:variable];
  [v12 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v9)}];
  return v10;
}

@end