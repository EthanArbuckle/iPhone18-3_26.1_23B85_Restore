@interface NSSQLForeignKey
- (NSSQLForeignKey)initWithEntity:(id)entity propertyDescription:(id)description;
- (NSSQLForeignKey)initWithEntity:(id)entity toOneRelationship:(id)relationship;
- (id)initForReadOnlyFetchingOfEntity:(id)entity toOneRelationship:(id)relationship;
- (void)copyValuesForReadOnlyFetch:(id)fetch;
- (void)dealloc;
@end

@implementation NSSQLForeignKey

- (void)dealloc
{
  self->_toOne = 0;

  v3.receiver = self;
  v3.super_class = NSSQLForeignKey;
  [(NSSQLColumn *)&v3 dealloc];
}

- (NSSQLForeignKey)initWithEntity:(id)entity toOneRelationship:(id)relationship
{
  v16.receiver = self;
  v16.super_class = NSSQLForeignKey;
  v6 = [(NSSQLColumn *)&v16 initWithEntity:entity propertyDescription:0];
  v7 = v6;
  if (v6)
  {
    v6->super.super._propertyType = 3;
    v6->_toOne = relationship;
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@", @"Z", objc_msgSend(objc_msgSend(relationship, "name"), "uppercaseString")];
    if (entity)
    {
      v9 = *(entity + 22);
    }

    else
    {
      v9 = 0;
    }

    v10 = [(NSSQLStoreMappingGenerator *)v9 uniqueNameWithBase:v8];
    columnName = v7->super._columnName;
    if (columnName != v10)
    {
      v12 = v10;

      v7->super._columnName = [v12 copy];
    }

    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"_%@", v7->super._columnName];
    name = v7->_name;
    if (name != v13)
    {

      v7->_name = [(NSString *)v13 copy];
    }

    v7->super.super._sqlType = 2;
  }

  return v7;
}

- (NSSQLForeignKey)initWithEntity:(id)entity propertyDescription:(id)description
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

  return [(NSSQLForeignKey *)self initWithEntity:entity toOneRelationship:v7];
}

- (id)initForReadOnlyFetchingOfEntity:(id)entity toOneRelationship:(id)relationship
{
  v10.receiver = self;
  v10.super_class = NSSQLForeignKey;
  v5 = [(NSSQLColumn *)&v10 initWithEntity:entity propertyDescription:0];
  v6 = v5;
  if (v5)
  {
    v5->super.super._propertyType = 3;
    v5->_toOne = relationship;
    columnName = v5->super._columnName;
    if (columnName != @"Z_PK")
    {

      v6->super._columnName = [@"Z_PK" copy];
    }

    name = v6->_name;
    if (name != @"_pk")
    {

      v6->_name = [@"_pk" copy];
    }

    v6->super.super._sqlType = 2;
  }

  return v6;
}

- (void)copyValuesForReadOnlyFetch:(id)fetch
{
  v5.receiver = self;
  v5.super_class = NSSQLForeignKey;
  [(NSSQLColumn *)&v5 copyValuesForReadOnlyFetch:?];
  self->_toOne = [fetch toOneRelationship];
  self->_name = [objc_msgSend(fetch "name")];
}

@end