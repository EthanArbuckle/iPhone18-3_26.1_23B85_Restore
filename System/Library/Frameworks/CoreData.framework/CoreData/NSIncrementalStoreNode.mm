@interface NSIncrementalStoreNode
- (NSIncrementalStoreNode)initWithObjectID:(NSManagedObjectID *)objectID withValues:(NSDictionary *)values version:(uint64_t)version;
- (NSIncrementalStoreNode)initWithObjectID:(id)d fromSQLRow:(id)row;
- (id)valueForPropertyDescription:(NSPropertyDescription *)prop;
- (void)dealloc;
- (void)updateWithValues:(NSDictionary *)values version:(uint64_t)version;
@end

@implementation NSIncrementalStoreNode

- (void)dealloc
{
  self->_objectID = 0;

  self->_propertyCache = 0;
  v3.receiver = self;
  v3.super_class = NSIncrementalStoreNode;
  [(NSIncrementalStoreNode *)&v3 dealloc];
}

- (NSIncrementalStoreNode)initWithObjectID:(id)d fromSQLRow:(id)row
{
  v27.receiver = self;
  v27.super_class = NSIncrementalStoreNode;
  v6 = [(NSIncrementalStoreNode *)&v27 init];
  if (v6)
  {
    v6->_objectID = d;
    v6->_reserved1 = 0;
    v6->_versionNumber = [row _versionNumber];
    entity = [d entity];
    v8 = entity;
    if (entity)
    {
      v9 = *(entity + 104);
    }

    else
    {
      v9 = 0;
    }

    v10 = [[NSKnownKeysDictionary alloc] initWithSearchStrategy:v9];
    values = [(NSKnownKeysDictionary *)v10 values];
    keys = [v9 keys];
    v13 = keys;
    v14 = *(v8 + 112);
    v15 = v14[6];
    v16 = v14[7];
    if (v15 < v16 + v15)
    {
      v17 = (values + 8 * v15);
      v18 = (keys + 8 * v15);
      do
      {
        v19 = [row valueForKey:*v18];
        if (v19)
        {
          *v17 = v19;
        }

        ++v17;
        ++v18;
        --v16;
      }

      while (v16);
    }

    v20 = v14[12];
    v21 = v14[13];
    if (v20 < v21 + v20)
    {
      v22 = (values + 8 * v20);
      v23 = (v13 + 8 * v20);
      do
      {
        v24 = [row valueForKey:*v23];
        if (v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = NSKeyValueCoding_NullValue;
        }

        *v22++ = v25;
        ++v23;
        --v21;
      }

      while (v21);
    }

    v6->_propertyCache = v10;
  }

  return v6;
}

