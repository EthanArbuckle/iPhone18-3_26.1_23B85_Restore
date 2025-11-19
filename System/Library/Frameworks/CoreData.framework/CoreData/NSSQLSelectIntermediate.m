@interface NSSQLSelectIntermediate
- (NSSQLSelectIntermediate)initWithEntity:(id)a3 alias:(id)a4 fetchColumns:(id)a5 inScope:(id)a6;
- (id)generateSQLStringInContext:(id)a3;
- (id)initForCorrelationTarget:(id)a3 alias:(id)a4 fetchColumns:(id)a5 inScope:(id)a6;
- (void)dealloc;
- (void)setColumnAlias:(uint64_t)a1;
- (void)setFetchColumns:(uint64_t)a1;
@end

@implementation NSSQLSelectIntermediate

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSSQLSelectIntermediate;
  [(NSSQLSelectIntermediate *)&v3 dealloc];
}

- (NSSQLSelectIntermediate)initWithEntity:(id)a3 alias:(id)a4 fetchColumns:(id)a5 inScope:(id)a6
{
  v9 = [(NSSQLIntermediate *)self initWithScope:a6];
  v10 = v9;
  if (v9)
  {
    v9->_entity = a3;
    v9->_entityAlias = [a4 copy];
    v10->_columnAlias = [a4 copy];
    v10->_fetchColumns = a5;
    v10->_useDistinct = 0;
    v10->_isCount = 0;
  }

  return v10;
}

- (id)initForCorrelationTarget:(id)a3 alias:(id)a4 fetchColumns:(id)a5 inScope:(id)a6
{
  v9 = [(NSSQLIntermediate *)self initWithScope:a6];
  if (v9)
  {
    v9->_correlationTarget = [a3 copy];
    v9->_columnAlias = [a4 copy];
    v9->_fetchColumns = a5;
    v9->_useDistinct = 0;
    v9->_isCount = 0;
  }

  return v9;
}

- (void)setColumnAlias:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 56) != a2)
    {
      v4 = a2;

      *(a1 + 56) = a2;
    }
  }
}

- (void)setFetchColumns:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 40) != a2)
    {
      v4 = a2;

      *(a1 + 40) = a2;
    }
  }
}

- (id)generateSQLStringInContext:(id)a3
{
  if ([a3 objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  v4 = [(NSArray *)self->_fetchColumns count];
  if (self->_isCount && v4 > 1)
  {
    return 0;
  }

  v6 = v4;
  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"SELECT "];
  v8 = v7;
  if (self->_isCount)
  {
    objc_msgSend(v7, "appendString:", @"COUNT( ");
    if ([objc_msgSend(-[NSArray lastObject](self->_fetchColumns "lastObject")])
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (self->_useDistinct)
  {
LABEL_12:
    [v8 appendString:@"DISTINCT "];
  }

LABEL_13:
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v11 = [(NSArray *)self->_fetchColumns objectAtIndex:i];
      if (i)
      {
        [v8 appendString:{@", "}];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || v11 && (v11[16])
      {
        [v8 appendString:self->_columnAlias];
        [v8 appendString:@"."];
      }

      [v8 appendString:{objc_msgSend(v11, "columnName")}];
    }
  }

  if (self->_isCount)
  {
    [v8 appendString:@""]);
  }

  [v8 appendString:@" FROM "];
  entity = self->_entity;
  if (entity)
  {
    [v8 appendString:{-[NSSQLEntity tableName](entity, "tableName")}];
    [v8 appendString:@" "];
    v13 = &OBJC_IVAR___NSSQLSelectIntermediate__entityAlias;
  }

  else
  {
    v13 = &OBJC_IVAR___NSSQLSelectIntermediate__correlationTarget;
  }

  [v8 appendString:*(&self->super.super.isa + *v13)];
  [v8 appendString:@" "];
  return v8;
}

@end