@interface ATXPBPredictionDeviceStateContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasOnWifi:(BOOL)wifi;
- (void)writeTo:(id)to;
@end

@implementation ATXPBPredictionDeviceStateContext

- (void)setHasOnWifi:(BOOL)wifi
{
  if (wifi)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXPBPredictionDeviceStateContext;
  v4 = [(ATXPBPredictionDeviceStateContext *)&v8 description];
  dictionaryRepresentation = [(ATXPBPredictionDeviceStateContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_onWifi];
    [dictionary setObject:v4 forKey:@"onWifi"];
  }

  wifiSSID = self->_wifiSSID;
  if (wifiSSID)
  {
    [dictionary setObject:wifiSSID forKey:@"wifiSSID"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_inAirplaneMode];
    [dictionary setObject:v6 forKey:@"inAirplaneMode"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    onWifi = self->_onWifi;
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }

  if (self->_wifiSSID)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    inAirplaneMode = self->_inAirplaneMode;
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[17] = self->_onWifi;
    toCopy[20] |= 2u;
  }

  if (self->_wifiSSID)
  {
    v5 = toCopy;
    [toCopy setWifiSSID:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[16] = self->_inAirplaneMode;
    toCopy[20] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 17) = self->_onWifi;
    *(v5 + 20) |= 2u;
  }

  v7 = [(NSString *)self->_wifiSSID copyWithZone:zone];
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  if (*&self->_has)
  {
    *(v6 + 16) = self->_inAirplaneMode;
    *(v6 + 20) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  has = self->_has;
  v6 = *(equalCopy + 20);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 20) & 2) == 0)
    {
      goto LABEL_13;
    }

    v10 = *(equalCopy + 17);
    if (self->_onWifi)
    {
      if ((*(equalCopy + 17) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (*(equalCopy + 17))
    {
      goto LABEL_13;
    }
  }

  else if ((*(equalCopy + 20) & 2) != 0)
  {
    goto LABEL_13;
  }

  wifiSSID = self->_wifiSSID;
  if (!(wifiSSID | *(equalCopy + 1)))
  {
    goto LABEL_7;
  }

  if (![(NSString *)wifiSSID isEqual:?])
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  has = self->_has;
LABEL_7:
  v8 = (*(equalCopy + 20) & 1) == 0;
  if (has)
  {
    if (*(equalCopy + 20))
    {
      if (self->_inAirplaneMode)
      {
        if (*(equalCopy + 16))
        {
          goto LABEL_21;
        }
      }

      else if (!*(equalCopy + 16))
      {
LABEL_21:
        v8 = 1;
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

LABEL_14:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_onWifi;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_wifiSSID hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_inAirplaneMode;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((fromCopy[20] & 2) != 0)
  {
    self->_onWifi = fromCopy[17];
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(ATXPBPredictionDeviceStateContext *)self setWifiSSID:?];
    fromCopy = v5;
  }

  if (fromCopy[20])
  {
    self->_inAirplaneMode = fromCopy[16];
    *&self->_has |= 1u;
  }
}

@end