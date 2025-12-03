@interface MPPSearchStringPredicate
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addProperties:(id)properties;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)writeTo:(id)to;
@end

@implementation MPPSearchStringPredicate

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((searchString = self->_searchString, !(searchString | equalCopy[2])) || -[NSString isEqual:](searchString, "isEqual:")))
  {
    properties = self->_properties;
    if (properties | equalCopy[1])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_searchString copyWithZone:zone];
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

        v13 = [*(*(&v15 + 1) + 8 * v12) copyWithZone:{zone, v15}];
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(MPPSearchStringPredicate *)self hasSearchString])
  {
    searchString = [(MPPSearchStringPredicate *)self searchString];
    [toCopy setSearchString:searchString];
  }

  if ([(MPPSearchStringPredicate *)self propertiesCount])
  {
    [toCopy clearProperties];
    propertiesCount = [(MPPSearchStringPredicate *)self propertiesCount];
    if (propertiesCount)
    {
      v6 = propertiesCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(MPPSearchStringPredicate *)self propertiesAtIndex:i];
        [toCopy addProperties:v8];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v5 = toCopy;
  searchString = self->_searchString;
  if (searchString)
  {
    [toCopy writeString:searchString forTag:1];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  searchString = self->_searchString;
  if (searchString)
  {
    [dictionary setObject:searchString forKey:@"searchString"];
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
  dictionaryRepresentation = [(MPPSearchStringPredicate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addProperties:(id)properties
{
  propertiesCopy = properties;
  properties = self->_properties;
  v8 = propertiesCopy;
  if (!properties)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_properties;
    self->_properties = v6;

    propertiesCopy = v8;
    properties = self->_properties;
  }

  [(NSMutableArray *)properties addObject:propertiesCopy];
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