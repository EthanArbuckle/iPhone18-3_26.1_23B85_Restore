@interface PDDPEESetupResponse
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addEndpoints:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPEESetupResponse

- (void)addEndpoints:(id)a3
{
  v4 = a3;
  endpoints = self->_endpoints;
  v8 = v4;
  if (!endpoints)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_endpoints;
    self->_endpoints = v6;

    v4 = v8;
    endpoints = self->_endpoints;
  }

  [(NSMutableArray *)endpoints addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPEESetupResponse;
  v3 = [(PDDPEESetupResponse *)&v7 description];
  v4 = [(PDDPEESetupResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  status = self->_status;
  if (status)
  {
    v5 = [(PDDPStatus *)status dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"status"];
  }

  userInfo = self->_userInfo;
  if (userInfo)
  {
    v7 = [(PDDPEEUserInfo *)userInfo dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"user_info"];
  }

  serviceConfig = self->_serviceConfig;
  if (serviceConfig)
  {
    v9 = [(PDDPEEServiceConfig *)serviceConfig dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"service_config"];
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

          v16 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:v16];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKey:@"endpoints"];
  }

  return v3;
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    do
    {
      if ([a3 hasError])
      {
        return [a3 hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v18) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v18 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [a3 hasError] ^ 1;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) > 2)
      {
        if (v14 == 3)
        {
          v15 = objc_alloc_init(PDDPEEServiceConfig);
          objc_storeStrong(&self->_serviceConfig, v15);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !sub_1000A0660(v15, a3))
          {
LABEL_38:

            return 0;
          }

          goto LABEL_35;
        }

        if (v14 == 4)
        {
          v15 = objc_alloc_init(PDDPEndpointConfig);
          [(PDDPEESetupResponse *)self addEndpoints:v15];
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !sub_1000747C4(v15, a3))
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
          if (!PBReaderPlaceMark() || !sub_1000E2FD8(v15, a3))
          {
            goto LABEL_38;
          }

          goto LABEL_35;
        }

        if (v14 == 2)
        {
          v15 = objc_alloc_init(PDDPEEUserInfo);
          objc_storeStrong(&self->_userInfo, v15);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !sub_100118928(v15, a3))
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
      v16 = [a3 position];
    }

    while (v16 < [a3 length]);
  }

  return [a3 hasError] ^ 1;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_status)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_userInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_serviceConfig)
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

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_status)
  {
    [v8 setStatus:?];
  }

  if (self->_userInfo)
  {
    [v8 setUserInfo:?];
  }

  if (self->_serviceConfig)
  {
    [v8 setServiceConfig:?];
  }

  if ([(PDDPEESetupResponse *)self endpointsCount])
  {
    [v8 clearEndpoints];
    v4 = [(PDDPEESetupResponse *)self endpointsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PDDPEESetupResponse *)self endpointsAtIndex:i];
        [v8 addEndpoints:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PDDPStatus *)self->_status copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(PDDPEEUserInfo *)self->_userInfo copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(PDDPEEServiceConfig *)self->_serviceConfig copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

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

        v17 = [*(*(&v19 + 1) + 8 * v16) copyWithZone:{a3, v19}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((status = self->_status, !(status | v4[3])) || -[PDDPStatus isEqual:](status, "isEqual:")) && ((userInfo = self->_userInfo, !(userInfo | v4[4])) || -[PDDPEEUserInfo isEqual:](userInfo, "isEqual:")) && ((serviceConfig = self->_serviceConfig, !(serviceConfig | v4[2])) || -[PDDPEEServiceConfig isEqual:](serviceConfig, "isEqual:")))
  {
    endpoints = self->_endpoints;
    if (endpoints | v4[1])
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
  v4 = [(PDDPEEUserInfo *)self->_userInfo hash]^ v3;
  v5 = [(PDDPEEServiceConfig *)self->_serviceConfig hash];
  return v4 ^ v5 ^ [(NSMutableArray *)self->_endpoints hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  status = self->_status;
  v6 = *(v4 + 3);
  if (status)
  {
    if (v6)
    {
      [(PDDPStatus *)status mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PDDPEESetupResponse *)self setStatus:?];
  }

  userInfo = self->_userInfo;
  v8 = *(v4 + 4);
  if (userInfo)
  {
    if (v8)
    {
      [(PDDPEEUserInfo *)userInfo mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PDDPEESetupResponse *)self setUserInfo:?];
  }

  serviceConfig = self->_serviceConfig;
  v10 = *(v4 + 2);
  if (serviceConfig)
  {
    if (v10)
    {
      [(PDDPEEServiceConfig *)serviceConfig mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(PDDPEESetupResponse *)self setServiceConfig:?];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = *(v4 + 1);
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

        [(PDDPEESetupResponse *)self addEndpoints:*(*(&v16 + 1) + 8 * i), v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

@end