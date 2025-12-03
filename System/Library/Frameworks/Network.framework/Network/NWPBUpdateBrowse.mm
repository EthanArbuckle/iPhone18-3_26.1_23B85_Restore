@interface NWPBUpdateBrowse
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation NWPBUpdateBrowse

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((clientUUID = self->_clientUUID, !(clientUUID | equalCopy[1])) || -[NSString isEqual:](clientUUID, "isEqual:")))
  {
    discoveredEndpoints = self->_discoveredEndpoints;
    if (discoveredEndpoints | equalCopy[2])
    {
      v7 = [(NSMutableArray *)discoveredEndpoints isEqual:?];
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
  v23 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_clientUUID copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_discoveredEndpoints;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v18 + 1) + 8 * v12) copyWithZone:{zone, v18}];
        v14 = v5[2];
        if (!v14)
        {
          v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v16 = v5[2];
          v5[2] = v15;

          v14 = v5[2];
        }

        [v14 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  return v5;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_clientUUID)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_discoveredEndpoints;
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

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    while (1)
    {
      if ([from hasError])
      {
        return [from hasError] ^ 1;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v21[0]) = 0;
        v12 = [from position] + 1;
        if (v12 >= [from position] && (v13 = objc_msgSend(from, "position") + 1, v13 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:v21 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v11 |= (v21[0] & 0x7F) << v9;
        if ((v21[0] & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        if (v10++ >= 9)
        {
          v16 = 0;
          goto LABEL_19;
        }
      }

      v16 = [from hasError] ? 0 : v11;
LABEL_19:
      if (([from hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        return [from hasError] ^ 1;
      }

      if ((v16 >> 3) == 2)
      {
        break;
      }

      if ((v16 >> 3) == 1)
      {
        v6 = PBReaderReadString();
        clientUUID = self->_clientUUID;
        self->_clientUUID = v6;
LABEL_4:

        goto LABEL_5;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_5:
      position2 = [from position];
      if (position2 >= [from length])
      {
        return [from hasError] ^ 1;
      }
    }

    clientUUID = objc_alloc_init(NWPBEndpoint);
    if (self)
    {
      discoveredEndpoints = self->_discoveredEndpoints;
      if (!discoveredEndpoints)
      {
        v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v19 = self->_discoveredEndpoints;
        self->_discoveredEndpoints = v18;

        discoveredEndpoints = self->_discoveredEndpoints;
      }

      [(NSMutableArray *)discoveredEndpoints addObject:clientUUID];
    }

    v21[0] = 0;
    v21[1] = 0;
    if (!PBReaderPlaceMark() || !NWPBEndpointReadFrom(clientUUID, from))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_4;
  }

  return [from hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  clientUUID = self->_clientUUID;
  if (clientUUID)
  {
    [dictionary setObject:clientUUID forKey:@"clientUUID"];
  }

  if ([(NSMutableArray *)self->_discoveredEndpoints count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_discoveredEndpoints, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = self->_discoveredEndpoints;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"discoveredEndpoints"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NWPBUpdateBrowse;
  v4 = [(NWPBUpdateBrowse *)&v8 description];
  dictionaryRepresentation = [(NWPBUpdateBrowse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end