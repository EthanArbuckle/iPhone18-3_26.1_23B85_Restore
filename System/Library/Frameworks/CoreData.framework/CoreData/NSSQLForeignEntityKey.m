@interface NSSQLForeignEntityKey
- (NSSQLForeignEntityKey)initWithEntity:(id)a3 foreignKey:(id)a4;
- (NSSQLForeignEntityKey)initWithEntity:(id)a3 propertyDescription:(id)a4;
- (id)initForReadOnlyFetchingOfEntity:(id)a3 toOneRelationship:(id)a4;
- (id)toOneRelationship;
- (void)copyValuesForReadOnlyFetch:(id)a3;
- (void)dealloc;
@end

@implementation NSSQLForeignEntityKey

- (void)dealloc
{
  self->_foreignKey = 0;

  v3.receiver = self;
  v3.super_class = NSSQLForeignEntityKey;
  [(NSSQLColumn *)&v3 dealloc];
}

- (id)toOneRelationship
{
  v2 = [(NSSQLForeignEntityKey *)self foreignKey];

  return [v2 toOneRelationship];
}

- (NSSQLForeignEntityKey)initWithEntity:(id)a3 foreignKey:(id)a4
{
  v20.receiver = self;
  v20.super_class = NSSQLForeignEntityKey;
  v6 = [(NSSQLColumn *)&v20 initWithEntity:a3 propertyDescription:0];
  v7 = v6;
  if (v6)
  {
    v6->super.super._propertyType = 4;
    v6->_foreignKey = a4;
    v8 = [(NSSQLForeignEntityKey *)v6 toOneRelationship];
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v10 = [v8 destinationEntity];
    if (v10)
    {
      v11 = *(v10 + 184);
    }

    else
    {
      v11 = 0;
    }

    v12 = [v9 initWithFormat:@"%@%d_%@", @"Z", v11, objc_msgSend(objc_msgSend(v8, "name"), "uppercaseString")];
    if (a3)
    {
      v13 = *(a3 + 22);
    }

    else
    {
      v13 = 0;
    }

    v14 = [(NSSQLStoreMappingGenerator *)v13 uniqueNameWithBase:v12];
    columnName = v7->super._columnName;
    if (columnName != v14)
    {
      v16 = v14;

      v7->super._columnName = [v16 copy];
    }

    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"_%@", v7->super._columnName];
    name = v7->_name;
    if (name != v17)
    {

      v7->_name = [(NSString *)v17 copy];
    }

    v7->super.super._sqlType = 1;
  }

  return v7;
}

- (NSSQLForeignEntityKey)initWithEntity:(id)a3 propertyDescription:(id)a4
{
  v6 = [a4 name];
  if (a3)
  {
    v7 = [*(a3 + 5) objectForKey:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 foreignKey];

  return [(NSSQLForeignEntityKey *)self initWithEntity:a3 foreignKey:v8];
}

- (id)initForReadOnlyFetchingOfEntity:(id)a3 toOneRelationship:(id)a4
{
  v14.receiver = self;
  v14.super_class = NSSQLForeignEntityKey;
  v6 = [(NSSQLColumn *)&v14 initWithEntity:a3 propertyDescription:0];
  v7 = v6;
  if (v6)
  {
    v6->super.super._propertyType = 4;
    v6->_foreignKey = [a4 foreignKey];
    columnName = v7->super._columnName;
    if (columnName != @"Z_ENT")
    {

      v7->super._columnName = [@"Z_ENT" copy];
    }

    v9 = objc_alloc(MEMORY[0x1E696AD98]);
    if (a3)
    {
      v10 = *(a3 + 46);
    }

    else
    {
      v10 = 0;
    }

    v11 = [v9 initWithUnsignedInt:v10];
    columnValue = v7->_columnValue;
    if (columnValue != v11)
    {

      v7->_columnValue = [(NSNumber *)v11 copy];
    }

    v7->super.super._sqlType = 1;
  }

  return v7;
}

- (void)copyValuesForReadOnlyFetch:(id)a3
{
  v5.receiver = self;
  v5.super_class = NSSQLForeignEntityKey;
  [(NSSQLColumn *)&v5 copyValuesForReadOnlyFetch:?];
  self->_name = [objc_msgSend(a3 "name")];
}

@end