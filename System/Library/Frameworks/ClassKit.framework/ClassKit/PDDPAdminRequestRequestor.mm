@interface PDDPAdminRequestRequestor
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsState:(id)state;
- (int)state;
- (unint64_t)hash;
- (void)addServerRequestHeaders:(id)headers;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPAdminRequestRequestor

- (int)state
{
  if (*&self->_has)
  {
    return self->_state;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"UNKNOWN_VERIFICATION_STATE"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"UNVERIFIED"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"EMAIL_VERIFICATION_SENT"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"EMAIL_VERIFICATION_FAILED"])
  {
    v4 = 3;
  }

  else if ([stateCopy isEqualToString:@"EMAIL_VERIFIED"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addServerRequestHeaders:(id)headers
{
  headersCopy = headers;
  serverRequestHeaders = self->_serverRequestHeaders;
  v8 = headersCopy;
  if (!serverRequestHeaders)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_serverRequestHeaders;
    self->_serverRequestHeaders = v6;

    headersCopy = v8;
    serverRequestHeaders = self->_serverRequestHeaders;
  }

  [(NSMutableArray *)serverRequestHeaders addObject:headersCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPAdminRequestRequestor;
  v3 = [(PDDPAdminRequestRequestor *)&v7 description];
  dictionaryRepresentation = [(PDDPAdminRequestRequestor *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    state = self->_state;
    if (state >= 5)
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_state];
    }

    else
    {
      v5 = *(&off_100204468 + state);
    }

    [v3 setObject:v5 forKey:@"state"];
  }

  email = self->_email;
  if (email)
  {
    [v3 setObject:email forKey:@"email"];
  }

  verificationCode = self->_verificationCode;
  if (verificationCode)
  {
    [v3 setObject:verificationCode forKey:@"verification_code"];
  }

  note = self->_note;
  if (note)
  {
    [v3 setObject:note forKey:@"note"];
  }

  if ([(NSMutableArray *)self->_serverRequestHeaders count])
  {
    v9 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_serverRequestHeaders, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = self->_serverRequestHeaders;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:dictionaryRepresentation];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    [v3 setObject:v9 forKey:@"server_request_headers"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    state = self->_state;
    PBDataWriterWriteInt32Field();
  }

  if (self->_email)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_verificationCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_note)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_serverRequestHeaders;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[8] = self->_state;
    *(toCopy + 48) |= 1u;
  }

  v9 = toCopy;
  if (self->_email)
  {
    [toCopy setEmail:?];
  }

  if (self->_verificationCode)
  {
    [v9 setVerificationCode:?];
  }

  if (self->_note)
  {
    [v9 setNote:?];
  }

  if ([(PDDPAdminRequestRequestor *)self serverRequestHeadersCount])
  {
    [v9 clearServerRequestHeaders];
    serverRequestHeadersCount = [(PDDPAdminRequestRequestor *)self serverRequestHeadersCount];
    if (serverRequestHeadersCount)
    {
      v6 = serverRequestHeadersCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(PDDPAdminRequestRequestor *)self serverRequestHeadersAtIndex:i];
        [v9 addServerRequestHeaders:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_state;
    *(v5 + 48) |= 1u;
  }

  v7 = [(NSString *)self->_email copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSString *)self->_verificationCode copyWithZone:zone];
  v10 = v6[5];
  v6[5] = v9;

  v11 = [(NSString *)self->_note copyWithZone:zone];
  v12 = v6[2];
  v6[2] = v11;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = self->_serverRequestHeaders;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v20 + 1) + 8 * i) copyWithZone:{zone, v20}];
        [v6 addServerRequestHeaders:v18];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_state != *(equalCopy + 8))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  email = self->_email;
  if (email | *(equalCopy + 1) && ![(NSString *)email isEqual:?])
  {
    goto LABEL_15;
  }

  verificationCode = self->_verificationCode;
  if (verificationCode | *(equalCopy + 5))
  {
    if (![(NSString *)verificationCode isEqual:?])
    {
      goto LABEL_15;
    }
  }

  note = self->_note;
  if (note | *(equalCopy + 2))
  {
    if (![(NSString *)note isEqual:?])
    {
      goto LABEL_15;
    }
  }

  serverRequestHeaders = self->_serverRequestHeaders;
  if (serverRequestHeaders | *(equalCopy + 3))
  {
    v10 = [(NSMutableArray *)serverRequestHeaders isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_16:

  return v10;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_state;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_email hash]^ v3;
  v5 = [(NSString *)self->_verificationCode hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_note hash];
  return v6 ^ [(NSMutableArray *)self->_serverRequestHeaders hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[12])
  {
    self->_state = fromCopy[8];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    [(PDDPAdminRequestRequestor *)self setEmail:?];
  }

  if (*(v5 + 5))
  {
    [(PDDPAdminRequestRequestor *)self setVerificationCode:?];
  }

  if (*(v5 + 2))
  {
    [(PDDPAdminRequestRequestor *)self setNote:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(v5 + 3);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(PDDPAdminRequestRequestor *)self addServerRequestHeaders:*(*(&v11 + 1) + 8 * i), v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end