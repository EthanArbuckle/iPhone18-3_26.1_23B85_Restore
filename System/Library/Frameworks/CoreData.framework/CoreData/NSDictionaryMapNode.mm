@interface NSDictionaryMapNode
- (NSDictionaryMapNode)initWithCoder:(id)coder;
- (NSDictionaryMapNode)initWithValues:(id *)values objectID:(id)d;
- (id)valueForKey:(id)key;
- (void)_doAttributeDecoding;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSDictionaryMapNode

- (NSDictionaryMapNode)initWithValues:(id *)values objectID:(id)d
{
  v6.receiver = self;
  v6.super_class = NSDictionaryMapNode;
  result = [(NSStoreMapNode *)&v6 initWithObjectID:d];
  if (result)
  {
    result->_attributes = values;
  }

  return result;
}

- (NSDictionaryMapNode)initWithCoder:(id)coder
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = NSDictionaryMapNode;
  v4 = [(NSStoreMapNode *)&v9 initWithCoder:?];
  allowedClasses = [coder allowedClasses];
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v6 = [coder decodeObjectOfClasses:objc_msgSend(allowedClasses forKey:{"setByAddingObjectsFromArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v10, 2)), @"NSAttributeValues"}];
  v4->_attributesAsEncoded = v6;
  if (!v6)
  {
    v4->_attributesAsEncoded = [coder decodeObjectOfClasses:objc_msgSend(coder forKey:{"allowedClasses"), @"NSAttributes"}];
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)_doAttributeDecoding
{
  v34 = *MEMORY[0x1E69E9840];
  if (self && self[7])
  {
    v2 = [objc_msgSend(self "entity")];
    v3 = [v2 length];
    v4 = PF_CALLOC_OBJECT_ARRAY(v3);
    null = [MEMORY[0x1E695DFB0] null];
    isNSArray = [self[7] isNSArray];
    selfCopy = self;
    v7 = self[7];
    if (isNSArray)
    {
      [v7 getObjects:v4];
      if (v3)
      {
        for (i = 0; i != v3; ++i)
        {
          if (v4[i] == null)
          {
            v4[i] = 0;
          }

          else
          {
            v9 = -[NSEntityDescription _attributeNamed:]([selfCopy entity], *(objc_msgSend(objc_msgSend(objc_msgSend(selfCopy, "entity"), "_propertySearchMapping"), "keys") + 8 * i));
            if ([v9 attributeType] == 2200)
            {
              v32 = 0;
              v10 = selfCopy[1];
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
            if (v20 != null)
            {
              v21 = -[NSEntityDescription _attributeNamed:]([selfCopy entity], v18);
              if ([v21 attributeType] == 2200)
              {
                v32 = 0;
                v22 = selfCopy[1];
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

            if (v20 == null)
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

    selfCopy[7] = 0;
    selfCopy[6] = v4;
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:(id)coder
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
  null = [MEMORY[0x1E695DFB0] null];
  if (v5)
  {
    v9 = null;
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
  [coder encodeObject:v17 forKey:@"NSAttributeValues"];
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

- (id)valueForKey:(id)key
{
  if (self->_attributesAsEncoded)
  {
    [(NSDictionaryMapNode *)&self->super.super.isa _doAttributeDecoding];
  }

  entity = [(NSStoreMapNode *)self entity];
  _propertySearchMapping = [entity _propertySearchMapping];
  v7 = [objc_msgSend(entity "propertiesByName")];
  v8 = [_propertySearchMapping indexForKey:key];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (key == @"objectID" || [@"objectID" isEqualToString:key])
    {
      objectID = [(NSStoreMapNode *)self objectID];
    }

    else
    {
      v19.receiver = self;
      v19.super_class = NSDictionaryMapNode;
      objectID = [(NSDictionaryMapNode *)&v19 valueForKey:key];
    }

    goto LABEL_12;
  }

  v10 = v8;
  if ([*(v7 + 8 * v8) isTransient])
  {
LABEL_8:
    array = 0;
    goto LABEL_13;
  }

  if ([*(v7 + 8 * v10) _propertyType] == 2)
  {
    array = self->_attributes[v10];
    goto LABEL_13;
  }

  v13 = *(v7 + 8 * v10);
  v14 = [(NSMutableDictionary *)self->super._relatedNodes valueForKey:key];
  if (![v13 isToMany])
  {
    if ([v14 count])
    {
      objectID = -[NSPersistentStoreMap dataForKey:](self->super._map, "dataForKey:", [v14 objectAtIndex:0]);
LABEL_12:
      array = objectID;
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  array = [MEMORY[0x1E695DF70] array];
  v15 = [v14 count];
  if (v15)
  {
    v16 = v15;
    for (i = 0; i != v16; ++i)
    {
      v18 = -[NSPersistentStoreMap dataForKey:](self->super._map, "dataForKey:", [v14 objectAtIndex:i]);
      if (v18)
      {
        [array addObject:v18];
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
    return array;
  }
}

@end