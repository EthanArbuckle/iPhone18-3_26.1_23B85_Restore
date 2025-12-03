@interface PDDPBootstrapResponse
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addEndpoints:(id)endpoints;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPBootstrapResponse

- (void)addEndpoints:(id)endpoints
{
  endpointsCopy = endpoints;
  endpoints = self->_endpoints;
  v8 = endpointsCopy;
  if (!endpoints)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_endpoints;
    self->_endpoints = v6;

    endpointsCopy = v8;
    endpoints = self->_endpoints;
  }

  [(NSMutableArray *)endpoints addObject:endpointsCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPBootstrapResponse;
  v3 = [(PDDPBootstrapResponse *)&v7 description];
  dictionaryRepresentation = [(PDDPBootstrapResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  status = self->_status;
  if (status)
  {
    dictionaryRepresentation = [(PDDPStatus *)status dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"status"];
  }

  userInfo = self->_userInfo;
  if (userInfo)
  {
    dictionaryRepresentation2 = [(PDDPUserInfo *)userInfo dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"user_info"];
  }

  clientConfig = self->_clientConfig;
  if (clientConfig)
  {
    dictionaryRepresentation3 = [(PDDPClientConfig *)clientConfig dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKey:@"client_config"];
  }

  if ([(NSMutableArray *)self->_endpoints count])
  {
    v10 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_endpoints, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = self->_endpoints;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation4 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation4];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKey:@"endpoints"];
  }

  return v3;
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    do
    {
      if ([from hasError])
      {
        return [from hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v18) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v18 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v18 & 0x7F) << v6;
        if ((v18 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        if (v7++ >= 9)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [from hasError] ^ 1;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) > 2)
      {
        if (v14 == 3)
        {
          v15 = objc_alloc_init(PDDPClientConfig);
          objc_storeStrong(&self->_clientConfig, v15);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !sub_100021970(v15, from))
          {
LABEL_38:

            return 0;
          }

          goto LABEL_35;
        }

        if (v14 == 4)
        {
          v15 = objc_alloc_init(PDDPEndpointConfig);
          [(PDDPBootstrapResponse *)self addEndpoints:v15];
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !sub_1000747C4(v15, from))
          {
            goto LABEL_38;
          }

          goto LABEL_35;
        }
      }

      else
      {
        if (v14 == 1)
        {
          v15 = objc_alloc_init(PDDPStatus);
          objc_storeStrong(&self->_status, v15);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !sub_1000E2FD8(v15, from))
          {
            goto LABEL_38;
          }

          goto LABEL_35;
        }

        if (v14 == 2)
        {
          v15 = objc_alloc_init(PDDPUserInfo);
          objc_storeStrong(&self->_userInfo, v15);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !sub_1000A6D88(v15, from))
          {
            goto LABEL_38;
          }

LABEL_35:
          PBReaderRecallMark();

          goto LABEL_36;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_36:
      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  return [from hasError] ^ 1;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_status)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_userInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_clientConfig)
  {
    PBDataWriterWriteSubmessage();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_endpoints;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_status)
  {
    [toCopy setStatus:?];
  }

  if (self->_userInfo)
  {
    [toCopy setUserInfo:?];
  }

  if (self->_clientConfig)
  {
    [toCopy setClientConfig:?];
  }

  if ([(PDDPBootstrapResponse *)self endpointsCount])
  {
    [toCopy clearEndpoints];
    endpointsCount = [(PDDPBootstrapResponse *)self endpointsCount];
    if (endpointsCount)
    {
      v5 = endpointsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PDDPBootstrapResponse *)self endpointsAtIndex:i];
        [toCopy addEndpoints:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PDDPStatus *)self->_status copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(PDDPUserInfo *)self->_userInfo copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(PDDPClientConfig *)self->_clientConfig copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_endpoints;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * v16) copyWithZone:{zone, v19}];
        [v5 addEndpoints:v17];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((status = self->_status, !(status | equalCopy[3])) || -[PDDPStatus isEqual:](status, "isEqual:")) && ((userInfo = self->_userInfo, !(userInfo | equalCopy[4])) || -[PDDPUserInfo isEqual:](userInfo, "isEqual:")) && ((clientConfig = self->_clientConfig, !(clientConfig | equalCopy[1])) || -[PDDPClientConfig isEqual:](clientConfig, "isEqual:")))
  {
    endpoints = self->_endpoints;
    if (endpoints | equalCopy[2])
    {
      v9 = [(NSMutableArray *)endpoints isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(PDDPStatus *)self->_status hash];
  v4 = [(PDDPUserInfo *)self->_userInfo hash]^ v3;
  v5 = [(PDDPClientConfig *)self->_clientConfig hash];
  return v4 ^ v5 ^ [(NSMutableArray *)self->_endpoints hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  status = self->_status;
  v6 = *(fromCopy + 3);
  if (status)
  {
    if (v6)
    {
      [(PDDPStatus *)status mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PDDPBootstrapResponse *)self setStatus:?];
  }

  userInfo = self->_userInfo;
  v8 = *(fromCopy + 4);
  if (userInfo)
  {
    if (v8)
    {
      [(PDDPUserInfo *)userInfo mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PDDPBootstrapResponse *)self setUserInfo:?];
  }

  clientConfig = self->_clientConfig;
  v10 = *(fromCopy + 1);
  if (clientConfig)
  {
    if (v10)
    {
      [(PDDPClientConfig *)clientConfig mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(PDDPBootstrapResponse *)self setClientConfig:?];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = *(fromCopy + 2);
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(PDDPBootstrapResponse *)self addEndpoints:*(*(&v16 + 1) + 8 * i), v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

@end