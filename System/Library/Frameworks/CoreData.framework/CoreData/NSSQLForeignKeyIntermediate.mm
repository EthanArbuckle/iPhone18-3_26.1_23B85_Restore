@interface NSSQLForeignKeyIntermediate
- (NSSQLForeignKeyIntermediate)initWithConstantValue:(id)value inScope:(id)scope;
- (id)generateSQLStringInContext:(id)context;
@end

@implementation NSSQLForeignKeyIntermediate

- (NSSQLForeignKeyIntermediate)initWithConstantValue:(id)value inScope:(id)scope
{
  v5.receiver = self;
  v5.super_class = NSSQLForeignKeyIntermediate;
  return [(NSSQLConstantValueIntermediate *)&v5 initWithConstantValue:value inScope:scope context:0];
}

- (id)generateSQLStringInContext:(id)context
{
  constantValue = self->super._constantValue;
  if ([MEMORY[0x1E695DFB0] null] == constantValue)
  {
    v6 = 0;
  }

  else
  {
    v6 = constantValue;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    constantValue = [v6 objectID];
    if (constantValue)
    {
      goto LABEL_7;
    }

LABEL_11:
    v8 = -[NSSQLiteAdapter sqlTypeForExpressionConstantValue:]([objc_msgSend(context objectForKey:{@"persistentStore", "adapter"}], v6);
    if (v8 == 1)
    {
      v9 = 2;
    }

    else
    {
      v9 = v8;
    }

    if ([(NSSQLIntermediate *)self isTargetColumnsScoped])
    {
      v10 = @"selectBindVars";
    }

    else
    {
      v10 = @"bindVars";
    }

    v11 = [context objectForKey:v10];
    v12 = [[NSSQLBindVariable alloc] initWithValue:v6 sqlType:v9 propertyDescription:0];
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (([constantValue isTemporaryID] & 1) != 0 || (v7 = objc_msgSend(constantValue, "persistentStore"), v7 != objc_msgSend(context, "objectForKey:", @"persistentStore")))
  {
    -[NSSQLConstantValueIntermediate _addBindVarForConstId:ofType:inContext:](self, [MEMORY[0x1E696AD98] numberWithLongLong:0], 2, context);
    goto LABEL_19;
  }

  if ([(NSSQLIntermediate *)self isTargetColumnsScoped])
  {
    v15 = @"selectBindVars";
  }

  else
  {
    v15 = @"bindVars";
  }

  v11 = [context objectForKey:v15];
  v12 = -[NSSQLBindVariable initWithInt64:sqlType:]([NSSQLBindVariable alloc], "initWithInt64:sqlType:", [constantValue _referenceData64], 2);
LABEL_18:
  v13 = v12;
  [v11 addObject:v12];

LABEL_19:

  return [@"?" mutableCopy];
}

@end