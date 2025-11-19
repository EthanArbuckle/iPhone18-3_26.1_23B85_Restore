@interface MPPropertySet
+ (MPPropertySet)propertySetWithProperties:(id)a3;
+ (MPPropertySet)propertySetWithRelationships:(id)a3;
+ (id)emptyPropertySet;
- (BOOL)containsPropertySet:(id)a3;
- (MPPropertySet)initWithCoder:(id)a3;
- (MPPropertySet)initWithProperties:(id)a3 relationships:(id)a4;
- (NSString)debugDescription;
- (NSString)description;
- (id)_stateDumpObject;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)propertySetByCombiningWithPropertySet:(id)a3;
- (id)propertySetByIntersectingWithPropertySet:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPPropertySet

+ (id)emptyPropertySet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__MPPropertySet_emptyPropertySet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (emptyPropertySet_onceToken != -1)
  {
    dispatch_once(&emptyPropertySet_onceToken, block);
  }

  v2 = emptyPropertySet_emptyPropertySet;

  return v2;
}

void __33__MPPropertySet_emptyPropertySet__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithProperties:0 relationships:0];
  v2 = emptyPropertySet_emptyPropertySet;
  emptyPropertySet_emptyPropertySet = v1;
}

- (id)_stateDumpObject
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = +[MPPropertySet emptyPropertySet];

  if (v3 == self)
  {
    v7 = @"<EMPTY>";
  }

  else
  {
    v12[0] = @"properties";
    if ([(NSSet *)self->_properties count])
    {
      v4 = [(NSSet *)self->_properties count];
      properties = self->_properties;
      v6 = v4 == 1;
      if (v4 == 1)
      {
        [(NSSet *)properties anyObject];
      }

      else
      {
        [(NSSet *)properties allObjects];
      }
      v9 = ;
      v8 = v4 != 1;
    }

    else
    {
      v6 = 0;
      v8 = 0;
      v9 = @"<EMPTY>";
    }

    v12[1] = @"relationships";
    v13[0] = v9;
    if ([(NSDictionary *)self->_relationships count])
    {
      relationships = self->_relationships;
    }

    else
    {
      relationships = @"<EMPTY>";
    }

    v13[1] = relationships;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
    if (v8)
    {
    }

    if (v6)
    {
    }
  }

  return v7;
}

- (id)propertySetByIntersectingWithPropertySet:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSSet *)self->_properties mutableCopy];
    [v5 intersectSet:v4[1]];
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    relationships = self->_relationships;
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __58__MPPropertySet_propertySetByIntersectingWithPropertySet___block_invoke;
    v16 = &unk_1E767FBA0;
    v17 = v4;
    v18 = v6;
    v8 = v6;
    [(NSDictionary *)relationships enumerateKeysAndObjectsUsingBlock:&v13];
    v9 = objc_alloc(objc_opt_class());
    v10 = [v5 allObjects];
    v11 = [v9 initWithProperties:v10 relationships:v8];
  }

  else
  {
    v11 = [objc_opt_class() emptyPropertySet];
  }

  return v11;
}

void __58__MPPropertySet_propertySetByIntersectingWithPropertySet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 16) objectForKey:v14];
  v7 = [v6 properties];
  if ([v7 count])
  {
  }

  else
  {
    v8 = [v6 relationships];
    v9 = [v8 count];

    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v10 = [v5 propertySetByIntersectingWithPropertySet:v6];
  v11 = [v10 properties];
  if ([v11 count])
  {

LABEL_7:
    [*(a1 + 40) setObject:v10 forKey:v14];
    goto LABEL_8;
  }

  v12 = [v10 relationships];
  v13 = [v12 count];

  if (v13)
  {
    goto LABEL_7;
  }

LABEL_8:

LABEL_9:
}

- (id)propertySetByCombiningWithPropertySet:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSSet *)self->_properties mutableCopy];
    [v5 unionSet:v4[1]];
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    relationships = self->_relationships;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __55__MPPropertySet_propertySetByCombiningWithPropertySet___block_invoke;
    v22[3] = &unk_1E767FBA0;
    v8 = v4;
    v23 = v8;
    v9 = v6;
    v24 = v9;
    [(NSDictionary *)relationships enumerateKeysAndObjectsUsingBlock:v22];
    v10 = v8[2];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __55__MPPropertySet_propertySetByCombiningWithPropertySet___block_invoke_2;
    v19 = &unk_1E767FBA0;
    v20 = self;
    v21 = v9;
    v11 = v9;
    [v10 enumerateKeysAndObjectsUsingBlock:&v16];
    v12 = objc_alloc(objc_opt_class());
    v13 = [v5 allObjects];
    v14 = [v12 initWithProperties:v13 relationships:v11];
  }

  else
  {
    v14 = self;
  }

  return v14;
}

void __55__MPPropertySet_propertySetByCombiningWithPropertySet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 16);
  v6 = a3;
  v7 = a2;
  v9 = [v5 objectForKey:v7];
  v8 = [v6 propertySetByCombiningWithPropertySet:v9];

  [*(a1 + 40) setObject:v8 forKey:v7];
}

void __55__MPPropertySet_propertySetByCombiningWithPropertySet___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 16) objectForKey:v7];

  if (!v6)
  {
    [*(a1 + 40) setObject:v5 forKey:v7];
  }
}

