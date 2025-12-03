@interface NSSQLBoundedByIntermediate
- (NSSQLBoundedByIntermediate)initWithWorkingEntity:(id)entity target:(id)target bounds:(id)bounds scope:(id)scope;
- (id)generateSQLStringInContext:(id)context;
- (void)dealloc;
@end

@implementation NSSQLBoundedByIntermediate

- (NSSQLBoundedByIntermediate)initWithWorkingEntity:(id)entity target:(id)target bounds:(id)bounds scope:(id)scope
{
  v11.receiver = self;
  v11.super_class = NSSQLBoundedByIntermediate;
  v9 = [(NSSQLIntermediate *)&v11 initWithScope:scope];
  if (v9)
  {
    v9->_entity = entity;
    v9->_target = target;
    v9->_bounds = bounds;
  }

  return v9;
}

- (void)dealloc
{
  self->_entity = 0;

  self->_target = 0;
  self->_bounds = 0;
  v3.receiver = self;
  v3.super_class = NSSQLBoundedByIntermediate;
  [(NSSQLBoundedByIntermediate *)&v3 dealloc];
}

- (id)generateSQLStringInContext:(id)context
{
  expressionType = [(NSExpression *)self->_bounds expressionType];
  if (expressionType == NSConstantValueExpressionType)
  {
    constantValue = [(NSExpression *)self->_bounds constantValue];
    if ([constantValue count] == 2)
    {
      firstObject = [constantValue firstObject];
      lastObject = [constantValue lastObject];
      goto LABEL_19;
    }

LABEL_25:
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = @"Unsupported predicate, RHS of boundBy: must contain 2 values";
    goto LABEL_29;
  }

  if (expressionType != NSAggregateExpressionType)
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = @"Unsupported predicate, RHS of boundBy: must be an aggregate or constant";
    goto LABEL_29;
  }

  constantValue2 = [(NSExpression *)self->_bounds constantValue];
  if ([constantValue2 count] != 2)
  {
    goto LABEL_25;
  }

  v7 = [constantValue2 objectAtIndex:0];
  expressionType2 = [v7 expressionType];
  v9 = [constantValue2 objectAtIndex:0];
  expressionType3 = [v9 expressionType];
  if (expressionType2)
  {
    v11 = expressionType2 == 3;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = @"Unsupported predicate, topLeft parameter of boundBy: RHS must be a constant or keypath";
LABEL_29:
    [context setObject:objc_msgSend(v19 forKey:{"exceptionWithName:reason:userInfo:", v20, v21, 0), @"NSUnderlyingException"}];
    return 0;
  }

  v12 = expressionType3;
  if (expressionType3)
  {
    v13 = expressionType3 == 3;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = @"Unsupported predicate, bottomRight parameter of boundBy: RHS must be a constant or keypath";
    goto LABEL_29;
  }

  if (expressionType2)
  {
    firstObject = 0;
    if (expressionType3)
    {
LABEL_16:
      v15 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    firstObject = [v7 constantValue];
    if (v12)
    {
      goto LABEL_16;
    }
  }

  lastObject = [v9 constantValue];
LABEL_19:
  v15 = lastObject;
LABEL_20:
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = @"Unsupported predicate, constant topLeft parameter of boundBy: RHS must respond to coordinate";
    goto LABEL_29;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = @"Unsupported predicate, constant lowerRight parameter of boundBy: RHS must respond to coordinate";
    goto LABEL_29;
  }

  v18 = [(NSDictionary *)[(NSPropertyDescription *)self->_target userInfo] objectForKey:@"_NSLocationAttributeDerivedComponents"];
  if (([v18 isNSArray] & 1) == 0)
  {
    if ([v18 isNSString])
    {
      v18 = [objc_msgSend(objc_msgSend(v18 "description")];
    }

    else
    {
      v18 = 0;
    }
  }

  entity = self->_entity;
  firstObject2 = [v18 firstObject];
  if (entity)
  {
    v25 = [(NSMutableDictionary *)entity->_properties objectForKey:firstObject2];
  }

  else
  {
    v25 = 0;
  }

  columnName = [v25 columnName];
  v27 = self->_entity;
  lastObject2 = [v18 lastObject];
  if (v27)
  {
    v29 = [(NSMutableDictionary *)v27->_properties objectForKey:lastObject2];
  }

  else
  {
    v29 = 0;
  }

  columnName2 = [v29 columnName];
  v31 = -[NSSQLAliasGenerator initWithNestingLevel:]([NSSQLAliasGenerator alloc], "initWithNestingLevel:", [objc_msgSend(context objectForKey:{@"nestingLevel", "integerValue"}] + 1);
  generateTableAlias = [(NSSQLAliasGenerator *)v31 generateTableAlias];

  v33 = [NSSQLLocationAttributeRTreeExtension newRTReeTableNameForAttribute:[(NSSQLEntity *)self->_entity entityDescription] onEntity:?];
  v34 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"SELECT %@.Z_PK FROM %@ %@ WHERE ? <= %@.%@_MAX AND %@.%@_MIN <= ? AND ? <= %@.%@_MAX AND %@.%@_MIN <= ?", generateTableAlias, v33, generateTableAlias, generateTableAlias, columnName, generateTableAlias, columnName, generateTableAlias, columnName2, generateTableAlias, columnName2];

  if ([(NSSQLIntermediate *)self isWhereScoped])
  {
    v35 = @"bindVars";
  }

  else
  {
    v35 = @"selectBindVars";
  }

  v36 = [context objectForKey:v35];
  [firstObject coordinate];
  v38 = v37;
  [v15 coordinate];
  v40 = v39;
  [v15 coordinate];
  v42 = v41;
  [firstObject coordinate];
  v44 = v43;
  v45 = [NSSQLBindVariable alloc];
  v46 = -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:](v45, "initWithValue:sqlType:propertyDescription:", [MEMORY[0x1E696AD98] numberWithDouble:v42], 7, 0);
  [v36 addObject:v46];

  v47 = [NSSQLBindVariable alloc];
  v48 = -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:](v47, "initWithValue:sqlType:propertyDescription:", [MEMORY[0x1E696AD98] numberWithDouble:v44], 7, 0);
  [v36 addObject:v48];

  v49 = [NSSQLBindVariable alloc];
  v50 = -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:](v49, "initWithValue:sqlType:propertyDescription:", [MEMORY[0x1E696AD98] numberWithDouble:v38], 7, 0);
  [v36 addObject:v50];

  v51 = [NSSQLBindVariable alloc];
  v52 = -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:](v51, "initWithValue:sqlType:propertyDescription:", [MEMORY[0x1E696AD98] numberWithDouble:v40], 7, 0);
  [v36 addObject:v52];

  return v34;
}

@end