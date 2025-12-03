@interface NWPBPath
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation NWPBPath

- (unint64_t)hash
{
  v3 = [(NWPBEndpoint *)self->_endpoint hash];
  v4 = [(NWPBParameters *)self->_parameters hash];
  v5 = [(NSString *)self->_clientUUID hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_status;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NWPBInterface *)self->_directInterface hash];
  v8 = [(NWPBInterface *)self->_delegateInterface hash];
  v9 = [(NSMutableArray *)self->_agents hash];
  if ((*&self->_has & 4) != 0)
  {
    v10 = 2654435761 * self->_ipv4;
    if ((*&self->_has & 8) != 0)
    {
LABEL_6:
      v11 = 2654435761 * self->_ipv6;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      v12 = 0;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      v13 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
    }
  }

  else
  {
    v10 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }
  }

  v11 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v12 = 2654435761 * self->_local;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v13 = 2654435761 * self->_direct;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_49;
  }

  endpoint = self->_endpoint;
  if (endpoint | *(equalCopy + 5))
  {
    if (![(NWPBEndpoint *)endpoint isEqual:?])
    {
      goto LABEL_49;
    }
  }

  parameters = self->_parameters;
  if (parameters | *(equalCopy + 6))
  {
    if (![(NWPBParameters *)parameters isEqual:?])
    {
      goto LABEL_49;
    }
  }

  clientUUID = self->_clientUUID;
  if (clientUUID | *(equalCopy + 2))
  {
    if (![(NSString *)clientUUID isEqual:?])
    {
      goto LABEL_49;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_status != *(equalCopy + 14))
    {
      goto LABEL_49;
    }
  }

  else if (*(equalCopy + 64))
  {
    goto LABEL_49;
  }

  directInterface = self->_directInterface;
  if (directInterface | *(equalCopy + 4) && ![(NWPBInterface *)directInterface isEqual:?])
  {
    goto LABEL_49;
  }

  delegateInterface = self->_delegateInterface;
  if (delegateInterface | *(equalCopy + 3))
  {
    if (![(NWPBInterface *)delegateInterface isEqual:?])
    {
      goto LABEL_49;
    }
  }

  agents = self->_agents;
  if (agents | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)agents isEqual:?])
    {
      goto LABEL_49;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 64) & 4) == 0)
    {
      goto LABEL_49;
    }

    if (self->_ipv4)
    {
      if ((*(equalCopy + 61) & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else if (*(equalCopy + 61))
    {
      goto LABEL_49;
    }
  }

  else if ((*(equalCopy + 64) & 4) != 0)
  {
    goto LABEL_49;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 64) & 8) == 0)
    {
      goto LABEL_49;
    }

    if (self->_ipv6)
    {
      if ((*(equalCopy + 62) & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else if (*(equalCopy + 62))
    {
      goto LABEL_49;
    }
  }

  else if ((*(equalCopy + 64) & 8) != 0)
  {
    goto LABEL_49;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 64) & 0x10) == 0)
    {
      goto LABEL_49;
    }

    if (self->_local)
    {
      if ((*(equalCopy + 63) & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else if (*(equalCopy + 63))
    {
      goto LABEL_49;
    }
  }

  else if ((*(equalCopy + 64) & 0x10) != 0)
  {
    goto LABEL_49;
  }

  v11 = (*(equalCopy + 64) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 64) & 2) != 0)
    {
      if (self->_direct)
      {
        if (*(equalCopy + 60))
        {
          goto LABEL_51;
        }
      }

      else if (!*(equalCopy + 60))
      {
LABEL_51:
        v11 = 1;
        goto LABEL_50;
      }
    }

LABEL_49:
    v11 = 0;
  }

