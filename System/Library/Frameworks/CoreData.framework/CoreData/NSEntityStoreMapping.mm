@interface NSEntityStoreMapping
- (BOOL)isEqual:(id)equal;
- (NSEntityStoreMapping)initWithEntity:(id)entity;
- (id)description;
- (uint64_t)setPropertyMappings:(uint64_t)result;
- (void)dealloc;
- (void)setPrimaryKeys:(uint64_t)keys;
@end

@implementation NSEntityStoreMapping

- (NSEntityStoreMapping)initWithEntity:(id)entity
{
  v5 = +[NSStoreMappingGenerator defaultMappingGenerator];
  name = [entity name];
  if (v5)
  {
    uppercaseString = [name uppercaseString];
  }

  else
  {
    uppercaseString = 0;
  }

  v13.receiver = self;
  v13.super_class = NSEntityStoreMapping;
  v8 = [(NSStoreMapping *)&v13 initWithExternalName:uppercaseString];
  v9 = v8;
  if (v8)
  {
    v8->_entity = entity;
    propertyMappings = v8->_propertyMappings;
    if (propertyMappings)
    {

      v9->_propertyMappings = [0 copy];
    }

    [(NSEntityStoreMapping *)v9 setPrimaryKeys:?];
    v9->_isSingleTableEntity = 1;
    subentityColumn = v9->_subentityColumn;
    if (subentityColumn)
    {

      v9->_subentityColumn = [0 copy];
    }

    v9->_subentityID = 0;
  }

  return v9;
}

- (uint64_t)setPropertyMappings:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 24);
    if (v4 != a2)
    {

      result = [a2 copy];
      *(v3 + 24) = result;
    }
  }

  return result;
}

- (void)setPrimaryKeys:(uint64_t)keys
{
  if (keys)
  {
    if (*(keys + 32) != a2)
    {
      v3 = [a2 copy];

      *(keys + 32) = v3;
    }
  }
}

- (void)dealloc
{
  if (self)
  {
    self->_entity = 0;
    [(NSEntityStoreMapping *)self setPropertyMappings:?];
    [(NSEntityStoreMapping *)self setPrimaryKeys:?];
    subentityColumn = self->_subentityColumn;
    if (subentityColumn)
    {

      self->_subentityColumn = [0 copy];
    }
  }

  else
  {
    [(NSEntityStoreMapping *)0 setPropertyMappings:?];
    [(NSEntityStoreMapping *)0 setPrimaryKeys:?];
  }

  v4.receiver = self;
  v4.super_class = NSEntityStoreMapping;
  [(NSStoreMapping *)&v4 dealloc];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v6.receiver = self;
  v6.super_class = NSEntityStoreMapping;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ -> %@", -[NSEntityStoreMapping description](&v6, sel_description), -[NSEntityDescription name](self->_entity, "name")];
  objc_autoreleasePoolPop(v3);
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v13.receiver = self;
  v13.super_class = NSEntityStoreMapping;
  v5 = [(NSStoreMapping *)&v13 isEqual:?];
  if (v5)
  {
    entity = [(NSEntityStoreMapping *)self entity];
    if (entity == [equal entity] || (v5 = objc_msgSend(-[NSEntityStoreMapping entity](self, "entity"), "isEqual:", objc_msgSend(equal, "entity"))) != 0)
    {
      propertyMappings = [(NSEntityStoreMapping *)self propertyMappings];
      if (propertyMappings == [equal propertyMappings] || (v5 = objc_msgSend(-[NSEntityStoreMapping propertyMappings](self, "propertyMappings"), "isEqual:", objc_msgSend(equal, "propertyMappings"))) != 0)
      {
        primaryKeys = [(NSEntityStoreMapping *)self primaryKeys];
        if (primaryKeys == [equal primaryKeys] || (v5 = objc_msgSend(-[NSEntityStoreMapping primaryKeys](self, "primaryKeys"), "isEqual:", objc_msgSend(equal, "primaryKeys"))) != 0)
        {
          isSingleTableEntity = [(NSEntityStoreMapping *)self isSingleTableEntity];
          if (isSingleTableEntity == [equal isSingleTableEntity])
          {
            subentityColumn = [(NSEntityStoreMapping *)self subentityColumn];
            if (subentityColumn == [equal subentityColumn] || (v5 = objc_msgSend(-[NSEntityStoreMapping subentityColumn](self, "subentityColumn"), "isEqual:", objc_msgSend(equal, "subentityColumn"))) != 0)
            {
              subentityID = [(NSEntityStoreMapping *)self subentityID];
              LOBYTE(v5) = subentityID == [equal subentityID];
            }
          }

          else
          {
            LOBYTE(v5) = 0;
          }
        }
      }
    }
  }

  return v5;
}

@end