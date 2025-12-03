@interface ABCPbSummarySubmitRequest
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSigRequest:(id)request;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ABCPbSummarySubmitRequest

- (void)addSigRequest:(id)request
{
  requestCopy = request;
  sigRequests = self->_sigRequests;
  v8 = requestCopy;
  if (!sigRequests)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_sigRequests;
    self->_sigRequests = v6;

    requestCopy = v8;
    sigRequests = self->_sigRequests;
  }

  [(NSMutableArray *)sigRequests addObject:requestCopy];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ABCPbSummarySubmitRequest;
  v4 = [(ABCPbSummarySubmitRequest *)&v8 description];
  dictionaryRepresentation = [(ABCPbSummarySubmitRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_ver];
    [dictionary setObject:v4 forKey:@"ver"];
  }

  deviceModel = self->_deviceModel;
  if (deviceModel)
  {
    [dictionary setObject:deviceModel forKey:@"device_model"];
  }

  buildPlatform = self->_buildPlatform;
  if (buildPlatform)
  {
    [dictionary setObject:buildPlatform forKey:@"build_platform"];
  }

  deviceCategory = self->_deviceCategory;
  if (deviceCategory)
  {
    [dictionary setObject:deviceCategory forKey:@"device_Category"];
  }

  if ([(NSMutableArray *)self->_sigRequests count])
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_sigRequests, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = self->_sigRequests;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    [dictionary setObject:v8 forKey:@"sig_request"];
  }

  v15 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    ver = self->_ver;
    PBDataWriterWriteUint32Field();
  }

  if (self->_deviceModel)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_buildPlatform)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceCategory)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_sigRequests;
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

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[10] = self->_ver;
    *(toCopy + 44) |= 1u;
  }

  v9 = toCopy;
  if (self->_deviceModel)
  {
    [toCopy setDeviceModel:?];
  }

  if (self->_buildPlatform)
  {
    [v9 setBuildPlatform:?];
  }

  if (self->_deviceCategory)
  {
    [v9 setDeviceCategory:?];
  }

  if ([(ABCPbSummarySubmitRequest *)self sigRequestsCount])
  {
    [v9 clearSigRequests];
    sigRequestsCount = [(ABCPbSummarySubmitRequest *)self sigRequestsCount];
    if (sigRequestsCount)
    {
      v6 = sigRequestsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(ABCPbSummarySubmitRequest *)self sigRequestAtIndex:i];
        [v9 addSigRequest:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 40) = self->_ver;
    *(v5 + 44) |= 1u;
  }

  v7 = [(NSString *)self->_deviceModel copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSString *)self->_buildPlatform copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  v11 = [(NSString *)self->_deviceCategory copyWithZone:zone];
  v12 = v6[2];
  v6[2] = v11;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = self->_sigRequests;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v21 + 1) + 8 * v17) copyWithZone:{zone, v21}];
        [v6 addSigRequest:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(equalCopy + 44);
  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_ver != *(equalCopy + 10))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 44))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  deviceModel = self->_deviceModel;
  if (deviceModel | *(equalCopy + 3) && ![(NSString *)deviceModel isEqual:?])
  {
    goto LABEL_15;
  }

  buildPlatform = self->_buildPlatform;
  if (buildPlatform | *(equalCopy + 1))
  {
    if (![(NSString *)buildPlatform isEqual:?])
    {
      goto LABEL_15;
    }
  }

  deviceCategory = self->_deviceCategory;
  if (deviceCategory | *(equalCopy + 2))
  {
    if (![(NSString *)deviceCategory isEqual:?])
    {
      goto LABEL_15;
    }
  }

  sigRequests = self->_sigRequests;
  if (sigRequests | *(equalCopy + 4))
  {
    v10 = [(NSMutableArray *)sigRequests isEqual:?];
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
    v3 = 2654435761 * self->_ver;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_deviceModel hash]^ v3;
  v5 = [(NSString *)self->_buildPlatform hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_deviceCategory hash];
  return v6 ^ [(NSMutableArray *)self->_sigRequests hash];
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[11])
  {
    self->_ver = fromCopy[10];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    [(ABCPbSummarySubmitRequest *)self setDeviceModel:?];
  }

  if (*(v5 + 1))
  {
    [(ABCPbSummarySubmitRequest *)self setBuildPlatform:?];
  }

  if (*(v5 + 2))
  {
    [(ABCPbSummarySubmitRequest *)self setDeviceCategory:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(v5 + 4);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(ABCPbSummarySubmitRequest *)self addSigRequest:*(*(&v12 + 1) + 8 * i), v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end