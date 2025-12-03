@interface NSSQLCorrelationTableUpdateTracker
- (id)initForRelationship:(id)relationship;
- (uint64_t)enumerateDeletesOIDsUsingBlock:(uint64_t)result;
- (uint64_t)enumerateDeletesUsingBlock:(uint64_t)result;
- (uint64_t)enumerateInsertsOIDsUsingBlock:(uint64_t)result;
- (uint64_t)enumerateReordersOIDsUsingBlock:(uint64_t)result;
- (uint64_t)enumerateReordersUsingBlock:(uint64_t)result;
- (uint64_t)trackInserts:(void *)inserts deletes:(void *)deletes reorders:(uint64_t)reorders forObjectWithID:;
- (uint64_t)trackReorders:(uint64_t)reorders forObjectWithID:;
- (void)_organizeValues:(uint64_t)values;
- (void)dealloc;
- (void)enumerateInsertsUsingBlock:(uint64_t)block;
- (void)enumerateMasterReordersOIDsUsingBlock:(uint64_t)block;
- (void)enumerateMasterReordersPart2UsingBlock:(uint64_t)block;
- (void)enumerateMasterReordersUsingBlock:(uint64_t)block;
@end

@implementation NSSQLCorrelationTableUpdateTracker

- (id)initForRelationship:(id)relationship
{
  v5.receiver = self;
  v5.super_class = NSSQLCorrelationTableUpdateTracker;
  result = [(NSSQLCorrelationTableUpdateTracker *)&v5 init];
  if (result)
  {
    *(result + 1) = relationship;
    *(result + 1) = 0u;
    *(result + 2) = 0u;
  }

  return result;
}

- (void)dealloc
{
  self->_inserts = 0;

  self->_deletes = 0;
  self->_masterUpdates = 0;

  self->_otherUpdates = 0;
  v3.receiver = self;
  v3.super_class = NSSQLCorrelationTableUpdateTracker;
  [(NSSQLCorrelationTableUpdateTracker *)&v3 dealloc];
}

- (uint64_t)trackInserts:(void *)inserts deletes:(void *)deletes reorders:(uint64_t)reorders forObjectWithID:
{
  if (result)
  {
    v9 = result;
    if ([a2 count])
    {
      v10 = *(v9 + 16);
      if (!v10)
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
        *(v9 + 16) = v10;
      }

      [v10 addObject:reorders];
      [*(v9 + 16) addObject:a2];
    }

    if ([inserts count])
    {
      v11 = *(v9 + 24);
      if (!v11)
      {
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        *(v9 + 24) = v11;
      }

      [v11 addObject:reorders];
      [*(v9 + 24) addObject:inserts];
    }

    result = [deletes count];
    if (result)
    {
      v12 = *(v9 + 32);
      if (!v12)
      {
        v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
        *(v9 + 32) = v12;
      }

      [v12 addObject:reorders];
      v13 = *(v9 + 32);

      return [v13 addObject:deletes];
    }
  }

  return result;
}

- (uint64_t)trackReorders:(uint64_t)reorders forObjectWithID:
{
  if (result)
  {
    v5 = result;
    result = [a2 count];
    if (result)
    {
      v6 = *(v5 + 40);
      if (!v6)
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
        *(v5 + 40) = v6;
      }

      [v6 addObject:reorders];
      v7 = *(v5 + 40);

      return [v7 addObject:a2];
    }
  }

  return result;
}

- (void)_organizeValues:(uint64_t)values
{
  if (!values)
  {
    return 0;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [a2 count];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i < v5; i += 2)
    {
      v7 = [a2 objectAtIndex:i];
      v8 = [a2 objectAtIndex:i | 1];
      dictionary2 = [dictionary objectForKey:v7];
      if (!dictionary2)
      {
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        [dictionary setObject:dictionary2 forKey:v7];
      }

      v10 = [v8 count];
      if (v10)
      {
        v11 = v10;
        for (j = 0; j < v11; j += 2)
        {
          [dictionary2 setObject:objc_msgSend(v8 forKey:{"objectAtIndex:", j + 1), objc_msgSend(v8, "objectAtIndex:", j)}];
        }
      }
    }
  }

  return dictionary;
}

