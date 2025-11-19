@interface NSSQLForeignOrderKey
- (NSSQLForeignOrderKey)initWithEntity:(id)a3 foreignKey:(id)a4;
- (NSSQLForeignOrderKey)initWithEntity:(id)a3 propertyDescription:(id)a4;
- (id)initForReadOnlyFetchingOfEntity:(id)a3 toOneRelationship:(id)a4;
- (id)toOneRelationship;
- (void)copyValuesForReadOnlyFetch:(id)a3;
- (void)dealloc;
@end

@implementation NSSQLForeignOrderKey

- (id)toOneRelationship
{
  v2 = [(NSSQLForeignOrderKey *)self foreignKey];

  return [v2 toOneRelationship];
}

- (void)dealloc
{
  self->_foreignKey = 0;

  v3.receiver = self;
  v3.super_class = NSSQLForeignOrderKey;
  [(NSSQLColumn *)&v3 dealloc];
}

- (NSSQLForeignOrderKey)initWithEntity:(id)a3 foreignKey:(id)a4
{
  v17.receiver = self;
  v17.super_class = NSSQLForeignOrderKey;
  v6 = [(NSSQLColumn *)&v17 initWithEntity:a3 propertyDescription:0];
  v7 = v6;
  if (v6)
  {
    v6->super.super._propertyType = 10;
    v6->_foreignKey = a4;
    v8 = [(NSSQLForeignOrderKey *)v6 toOneRelationship];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@", @"Z_FOK", objc_msgSend(objc_msgSend(v8, "name"), "uppercaseString")];
    if (a3)
    {
      v10 = *(a3 + 22);
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

- (NSSQLForeignOrderKey)initWithEntity:(id)a3 propertyDescription:(id)a4
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

  return [(NSSQLForeignOrderKey *)self initWithEntity:a3 foreignKey:v8];
}

- (id)initForReadOnlyFetchingOfEntity:(id)a3 toOneRelationship:(id)a4
{
  v9.receiver = self;
  v9.super_class = NSSQLForeignOrderKey;
  v5 = [(NSSQLColumn *)&v9 initWithEntity:a3 propertyDescription:0];
  v6 = v5;
  if (v5)
  {
    v5->super.super._propertyType = 10;
    v5->_foreignKey = [a4 foreignKey];
    columnName = v6->super._columnName;
    if (columnName != @"Z_ENT")
    {

      v6->super._columnName = [@"Z_ENT" copy];
    }

    v6->super.super._sqlType = 1;
  }

  return v6;
}

- (void)copyValuesForReadOnlyFetch:(id)a3
{
  v5.receiver = self;
  v5.super_class = NSSQLForeignOrderKey;
  [(NSSQLColumn *)&v5 copyValuesForReadOnlyFetch:?];
  self->_name = [objc_msgSend(a3 "name")];
}

@end