- (BOOL)containsPropertySet:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = 1;
  if (v4)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 1;
    v7 = [v4 properties];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 isSubsetOfSet:self->_properties];
      *(v15 + 24) = v9;
      if (v9)
      {
LABEL_4:
        v10 = [v5 relationships];
        v11 = v10;
        if (v10)
        {
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __37__MPPropertySet_containsPropertySet___block_invoke;
          v13[3] = &unk_1E767FB78;
          v13[4] = self;
          v13[5] = &v14;
          [v10 enumerateKeysAndObjectsUsingBlock:v13];
        }

        v6 = *(v15 + 24);
        goto LABEL_9;
      }
    }

    else if (v15[3])
    {
      goto LABEL_4;
    }

    v6 = 0;
LABEL_9:

    _Block_object_dispose(&v14, 8);
  }

  return v6 & 1;
}

void __37__MPPropertySet_containsPropertySet___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = [*(*(a1 + 32) + 16) objectForKey:a2];
  v8 = v7;
  if (!v7 || ([v7 containsPropertySet:v9] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [MPMutablePropertySet alloc];
  v5 = [(NSSet *)self->_properties allObjects];
  v6 = [(MPMutablePropertySet *)v4 initWithProperties:v5 relationships:self->_relationships];

  return v6;
}

+ (MPPropertySet)propertySetWithRelationships:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithProperties:0 relationships:v4];

  return v5;
}

+ (MPPropertySet)propertySetWithProperties:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithProperties:v4 relationships:0];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  properties = self->_properties;
  v6 = a3;
  v5 = [(NSSet *)properties allObjects];
  [v6 encodeObject:v5 forKey:@"MPPropertySetProperties"];

  [v6 encodeObject:self->_relationships forKey:@"MPPropertySetRelationships"];
}

- (MPPropertySet)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"MPPropertySetProperties"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
  v13 = [v5 decodeObjectOfClasses:v12 forKey:@"MPPropertySetRelationships"];

  v14 = [(MPPropertySet *)self initWithProperties:v8 relationships:v13];
  return v14;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  v7 = [(NSSet *)self->_properties count];
  if (v7)
  {
    v8 = @"properties";
    if (v7 == 1)
    {
      v8 = @"property";
    }

    [v6 appendFormat:@"; %lu %@", v7, v8];
  }

  v9 = [(NSDictionary *)self->_relationships count];
  if (v9)
  {
    v10 = @"relationships";
    if (v9 == 1)
    {
      v10 = @"relationship";
    }

    [v6 appendFormat:@"; %lu %@", v9, v10];
  }

  [v6 appendString:@">"];

  return v6;
}

- (NSString)debugDescription
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v7 = [(NSSet *)self->_properties count];
  v8 = v7;
  v9 = @"properties";
  if (v7 == 1)
  {
    v9 = @"property";
  }

  [v6 appendFormat:@"; %lu %@", v7, v9];
  [v6 appendString:@": ["];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = self->_properties;
  v11 = [(NSSet *)v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v11)
  {
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        if (v8 <= 1)
        {
          if (v33[3])
          {
            v15 = @",";
          }

          else
          {
            v15 = &stru_1F149ECA8;
          }
        }

        else
        {
          [v6 appendString:@"\n    "];
          *(v33 + 24) = 1;
          v15 = @",";
        }

        [v6 appendFormat:@"%@%@", v14, v15];
      }

      v11 = [(NSSet *)v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v11);
  }

  if (*(v33 + 24) == 1)
  {
    [v6 appendString:@"\n"];
  }

  [v6 appendString:@"]"];
  v16 = [(NSDictionary *)self->_relationships count];
  v17 = v16;
  if (v16)
  {
    if (*(v33 + 24))
    {
      v18 = @"\n";
    }

    else
    {
      v18 = @" ";
    }

    v19 = @"relationships";
    if (v16 == 1)
    {
      v19 = @"relationship";
    }

    [v6 appendFormat:@";%@%lu %@", v18, v16, v19];
    [v6 appendString:@": {"];
    relationships = self->_relationships;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __33__MPPropertySet_debugDescription__block_invoke;
    v24[3] = &unk_1E767FB50;
    v26 = &v32;
    v27 = v17;
    v21 = v6;
    v25 = v21;
    [(NSDictionary *)relationships enumerateKeysAndObjectsUsingBlock:v24];
    if (*(v33 + 24))
    {
      v22 = @"\n";
    }

    else
    {
      v22 = @" ";
    }

    [v21 appendFormat:@"%@", v22];
    [v21 appendString:@"}"];
  }

  [v6 appendString:@">"];
  _Block_object_dispose(&v32, 8);

  return v6;
}

void __33__MPPropertySet_debugDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) != 0 || *(a1 + 48) >= 2uLL)
  {
    [*(a1 + 32) appendString:@"\n    "];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    [*(a1 + 32) appendString:@" "];
  }

  v6 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"\n    "];
  v7 = [v14 length];
  if (v7)
  {
    v8 = v7;
    do
    {
      [v6 appendString:@" "];
      --v8;
    }

    while (v8);
  }

  [v6 appendString:@"  "];
  v9 = *(a1 + 32);
  v10 = [v5 debugDescription];
  v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:v6];
  v12 = v11;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v13 = @",";
  }

  else
  {
    v13 = &stru_1F149ECA8;
  }

  [v9 appendFormat:@"%@: %@%@", v14, v11, v13];
}

- (MPPropertySet)initWithProperties:(id)a3 relationships:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = MPPropertySet;
  v8 = [(MPPropertySet *)&v16 init];
  if (v8)
  {
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = MEMORY[0x1E695E0F0];
    }

    v10 = [MEMORY[0x1E695DFD8] setWithArray:v9];
    properties = v8->_properties;
    v8->_properties = v10;

    v12 = [v7 copy];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = MEMORY[0x1E695E0F8];
    }

    objc_storeStrong(&v8->_relationships, v14);
  }

  return v8;
}

@end