- (void)enumerateInsertsUsingBlock:(uint64_t)block
{
  if (block)
  {
    propertyDescription = *(block + 8);
    if (propertyDescription)
    {
      propertyDescription = [propertyDescription propertyDescription];
    }

    isOrdered = [propertyDescription isOrdered];
    v16 = [*(block + 16) count];
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    if (isOrdered && (v6 = *(block + 8)) != 0 && *(v6 + 56) == v6)
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x3052000000;
      v21 = __Block_byref_object_copy__43;
      v22 = __Block_byref_object_dispose__43;
      v23 = [(NSSQLCorrelationTableUpdateTracker *)block _organizeValues:?];
      v15 = v19[5];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __65__NSSQLCorrelationTableUpdateTracker_enumerateInsertsUsingBlock___block_invoke;
      v17[3] = &unk_1E6EC5000;
      v17[5] = &v24;
      v17[6] = &v18;
      v17[4] = a2;
      [v15 enumerateKeysAndObjectsUsingBlock:v17];
      _Block_object_dispose(&v18, 8);
    }

    else if (v16)
    {
      v7 = 0;
      if (isOrdered)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      do
      {
        if (v25[3])
        {
          break;
        }

        v9 = [objc_msgSend(*(block + 16) objectAtIndex:{v7), "_referenceData64"}];
        v10 = [*(block + 16) objectAtIndex:v7 | 1];
        v11 = [v10 count];
        if (v11)
        {
          for (i = 0; i < v11; i += v8)
          {
            if (v25[3])
            {
              break;
            }

            v13 = [objc_msgSend(v10 objectAtIndex:{i), "_referenceData64"}];
            v14 = isOrdered ? [objc_msgSend(v10 objectAtIndex:{i + 1), "unsignedLongLongValue"}] : 0;
            (*(a2 + 16))(a2, v9, v13, v14, 0, v25 + 3);
          }
        }

        v7 += 2;
      }

      while (v7 < v16);
    }

    _Block_object_dispose(&v24, 8);
  }
}

void __65__NSSQLCorrelationTableUpdateTracker_enumerateInsertsUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3052000000;
    v11[3] = __Block_byref_object_copy__43;
    v11[4] = __Block_byref_object_dispose__43;
    v11[5] = a2;
    v5 = [a2 _referenceData64];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65__NSSQLCorrelationTableUpdateTracker_enumerateInsertsUsingBlock___block_invoke_2;
    v6[3] = &unk_1E6EC4F88;
    v8 = *(a1 + 48);
    v9 = v11;
    v7 = *(a1 + 32);
    v10 = v5;
    [a3 enumerateKeysAndObjectsUsingBlock:v6];
    _Block_object_dispose(v11, 8);
  }
}

uint64_t __65__NSSQLCorrelationTableUpdateTracker_enumerateInsertsUsingBlock___block_invoke_2(uint64_t result, void *a2, void *a3)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v5 = result;
    [a3 unsignedLongLongValue];
    [a2 _referenceData64];
    [objc_msgSend(objc_msgSend(*(*(v5[6] + 8) + 40) objectForKey:{a2), "objectForKey:", *(*(v5[7] + 8) + 40)), "unsignedLongLongValue"}];
    v6 = v5[8];
    v7 = *(v5[4] + 16);
    v8 = *(v5[5] + 8) + 24;

    return v7();
  }

  return result;
}

- (uint64_t)enumerateInsertsOIDsUsingBlock:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    propertyDescription = *(result + 8);
    if (propertyDescription)
    {
      propertyDescription = [propertyDescription propertyDescription];
    }

    isOrdered = [propertyDescription isOrdered];
    result = [*(v3 + 16) count];
    v13 = 0;
    if (result)
    {
      v6 = result;
      v7 = 0;
      if (isOrdered)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      do
      {
        if (v13)
        {
          break;
        }

        v9 = [*(v3 + 16) objectAtIndex:v7];
        v10 = [*(v3 + 16) objectAtIndex:v7 | 1];
        result = [v10 count];
        if (result)
        {
          v11 = result;
          for (i = 0; i < v11; i += v8)
          {
            if (v13)
            {
              break;
            }

            result = (*(a2 + 16))(a2, v9, [v10 objectAtIndex:i], &v13);
          }
        }

        v7 += 2;
      }

      while (v7 < v6);
    }
  }

  return result;
}

