@interface NSFetchedPropertyDescription
- (BOOL)isEqual:(id)equal;
- (NSFetchRequest)fetchRequest;
- (NSFetchedPropertyDescription)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_createCachesAndOptimizeState;
- (void)_writeIntoData:(id)data propertiesDict:(id)dict uniquedPropertyNames:(id)names uniquedStrings:(id)strings uniquedData:(id)uniquedData entitiesSlots:(id)slots fetchRequests:(id)requests;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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
  managedObjectModel = [(NSEntityDescription *)[(NSPropertyDescription *)self entity] managedObjectModel];
  if (managedObjectModel)
  {
    v7 = [(NSMutableDictionary *)managedObjectModel->_entities objectForKey:self->_lazyFetchRequestEntityName];
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

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = NSFetchedPropertyDescription;
  [(NSPropertyDescription *)&v8 encodeWithCoder:?];
  v5 = objc_autoreleasePoolPush();
  [coder encodeObject:-[NSFetchedPropertyDescription fetchRequest](self forKey:{"fetchRequest"), @"NSFetchRequest"}];
  entity = [(NSFetchRequest *)[(NSFetchedPropertyDescription *)self fetchRequest] entity];
  if (entity)
  {
    lazyFetchRequestEntityName = [(NSEntityDescription *)entity name];
  }

  else
  {
    lazyFetchRequestEntityName = self->_lazyFetchRequestEntityName;
  }

  [coder encodeObject:lazyFetchRequestEntityName forKey:@"_NSFetchRequestEntityName"];
  objc_autoreleasePoolPop(v5);
}

- (NSFetchedPropertyDescription)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = NSFetchedPropertyDescription;
  v4 = [(NSPropertyDescription *)&v7 initWithCoder:?];
  if (v4)
  {
    v4->_fetchRequest = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSFetchRequest"];
    v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"_NSFetchRequestEntityName"];
    if (![(NSFetchRequest *)v4->_fetchRequest entity])
    {
      if (v5 && ([v5 isNSString] & 1) == 0)
      {
        [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, &unk_1EF434E78)}];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = NSFetchedPropertyDescription;
  v4 = [(NSPropertyDescription *)&v9 copyWithZone:zone];
  if (v4)
  {
    v5 = [(NSFetchRequest *)self->_fetchRequest copy];
    v4[12] = v5;
    [v5 setEntity:0];
    entity = [(NSFetchRequest *)self->_fetchRequest entity];
    if (entity)
    {
      v7 = [(NSString *)[(NSEntityDescription *)entity name] copy];
    }

    else
    {
      v7 = [(NSString *)self->_lazyFetchRequestEntityName copy];
    }

    v4[13] = v7;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(fetchRequest2) = 1;
  }

  else
  {
    v12 = v3;
    v13 = v4;
    v11.receiver = self;
    v11.super_class = NSFetchedPropertyDescription;
    LODWORD(fetchRequest2) = [(NSPropertyDescription *)&v11 isEqual:?];
    if (fetchRequest2)
    {
      fetchRequest = [(NSFetchedPropertyDescription *)self fetchRequest];
      fetchRequest2 = [equal fetchRequest];
      if (fetchRequest == fetchRequest2)
      {
        LOBYTE(fetchRequest2) = 1;
      }

      else
      {
        v9 = fetchRequest2;
        LOBYTE(fetchRequest2) = 0;
        if (fetchRequest && v9)
        {
          LOBYTE(fetchRequest2) = [(NSFetchRequest *)fetchRequest isEqual:?];
        }
      }
    }
  }

  return fetchRequest2;
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
      managedObjectModel = [(NSEntityDescription *)[(NSPropertyDescription *)self entity] managedObjectModel];
      if (managedObjectModel != [(NSEntityDescription *)[(NSFetchRequest *)fetchRequest entity] managedObjectModel])
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
    managedObjectModel2 = [(NSEntityDescription *)[(NSPropertyDescription *)self entity] managedObjectModel];
    if (managedObjectModel2)
    {
      v10 = [(NSMutableDictionary *)managedObjectModel2->_entities objectForKey:self->_lazyFetchRequestEntityName];
    }

    else
    {
      v10 = 0;
    }

    [(NSFetchRequest *)v8 setEntity:v10];
  }

  self->_lazyFetchRequestEntityName = 0;
}

- (void)_writeIntoData:(id)data propertiesDict:(id)dict uniquedPropertyNames:(id)names uniquedStrings:(id)strings uniquedData:(id)uniquedData entitiesSlots:(id)slots fetchRequests:(id)requests
{
  _writeInt32IntoData(data, 0);
  v16 = [data length] - 4;
  v18.receiver = self;
  v18.super_class = NSFetchedPropertyDescription;
  [(NSPropertyDescription *)&v18 _appendPropertyFieldsToData:data propertiesDict:dict uniquedPropertyNames:names uniquedStrings:strings uniquedData:uniquedData entitiesSlots:slots];
  _writeInt32IntoData(data, [objc_msgSend(requests objectForKey:{self->_fetchRequest), "unsignedIntValue"}]);
  v17 = bswap32([data length] - v16);
  [data replaceBytesInRange:v16 withBytes:{4, &v17}];
}

@end