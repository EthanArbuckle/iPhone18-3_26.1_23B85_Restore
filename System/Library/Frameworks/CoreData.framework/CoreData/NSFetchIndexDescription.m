@interface NSFetchIndexDescription
- (BOOL)isEqual:(id)a3;
- (NSFetchIndexDescription)initWithCoder:(id)a3;
- (NSFetchIndexDescription)initWithName:(NSString *)name elements:(NSArray *)elements;
- (NSFetchIndexDescription)initWithName:(id)a3 predicate:(id)a4 elements:(id)a5 entity:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)_compare:(id)a3;
- (uint64_t)_checkElements:(uint64_t)result;
- (uint64_t)_compoundIndexRepresentation;
- (uint64_t)_isIndexForProperty:(uint64_t)a1;
- (uint64_t)_isMappedSinglePropertyIndex;
- (uint64_t)_isPurelyModeledIndex;
- (uint64_t)_isUnique;
- (uint64_t)_setIsUnique:(uint64_t)result;
- (unint64_t)_validateCollationTypeChangeFrom:(uint64_t)a3 to:;
- (void)_setEntity:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setElements:(NSArray *)elements;
- (void)setName:(NSString *)name;
- (void)setPartialIndexPredicate:(NSPredicate *)partialIndexPredicate;
@end

@implementation NSFetchIndexDescription

- (void)dealloc
{
  self->_elements = 0;

  self->_name = 0;
  self->_entity = 0;
  self->_partialIndexPredicate = 0;
  v3.receiver = self;
  v3.super_class = NSFetchIndexDescription;
  [(NSFetchIndexDescription *)&v3 dealloc];
}

- (uint64_t)_isMappedSinglePropertyIndex
{
  if (!a1)
  {
    return 0;
  }

  if ([*(a1 + 16) count] != 1)
  {
    return 0;
  }

  v2 = [*(a1 + 16) firstObject];
  if ([v2 collationType])
  {
    return 0;
  }

  return [v2 isAscending];
}

- (uint64_t)_isPurelyModeledIndex
{
  v12 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v1 = *(result + 16);
    v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v8;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v8 != v4)
          {
            objc_enumerationMutation(v1);
          }

          if ([objc_msgSend(*(*(&v7 + 1) + 8 * i) "property")] == 5)
          {
            result = 0;
            goto LABEL_12;
          }
        }

        v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

    result = 1;
  }

