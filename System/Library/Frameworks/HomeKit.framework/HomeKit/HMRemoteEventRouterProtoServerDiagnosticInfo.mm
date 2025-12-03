@interface HMRemoteEventRouterProtoServerDiagnosticInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsConnectionState:(id)state;
- (int)StringAsMode:(id)mode;
- (int)connectionState;
- (int)mode;
- (unint64_t)hash;
- (void)addConnectedClients:(id)clients;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasConnectionState:(BOOL)state;
- (void)setHasMode:(BOOL)mode;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation HMRemoteEventRouterProtoServerDiagnosticInfo

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 40);
  if ((v6 & 2) != 0)
  {
    self->_version = *(fromCopy + 2);
    *&self->_has |= 2u;
    v6 = *(fromCopy + 40);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(fromCopy + 40) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_mode = *(fromCopy + 9);
  *&self->_has |= 8u;
  v6 = *(fromCopy + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  self->_connectionState = *(fromCopy + 8);
  *&self->_has |= 4u;
  if (*(fromCopy + 40))
  {
LABEL_5:
    self->_lastConnected = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_6:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(fromCopy + 3);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(HMRemoteEventRouterProtoServerDiagnosticInfo *)self addConnectedClients:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761u * self->_version;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v9 = 2654435761 * self->_mode;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v10 = 0;
      if (*&self->_has)
      {
        goto LABEL_5;
      }

LABEL_12:
      v14 = 0;
      return v9 ^ v8 ^ v10 ^ v14 ^ [(NSMutableArray *)self->_connectedClients hash:v3];
    }
  }

  else
  {
    v8 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v10 = 2654435761 * self->_connectionState;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  lastConnected = self->_lastConnected;
  if (lastConnected < 0.0)
  {
    lastConnected = -lastConnected;
  }

  *v6.i64 = floor(lastConnected + 0.5);
  v12 = (lastConnected - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v14 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v7, v6).i64;
  if (v12 >= 0.0)
  {
    if (v12 > 0.0)
    {
      v14 += v12;
    }
  }

  else
  {
    v14 -= fabs(v12);
  }

  return v9 ^ v8 ^ v10 ^ v14 ^ [(NSMutableArray *)self->_connectedClients hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  v5 = *(equalCopy + 40);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_version != *(equalCopy + 2))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
LABEL_24:
    v7 = 0;
    goto LABEL_25;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 40) & 8) == 0 || self->_mode != *(equalCopy + 9))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 40) & 8) != 0)
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0 || self->_connectionState != *(equalCopy + 8))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 40) & 4) != 0)
  {
    goto LABEL_24;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_lastConnected != *(equalCopy + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_24;
  }

  connectedClients = self->_connectedClients;
  if (connectedClients | *(equalCopy + 3))
  {
    v7 = [(NSMutableArray *)connectedClients isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_25:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_version;
    *(v5 + 40) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 36) = self->_mode;
  *(v5 + 40) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  *(v5 + 32) = self->_connectionState;
  *(v5 + 40) |= 4u;
  if (*&self->_has)
  {
LABEL_5:
    *(v5 + 8) = self->_lastConnected;
    *(v5 + 40) |= 1u;
  }

LABEL_6:
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_connectedClients;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) copyWithZone:{zone, v16}];
        [v6 addConnectedClients:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[2] = self->_version;
    *(toCopy + 40) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      *(toCopy + 8) = self->_connectionState;
      *(toCopy + 40) |= 4u;
      if ((*&self->_has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 9) = self->_mode;
  *(toCopy + 40) |= 8u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (has)
  {
LABEL_5:
    toCopy[1] = *&self->_lastConnected;
    *(toCopy + 40) |= 1u;
  }

LABEL_6:
  v10 = toCopy;
  if ([(HMRemoteEventRouterProtoServerDiagnosticInfo *)self connectedClientsCount])
  {
    [v10 clearConnectedClients];
    connectedClientsCount = [(HMRemoteEventRouterProtoServerDiagnosticInfo *)self connectedClientsCount];
    if (connectedClientsCount)
    {
      v7 = connectedClientsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(HMRemoteEventRouterProtoServerDiagnosticInfo *)self connectedClientsAtIndex:i];
        [v10 addConnectedClients:v9];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v22 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  mode = self->_mode;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  connectionState = self->_connectionState;
  PBDataWriterWriteInt32Field();
  if (*&self->_has)
  {
LABEL_5:
    lastConnected = self->_lastConnected;
    PBDataWriterWriteDoubleField();
  }

LABEL_6:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_connectedClients;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_version];
    [dictionary setObject:v15 forKey:@"version"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  mode = self->_mode;
  if (mode >= 3)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_mode];
  }

  else
  {
    v17 = off_1E754B9D0[mode];
  }

  [dictionary setObject:v17 forKey:@"mode"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_23:
  connectionState = self->_connectionState;
  if (connectionState >= 3)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_connectionState];
  }

  else
  {
    v19 = off_1E754B9E8[connectionState];
  }

  [dictionary setObject:v19 forKey:@"connectionState"];

  if (*&self->_has)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_lastConnected];
    [dictionary setObject:v5 forKey:@"lastConnected"];
  }

LABEL_6:
  if ([(NSMutableArray *)self->_connectedClients count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_connectedClients, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = self->_connectedClients;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"connectedClients"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMRemoteEventRouterProtoServerDiagnosticInfo;
  v4 = [(HMRemoteEventRouterProtoServerDiagnosticInfo *)&v8 description];
  dictionaryRepresentation = [(HMRemoteEventRouterProtoServerDiagnosticInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addConnectedClients:(id)clients
{
  clientsCopy = clients;
  connectedClients = self->_connectedClients;
  v8 = clientsCopy;
  if (!connectedClients)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_connectedClients;
    self->_connectedClients = v6;

    clientsCopy = v8;
    connectedClients = self->_connectedClients;
  }

  [(NSMutableArray *)connectedClients addObject:clientsCopy];
}

- (int)StringAsConnectionState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"Connected"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"Disconnected"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasConnectionState:(BOOL)state
{
  if (state)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)connectionState
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_connectionState;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"Primary"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"Resident"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)mode
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_mode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end