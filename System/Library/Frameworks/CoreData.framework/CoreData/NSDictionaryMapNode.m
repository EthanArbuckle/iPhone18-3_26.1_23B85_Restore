@interface NSDictionaryMapNode
- (NSDictionaryMapNode)initWithCoder:(id)a3;
- (NSDictionaryMapNode)initWithValues:(id *)a3 objectID:(id)a4;
- (id)valueForKey:(id)a3;
- (void)_doAttributeDecoding;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSDictionaryMapNode

- (NSDictionaryMapNode)initWithValues:(id *)a3 objectID:(id)a4
{
  v6.receiver = self;
  v6.super_class = NSDictionaryMapNode;
  result = [(NSStoreMapNode *)&v6 initWithObjectID:a4];
  if (result)
  {
    result->_attributes = a3;
  }

  return result;
}

- (NSDictionaryMapNode)initWithCoder:(id)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = NSDictionaryMapNode;
  v4 = [(NSStoreMapNode *)&v9 initWithCoder:?];
  v5 = [a3 allowedClasses];
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v6 = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setByAddingObjectsFromArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v10, 2)), @"NSAttributeValues"}];
  v4->_attributesAsEncoded = v6;
  if (!v6)
  {
    v4->_attributesAsEncoded = [a3 decodeObjectOfClasses:objc_msgSend(a3 forKey:{"allowedClasses"), @"NSAttributes"}];
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)_doAttributeDecoding
{
  v34 = *MEMORY[0x1E69E9840];
  if (a1 && a1[7])
  {
    v2 = [objc_msgSend(a1 "entity")];
    v3 = [v2 length];
    v4 = PF_CALLOC_OBJECT_ARRAY(v3);
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = [a1[7] isNSArray];
    v27 = a1;
    v7 = a1[7];
    if (v6)
    {
      [v7 getObjects:v4];
      if (v3)
      {
        for (i = 0; i != v3; ++i)
        {
          if (v4[i] == v5)
          {
            v4[i] = 0;
          }

          else
          {
            v9 = -[NSEntityDescription _attributeNamed:]([v27 entity], *(objc_msgSend(objc_msgSend(objc_msgSend(v27, "entity"), "_propertySearchMapping"), "keys") + 8 * i));
            if ([v9 attributeType] == 2200)
            {
              v32 = 0;
              v10 = v27[1];
              if (v10)
              {
                v11 = v10[1];
              }

              else
              {
                v11 = 0;
              }

              v12 = [v9 decode:v4[i] withRegistry:objc_msgSend(objc_msgSend(v11 error:{"persistentStoreCoordinator"), "codableAdapterRegistry"), &v32}];
              v4[i] = v12;
            }

            else
            {
              v12 = v4[i];
            }

            v13 = v12;
          }
        }
      }
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v14 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v29;
        do
        {
          v17 = 0;
          do
          {
            if (*v29 != v16)
            {
              objc_enumerationMutation(v7);
            }

            v18 = *(*(&v28 + 1) + 8 * v17);
            v19 = [v2 fastIndexForKnownKey:v18];
            v20 = [v7 objectForKey:v18];
            if (v20 != v5)
            {
              v21 = -[NSEntityDescription _attributeNamed:]([v27 entity], v18);
              if ([v21 attributeType] == 2200)
              {
                v32 = 0;
                v22 = v27[1];
                if (v22)
                {
                  v23 = v22[1];
                }

                else
                {
                  v23 = 0;
                }

                v20 = [v21 decode:v4[v19] withRegistry:objc_msgSend(objc_msgSend(v23 error:{"persistentStoreCoordinator"), "codableAdapterRegistry"), &v32}];
              }
            }

            if (v20 == v5)
            {
              v24 = 0;
            }

            else
            {
              v24 = v20;
            }

            v4[v19] = v24;
            ++v17;
          }

          while (v15 != v17);
          v25 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
          v15 = v25;
        }

        while (v25);
      }
    }

    v27[7] = 0;
    v27[6] = v4;
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:(id)a3
{
  v20.receiver = self;
  v20.super_class = NSDictionaryMapNode;
  [(NSStoreMapNode *)&v20 encodeWithCoder:?];
  if (self->_attributesAsEncoded)
  {
    [(NSDictionaryMapNode *)&self->super.super.isa _doAttributeDecoding];
  }

  v5 = [objc_msgSend(-[NSStoreMapNode entity](self "entity")];
  v6 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v6 = malloc_default_zone();
  }

  v7 = malloc_type_zone_malloc(v6, 8 * v5, 0x80040B8603338uLL);
  v8 = [MEMORY[0x1E695DFB0] null];
  if (v5)
  {
    v9 = v8;
    for (i = 0; i != v5; ++i)
    {
      v11 = -[NSEntityDescription _attributeNamed:](-[NSStoreMapNode entity](self, "entity"), *([objc_msgSend(-[NSStoreMapNode entity](self "entity")] + 8 * i));
      v12 = v11;
      v13 = self->_attributes[i];
      if (!v13)
      {
        v13 = v9;
      }

      v7[i] = v13;
      if ([v11 attributeType] == 2200 && self->_attributes[i])
      {
        v19 = 0;
        map = self->super._map;
        v15 = map ? map->_store : 0;
        v16 = [v12 encode:self->_attributes[i] withRegistry:-[NSPersistentStoreCoordinator codableAdapterRegistry](-[NSPersistentStore persistentStoreCoordinator](v15 error:{"persistentStoreCoordinator"), "codableAdapterRegistry"), &v19}];
        v7[i] = v16;
        if (!v16)
        {
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Failed to encode %@: %@", self->_attributes[i], v19), 0}]);
        }
      }
    }
  }

  v17 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v7 count:v5];
  v18 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v18 = malloc_default_zone();
  }

  malloc_zone_free(v18, v7);
  [a3 encodeObject:v17 forKey:@"NSAttributeValues"];
}

