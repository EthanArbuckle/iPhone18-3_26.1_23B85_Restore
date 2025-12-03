@interface MPPCompoundPredicate
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addPredicates:(id)predicates;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)writeTo:(id)to;
@end

@implementation MPPCompoundPredicate

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    predicates = self->_predicates;
    if (predicates | equalCopy[1])
    {
      v6 = [(NSMutableArray *)predicates isEqual:?];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_predicates;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) copyWithZone:{zone, v13}];
        [v5 addPredicates:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(MPPCompoundPredicate *)self predicatesCount])
  {
    [toCopy clearPredicates];
    predicatesCount = [(MPPCompoundPredicate *)self predicatesCount];
    if (predicatesCount)
    {
      v5 = predicatesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(MPPCompoundPredicate *)self predicatesAtIndex:i];
        [toCopy addPredicates:v7];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_predicates;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = objc_alloc_init(MEMORY[0x1E69C65C0]);
        [v10 writeTo:{v11, v13}];
        data = [v11 data];
        [toCopy writeData:data forTag:1];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (id)dictionaryRepresentation
{
  v17 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_predicates count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_predicates, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_predicates;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v12 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"predicates"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MPPCompoundPredicate;
  v4 = [(MPPCompoundPredicate *)&v8 description];
  dictionaryRepresentation = [(MPPCompoundPredicate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addPredicates:(id)predicates
{
  predicatesCopy = predicates;
  predicates = self->_predicates;
  v8 = predicatesCopy;
  if (!predicates)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_predicates;
    self->_predicates = v6;

    predicatesCopy = v8;
    predicates = self->_predicates;
  }

  [(NSMutableArray *)predicates addObject:predicatesCopy];
}

- (void)dealloc
{
  [(MPPCompoundPredicate *)self setPredicates:0];
  v3.receiver = self;
  v3.super_class = MPPCompoundPredicate;
  [(MPPCompoundPredicate *)&v3 dealloc];
}

@end