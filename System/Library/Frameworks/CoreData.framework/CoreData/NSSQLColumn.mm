@interface NSSQLColumn
- (NSSQLColumn)initWithColumnName:(id)a3 sqlType:(unsigned __int8)a4;
- (NSSQLColumn)initWithEntity:(id)a3 propertyDescription:(id)a4;
- (id)description;
- (id)initForReadOnlyFetching;
- (uint64_t)_setColumnName:(uint64_t)result;
- (uint64_t)roughSizeEstimate;
- (void)copyValuesForReadOnlyFetch:(id)a3;
- (void)dealloc;
@end

@implementation NSSQLColumn

- (void)dealloc
{
  self->_columnName = 0;
  v3.receiver = self;
  v3.super_class = NSSQLColumn;
  [(NSSQLProperty *)&v3 dealloc];
}

- (uint64_t)roughSizeEstimate
{
  if (result)
  {
    if (*(result + 25) - 1 > 0xA)
    {
      return 16;
    }

    else
    {
      return dword_18592E588[(*(result + 25) - 1)];
    }
  }

  return result;
}

- (id)initForReadOnlyFetching
{
  v3.receiver = self;
  v3.super_class = NSSQLColumn;
  result = [(NSSQLColumn *)&v3 init];
  if (result)
  {
    *(result + 14) = -1;
  }

  return result;
}

- (NSSQLColumn)initWithEntity:(id)a3 propertyDescription:(id)a4
{
  v9.receiver = self;
  v9.super_class = NSSQLColumn;
  v6 = [NSSQLProperty initWithEntity:sel_initWithEntity_propertyDescription_ propertyDescription:?];
  if (v6)
  {
    if (a4)
    {
      if (a3)
      {
        v7 = *(a3 + 22);
      }

      else
      {
        v7 = 0;
      }

      v6->_columnName = [(NSSQLStoreMappingGenerator *)v7 newGeneratedPropertyName:a4];
    }

    v6->super._slot = -1;
    *&v6->super._flags |= 1u;
  }

  return v6;
}

- (NSSQLColumn)initWithColumnName:(id)a3 sqlType:(unsigned __int8)a4
{
  v6 = [(NSSQLColumn *)self initWithEntity:0 propertyDescription:0];
  v7 = v6;
  if (v6)
  {
    columnName = v6->_columnName;
    if (columnName != a3)
    {

      v7->_columnName = [a3 copy];
    }

    v7->super._sqlType = a4;
  }

  return v7;
}

- (uint64_t)_setColumnName:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 40);
    if (v4 != a2)
    {

      result = [a2 copy];
      *(v3 + 40) = result;
    }
  }

  return result;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: columnName = %@, type = %d, slot = %d, fetchIndex = %d propertyType = %d", objc_opt_class(), self->_columnName, self->super._sqlType, self->super._slot, self->super._fetchIndex, -[NSSQLProperty propertyType](self, "propertyType")];
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (void)copyValuesForReadOnlyFetch:(id)a3
{
  v6.receiver = self;
  v6.super_class = NSSQLColumn;
  [(NSSQLProperty *)&v6 copyValuesForReadOnlyFetch:?];
  self->_columnName = [objc_msgSend(a3 "columnName")];
  self->super._sqlType = [a3 sqlType];
  if (a3)
  {
    v5 = *(a3 + 16) & 1;
  }

  else
  {
    v5 = 0;
  }

  *&self->super._flags = *&self->super._flags & 0xFFFE | v5;
}

@end