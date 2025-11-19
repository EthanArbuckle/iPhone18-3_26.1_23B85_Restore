@interface _NSScalarObjectID
- (_NSScalarObjectID)initWithPK64:(int64_t)a3;
- (id)_referenceData;
- (id)_retainedURIString;
- (int64_t)_referenceData64;
- (int64_t)compare:(id)a3;
@end

@implementation _NSScalarObjectID

- (id)_retainedURIString
{
  v3 = [(_NSCoreManagedObjectID *)self _storeIdentifier];
  if (v3)
  {
    v4 = v3;
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
  v3 = [(_NSScalarObjectID *)self _referenceData64];

  return [v2 numberWithLongLong:v3];
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

- (_NSScalarObjectID)initWithPK64:(int64_t)a3
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
  v7 = _PFSetPrimaryKey(v5, a3);
  v8 = v7;
  if (v5 != v7)
  {
    _PFfastOidRelease(v7, v5);
  }

  return v8;
}

- (int64_t)compare:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  v5 = [(_NSCoreManagedObjectID *)self _storeIdentifier];
  v6 = [a3 _storeIdentifier];
  v7 = [(_NSCoreManagedObjectID *)self entity];
  if (v7)
  {
    if (atomic_load(v7 + 124))
    {
      v9 = *(v7 + 9);
    }

    else
    {
      do
      {
        v9 = v7;
        v7 = [v7 superentity];
      }

      while (v7);
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = [a3 entity];
  if (v10)
  {
    if (atomic_load((v10 + 124)))
    {
      v12 = *(v10 + 72);
    }

    else
    {
      do
      {
        v12 = v10;
        v10 = [v10 superentity];
      }

      while (v10);
    }
  }

  else
  {
    v12 = 0;
  }

  if (v5 == v6 && v9 == v12)
  {
    v13 = [(_NSScalarObjectID *)self _referenceData64];
    v14 = [a3 _referenceData64];
    return (v13 > v14) - (v13 < v14);
  }

  if (v5 == v6)
  {
    v18 = [v9 name];
    v17 = [v12 name];
    v16 = v18;
  }

  else
  {
    v16 = v5;
    v17 = v6;
  }

  result = [v16 compare:v17];
  if (!result)
  {
LABEL_17:
    v19.receiver = self;
    v19.super_class = _NSScalarObjectID;
    return [(NSManagedObjectID *)&v19 compare:a3];
  }

  return result;
}

@end