LABEL_12:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_isUnique
{
  v12 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v1 = *(result + 16);
    result = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (result)
    {
      v2 = result;
      v3 = *v8;
      while (2)
      {
        v4 = 0;
        do
        {
          if (*v8 != v3)
          {
            objc_enumerationMutation(v1);
          }

          v5 = *(*(&v7 + 1) + 8 * v4);
          if (v5 && (*(v5 + 40) & 4) != 0)
          {
            result = 1;
            goto LABEL_13;
          }

          ++v4;
        }

        while (v2 != v4);
        result = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
        v2 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_13:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_checkElements:(uint64_t)result
{
  v26 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = [a2 count] ? objc_msgSend(objc_msgSend(a2, "firstObject"), "collationType") : 0;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    result = [a2 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v20;
      do
      {
        v6 = 0;
        do
        {
          if (*v20 != v5)
          {
            objc_enumerationMutation(a2);
          }

          v7 = *(*(&v19 + 1) + 8 * v6);
          v8 = [v7 property];
          if (v8)
          {
            v9 = v8;
            v10 = [v8 _propertyType];
            if ((v10 - 4) >= 3 && v10 != 2)
            {
              v13 = MEMORY[0x1E695DF30];
              v14 = *MEMORY[0x1E695D940];
              v23 = @"Property";
              v24 = v9;
              v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
              v16 = @"Unsupported property type for index.";
              v17 = v13;
              v18 = v14;
              goto LABEL_21;
            }

            if (v3 != [v7 collationType])
            {
              v17 = MEMORY[0x1E695DF30];
              v18 = *MEMORY[0x1E695D940];
              v16 = @"Can't mix and match collation types.";
              v15 = 0;
LABEL_21:
              objc_exception_throw([v17 exceptionWithName:v18 reason:v16 userInfo:v15]);
            }
          }

          ++v6;
        }

        while (v4 != v6);
        result = [a2 countByEnumeratingWithState:&v19 objects:v25 count:16];
        v4 = result;
      }

      while (result);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSFetchIndexDescription)initWithName:(NSString *)name elements:(NSArray *)elements
{
  v19 = *MEMORY[0x1E69E9840];
  if (!name)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can't create an index with no name" userInfo:0]);
  }

  [(NSFetchIndexDescription *)self _checkElements:?];
  v17.receiver = self;
  v17.super_class = NSFetchIndexDescription;
  v7 = [(NSFetchIndexDescription *)&v17 init];
  if (v7)
  {
    v7->_name = name;
    v7->_elements = [(NSArray *)elements copy];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [(NSArray *)elements countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v8)
    {
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(elements);
          }

          [(NSFetchIndexElementDescription *)*(*(&v13 + 1) + 8 * v10++) _setIndexDescription:v7];
        }

        while (v8 != v10);
        v8 = [(NSArray *)elements countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

- (NSFetchIndexDescription)initWithName:(id)a3 predicate:(id)a4 elements:(id)a5 entity:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = NSFetchIndexDescription;
  v10 = [(NSFetchIndexDescription *)&v22 init];
  if (v10)
  {
    v10->_name = a3;
    v10->_elements = [a5 copy];
    v11 = a4;
    v10->_entity = a6;
    v10->_partialIndexPredicate = v11;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = [a5 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(a5);
          }

          [(NSFetchIndexElementDescription *)*(*(&v18 + 1) + 8 * v15++) _setIndexDescription:v10];
        }

        while (v13 != v15);
        v13 = [a5 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v13);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    v4[1] = [(NSString *)self->_name copy];
    v4[3] = self->_entity;
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    elements = self->_elements;
    v7 = [(NSArray *)elements countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(elements);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) copy];
          [v5 addObject:v11];
          [(NSFetchIndexElementDescription *)v11 _setIndexDescription:v4];
        }

        v8 = [(NSArray *)elements countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    v4[2] = v5;
    v4[4] = [(NSPredicate *)self->_partialIndexPredicate copy];
  }

  v12 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_name forKey:@"NSIndexName"];
  [a3 encodeObject:self->_elements forKey:@"NSIndexElements"];
  [a3 encodeObject:self->_entity forKey:@"NSEntity"];
  partialIndexPredicate = self->_partialIndexPredicate;

  [a3 encodeObject:partialIndexPredicate forKey:@"NSPartialIndexPredicate"];
}

- (NSFetchIndexDescription)initWithCoder:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = NSFetchIndexDescription;
  v4 = [(NSFetchIndexDescription *)&v36 init];
  if (v4)
  {
    v5 = +[PFModelDecoderContext retainedContext];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v33 = __41__NSFetchIndexDescription_initWithCoder___block_invoke;
    v34 = &unk_1E6EC16F0;
    v35 = v5;
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [a3 decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithObjects:", v7, objc_opt_class(), 0), @"NSIndexName"}];
    v4->_name = v8;
    if (v8 && ([(NSString *)v8 isNSString]& 1) == 0)
    {
      v22 = &unk_1EF435210;
      goto LABEL_28;
    }

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [a3 decodeObjectOfClasses:objc_msgSend(v9 forKey:{"setWithObjects:", v10, v11, objc_opt_class(), 0), @"NSIndexElements"}];
    v4->_elements = v12;
    if (v12)
    {
      if (![(NSArray *)v12 isNSArray])
      {
        v22 = &unk_1EF435238;
        goto LABEL_28;
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      elements = v4->_elements;
      v14 = [(NSArray *)elements countByEnumeratingWithState:&v28 objects:v37 count:16];
      if (v14)
      {
        v15 = *v29;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v29 != v15)
            {
              objc_enumerationMutation(elements);
            }

            v17 = *(*(&v28 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [a3 failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, &unk_1EF435260)}];

              goto LABEL_29;
            }
          }

          v14 = [(NSArray *)elements countByEnumeratingWithState:&v28 objects:v37 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }
    }

    v18 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSEntity"];
    v4->_entity = v18;
    if (!v18)
    {
      goto LABEL_23;
    }

    if (v5)
    {
      v19 = v5[3];
    }

    else
    {
      v19 = 0;
    }

    [v19 addObject:v18];
    entity = v4->_entity;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v22 = &unk_1EF4352B0;
    }

    else
    {
      v22 = &unk_1EF435288;
    }

    if (v5 != 0 && (isKindOfClass & 1) != 0)
    {
      if (v5[2] || v5[1])
      {
LABEL_23:
        v23 = MEMORY[0x1E695DFD8];
        v24 = objc_opt_class();
        v4->_partialIndexPredicate = [a3 decodeObjectOfClasses:objc_msgSend(v23 forKey:{"setWithObjects:", v24, objc_opt_class(), 0), @"NSPartialIndexPredicate"}];
        if (v5)
        {
          v25 = v5[3];
        }

        else
        {
          v25 = 0;
        }

        [v25 addObject:v4];
LABEL_30:
        v33(v32);
        goto LABEL_31;
      }

      v22 = &unk_1EF4352B0;
    }

LABEL_28:
    [a3 failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, v22)}];

