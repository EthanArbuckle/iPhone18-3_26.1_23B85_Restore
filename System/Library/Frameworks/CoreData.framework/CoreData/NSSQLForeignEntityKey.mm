@interface NSSQLForeignEntityKey
- (NSSQLForeignEntityKey)initWithEntity:(id)entity foreignKey:(id)key;
- (NSSQLForeignEntityKey)initWithEntity:(id)entity propertyDescription:(id)description;
- (id)initForReadOnlyFetchingOfEntity:(id)entity toOneRelationship:(id)relationship;
- (id)toOneRelationship;
- (void)copyValuesForReadOnlyFetch:(id)fetch;
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
  foreignKey = [(NSSQLForeignEntityKey *)self foreignKey];

  return [foreignKey toOneRelationship];
}

- (NSSQLForeignEntityKey)initWithEntity:(id)entity foreignKey:(id)key
{
  v20.receiver = self;
  v20.super_class = NSSQLForeignEntityKey;
  v6 = [(NSSQLColumn *)&v20 initWithEntity:entity propertyDescription:0];
  v7 = v6;
  if (v6)
  {
    v6->super.super._propertyType = 4;
    v6->_foreignKey = key;
    toOneRelationship = [(NSSQLForeignEntityKey *)v6 toOneRelationship];
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    destinationEntity = [toOneRelationship destinationEntity];
    if (destinationEntity)
    {
      v11 = *(destinationEntity + 184);
    }

    else
    {
      v11 = 0;
    }

    v12 = [v9 initWithFormat:@"%@%d_%@", @"Z", v11, objc_msgSend(objc_msgSend(toOneRelationship, "name"), "uppercaseString")];
    if (entity)
    {
      v13 = *(entity + 22);
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

- (NSSQLForeignEntityKey)initWithEntity:(id)entity propertyDescription:(id)description
{
  name = [description name];
  if (entity)
  {
    v7 = [*(entity + 5) objectForKey:name];
  }

  else
  {
    v7 = 0;
  }

  foreignKey = [v7 foreignKey];

  return [(NSSQLForeignEntityKey *)self initWithEntity:entity foreignKey:foreignKey];
}

- (id)initForReadOnlyFetchingOfEntity:(id)entity toOneRelationship:(id)relationship
{
  v14.receiver = self;
  v14.super_class = NSSQLForeignEntityKey;
  v6 = [(NSSQLColumn *)&v14 initWithEntity:entity propertyDescription:0];
  v7 = v6;
  if (v6)
  {
    v6->super.super._propertyType = 4;
    v6->_foreignKey = [relationship foreignKey];
    columnName = v7->super._columnName;
    if (columnName != @"Z_ENT")
    {

      v7->super._columnName = [@"Z_ENT" copy];
    }

    v9 = objc_alloc(MEMORY[0x1E696AD98]);
    if (entity)
    {
      v10 = *(entity + 46);
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

- (void)copyValuesForReadOnlyFetch:(id)fetch
{
  v5.receiver = self;
  v5.super_class = NSSQLForeignEntityKey;
  [(NSSQLColumn *)&v5 copyValuesForReadOnlyFetch:?];
  self->_name = [objc_msgSend(fetch "name")];
}

@end