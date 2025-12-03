@interface NSSQLUpdateIntermediate
- (NSSQLUpdateIntermediate)initWithEntity:(id)entity alias:(id)alias inScope:(id)scope;
- (id)generateSQLStringInContext:(id)context;
- (void)dealloc;
- (void)setUpdateColumnsIntermediate:(uint64_t)intermediate;
@end

@implementation NSSQLUpdateIntermediate

- (void)dealloc
{
  self->_updateColumns = 0;
  v3.receiver = self;
  v3.super_class = NSSQLUpdateIntermediate;
  [(NSSQLStatementIntermediate *)&v3 dealloc];
}

- (NSSQLUpdateIntermediate)initWithEntity:(id)entity alias:(id)alias inScope:(id)scope
{
  v6.receiver = self;
  v6.super_class = NSSQLUpdateIntermediate;
  return [(NSSQLStatementIntermediate *)&v6 initWithEntity:entity alias:alias inScope:scope];
}

- (void)setUpdateColumnsIntermediate:(uint64_t)intermediate
{
  if (intermediate)
  {
    if (*(intermediate + 64) != a2)
    {
      v4 = a2;

      *(intermediate + 64) = a2;
    }
  }
}

- (id)generateSQLStringInContext:(id)context
{
  if ([context objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  if ([(NSSQLStatementIntermediate *)self governingAlias])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@" AS %@", -[NSSQLStatementIntermediate governingAlias](self, "governingAlias")];
  }

  else
  {
    v5 = &stru_1EF3F1768;
  }

  v6 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"UPDATE OR FAIL %@%@ SET ", objc_msgSend(-[NSSQLStatementIntermediate governingEntity](self, "governingEntity"), "tableName"), v5];
  v7 = [(NSSQLUpdateColumnsIntermediate *)self->_updateColumns generateSQLStringInContext:context];
  if (!v7)
  {
LABEL_19:

    return 0;
  }

  v8 = v7;
  [v6 appendString:v7];
  whereClause = self->super._whereClause;
  if (whereClause)
  {
    v10 = [(NSSQLIntermediate *)whereClause generateSQLStringInContext:context];
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = 0;
  }

  orderIntermediate = self->super._orderIntermediate;
  if (orderIntermediate)
  {
    v12 = [(NSSQLOrderIntermediate *)orderIntermediate generateSQLStringInContext:context];
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = 0;
  }

  limitClause = self->super._limitClause;
  if (limitClause)
  {
    v14 = [(NSSQLLimitIntermediate *)limitClause generateSQLStringInContext:context];
    if (!v14)
    {

LABEL_17:
LABEL_18:

      goto LABEL_19;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v10)
  {
    [v6 appendString:@"WHERE "];
    [v6 appendString:v10];
    [v6 appendString:@" "];
  }

  if (v12)
  {
    [v6 appendString:v12];
  }

  if (v14)
  {
    [v6 appendString:v14];
  }

  return v6;
}

@end