LABEL_29:
    v4 = 0;
    goto LABEL_30;
  }

LABEL_31:
  v26 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    goto LABEL_23;
  }

  if (!a3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    LOBYTE(v6) = 0;
    return v6;
  }

  name = self->_name;
  v6 = [a3 name];
  if (name == v6 || (v7 = v6, LOBYTE(v6) = 0, name) && v7 && (LODWORD(v6) = [(NSString *)name isEqual:?], v6))
  {
    v8 = [(NSEntityDescription *)self->_entity name];
    v6 = [objc_msgSend(a3 "entity")];
    if (v8 == v6 || (v9 = v6, LOBYTE(v6) = 0, v8) && v9 && (LODWORD(v6) = [(NSString *)v8 isEqual:?], v6))
    {
      elements = self->_elements;
      v6 = [a3 elements];
      if (elements == v6 || (v11 = v6, LOBYTE(v6) = 0, elements) && v11 && (LODWORD(v6) = [(NSArray *)elements isEqual:?], v6))
      {
        partialIndexPredicate = self->_partialIndexPredicate;
        v6 = [a3 partialIndexPredicate];
        if (partialIndexPredicate != v6)
        {
          v13 = v6;
          LOBYTE(v6) = 0;
          if (partialIndexPredicate && v13)
          {

            LOBYTE(v6) = [(NSPredicate *)partialIndexPredicate isEqual:?];
          }

          return v6;
        }

LABEL_23:
        LOBYTE(v6) = 1;
      }
    }
  }

  return v6;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<NSFetchIndexDescription : (%@:%@, elements: %@, predicate: %@)>", -[NSEntityDescription name](self->_entity, "name"), self->_name, self->_elements, self->_partialIndexPredicate];
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (void)setName:(NSString *)name
{
  v12[1] = *MEMORY[0x1E69E9840];
  [(NSFetchIndexDescription *)self _throwIfNotEditable];
  if (!name)
  {
    v10 = *MEMORY[0x1E695D940];
    v11 = @"IndexDescription";
    v12[0] = self;
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v10 reason:@"Can't set an index name to nil" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v12, &v11, 1)}]);
  }

  if (([(NSString *)self->_name isEqual:name]& 1) == 0)
  {
    entity = self->_entity;
    if (entity)
    {
      if (atomic_load(&entity->_isImmutable))
      {
        rootentity = entity->_rootentity;
      }

      else
      {
        do
        {
          rootentity = entity;
          entity = [(NSEntityDescription *)entity superentity];
        }

        while (entity);
      }
    }

    else
    {
      rootentity = 0;
    }

    [(NSEntityDescription *)rootentity _validateIndexNameChangeFrom:name to:?];
    v8 = name;

    self->_name = name;
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setElements:(NSArray *)elements
{
  [(NSFetchIndexDescription *)self _throwIfNotEditable];
  [(NSFetchIndexDescription *)self _checkElements:?];
  v5 = [(NSArray *)elements copy];

  self->_elements = v5;
}

- (void)_setEntity:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  self->_entity = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  elements = self->_elements;
  v5 = [(NSArray *)elements countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(elements);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [(NSFetchIndexElementDescription *)v9 _setIndexDescription:?];
        [v9 property];
      }

      v6 = [(NSArray *)elements countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setPartialIndexPredicate:(NSPredicate *)partialIndexPredicate
{
  [(NSFetchIndexDescription *)self _throwIfNotEditable];
  if (self->_partialIndexPredicate != partialIndexPredicate)
  {
    v5 = partialIndexPredicate;

    self->_partialIndexPredicate = partialIndexPredicate;
  }
}

- (unint64_t)_validateCollationTypeChangeFrom:(uint64_t)a3 to:
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    result = [*(result + 16) count];
    if (a2 != a3 && result <= 1)
    {
      v7 = *MEMORY[0x1E695D940];
      v8 = @"Index";
      v9[0] = v5;
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v7 reason:@"Can't change an collation type in a multi-element index" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v9, &v8, 1)}]);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_isIndexForProperty:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  if ([*(a1 + 16) count] != 1)
  {
    return 0;
  }

  v4 = [*(a1 + 16) firstObject];
  if (![objc_msgSend(a2 "name")] || objc_msgSend(v4, "collationType"))
  {
    return 0;
  }

  return [v4 isAscending];
}

