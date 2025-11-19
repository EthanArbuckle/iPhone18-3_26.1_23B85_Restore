@interface HMAccessoryInfoProtoWifiNetworkInfoEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasRequiresPassword:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMAccessoryInfoProtoWifiNetworkInfoEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 1))
  {
    [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)self setMacAddress:?];
    v4 = v6;
  }

  if (*(v4 + 6))
  {
    [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)self setNetworkSSID:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)self setNetworkGatewayIPAddress:?];
    v4 = v6;
  }

  if (*(v4 + 2))
  {
    [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)self setNetworkBSSID:?];
    v4 = v6;
  }

  if (*(v4 + 4))
  {
    [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)self setNetworkGatewayMacAddress:?];
    v4 = v6;
  }

  v5 = *(v4 + 60);
  if (v5)
  {
    self->_networkRSSI = *(v4 + 10);
    *&self->_has |= 1u;
    v5 = *(v4 + 60);
  }

  if ((v5 & 2) != 0)
  {
    self->_requiresPassword = *(v4 + 56);
    *&self->_has |= 2u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_macAddress hash];
  v4 = [(NSString *)self->_networkSSID hash];
  v5 = [(NSString *)self->_networkGatewayIPAddress hash];
  v6 = [(NSString *)self->_networkBSSID hash];
  v7 = [(NSString *)self->_networkGatewayMacAddress hash];
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_networkRSSI;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

  v8 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = 2654435761 * self->_requiresPassword;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  macAddress = self->_macAddress;
  if (macAddress | *(v4 + 1))
  {
    if (![(NSString *)macAddress isEqual:?])
    {
      goto LABEL_19;
    }
  }

  networkSSID = self->_networkSSID;
  if (networkSSID | *(v4 + 6))
  {
    if (![(NSString *)networkSSID isEqual:?])
    {
      goto LABEL_19;
    }
  }

  networkGatewayIPAddress = self->_networkGatewayIPAddress;
  if (networkGatewayIPAddress | *(v4 + 3))
  {
    if (![(NSString *)networkGatewayIPAddress isEqual:?])
    {
      goto LABEL_19;
    }
  }

  networkBSSID = self->_networkBSSID;
  if (networkBSSID | *(v4 + 2))
  {
    if (![(NSString *)networkBSSID isEqual:?])
    {
      goto LABEL_19;
    }
  }

  networkGatewayMacAddress = self->_networkGatewayMacAddress;
  if (networkGatewayMacAddress | *(v4 + 4))
  {
    if (![(NSString *)networkGatewayMacAddress isEqual:?])
    {
      goto LABEL_19;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 60) & 1) == 0 || self->_networkRSSI != *(v4 + 10))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 60))
  {
    goto LABEL_19;
  }

  v10 = (*(v4 + 60) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 60) & 2) == 0)
    {
LABEL_19:
      v10 = 0;
      goto LABEL_20;
    }

    if (self->_requiresPassword)
    {
      if ((*(v4 + 56) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(v4 + 56))
    {
      goto LABEL_19;
    }

    v10 = 1;
  }

LABEL_20:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_macAddress copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_networkSSID copyWithZone:a3];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  v10 = [(NSString *)self->_networkGatewayIPAddress copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(NSString *)self->_networkBSSID copyWithZone:a3];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v14 = [(NSString *)self->_networkGatewayMacAddress copyWithZone:a3];
  v15 = *(v5 + 32);
  *(v5 + 32) = v14;

  has = self->_has;
  if (has)
  {
    *(v5 + 40) = self->_networkRSSI;
    *(v5 + 60) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 56) = self->_requiresPassword;
    *(v5 + 60) |= 2u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_macAddress)
  {
    [v4 setMacAddress:?];
    v4 = v6;
  }

  if (self->_networkSSID)
  {
    [v6 setNetworkSSID:?];
    v4 = v6;
  }

  if (self->_networkGatewayIPAddress)
  {
    [v6 setNetworkGatewayIPAddress:?];
    v4 = v6;
  }

  if (self->_networkBSSID)
  {
    [v6 setNetworkBSSID:?];
    v4 = v6;
  }

  if (self->_networkGatewayMacAddress)
  {
    [v6 setNetworkGatewayMacAddress:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 10) = self->_networkRSSI;
    *(v4 + 60) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 56) = self->_requiresPassword;
    *(v4 + 60) |= 2u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_macAddress)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_networkSSID)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_networkGatewayIPAddress)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_networkBSSID)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_networkGatewayMacAddress)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    networkRSSI = self->_networkRSSI;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    requiresPassword = self->_requiresPassword;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  macAddress = self->_macAddress;
  if (macAddress)
  {
    [v3 setObject:macAddress forKey:@"macAddress"];
  }

  networkSSID = self->_networkSSID;
  if (networkSSID)
  {
    [v4 setObject:networkSSID forKey:@"networkSSID"];
  }

  networkGatewayIPAddress = self->_networkGatewayIPAddress;
  if (networkGatewayIPAddress)
  {
    [v4 setObject:networkGatewayIPAddress forKey:@"networkGatewayIPAddress"];
  }

  networkBSSID = self->_networkBSSID;
  if (networkBSSID)
  {
    [v4 setObject:networkBSSID forKey:@"networkBSSID"];
  }

  networkGatewayMacAddress = self->_networkGatewayMacAddress;
  if (networkGatewayMacAddress)
  {
    [v4 setObject:networkGatewayMacAddress forKey:@"networkGatewayMacAddress"];
  }

  has = self->_has;
  if (has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInt:self->_networkRSSI];
    [v4 setObject:v11 forKey:@"networkRSSI"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_requiresPassword];
    [v4 setObject:v12 forKey:@"requiresPassword"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMAccessoryInfoProtoWifiNetworkInfoEvent;
  v4 = [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)&v8 description];
  v5 = [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasRequiresPassword:(BOOL)a3
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