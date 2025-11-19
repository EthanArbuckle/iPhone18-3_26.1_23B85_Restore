@interface NSSQLAliasGenerator
- (id)generateSubqueryVariableAlias;
- (id)generateTableAlias;
- (uint64_t)generateTempTableName;
- (uint64_t)generateVariableAlias;
- (void)dealloc;
@end

@implementation NSSQLAliasGenerator

- (id)generateTableAlias
{
  v2 = MEMORY[0x1E696AEC0];
  tableBase = self->_tableBase;
  nextTableAlias = self->_nextTableAlias;
  self->_nextTableAlias = nextTableAlias + 1;
  return [v2 stringWithFormat:tableBase, nextTableAlias];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSSQLAliasGenerator;
  [(NSSQLAliasGenerator *)&v3 dealloc];
}

- (uint64_t)generateTempTableName
{
  if (result)
  {
    v1 = MEMORY[0x1E696AEC0];
    v2 = *(result + 16);
    *(result + 16) = v2 + 1;
    return [v1 stringWithFormat:@"_Z_intarray%u", v2];
  }

  return result;
}

- (id)generateSubqueryVariableAlias
{
  if (self)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = *(self + 4);
    v4 = *(self + 3);
    *(self + 3) = v4 + 1;
    return [v2 stringWithFormat:v3, v4];
  }

  return self;
}

- (uint64_t)generateVariableAlias
{
  if (result)
  {
    v1 = MEMORY[0x1E696AEC0];
    v2 = *(result + 32);
    v3 = *(result + 12);
    *(result + 12) = v3 + 1;
    return [v1 stringWithFormat:v2, v3];
  }

  return result;
}

@end