@interface CellularLteRrcState
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsState:(id)a3;
- (int)state;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasState:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CellularLteRrcState

- (int)state
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_state;
  }

  else
  {
    return 0;
  }
}

- (void)setHasState:(BOOL)a3
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

- (int)StringAsState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LTE_RRC_INACTIVE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"LTE_RRC_IDLE_NOT_CAMPED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"LTE_RRC_IDLE_CAMPED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"LTE_RRC_CONNECTING"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"LTE_RRC_CONNECTED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"LTE_RRC_SUSPENDED"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"LTE_RRC_IRAT_TO_LTE_STARTED"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"LTE_RRC_CLOSING"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"LTE_RRC_MAX_STATE"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CellularLteRrcState;
  v3 = [(CellularLteRrcState *)&v7 description];
  v4 = [(CellularLteRrcState *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v5 forKey:@"timestamp"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    state = self->_state;
    if (state >= 9)
    {
      v7 = [NSString stringWithFormat:@"(unknown: %i)", self->_state];
    }

    else
    {
      v7 = *(&off_100318970 + state);
    }

    [v3 setObject:v7 forKey:@"state"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    state = self->_state;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 20) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 4) = self->_state;
    *(v4 + 20) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 20) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 4) = self->_state;
    *(result + 20) |= 2u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 20))
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(v4 + 20) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 20) & 2) == 0 || self->_state != *(v4 + 4))
    {
      goto LABEL_11;
    }

    v5 = 1;
  }

LABEL_12:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_state;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 20);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 20);
  }

  if ((v5 & 2) != 0)
  {
    self->_state = *(v4 + 4);
    *&self->_has |= 2u;
  }
}

@end