- (uint64_t)_compoundIndexRepresentation
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a1 || ![*(a1 + 16) count] || objc_msgSend(objc_msgSend(*(a1 + 16), "firstObject"), "collationType") || objc_msgSend(*(a1 + 16), "count") == 1)
  {
LABEL_5:
    v2 = 0;
    goto LABEL_6;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = *(a1 + 16);
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v28 + 1) + 8 * i) property];
        v11 = [v10 _propertyType];
        if ((v11 & 0xFFFFFFFFFFFFFFFBLL) != 2 && (v11 != 5 || !+[_PFRoutines _expressionIsCompoundIndexCompatible:](_PFRoutines, [v10 expression])))
        {
          goto LABEL_5;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  v2 = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = *(a1 + 16);
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = v13;
  v15 = *v25;
  do
  {
    v16 = 0;
    do
    {
      if (*v25 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = [*(*(&v24 + 1) + 8 * v16) property];
      v18 = [v17 _propertyType];
      if ((v18 & 0xFFFFFFFFFFFFFFFBLL) == 2)
      {
        v19 = [v17 name];
        goto LABEL_24;
      }

      if (v18 == 5 && +[_PFRoutines _expressionIsCompoundIndexCompatible:](_PFRoutines, [v17 expression]))
      {
        v22 = [objc_msgSend(v17 "expression")];
        if (v22 == 3)
        {
          v19 = [objc_msgSend(v17 "expression")];
LABEL_24:
          v20 = v19;
          v21 = v2;
LABEL_25:
          [v21 addObject:v20];
          goto LABEL_31;
        }

        if (v22 == 1)
        {
          v21 = v2;
          v20 = @"self";
          goto LABEL_25;
        }
      }

LABEL_31:
      ++v16;
    }

    while (v14 != v16);
    v23 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
    v14 = v23;
  }

  while (v23);
LABEL_6:
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

- (uint64_t)_setIsUnique:(uint64_t)result
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = *(result + 16);
    result = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v11;
      if (a2)
      {
        v6 = 4;
      }

      else
      {
        v6 = 0;
      }

      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          if (v8)
          {
            *(v8 + 40) = *(v8 + 40) & 0xFFFFFFFB | v6;
          }

          ++v7;
        }

        while (v4 != v7);
        result = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        v4 = result;
      }

      while (result);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (int64_t)_compare:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    result = 1;
LABEL_32:
    v26 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (-[NSString isEqualToString:](-[NSEntityDescription name](-[NSFetchIndexDescription entity](self, "entity"), "name"), "isEqualToString:", [objc_msgSend(a3 "entity")]))
  {
    v5 = [(NSArray *)self->_elements count];
    if (v5 == [*(a3 + 2) count])
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      elements = self->_elements;
      result = [(NSArray *)elements countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (result)
      {
        v8 = result;
        v9 = *v35;
        v27 = *v35;
        while (1)
        {
          v10 = 0;
          v28 = v8;
LABEL_7:
          if (*v35 != v9)
          {
            objc_enumerationMutation(elements);
          }

          v11 = *(*(&v34 + 1) + 8 * v10);
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v12 = *(a3 + 2);
          v13 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (!v13)
          {
            break;
          }

          v14 = v13;
          v29 = v10;
          v15 = 0;
          v16 = *v31;
          while (2)
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v31 != v16)
              {
                objc_enumerationMutation(v12);
              }

              v18 = *(*(&v30 + 1) + 8 * i);
              if ([objc_msgSend(v11 "propertyName")])
              {
                v19 = [v11 collationType];
                if (v19 != [v18 collationType])
                {
                  v25 = [v11 collationType];
                  v24 = v25 >= [v18 collationType];
                  goto LABEL_29;
                }

                v15 = 1;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }

          if ((v15 & 1) == 0)
          {
            break;
          }

          v10 = v29 + 1;
          v9 = v27;
          if (v29 + 1 != v28)
          {
            goto LABEL_7;
          }

          v8 = [(NSArray *)elements countByEnumeratingWithState:&v34 objects:v39 count:16];
          result = 0;
          if (!v8)
          {
            goto LABEL_32;
          }
        }

        result = -1;
      }
    }

    else
    {
      v23 = [(NSArray *)self->_elements count];
      v24 = v23 >= [*(a3 + 2) count];
LABEL_29:
      if (v24)
      {
        result = 1;
      }

      else
      {
        result = -1;
      }
    }

    goto LABEL_32;
  }

  v20 = [(NSEntityDescription *)[(NSFetchIndexDescription *)self entity] name];
  v21 = [objc_msgSend(a3 "entity")];
  v22 = *MEMORY[0x1E69E9840];

  return [(NSString *)v20 compare:v21];
}

@end