@interface ACProtobufVariableValueDictionary
- (ACProtobufVariableValueDictionary)initWithDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addPair:(id)pair;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setDictionary:(id)dictionary;
- (void)writeTo:(id)to;
@end

@implementation ACProtobufVariableValueDictionary

- (ACProtobufVariableValueDictionary)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(ACProtobufVariableValueDictionary *)self init];
  v6 = v5;
  if (v5)
  {
    if (!dictionaryCopy || ([(ACProtobufVariableValueDictionary *)v5 setDictionary:dictionaryCopy], [(ACProtobufVariableValueDictionary *)v6 pairs], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setDictionary:(id)dictionary
{
  v4 = MEMORY[0x1E695DF70];
  dictionaryCopy = dictionary;
  v6 = [[v4 alloc] initWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__ACProtobufVariableValueDictionary_Helpers__setDictionary___block_invoke;
  v8[3] = &unk_1E7977500;
  v9 = v6;
  v7 = v6;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v8];

  [(ACProtobufVariableValueDictionary *)self setPairs:v7];
}

void __60__ACProtobufVariableValueDictionary_Helpers__setDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = [[ACProtobufVariableKeyValuePair alloc] initWithObjectValue:v5 forKey:v6];

  v7 = v8;
  if (v8)
  {
    [*(a1 + 32) addObject:v8];
    v7 = v8;
  }
}

- (NSDictionary)dictionary
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[ACProtobufVariableValueDictionary pairsCount](self, "pairsCount")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  pairs = [(ACProtobufVariableValueDictionary *)self pairs];
  v5 = [pairs countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(pairs);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        value = [v9 value];
        object = [value object];
        v12 = [v9 key];
        [v3 setObject:object forKeyedSubscript:v12];
      }

      v6 = [pairs countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)addPair:(id)pair
{
  pairCopy = pair;
  pairs = self->_pairs;
  v8 = pairCopy;
  if (!pairs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_pairs;
    self->_pairs = v6;

    pairCopy = v8;
    pairs = self->_pairs;
  }

  [(NSMutableArray *)pairs addObject:pairCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ACProtobufVariableValueDictionary;
  v4 = [(ACProtobufVariableValueDictionary *)&v8 description];
  dictionaryRepresentation = [(ACProtobufVariableValueDictionary *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_pairs count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_pairs, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_pairs;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"pair"];
  }

  v11 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_pairs;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(ACProtobufVariableValueDictionary *)self pairsCount])
  {
    [toCopy clearPairs];
    pairsCount = [(ACProtobufVariableValueDictionary *)self pairsCount];
    if (pairsCount)
    {
      v5 = pairsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ACProtobufVariableValueDictionary *)self pairAtIndex:i];
        [toCopy addPair:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_pairs;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) copyWithZone:{zone, v14}];
        [v5 addPair:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    pairs = self->_pairs;
    if (pairs | equalCopy[1])
    {
      v6 = [(NSMutableArray *)pairs isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(from + 1);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(ACProtobufVariableValueDictionary *)self addPair:*(*(&v10 + 1) + 8 * v8++), v10];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end