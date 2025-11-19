@interface NSFetchedPropertyDescription
- (BOOL)isEqual:(id)a3;
- (NSFetchRequest)fetchRequest;
- (NSFetchedPropertyDescription)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_createCachesAndOptimizeState;
- (void)_writeIntoData:(id)a3 propertiesDict:(id)a4 uniquedPropertyNames:(id)a5 uniquedStrings:(id)a6 uniquedData:(id)a7 entitiesSlots:(id)a8 fetchRequests:(id)a9;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setFetchRequest:(NSFetchRequest *)fetchRequest;
@end

@implementation NSFetchedPropertyDescription

- (void)_createCachesAndOptimizeState
{
  v3.receiver = self;
  v3.super_class = NSFetchedPropertyDescription;
  [(NSPropertyDescription *)&v3 _createCachesAndOptimizeState];
  [(NSFetchedPropertyDescription *)self setFetchRequest:[(NSFetchedPropertyDescription *)self fetchRequest]];
  [(NSFetchRequest *)self->_fetchRequest allowEvaluation];
}

- (NSFetchRequest)fetchRequest
{
  if (!self->_lazyFetchRequestEntityName)
  {
    return self->_fetchRequest;
  }

  fetchRequest = self->_fetchRequest;
  if (!fetchRequest || [(NSFetchRequest *)fetchRequest entity])
  {
    return self->_fetchRequest;
  }

  v4 = [(NSFetchRequest *)self->_fetchRequest copy];
  v6 = [(NSEntityDescription *)[(NSPropertyDescription *)self entity] managedObjectModel];
  if (v6)
  {
    v7 = [(NSMutableDictionary *)v6->_entities objectForKey:self->_lazyFetchRequestEntityName];
  }

  else
  {
    v7 = 0;
  }

  [(NSFetchRequest *)v4 setEntity:v7];
  return v4;
}

- (void)dealloc
{
  self->_fetchRequest = 0;

  self->_lazyFetchRequestEntityName = 0;
  v3.receiver = self;
  v3.super_class = NSFetchedPropertyDescription;
  [(NSPropertyDescription *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = NSFetchedPropertyDescription;
  [(NSPropertyDescription *)&v8 encodeWithCoder:?];
  v5 = objc_autoreleasePoolPush();
  [a3 encodeObject:-[NSFetchedPropertyDescription fetchRequest](self forKey:{"fetchRequest"), @"NSFetchRequest"}];
  v6 = [(NSFetchRequest *)[(NSFetchedPropertyDescription *)self fetchRequest] entity];
  if (v6)
  {
    lazyFetchRequestEntityName = [(NSEntityDescription *)v6 name];
  }

  else
  {
    lazyFetchRequestEntityName = self->_lazyFetchRequestEntityName;
  }

  [a3 encodeObject:lazyFetchRequestEntityName forKey:@"_NSFetchRequestEntityName"];
  objc_autoreleasePoolPop(v5);
}

- (NSFetchedPropertyDescription)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = NSFetchedPropertyDescription;
  v4 = [(NSPropertyDescription *)&v7 initWithCoder:?];
  if (v4)
  {
    v4->_fetchRequest = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSFetchRequest"];
    v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_NSFetchRequestEntityName"];
    if (![(NSFetchRequest *)v4->_fetchRequest entity])
    {
      if (v5 && ([v5 isNSString] & 1) == 0)
      {
        [a3 failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, &unk_1EF434E78)}];

        return 0;
      }

      else
      {
        v4->_lazyFetchRequestEntityName = v5;
      }
    }
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = NSFetchedPropertyDescription;
  v4 = [(NSPropertyDescription *)&v9 copyWithZone:a3];
  if (v4)
  {
    v5 = [(NSFetchRequest *)self->_fetchRequest copy];
    v4[12] = v5;
    [v5 setEntity:0];
    v6 = [(NSFetchRequest *)self->_fetchRequest entity];
    if (v6)
    {
      v7 = [(NSString *)[(NSEntityDescription *)v6 name] copy];
    }

    else
    {
      v7 = [(NSString *)self->_lazyFetchRequestEntityName copy];
    }

    v4[13] = v7;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v12 = v3;
    v13 = v4;
    v11.receiver = self;
    v11.super_class = NSFetchedPropertyDescription;
    LODWORD(v7) = [(NSPropertyDescription *)&v11 isEqual:?];
    if (v7)
    {
      v8 = [(NSFetchedPropertyDescription *)self fetchRequest];
      v7 = [a3 fetchRequest];
      if (v8 == v7)
      {
        LOBYTE(v7) = 1;
      }

      else
      {
        v9 = v7;
        LOBYTE(v7) = 0;
        if (v8 && v9)
        {
          LOBYTE(v7) = [(NSFetchRequest *)v8 isEqual:?];
        }
      }
    }
  }

  return v7;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v6.receiver = self;
  v6.super_class = NSFetchedPropertyDescription;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, fetchRequest %@", -[NSPropertyDescription description](&v6, sel_description), -[NSFetchedPropertyDescription fetchRequest](self, "fetchRequest")];
  objc_autoreleasePoolPop(v3);
  return v4;
}

- (void)setFetchRequest:(NSFetchRequest *)fetchRequest
{
  [(NSPropertyDescription *)self _throwIfNotEditable];
  v5 = self->_fetchRequest;
  if (v5 != fetchRequest)
  {
    if (fetchRequest)
    {
      v6 = [(NSEntityDescription *)[(NSPropertyDescription *)self entity] managedObjectModel];
      if (v6 != [(NSEntityDescription *)[(NSFetchRequest *)fetchRequest entity] managedObjectModel])
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Can't use fetch request with fetched property description (entity model mismatch)."];
      }
    }

    v5 = fetchRequest;
    self->_fetchRequest = v5;
  }

  if (self->_lazyFetchRequestEntityName)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && ![(NSFetchRequest *)v5 entity])
  {
    v8 = self->_fetchRequest;
    v9 = [(NSEntityDescription *)[(NSPropertyDescription *)self entity] managedObjectModel];
    if (v9)
    {
      v10 = [(NSMutableDictionary *)v9->_entities objectForKey:self->_lazyFetchRequestEntityName];
    }

    else
    {
      v10 = 0;
    }

    [(NSFetchRequest *)v8 setEntity:v10];
  }

  self->_lazyFetchRequestEntityName = 0;
}

- (void)_writeIntoData:(id)a3 propertiesDict:(id)a4 uniquedPropertyNames:(id)a5 uniquedStrings:(id)a6 uniquedData:(id)a7 entitiesSlots:(id)a8 fetchRequests:(id)a9
{
  _writeInt32IntoData(a3, 0);
  v16 = [a3 length] - 4;
  v18.receiver = self;
  v18.super_class = NSFetchedPropertyDescription;
  [(NSPropertyDescription *)&v18 _appendPropertyFieldsToData:a3 propertiesDict:a4 uniquedPropertyNames:a5 uniquedStrings:a6 uniquedData:a7 entitiesSlots:a8];
  _writeInt32IntoData(a3, [objc_msgSend(a9 objectForKey:{self->_fetchRequest), "unsignedIntValue"}]);
  v17 = bswap32([a3 length] - v16);
  [a3 replaceBytesInRange:v16 withBytes:{4, &v17}];
}

@end