- (uint64_t)enumerateDeletesUsingBlock:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    result = [*(result + 24) count];
    v12 = result;
    v13 = 0;
    v4 = *(v3 + 8);
    v5 = v4 && *(v4 + 56) == v4;
    if (result)
    {
      v6 = 0;
      do
      {
        if (v13)
        {
          break;
        }

        v7 = [objc_msgSend(*(v3 + 24) objectAtIndex:{v6), "_referenceData64"}];
        v8 = [*(v3 + 24) objectAtIndex:v6 | 1];
        result = [v8 count];
        if (result)
        {
          v9 = result;
          for (i = 0; i != v9; ++i)
          {
            if (v13)
            {
              break;
            }

            v11 = [objc_msgSend(v8 objectAtIndex:{i), "_referenceData64"}];
            result = (*(a2 + 16))(a2, v7, v11, &v13);
            if (v5)
            {
              result = (*(a2 + 16))(a2, v11, v7, &v13);
            }
          }
        }

        v6 += 2;
      }

      while (v6 < v12);
    }
  }

  return result;
}

- (uint64_t)enumerateDeletesOIDsUsingBlock:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    result = [*(result + 24) count];
    v12 = result;
    v13 = 0;
    v4 = *(v3 + 8);
    v5 = v4 && *(v4 + 56) == v4;
    if (result)
    {
      v6 = 0;
      do
      {
        if (v13)
        {
          break;
        }

        v7 = [*(v3 + 24) objectAtIndex:v6];
        v8 = [*(v3 + 24) objectAtIndex:v6 | 1];
        result = [v8 count];
        if (result)
        {
          v9 = result;
          for (i = 0; i != v9; ++i)
          {
            if (v13)
            {
              break;
            }

            v11 = [v8 objectAtIndex:i];
            result = (*(a2 + 16))(a2, v7, v11, &v13);
            if (v5)
            {
              result = (*(a2 + 16))(a2, v11, v7, &v13);
            }
          }
        }

        v6 += 2;
      }

      while (v6 < v12);
    }
  }

  return result;
}

- (void)enumerateMasterReordersUsingBlock:(uint64_t)block
{
  if (block)
  {
    propertyDescription = *(block + 8);
    if (propertyDescription)
    {
      propertyDescription = [propertyDescription propertyDescription];
    }

    if ([propertyDescription isOrdered])
    {
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      v5 = *(block + 8);
      if (v5)
      {
        v6 = *(block + 32);
        if (*(v5 + 56) == v5)
        {
          v17 = [(NSSQLCorrelationTableUpdateTracker *)block _organizeValues:v6];
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __72__NSSQLCorrelationTableUpdateTracker_enumerateMasterReordersUsingBlock___block_invoke;
          v19[3] = &unk_1E6EC4FD8;
          v19[4] = a2;
          v19[5] = &v20;
          [v17 enumerateKeysAndObjectsUsingBlock:v19];
LABEL_18:
          _Block_object_dispose(&v20, 8);
          return;
        }

        v7 = (block + 32);
      }

      else
      {
        v18 = *(block + 32);
        v7 = (block + 32);
        v6 = v18;
      }

      v8 = [v6 count];
      if (v8)
      {
        for (i = 0; i < v8; i += 2)
        {
          if (v21[3])
          {
            break;
          }

          v10 = [objc_msgSend(*v7 objectAtIndex:{i), "_referenceData64"}];
          v11 = [*v7 objectAtIndex:i | 1];
          v12 = [v11 count];
          if (v12)
          {
            for (j = 0; j < v12; j = v15 + 1)
            {
              if (v21[3])
              {
                break;
              }

              v14 = [objc_msgSend(v11 objectAtIndex:{j), "_referenceData64"}];
              v15 = j + 1;
              v16 = [objc_msgSend(v11 objectAtIndex:{v15), "unsignedLongLongValue"}];
              (*(a2 + 16))(a2, v16, v10, v14, v21 + 3);
            }
          }
        }
      }

      goto LABEL_18;
    }
  }
}

