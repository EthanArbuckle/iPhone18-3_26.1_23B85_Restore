@interface _ADPBDeviceStringKeyValueDictionary
+ (id)_ad_keyValueDictionaryWithDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)_ad_dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addPairs:(id)pairs;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _ADPBDeviceStringKeyValueDictionary

- (void)mergeFrom:(id)from
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(from + 1);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(_ADPBDeviceStringKeyValueDictionary *)self addPairs:*(*(&v9 + 1) + 8 * v8), v9];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_pairs;
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
        [v5 addPairs:v11];

        v10 = v10 + 1;
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
  if ([(_ADPBDeviceStringKeyValueDictionary *)self pairsCount])
  {
    [toCopy clearPairs];
    pairsCount = [(_ADPBDeviceStringKeyValueDictionary *)self pairsCount];
    if (pairsCount)
    {
      v5 = pairsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(_ADPBDeviceStringKeyValueDictionary *)self pairsAtIndex:i];
        [toCopy addPairs:v7];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_pairs;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ([(NSMutableArray *)self->_pairs count])
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_pairs, "count")}];
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
        for (i = 0; i != v7; i = i + 1)
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

    [v3 setObject:v4 forKey:@"pairs"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = _ADPBDeviceStringKeyValueDictionary;
  v3 = [(_ADPBDeviceStringKeyValueDictionary *)&v7 description];
  dictionaryRepresentation = [(_ADPBDeviceStringKeyValueDictionary *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)addPairs:(id)pairs
{
  pairsCopy = pairs;
  pairs = self->_pairs;
  v8 = pairsCopy;
  if (!pairs)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_pairs;
    self->_pairs = v6;

    pairsCopy = v8;
    pairs = self->_pairs;
  }

  [(NSMutableArray *)pairs addObject:pairsCopy];
}

- (id)_ad_dictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  pairs = [(_ADPBDeviceStringKeyValueDictionary *)self pairs];
  v5 = [pairs countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(pairs);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        value = [v9 value];
        if (value)
        {
          v11 = value;
          v12 = [v9 key];

          if (v12)
          {
            value2 = [v9 value];
            v14 = [v9 key];
            [v3 setValue:value2 forKey:v14];
          }
        }
      }

      v6 = [pairs countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v15 = [v3 copy];

  return v15;
}

+ (id)_ad_keyValueDictionaryWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v4 = objc_alloc_init(_ADPBDeviceStringKeyValueDictionary);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = dictionaryCopy;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = objc_alloc_init(_ADPBDeviceStringKeyValuePair);
          [(_ADPBDeviceStringKeyValuePair *)v11 setKey:v10, v14];
          v12 = [v5 objectForKey:v10];
          [(_ADPBDeviceStringKeyValuePair *)v11 setValue:v12];

          [(_ADPBDeviceStringKeyValueDictionary *)v4 addPairs:v11];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end