- (NSIncrementalStoreNode)initWithObjectID:(NSManagedObjectID *)objectID withValues:(NSDictionary *)values version:(uint64_t)version
{
  v41 = *MEMORY[0x1E69E9840];
  v40.receiver = self;
  v40.super_class = NSIncrementalStoreNode;
  v8 = [(NSIncrementalStoreNode *)&v40 init];
  if (v8)
  {
    v9 = objectID;
    v8->_reserved1 = 0;
    v8->_objectID = v9;
    v8->_versionNumber = version;
    entity = [(NSManagedObjectID *)objectID entity];
    v11 = entity;
    if (entity)
    {
      propertyMapping = entity->_propertyMapping;
    }

    else
    {
      propertyMapping = 0;
    }

    v13 = [[NSKnownKeysDictionary alloc] initWithSearchStrategy:propertyMapping];
    v14 = [(NSDictionary *)values count];
    values = [(NSKnownKeysDictionary *)v13 values];
    v39 = &v37;
    MEMORY[0x1EEE9AC00](values);
    v18 = &v37 - v17;
    v19 = 8 * v16;
    if (v14 > 0x200)
    {
      v18 = NSAllocateScannedUncollectable();
      v21 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v37 - v17, 8 * v16);
      MEMORY[0x1EEE9AC00](v20);
      v21 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v21, v19);
    }

    [(NSDictionary *)values getObjects:v18 andKeys:v21];
    propertyRanges = v11->_propertyRanges;
    location = propertyRanges[6].location;
    length = propertyRanges[6].length;
    if (location < length + location)
    {
      v25 = 0;
      v26 = NSKeyValueCoding_NullValue;
      v27 = vdupq_n_s64(length - 1);
      v28 = values + 8 * location;
      do
      {
        v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v25), xmmword_18592E480)));
        if (v29.i8[0])
        {
          *(v28 + 8 * v25) = v26;
        }

        if (v29.i8[4])
        {
          *(v28 + 8 * v25 + 8) = v26;
        }

        v25 += 2;
      }

      while (((length + 1) & 0xFFFFFFFFFFFFFFFELL) != v25);
    }

    if (v14)
    {
      v37 = v13;
      v38 = v8;
      for (i = 0; i != v14; ++i)
      {
        v31 = [propertyMapping indexForKey:{*&v21[8 * i], v37, v38, v39}];
        if (v31 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v32 = *&v18[8 * i];
          if (v32 == NSKeyValueCoding_NullValue && v31 - location < length && v31 >= location)
          {
            v32 = 0;
          }

          *(values + 8 * v31) = v32;
        }
      }

      v13 = v37;
      v8 = v38;
      if (v14 >= 0x201)
      {
        NSZoneFree(0, v21);
        NSZoneFree(0, v18);
      }
    }

    v8->_propertyCache = v13;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)updateWithValues:(NSDictionary *)values version:(uint64_t)version
{
  v33 = *MEMORY[0x1E69E9840];
  entity = [(NSManagedObjectID *)self->_objectID entity];
  v8 = entity;
  if (entity)
  {
    propertyMapping = entity->_propertyMapping;
  }

  else
  {
    propertyMapping = 0;
  }

  propertyCache = self->_propertyCache;
  v11 = [(NSDictionary *)values count];
  v12 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - v14;
  v16 = 8 * v13;
  selfCopy = self;
  v32 = version;
  if (v12 > 0x200)
  {
    v15 = NSAllocateScannedUncollectable();
    v18 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(&v30 - v14, 8 * v13);
    MEMORY[0x1EEE9AC00](v17);
    v18 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v18, v16);
  }

  [(NSDictionary *)values getObjects:v15 andKeys:v18];
  [propertyCache removeAllObjects];
  propertyRanges = v8->_propertyRanges;
  location = propertyRanges[6].location;
  length = propertyRanges[6].length;
  if (location < length + location)
  {
    v22 = propertyRanges[6].length;
    v23 = propertyRanges[6].location;
    do
    {
      [propertyCache setValue:NSKeyValueCoding_NullValue atIndex:v23++];
      --v22;
    }

    while (v22);
  }

  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v25 = [propertyMapping indexForKey:*&v18[8 * i]];
      if (v25 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (*&v15[8 * i] == NSKeyValueCoding_NullValue && v25 - location < length && v25 >= location)
        {
          v28 = 0;
        }

        else
        {
          v28 = *&v15[8 * i];
        }

        [propertyCache setValue:v28 atIndex:v25];
      }
    }

    if (v11 >= 0x201)
    {
      NSZoneFree(0, v18);
      NSZoneFree(0, v15);
    }
  }

  selfCopy->_versionNumber = v32;
  v29 = *MEMORY[0x1E69E9840];
}

- (id)valueForPropertyDescription:(NSPropertyDescription *)prop
{
  entity = [(NSPropertyDescription *)prop entity];
  entity2 = [(NSManagedObjectID *)self->_objectID entity];
  v7 = entity2;
  if (prop && entity == entity2)
  {
    goto LABEL_3;
  }

  if (!prop || ![(NSEntityDescription *)entity2 isKindOfEntity:[(NSPropertyDescription *)prop entity]])
  {
    return 0;
  }

  _propertyType = [(NSPropertyDescription *)prop _propertyType];
  if ([(NSPropertyDescription *)prop _isAttribute])
  {
LABEL_3:
    _entitysReferenceID = [(NSPropertyDescription *)prop _entitysReferenceID];
  }

  else
  {
    if (_propertyType != 4)
    {
      return 0;
    }

    _entitysReferenceID = [(NSEntityDescription *)v7 _offsetRelationshipIndex:[(NSPropertyDescription *)prop _entitysReferenceID] fromSuperEntity:entity andIsToMany:[(NSPropertyDescription *)prop isToMany]];
  }

  v9 = _entitysReferenceID;
  if (_entitysReferenceID < 0)
  {
    return 0;
  }

  result = [self->_propertyCache valueAtIndex:_entitysReferenceID];
  propertyRanges = v7->_propertyRanges;
  location = propertyRanges[6].location;
  length = propertyRanges[6].length;
  v15 = v9 >= location;
  v14 = v9 - location;
  v15 = !v15 || v14 >= length;
  if (!v15)
  {
    if (result != NSKeyValueCoding_NullValue)
    {
      if (!result)
      {
        return NSKeyValueCoding_NullValue;
      }

      return result;
    }

    return 0;
  }

  return result;
}

@end