uint64_t __72__NSSQLCorrelationTableUpdateTracker_enumerateMasterReordersUsingBlock___block_invoke(uint64_t result, void *a2, void *a3)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v4 = result;
    v5 = [a2 _referenceData64];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __72__NSSQLCorrelationTableUpdateTracker_enumerateMasterReordersUsingBlock___block_invoke_2;
    v6[3] = &unk_1E6EC4FB0;
    v7 = *(v4 + 32);
    v8 = v5;
    return [a3 enumerateKeysAndObjectsUsingBlock:v6];
  }

  return result;
}

uint64_t __72__NSSQLCorrelationTableUpdateTracker_enumerateMasterReordersUsingBlock___block_invoke_2(uint64_t result, void *a2, void *a3)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v5 = result;
    [a3 unsignedLongLongValue];
    [a2 _referenceData64];
    v6 = v5[6];
    v7 = *(v5[4] + 16);
    v8 = *(v5[5] + 8) + 24;

    return v7();
  }

  return result;
}

- (void)enumerateMasterReordersOIDsUsingBlock:(uint64_t)block
{
  if (block)
  {
    propertyDescription = *(block + 8);
    if (propertyDescription)
    {
      propertyDescription = [propertyDescription propertyDescription];
    }

    if ([propertyDescription isOrdered])
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v5 = *(block + 8);
      if (v5)
      {
        v6 = *(block + 32);
        if (*(v5 + 56) == v5)
        {
          v15 = [(NSSQLCorrelationTableUpdateTracker *)block _organizeValues:v6];
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __76__NSSQLCorrelationTableUpdateTracker_enumerateMasterReordersOIDsUsingBlock___block_invoke;
          v17[3] = &unk_1E6EC4FD8;
          v17[4] = a2;
          v17[5] = &v18;
          [v15 enumerateKeysAndObjectsUsingBlock:v17];
LABEL_18:
          _Block_object_dispose(&v18, 8);
          return;
        }

        v7 = (block + 32);
      }

      else
      {
        v16 = *(block + 32);
        v7 = (block + 32);
        v6 = v16;
      }

      v8 = [v6 count];
      if (v8)
      {
        for (i = 0; i < v8; i += 2)
        {
          if (v19[3])
          {
            break;
          }

          v10 = [*v7 objectAtIndex:i];
          v11 = [*v7 objectAtIndex:i | 1];
          v12 = [v11 count];
          if (v12)
          {
            for (j = 0; j < v12; j += 2)
            {
              if (v19[3])
              {
                break;
              }

              v14 = [v11 objectAtIndex:j];
              (*(a2 + 16))(a2, v14, v10, v19 + 3);
            }
          }
        }
      }

      goto LABEL_18;
    }
  }
}

void __76__NSSQLCorrelationTableUpdateTracker_enumerateMasterReordersOIDsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 40);
  if ((*(*(v3 + 8) + 24) & 1) == 0)
  {
    v5[0] = 0;
    v5[1] = v5;
    v5[2] = 0x3052000000;
    v5[3] = __Block_byref_object_copy__43;
    v5[4] = __Block_byref_object_dispose__43;
    v5[5] = a2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __76__NSSQLCorrelationTableUpdateTracker_enumerateMasterReordersOIDsUsingBlock___block_invoke_2;
    v4[3] = &unk_1E6EC5000;
    v4[4] = *(a1 + 32);
    v4[5] = v3;
    v4[6] = v5;
    [a3 enumerateKeysAndObjectsUsingBlock:v4];
    _Block_object_dispose(v5, 8);
  }
}

void *__76__NSSQLCorrelationTableUpdateTracker_enumerateMasterReordersOIDsUsingBlock___block_invoke_2(void *result, uint64_t a2)
{
  v2 = *(result[5] + 8);
  v4 = *(v2 + 24);
  v3 = v2 + 24;
  if ((v4 & 1) == 0)
  {
    return (*(result[4] + 16))(result[4], a2, *(*(result[6] + 8) + 40), v3);
  }

  return result;
}

