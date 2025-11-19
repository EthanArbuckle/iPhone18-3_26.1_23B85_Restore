@interface HMRemoteEventRouterProtoServerDiagnosticInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsConnectionState:(id)a3;
- (int)StringAsMode:(id)a3;
- (int)connectionState;
- (int)mode;
- (unint64_t)hash;
- (void)addConnectedClients:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasConnectionState:(BOOL)a3;
- (void)setHasMode:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMRemoteEventRouterProtoServerDiagnosticInfo

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 40);
  if ((v6 & 2) != 0)
  {
    self->_version = *(v4 + 2);
    *&self->_has |= 2u;
    v6 = *(v4 + 40);
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

  else if ((*(v4 + 40) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_mode = *(v4 + 9);
  *&self->_has |= 8u;
  v6 = *(v4 + 40);
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
  self->_connectionState = *(v4 + 8);
  *&self->_has |= 4u;
  if (*(v4 + 40))
  {
LABEL_5:
    self->_lastConnected = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_6:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(v4 + 3);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  v5 = *(v4 + 40);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_version != *(v4 + 2))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
LABEL_24:
    v7 = 0;
    goto LABEL_25;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 40) & 8) == 0 || self->_mode != *(v4 + 9))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 40) & 8) != 0)
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0 || self->_connectionState != *(v4 + 8))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 40) & 4) != 0)
  {
    goto LABEL_24;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_lastConnected != *(v4 + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_24;
  }

  connectedClients = self->_connectedClients;
  if (connectedClients | *(v4 + 3))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

        v13 = [*(*(&v16 + 1) + 8 * i) copyWithZone:{a3, v16}];
        [v6 addConnectedClients:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = self->_version;
    *(v4 + 40) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      *(v4 + 8) = self->_connectionState;
      *(v4 + 40) |= 4u;
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

  *(v4 + 9) = self->_mode;
  *(v4 + 40) |= 8u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (has)
  {
LABEL_5:
    v4[1] = *&self->_lastConnected;
    *(v4 + 40) |= 1u;
  }

LABEL_6:
  v10 = v4;
  if ([(HMRemoteEventRouterProtoServerDiagnosticInfo *)self connectedClientsCount])
  {
    [v10 clearConnectedClients];
    v6 = [(HMRemoteEventRouterProtoServerDiagnosticInfo *)self connectedClientsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(HMRemoteEventRouterProtoServerDiagnosticInfo *)self connectedClientsAtIndex:i];
        [v10 addConnectedClients:v9];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_version];
    [v3 setObject:v15 forKey:@"version"];

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

  [v3 setObject:v17 forKey:@"mode"];

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

  [v3 setObject:v19 forKey:@"connectionState"];

  if (*&self->_has)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_lastConnected];
    [v3 setObject:v5 forKey:@"lastConnected"];
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

          v12 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"connectedClients"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMRemoteEventRouterProtoServerDiagnosticInfo;
  v4 = [(HMRemoteEventRouterProtoServerDiagnosticInfo *)&v8 description];
  v5 = [(HMRemoteEventRouterProtoServerDiagnosticInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addConnectedClients:(id)a3
{
  v4 = a3;
  connectedClients = self->_connectedClients;
  v8 = v4;
  if (!connectedClients)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_connectedClients;
    self->_connectedClients = v6;

    v4 = v8;
    connectedClients = self->_connectedClients;
  }

  [(NSMutableArray *)connectedClients addObject:v4];
}

- (int)StringAsConnectionState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Connected"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Disconnected"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasConnectionState:(BOOL)a3
{
  if (a3)
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

- (int)StringAsMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Primary"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Resident"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasMode:(BOOL)a3
{
  if (a3)
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

- (void)setHasVersion:(BOOL)a3
{
  if (a3)
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