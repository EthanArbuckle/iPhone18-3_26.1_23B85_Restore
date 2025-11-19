@interface MPPSearchStringPredicate
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addProperties:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)writeTo:(id)a3;
@end

@implementation MPPSearchStringPredicate

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((searchString = self->_searchString, !(searchString | v4[2])) || -[NSString isEqual:](searchString, "isEqual:")))
  {
    properties = self->_properties;
    if (properties | v4[1])
    {
      v7 = [(NSMutableArray *)properties isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_searchString copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_properties;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) copyWithZone:{a3, v15}];
        [v5 addProperties:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  if ([(MPPSearchStringPredicate *)self hasSearchString])
  {
    v4 = [(MPPSearchStringPredicate *)self searchString];
    [v9 setSearchString:v4];
  }

  if ([(MPPSearchStringPredicate *)self propertiesCount])
  {
    [v9 clearProperties];
    v5 = [(MPPSearchStringPredicate *)self propertiesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(MPPSearchStringPredicate *)self propertiesAtIndex:i];
        [v9 addProperties:v8];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  searchString = self->_searchString;
  if (searchString)
  {
    [v4 writeString:searchString forTag:1];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_properties;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v5 writeString:*(*(&v12 + 1) + 8 * i) forTag:{2, v12}];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  searchString = self->_searchString;
  if (searchString)
  {
    [v3 setObject:searchString forKey:@"searchString"];
  }

  properties = self->_properties;
  if (properties)
  {
    [v4 setObject:properties forKey:@"properties"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MPPSearchStringPredicate;
  v4 = [(MPPSearchStringPredicate *)&v8 description];
  v5 = [(MPPSearchStringPredicate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addProperties:(id)a3
{
  v4 = a3;
  properties = self->_properties;
  v8 = v4;
  if (!properties)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_properties;
    self->_properties = v6;

    v4 = v8;
    properties = self->_properties;
  }

  [(NSMutableArray *)properties addObject:v4];
}

- (void)dealloc
{
  [(MPPSearchStringPredicate *)self setSearchString:0];
  [(MPPSearchStringPredicate *)self setProperties:0];
  v3.receiver = self;
  v3.super_class = MPPSearchStringPredicate;
  [(MPPSearchStringPredicate *)&v3 dealloc];
}

@end