LABEL_50:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NWPBEndpoint *)self->_endpoint copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NWPBParameters *)self->_parameters copyWithZone:zone];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  v10 = [(NSString *)self->_clientUUID copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  if (*&self->_has)
  {
    *(v5 + 56) = self->_status;
    *(v5 + 64) |= 1u;
  }

  v12 = [(NWPBInterface *)self->_directInterface copyWithZone:zone];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  v14 = [(NWPBInterface *)self->_delegateInterface copyWithZone:zone];
  v15 = *(v5 + 24);
  *(v5 + 24) = v14;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = self->_agents;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v27 + 1) + 8 * i) copyWithZone:zone];
        v22 = *(v5 + 8);
        if (!v22)
        {
          v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v24 = *(v5 + 8);
          *(v5 + 8) = v23;

          v22 = *(v5 + 8);
        }

        [v22 addObject:v21];
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v18);
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 61) = self->_ipv4;
    *(v5 + 64) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_14:
      if ((has & 0x10) == 0)
      {
        goto LABEL_15;
      }

LABEL_20:
      *(v5 + 63) = self->_local;
      *(v5 + 64) |= 0x10u;
      if ((*&self->_has & 2) == 0)
      {
        return v5;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_14;
  }

  *(v5 + 62) = self->_ipv6;
  *(v5 + 64) |= 8u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  if ((has & 2) != 0)
  {
LABEL_16:
    *(v5 + 60) = self->_direct;
    *(v5 + 64) |= 2u;
  }

  return v5;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_endpoint)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_parameters)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_clientUUID)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_directInterface)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_delegateInterface)
  {
    PBDataWriterWriteSubmessage();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_agents;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_22:
      if ((has & 0x10) == 0)
      {
        goto LABEL_23;
      }

LABEL_28:
      PBDataWriterWriteBOOLField();
      if ((*&self->_has & 2) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_22;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_28;
  }

LABEL_23:
  if ((has & 2) != 0)
  {
LABEL_24:
    PBDataWriterWriteBOOLField();
  }

LABEL_25:
}

- (id)dictionaryRepresentation
{
  v33 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  endpoint = self->_endpoint;
  if (endpoint)
  {
    dictionaryRepresentation = [(NWPBEndpoint *)endpoint dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"endpoint"];
  }

  parameters = self->_parameters;
  if (parameters)
  {
    dictionaryRepresentation2 = [(NWPBParameters *)parameters dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"parameters"];
  }

  clientUUID = self->_clientUUID;
  if (clientUUID)
  {
    [dictionary setObject:clientUUID forKey:@"clientUUID"];
  }

  if (*&self->_has)
  {
    status = self->_status;
    if (status >= 4)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_status];
    }

    else
    {
      v10 = off_1E6A39D40[status];
    }

    [dictionary setObject:v10 forKey:@"status"];
  }

  directInterface = self->_directInterface;
  if (directInterface)
  {
    dictionaryRepresentation3 = [(NWPBInterface *)directInterface dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"directInterface"];
  }

  delegateInterface = self->_delegateInterface;
  if (delegateInterface)
  {
    dictionaryRepresentation4 = [(NWPBInterface *)delegateInterface dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"delegateInterface"];
  }

  if ([(NSMutableArray *)self->_agents count])
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_agents, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = self->_agents;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v16);
          }

          dictionaryRepresentation5 = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          [v15 addObject:dictionaryRepresentation5];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v18);
    }

    [dictionary setObject:v15 forKey:@"agents"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithBool:self->_ipv4];
    [dictionary setObject:v25 forKey:@"ipv4"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_27:
      if ((has & 0x10) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_35;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_27;
  }

  v26 = [MEMORY[0x1E696AD98] numberWithBool:self->_ipv6];
  [dictionary setObject:v26 forKey:@"ipv6"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_28:
    if ((has & 2) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_35:
  v27 = [MEMORY[0x1E696AD98] numberWithBool:self->_local];
  [dictionary setObject:v27 forKey:@"local"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_29:
    v23 = [MEMORY[0x1E696AD98] numberWithBool:self->_direct];
    [dictionary setObject:v23 forKey:@"direct"];
  }

LABEL_30:

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NWPBPath;
  v4 = [(NWPBPath *)&v8 description];
  dictionaryRepresentation = [(NWPBPath *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end