@interface NSEntityStoreMapping
- (BOOL)isEqual:(id)a3;
- (NSEntityStoreMapping)initWithEntity:(id)a3;
- (id)description;
- (uint64_t)setPropertyMappings:(uint64_t)result;
- (void)dealloc;
- (void)setPrimaryKeys:(uint64_t)a1;
@end

@implementation NSEntityStoreMapping

- (NSEntityStoreMapping)initWithEntity:(id)a3
{
  v5 = +[NSStoreMappingGenerator defaultMappingGenerator];
  v6 = [a3 name];
  if (v5)
  {
    v7 = [v6 uppercaseString];
  }

  else
  {
    v7 = 0;
  }

  v13.receiver = self;
  v13.super_class = NSEntityStoreMapping;
  v8 = [(NSStoreMapping *)&v13 initWithExternalName:v7];
  v9 = v8;
  if (v8)
  {
    v8->_entity = a3;
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

- (void)setPrimaryKeys:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 32) != a2)
    {
      v3 = [a2 copy];

      *(a1 + 32) = v3;
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

- (BOOL)isEqual:(id)a3
{
  v13.receiver = self;
  v13.super_class = NSEntityStoreMapping;
  v5 = [(NSStoreMapping *)&v13 isEqual:?];
  if (v5)
  {
    v6 = [(NSEntityStoreMapping *)self entity];
    if (v6 == [a3 entity] || (v5 = objc_msgSend(-[NSEntityStoreMapping entity](self, "entity"), "isEqual:", objc_msgSend(a3, "entity"))) != 0)
    {
      v7 = [(NSEntityStoreMapping *)self propertyMappings];
      if (v7 == [a3 propertyMappings] || (v5 = objc_msgSend(-[NSEntityStoreMapping propertyMappings](self, "propertyMappings"), "isEqual:", objc_msgSend(a3, "propertyMappings"))) != 0)
      {
        v8 = [(NSEntityStoreMapping *)self primaryKeys];
        if (v8 == [a3 primaryKeys] || (v5 = objc_msgSend(-[NSEntityStoreMapping primaryKeys](self, "primaryKeys"), "isEqual:", objc_msgSend(a3, "primaryKeys"))) != 0)
        {
          v9 = [(NSEntityStoreMapping *)self isSingleTableEntity];
          if (v9 == [a3 isSingleTableEntity])
          {
            v10 = [(NSEntityStoreMapping *)self subentityColumn];
            if (v10 == [a3 subentityColumn] || (v5 = objc_msgSend(-[NSEntityStoreMapping subentityColumn](self, "subentityColumn"), "isEqual:", objc_msgSend(a3, "subentityColumn"))) != 0)
            {
              v11 = [(NSEntityStoreMapping *)self subentityID];
              LOBYTE(v5) = v11 == [a3 subentityID];
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