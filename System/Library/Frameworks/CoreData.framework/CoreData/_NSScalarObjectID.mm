@interface _NSScalarObjectID
- (_NSScalarObjectID)initWithPK64:(int64_t)k64;
- (id)_referenceData;
- (id)_retainedURIString;
- (int64_t)_referenceData64;
- (int64_t)compare:(id)compare;
@end

@implementation _NSScalarObjectID

- (id)_retainedURIString
{
  _storeIdentifier = [(_NSCoreManagedObjectID *)self _storeIdentifier];
  if (_storeIdentifier)
  {
    v4 = _storeIdentifier;
  }

  else
  {
    v4 = &stru_1EF3F1768;
  }

  return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@://%@/%@/p%qu", @"x-coredata", v4, objc_msgSend(-[_NSCoreManagedObjectID entity](self, "entity"), "name"), -[_NSScalarObjectID _referenceData64](self, "_referenceData64")];
}

- (id)_referenceData
{
  v2 = MEMORY[0x1E696AD98];
  _referenceData64 = [(_NSScalarObjectID *)self _referenceData64];

  return [v2 numberWithLongLong:_referenceData64];
}

- (int64_t)_referenceData64
{
  Class = object_getClass(self);
  if (*(object_getIndexedIvars(Class) + 4))
  {
    return self[1].super.super.super.isa >> 16;
  }

  else
  {
    return self[2].super.super.super.isa;
  }
}

- (_NSScalarObjectID)initWithPK64:(int64_t)k64
{
  v10.receiver = self;
  v10.super_class = _NSScalarObjectID;
  v4 = [(_NSScalarObjectID *)&v10 init];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  Class = object_getClass(v4);
  atomic_fetch_add_explicit(object_getIndexedIvars(Class), 1u, memory_order_relaxed);
  v7 = _PFSetPrimaryKey(v5, k64);
  v8 = v7;
  if (v5 != v7)
  {
    _PFfastOidRelease(v7, v5);
  }

  return v8;
}

- (int64_t)compare:(id)compare
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  _storeIdentifier = [(_NSCoreManagedObjectID *)self _storeIdentifier];
  _storeIdentifier2 = [compare _storeIdentifier];
  entity = [(_NSCoreManagedObjectID *)self entity];
  if (entity)
  {
    if (atomic_load(entity + 124))
    {
      v9 = *(entity + 9);
    }

    else
    {
      do
      {
        v9 = entity;
        entity = [entity superentity];
      }

      while (entity);
    }
  }

  else
  {
    v9 = 0;
  }

  entity2 = [compare entity];
  if (entity2)
  {
    if (atomic_load((entity2 + 124)))
    {
      v12 = *(entity2 + 72);
    }

    else
    {
      do
      {
        v12 = entity2;
        entity2 = [entity2 superentity];
      }

      while (entity2);
    }
  }

  else
  {
    v12 = 0;
  }

  if (_storeIdentifier == _storeIdentifier2 && v9 == v12)
  {
    _referenceData64 = [(_NSScalarObjectID *)self _referenceData64];
    _referenceData642 = [compare _referenceData64];
    return (_referenceData64 > _referenceData642) - (_referenceData64 < _referenceData642);
  }

  if (_storeIdentifier == _storeIdentifier2)
  {
    name = [v9 name];
    name2 = [v12 name];
    v16 = name;
  }

  else
  {
    v16 = _storeIdentifier;
    name2 = _storeIdentifier2;
  }

  result = [v16 compare:name2];
  if (!result)
  {
LABEL_17:
    v19.receiver = self;
    v19.super_class = _NSScalarObjectID;
    return [(NSManagedObjectID *)&v19 compare:compare];
  }

  return result;
}

@end