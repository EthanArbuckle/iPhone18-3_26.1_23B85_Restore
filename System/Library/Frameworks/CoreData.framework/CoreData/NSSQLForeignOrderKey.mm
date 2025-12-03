@interface NSSQLForeignOrderKey
- (NSSQLForeignOrderKey)initWithEntity:(id)entity foreignKey:(id)key;
- (NSSQLForeignOrderKey)initWithEntity:(id)entity propertyDescription:(id)description;
- (id)initForReadOnlyFetchingOfEntity:(id)entity toOneRelationship:(id)relationship;
- (id)toOneRelationship;
- (void)copyValuesForReadOnlyFetch:(id)fetch;
- (void)dealloc;
@end

@implementation NSSQLForeignOrderKey

- (id)toOneRelationship
{
  foreignKey = [(NSSQLForeignOrderKey *)self foreignKey];

  return [foreignKey toOneRelationship];
}

- (void)dealloc
{
  self->_foreignKey = 0;

  v3.receiver = self;
  v3.super_class = NSSQLForeignOrderKey;
  [(NSSQLColumn *)&v3 dealloc];
}

- (NSSQLForeignOrderKey)initWithEntity:(id)entity foreignKey:(id)key
{
  v17.receiver = self;
  v17.super_class = NSSQLForeignOrderKey;
  v6 = [(NSSQLColumn *)&v17 initWithEntity:entity propertyDescription:0];
  v7 = v6;
  if (v6)
  {
    v6->super.super._propertyType = 10;
    v6->_foreignKey = key;
    toOneRelationship = [(NSSQLForeignOrderKey *)v6 toOneRelationship];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@", @"Z_FOK", objc_msgSend(objc_msgSend(toOneRelationship, "name"), "uppercaseString")];
    if (entity)
    {
      v10 = *(entity + 22);
    }

    else
    {
      v10 = 0;
    }

    v11 = [(NSSQLStoreMappingGenerator *)v10 uniqueNameWithBase:v9];
    columnName = v7->super._columnName;
    if (columnName != v11)
    {
      v13 = v11;

      v7->super._columnName = [v13 copy];
    }

    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"_%@", v7->super._columnName];
    name = v7->_name;
    if (name != v14)
    {

      v7->_name = [(NSString *)v14 copy];
    }

    v7->super.super._sqlType = 1;
  }

  return v7;
}

- (NSSQLForeignOrderKey)initWithEntity:(id)entity propertyDescription:(id)description
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

  return [(NSSQLForeignOrderKey *)self initWithEntity:entity foreignKey:foreignKey];
}

- (id)initForReadOnlyFetchingOfEntity:(id)entity toOneRelationship:(id)relationship
{
  v9.receiver = self;
  v9.super_class = NSSQLForeignOrderKey;
  v5 = [(NSSQLColumn *)&v9 initWithEntity:entity propertyDescription:0];
  v6 = v5;
  if (v5)
  {
    v5->super.super._propertyType = 10;
    v5->_foreignKey = [relationship foreignKey];
    columnName = v6->super._columnName;
    if (columnName != @"Z_ENT")
    {

      v6->super._columnName = [@"Z_ENT" copy];
    }

    v6->super.super._sqlType = 1;
  }

  return v6;
}

- (void)copyValuesForReadOnlyFetch:(id)fetch
{
  v5.receiver = self;
  v5.super_class = NSSQLForeignOrderKey;
  [(NSSQLColumn *)&v5 copyValuesForReadOnlyFetch:?];
  self->_name = [objc_msgSend(fetch "name")];
}

@end