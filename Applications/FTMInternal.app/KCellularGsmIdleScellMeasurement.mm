@interface KCellularGsmIdleScellMeasurement
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCurrentAntenna:(BOOL)antenna;
- (void)setHasIdleRxlevDBm:(BOOL)bm;
- (void)setHasScellArfcn:(BOOL)arfcn;
- (void)setHasSimplifiedL1State:(BOOL)state;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation KCellularGsmIdleScellMeasurement

- (void)setHasScellArfcn:(BOOL)arfcn
{
  if (arfcn)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSimplifiedL1State:(BOOL)state
{
  if (state)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasCurrentAntenna:(BOOL)antenna
{
  if (antenna)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIdleRxlevDBm:(BOOL)bm
{
  if (bm)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
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
  v7.super_class = KCellularGsmIdleScellMeasurement;
  v3 = [(KCellularGsmIdleScellMeasurement *)&v7 description];
  dictionaryRepresentation = [(KCellularGsmIdleScellMeasurement *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v7 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  v8 = [NSNumber numberWithUnsignedInt:self->_scellArfcn];
  [v3 setObject:v8 forKey:@"scell_arfcn"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v9 = [NSNumber numberWithUnsignedInt:self->_simplifiedL1State];
  [v3 setObject:v9 forKey:@"simplified_l1_state"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10 = [NSNumber numberWithUnsignedInt:self->_currentAntenna];
  [v3 setObject:v10 forKey:@"current_antenna"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v11 = [NSNumber numberWithInt:self->_idleRxlevDBm];
  [v3 setObject:v11 forKey:@"idle_rxlev_dBm"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    v5 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v5 forKey:@"subs_id"];
  }

LABEL_8:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  scellArfcn = self->_scellArfcn;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  simplifiedL1State = self->_simplifiedL1State;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  currentAntenna = self->_currentAntenna;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  idleRxlevDBm = self->_idleRxlevDBm;
  PBDataWriterWriteSint32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }

LABEL_8:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 36) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 6) = self->_scellArfcn;
  *(toCopy + 36) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(toCopy + 7) = self->_simplifiedL1State;
  *(toCopy + 36) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(toCopy + 4) = self->_currentAntenna;
  *(toCopy + 36) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  *(toCopy + 5) = self->_idleRxlevDBm;
  *(toCopy + 36) |= 4u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    *(toCopy + 8) = self->_subsId;
    *(toCopy + 36) |= 0x20u;
  }

LABEL_8:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 36) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 6) = self->_scellArfcn;
  *(result + 36) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(result + 7) = self->_simplifiedL1State;
  *(result + 36) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 4) = self->_currentAntenna;
  *(result + 36) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(result + 5) = self->_idleRxlevDBm;
  *(result + 36) |= 4u;
  if ((*&self->_has & 0x20) == 0)
  {
    return result;
  }

LABEL_7:
  *(result + 8) = self->_subsId;
  *(result + 36) |= 0x20u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_31;
    }
  }

  else if (*(equalCopy + 36))
  {
LABEL_31:
    v5 = 0;
    goto LABEL_32;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 36) & 8) == 0 || self->_scellArfcn != *(equalCopy + 6))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 36) & 8) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 36) & 0x10) == 0 || self->_simplifiedL1State != *(equalCopy + 7))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 36) & 0x10) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_currentAntenna != *(equalCopy + 4))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0 || self->_idleRxlevDBm != *(equalCopy + 5))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 36) & 4) != 0)
  {
    goto LABEL_31;
  }

  v5 = (*(equalCopy + 36) & 0x20) == 0;
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 36) & 0x20) == 0 || self->_subsId != *(equalCopy + 8))
    {
      goto LABEL_31;
    }

    v5 = 1;
  }

LABEL_32:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_scellArfcn;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_simplifiedL1State;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_currentAntenna;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_11:
  v5 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = 2654435761 * self->_idleRxlevDBm;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = 2654435761 * self->_subsId;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 36);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 36);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(fromCopy + 36) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_scellArfcn = *(fromCopy + 6);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 36);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_simplifiedL1State = *(fromCopy + 7);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 36);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_currentAntenna = *(fromCopy + 4);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 36);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  self->_idleRxlevDBm = *(fromCopy + 5);
  *&self->_has |= 4u;
  if ((*(fromCopy + 36) & 0x20) != 0)
  {
LABEL_7:
    self->_subsId = *(fromCopy + 8);
    *&self->_has |= 0x20u;
  }

LABEL_8:
}

@end