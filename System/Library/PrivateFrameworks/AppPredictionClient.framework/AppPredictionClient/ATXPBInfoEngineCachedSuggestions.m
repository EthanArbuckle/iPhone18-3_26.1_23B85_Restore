@interface ATXPBInfoEngineCachedSuggestions
- (BOOL)isEqual:(id)a3;
- (id)cachedSuggestionIdsAtIndex:(id *)a1;
- (id)cachedSuggestionSourceIdsAtIndex:(id *)a1;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)addCachedSuggestionIds:(uint64_t)a1;
- (uint64_t)addCachedSuggestionSourceIds:(uint64_t)a1;
- (uint64_t)cachedSuggestionIds;
- (uint64_t)cachedSuggestionIdsCount;
- (uint64_t)cachedSuggestionSourceIds;
- (uint64_t)cachedSuggestionSourceIdsCount;
- (uint64_t)clearCachedSuggestionIds;
- (uint64_t)clearCachedSuggestionSourceIds;
- (uint64_t)hasLength;
- (uint64_t)length;
- (uint64_t)setHasLength:(uint64_t)result;
- (uint64_t)setLength:(uint64_t)result;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)a1;
- (void)mergeFrom:(uint64_t)a1;
- (void)setCachedSuggestionIds:(uint64_t)a1;
- (void)setCachedSuggestionSourceIds:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBInfoEngineCachedSuggestions

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBInfoEngineCachedSuggestions;
  v4 = [(ATXPBInfoEngineCachedSuggestions *)&v8 description];
  v5 = [(ATXPBInfoEngineCachedSuggestions *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_length];
    [v3 setObject:v4 forKey:@"length"];
  }

  cachedSuggestionIds = self->_cachedSuggestionIds;
  if (cachedSuggestionIds)
  {
    [v3 setObject:cachedSuggestionIds forKey:@"cachedSuggestionIds"];
  }

  cachedSuggestionSourceIds = self->_cachedSuggestionSourceIds;
  if (cachedSuggestionSourceIds)
  {
    [v3 setObject:cachedSuggestionSourceIds forKey:@"cachedSuggestionSourceIds"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_cachedSuggestionIds;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_cachedSuggestionSourceIds;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteStringField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_length;
    *(v5 + 32) |= 1u;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = self->_cachedSuggestionIds;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v24 + 1) + 8 * v11) copyWithZone:a3];
        [(ATXPBInfoEngineCachedSuggestions *)v6 addCachedSuggestionIds:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = self->_cachedSuggestionSourceIds;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v20 + 1) + 8 * v17) copyWithZone:{a3, v20}];
        [(ATXPBInfoEngineCachedSuggestions *)v6 addCachedSuggestionSourceIds:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_length != *(v4 + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  cachedSuggestionIds = self->_cachedSuggestionIds;
  if (cachedSuggestionIds | *(v4 + 2) && ![(NSMutableArray *)cachedSuggestionIds isEqual:?])
  {
    goto LABEL_11;
  }

  cachedSuggestionSourceIds = self->_cachedSuggestionSourceIds;
  if (cachedSuggestionSourceIds | *(v4 + 3))
  {
    v7 = [(NSMutableArray *)cachedSuggestionSourceIds isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_12:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_length;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_cachedSuggestionIds hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_cachedSuggestionSourceIds hash];
}

- (uint64_t)setLength:(uint64_t)result
{
  if (result)
  {
    *(result + 32) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setHasLength:(uint64_t)result
{
  if (result)
  {
    *(result + 32) = *(result + 32) & 0xFE | a2;
  }

  return result;
}

- (uint64_t)hasLength
{
  if (result)
  {
    return *(result + 32) & 1;
  }

  return result;
}

- (uint64_t)clearCachedSuggestionIds
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 16);
  }

  return result;
}

- (uint64_t)addCachedSuggestionIds:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 16);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(a1 + 16);
      *(a1 + 16) = v6;

      v5 = *(a1 + 16);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)cachedSuggestionIdsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, 16);
  }

  return result;
}

- (id)cachedSuggestionIdsAtIndex:(id *)a1
{
  if (a1)
  {
    a1 = [a1[2] objectAtIndex:a2];
    v2 = vars8;
  }

  return a1;
}

- (uint64_t)clearCachedSuggestionSourceIds
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_3(result, 24);
  }

  return result;
}

- (uint64_t)addCachedSuggestionSourceIds:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 24);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(a1 + 24);
      *(a1 + 24) = v6;

      v5 = *(a1 + 24);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)cachedSuggestionSourceIdsCount
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, 24);
  }

  return result;
}

- (id)cachedSuggestionSourceIdsAtIndex:(id *)a1
{
  if (a1)
  {
    a1 = [a1[3] objectAtIndex:a2];
    v2 = vars8;
  }

  return a1;
}

- (void)copyTo:(uint64_t)a1
{
  v11 = a2;
  if (a1)
  {
    if (*(a1 + 32))
    {
      *(v11 + 1) = *(a1 + 8);
      *(v11 + 32) |= 1u;
    }

    if ([*(a1 + 16) count])
    {
      if (v11)
      {
        [*(v11 + 2) removeAllObjects];
      }

      v3 = [*(a1 + 16) count];
      if (v3)
      {
        v4 = v3;
        for (i = 0; i != v4; ++i)
        {
          v6 = [*(a1 + 16) objectAtIndex:i];
          [(ATXPBInfoEngineCachedSuggestions *)v11 addCachedSuggestionIds:v6];
        }
      }
    }

    if ([*(a1 + 24) count])
    {
      if (v11)
      {
        [*(v11 + 3) removeAllObjects];
      }

      v7 = [*(a1 + 24) count];
      if (v7)
      {
        v8 = v7;
        for (j = 0; j != v8; ++j)
        {
          v10 = [*(a1 + 24) objectAtIndex:j];
          [(ATXPBInfoEngineCachedSuggestions *)v11 addCachedSuggestionSourceIds:v10];
        }
      }
    }
  }
}

- (void)mergeFrom:(uint64_t)a1
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3[4])
    {
      *(a1 + 8) = v3[1];
      *(a1 + 32) |= 1u;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = v3[2];
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        v9 = 0;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(ATXPBInfoEngineCachedSuggestions *)a1 addCachedSuggestionIds:?];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v7);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = v4[3];
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [(ATXPBInfoEngineCachedSuggestions *)a1 addCachedSuggestionSourceIds:?];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v12);
    }
  }
}

- (uint64_t)length
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)cachedSuggestionIds
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (void)setCachedSuggestionIds:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2(a1, a2, 16);
  }
}

- (uint64_t)cachedSuggestionSourceIds
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (void)setCachedSuggestionSourceIds:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2(a1, a2, 24);
  }
}

@end