- (void)dealloc
{
  if (self->_attributes)
  {
    v3 = [objc_msgSend(-[NSStoreMapNode entity](self "entity")];
    if (v3)
    {
      v4 = v3;
      for (i = 0; i != v4; ++i)
      {
      }
    }

    PF_FREE_OBJECT_ARRAY(self->_attributes);
    self->_attributes = 0;
  }

  self->_attributesAsEncoded = 0;
  v6.receiver = self;
  v6.super_class = NSDictionaryMapNode;
  [(NSStoreMapNode *)&v6 dealloc];
}

- (id)valueForKey:(id)a3
{
  if (self->_attributesAsEncoded)
  {
    [(NSDictionaryMapNode *)&self->super.super.isa _doAttributeDecoding];
  }

  v5 = [(NSStoreMapNode *)self entity];
  v6 = [v5 _propertySearchMapping];
  v7 = [objc_msgSend(v5 "propertiesByName")];
  v8 = [v6 indexForKey:a3];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a3 == @"objectID" || [@"objectID" isEqualToString:a3])
    {
      v9 = [(NSStoreMapNode *)self objectID];
    }

    else
    {
      v19.receiver = self;
      v19.super_class = NSDictionaryMapNode;
      v9 = [(NSDictionaryMapNode *)&v19 valueForKey:a3];
    }

    goto LABEL_12;
  }

  v10 = v8;
  if ([*(v7 + 8 * v8) isTransient])
  {
LABEL_8:
    v11 = 0;
    goto LABEL_13;
  }

  if ([*(v7 + 8 * v10) _propertyType] == 2)
  {
    v11 = self->_attributes[v10];
    goto LABEL_13;
  }

  v13 = *(v7 + 8 * v10);
  v14 = [(NSMutableDictionary *)self->super._relatedNodes valueForKey:a3];
  if (![v13 isToMany])
  {
    if ([v14 count])
    {
      v9 = -[NSPersistentStoreMap dataForKey:](self->super._map, "dataForKey:", [v14 objectAtIndex:0]);
LABEL_12:
      v11 = v9;
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v11 = [MEMORY[0x1E695DF70] array];
  v15 = [v14 count];
  if (v15)
  {
    v16 = v15;
    for (i = 0; i != v16; ++i)
    {
      v18 = -[NSPersistentStoreMap dataForKey:](self->super._map, "dataForKey:", [v14 objectAtIndex:i]);
      if (v18)
      {
        [v11 addObject:v18];
      }
    }
  }

LABEL_13:
  if ([objc_msgSend(MEMORY[0x1E695DFB0] "null")])
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

@end