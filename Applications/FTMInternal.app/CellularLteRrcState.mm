@interface CellularLteRrcState
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsState:(id)state;
- (int)state;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasState:(BOOL)state;
- (void)writeTo:(id)to;
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

- (void)setHasState:(BOOL)state
{
  if (state)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"LTE_RRC_INACTIVE"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"LTE_RRC_IDLE_NOT_CAMPED"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"LTE_RRC_IDLE_CAMPED"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"LTE_RRC_CONNECTING"])
  {
    v4 = 3;
  }

  else if ([stateCopy isEqualToString:@"LTE_RRC_CONNECTED"])
  {
    v4 = 4;
  }

  else if ([stateCopy isEqualToString:@"LTE_RRC_SUSPENDED"])
  {
    v4 = 5;
  }

  else if ([stateCopy isEqualToString:@"LTE_RRC_IRAT_TO_LTE_STARTED"])
  {
    v4 = 6;
  }

  else if ([stateCopy isEqualToString:@"LTE_RRC_CLOSING"])
  {
    v4 = 7;
  }

  else if ([stateCopy isEqualToString:@"LTE_RRC_MAX_STATE"])
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
  dictionaryRepresentation = [(CellularLteRrcState *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    state = self->_state;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 20) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 4) = self->_state;
    *(toCopy + 20) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 20))
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(equalCopy + 20) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 20) & 2) == 0 || self->_state != *(equalCopy + 4))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 20);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 20);
  }

  if ((v5 & 2) != 0)
  {
    self->_state = *(fromCopy + 4);
    *&self->_has |= 2u;
  }
}

@end