- (void)enumerateMasterReordersPart2UsingBlock:(uint64_t)block
{
  if (block)
  {
    v3 = [(NSSQLCorrelationTableUpdateTracker *)block _organizeValues:?];
    v5[0] = 0;
    v5[1] = v5;
    v5[2] = 0x2020000000;
    v6 = 0;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __77__NSSQLCorrelationTableUpdateTracker_enumerateMasterReordersPart2UsingBlock___block_invoke;
    v4[3] = &unk_1E6EC4FD8;
    v4[4] = a2;
    v4[5] = v5;
    [v3 enumerateKeysAndObjectsUsingBlock:v4];
    _Block_object_dispose(v5, 8);
  }
}

uint64_t __77__NSSQLCorrelationTableUpdateTracker_enumerateMasterReordersPart2UsingBlock___block_invoke(uint64_t result, void *a2, void *a3)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v4 = result;
    v5 = [a2 _referenceData64];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __77__NSSQLCorrelationTableUpdateTracker_enumerateMasterReordersPart2UsingBlock___block_invoke_2;
    v6[3] = &unk_1E6EC4FB0;
    v7 = *(v4 + 32);
    v8 = v5;
    return [a3 enumerateKeysAndObjectsUsingBlock:v6];
  }

  return result;
}

uint64_t __77__NSSQLCorrelationTableUpdateTracker_enumerateMasterReordersPart2UsingBlock___block_invoke_2(uint64_t result, void *a2, void *a3)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v5 = result;
    [a3 unsignedLongLongValue];
    [a2 _referenceData64];
    v6 = v5[6];
    v7 = *(v5[4] + 16);
    v8 = *(v5[5] + 8) + 24;

    return v7();
  }

  return result;
}

- (uint64_t)enumerateReordersUsingBlock:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    propertyDescription = *(result + 8);
    if (propertyDescription)
    {
      propertyDescription = [propertyDescription propertyDescription];
    }

    result = [objc_msgSend(propertyDescription "inverseRelationship")];
    if (result)
    {
      result = [*(v3 + 40) count];
      v11 = 0;
      if (result)
      {
        v5 = result;
        for (i = 0; i < v5; i += 2)
        {
          if (v11)
          {
            break;
          }

          v7 = [objc_msgSend(*(v3 + 40) objectAtIndex:{i), "_referenceData64"}];
          v8 = [*(v3 + 40) objectAtIndex:i | 1];
          result = [v8 count];
          if (result)
          {
            v9 = result;
            for (j = 0; j < v9; j += 2)
            {
              if (v11)
              {
                break;
              }

              result = (*(a2 + 16))(a2, [objc_msgSend(v8 objectAtIndex:{j), "_referenceData64"}], v7, objc_msgSend(objc_msgSend(v8, "objectAtIndex:", j + 1), "unsignedLongLongValue"), &v11);
            }
          }
        }
      }
    }
  }

  return result;
}

- (uint64_t)enumerateReordersOIDsUsingBlock:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    propertyDescription = *(result + 8);
    if (propertyDescription)
    {
      propertyDescription = [propertyDescription propertyDescription];
    }

    result = [objc_msgSend(propertyDescription "inverseRelationship")];
    if (result)
    {
      result = [*(v3 + 40) count];
      v11 = 0;
      if (result)
      {
        v5 = result;
        for (i = 0; i < v5; i += 2)
        {
          if (v11)
          {
            break;
          }

          v7 = [*(v3 + 40) objectAtIndex:i];
          v8 = [*(v3 + 40) objectAtIndex:i | 1];
          result = [v8 count];
          if (result)
          {
            v9 = result;
            for (j = 0; j < v9; j += 2)
            {
              if (v11)
              {
                break;
              }

              result = (*(a2 + 16))(a2, [v8 objectAtIndex:j], v7, &v11);
            }
          }
        }
      }
    }
  }

  return result;
}

@end