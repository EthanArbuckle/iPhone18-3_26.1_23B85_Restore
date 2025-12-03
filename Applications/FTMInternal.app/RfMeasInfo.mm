@interface RfMeasInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMag:(BOOL)mag;
- (void)setHasPhase:(BOOL)phase;
- (void)setHasPortPositionSf:(BOOL)sf;
- (void)setHasScenario:(BOOL)scenario;
- (void)setHasTunerStateCounter:(BOOL)counter;
- (void)setHasTxPwrDb2:(BOOL)db2;
- (void)setHasTxSkuIdx:(BOOL)idx;
- (void)writeTo:(id)to;
@end

@implementation RfMeasInfo

- (void)setHasMag:(BOOL)mag
{
  if (mag)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasPhase:(BOOL)phase
{
  if (phase)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasTxPwrDb2:(BOOL)db2
{
  if (db2)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasTxSkuIdx:(BOOL)idx
{
  if (idx)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasScenario:(BOOL)scenario
{
  if (scenario)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasPortPositionSf:(BOOL)sf
{
  if (sf)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasTunerStateCounter:(BOOL)counter
{
  if (counter)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = RfMeasInfo;
  v3 = [(RfMeasInfo *)&v7 description];
  dictionaryRepresentation = [(RfMeasInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [NSNumber numberWithInt:self->_mag];
    [v3 setObject:v7 forKey:@"mag"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = [NSNumber numberWithInt:self->_phase];
  [v3 setObject:v8 forKey:@"phase"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = [NSNumber numberWithUnsignedInt:self->_accessory];
  [v3 setObject:v9 forKey:@"accessory"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = [NSNumber numberWithInt:self->_txPwrDb2];
  [v3 setObject:v10 forKey:@"tx_pwr_db2"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v11 = [NSNumber numberWithUnsignedInt:self->_txSkuIdx];
  [v3 setObject:v11 forKey:@"tx_sku_idx"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v12 = [NSNumber numberWithUnsignedInt:self->_scenario];
  [v3 setObject:v12 forKey:@"scenario"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  v13 = [NSNumber numberWithUnsignedInt:self->_portPositionSf];
  [v3 setObject:v13 forKey:@"port_position_sf"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_9:
    v5 = [NSNumber numberWithUnsignedInt:self->_tunerStateCounter];
    [v3 setObject:v5 forKey:@"tuner_state_counter"];
  }

LABEL_10:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    mag = self->_mag;
    PBDataWriterWriteSint32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  phase = self->_phase;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  accessory = self->_accessory;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  txPwrDb2 = self->_txPwrDb2;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  txSkuIdx = self->_txSkuIdx;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  scenario = self->_scenario;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  portPositionSf = self->_portPositionSf;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_9:
    tunerStateCounter = self->_tunerStateCounter;
    PBDataWriterWriteUint32Field();
  }

LABEL_10:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[3] = self->_mag;
    *(toCopy + 40) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  toCopy[4] = self->_phase;
  *(toCopy + 40) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  toCopy[2] = self->_accessory;
  *(toCopy + 40) |= 1u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  toCopy[8] = self->_txPwrDb2;
  *(toCopy + 40) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  toCopy[9] = self->_txSkuIdx;
  *(toCopy + 40) |= 0x80u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  toCopy[6] = self->_scenario;
  *(toCopy + 40) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  toCopy[5] = self->_portPositionSf;
  *(toCopy + 40) |= 8u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_9:
    toCopy[7] = self->_tunerStateCounter;
    *(toCopy + 40) |= 0x20u;
  }

LABEL_10:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 3) = self->_mag;
    *(result + 40) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_phase;
  *(result + 40) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 2) = self->_accessory;
  *(result + 40) |= 1u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 8) = self->_txPwrDb2;
  *(result + 40) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 9) = self->_txSkuIdx;
  *(result + 40) |= 0x80u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 6) = self->_scenario;
  *(result + 40) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_17:
  *(result + 5) = self->_portPositionSf;
  *(result + 40) |= 8u;
  if ((*&self->_has & 0x20) == 0)
  {
    return result;
  }

LABEL_9:
  *(result + 7) = self->_tunerStateCounter;
  *(result + 40) |= 0x20u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_mag != *(equalCopy + 3))
    {
      goto LABEL_41;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0 || self->_phase != *(equalCopy + 4))
    {
      goto LABEL_41;
    }
  }

  else if ((*(equalCopy + 40) & 4) != 0)
  {
    goto LABEL_41;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_accessory != *(equalCopy + 2))
    {
      goto LABEL_41;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(equalCopy + 40) & 0x40) == 0 || self->_txPwrDb2 != *(equalCopy + 8))
    {
      goto LABEL_41;
    }
  }

  else if ((*(equalCopy + 40) & 0x40) != 0)
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    if ((*(equalCopy + 40) & 0x80) == 0 || self->_txSkuIdx != *(equalCopy + 9))
    {
      goto LABEL_41;
    }
  }

  else if ((*(equalCopy + 40) & 0x80) != 0)
  {
LABEL_41:
    v5 = 0;
    goto LABEL_42;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 40) & 0x10) == 0 || self->_scenario != *(equalCopy + 6))
    {
      goto LABEL_41;
    }
  }

  else if ((*(equalCopy + 40) & 0x10) != 0)
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 40) & 8) == 0 || self->_portPositionSf != *(equalCopy + 5))
    {
      goto LABEL_41;
    }
  }

  else if ((*(equalCopy + 40) & 8) != 0)
  {
    goto LABEL_41;
  }

  v5 = (*(equalCopy + 40) & 0x20) == 0;
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 40) & 0x20) == 0 || self->_tunerStateCounter != *(equalCopy + 7))
    {
      goto LABEL_41;
    }

    v5 = 1;
  }

LABEL_42:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_mag;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_phase;
      if (*&self->_has)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if (*&self->_has)
  {
LABEL_4:
    v4 = 2654435761 * self->_accessory;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = 0;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_txPwrDb2;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_txSkuIdx;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_scenario;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v8 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v9 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_15:
  v7 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v8 = 2654435761 * self->_portPositionSf;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v9 = 2654435761 * self->_tunerStateCounter;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 40);
  if ((v5 & 2) != 0)
  {
    self->_mag = *(fromCopy + 3);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 40);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(fromCopy + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_phase = *(fromCopy + 4);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 40);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_accessory = *(fromCopy + 2);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_txPwrDb2 = *(fromCopy + 8);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 40);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_txSkuIdx = *(fromCopy + 9);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_scenario = *(fromCopy + 6);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 40);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  self->_portPositionSf = *(fromCopy + 5);
  *&self->_has |= 8u;
  if ((*(fromCopy + 40) & 0x20) != 0)
  {
LABEL_9:
    self->_tunerStateCounter = *(fromCopy + 7);
    *&self->_has |= 0x20u;
  }

LABEL_10:
}

@end