@interface CapEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCapState:(id)a3;
- (int)capState;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMsBeforeCallEnd:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CapEvent

- (int)capState
{
  if (*&self->_has)
  {
    return self->_capState;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsCapState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CFG_NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CFG_HEAD"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CFG_BODY"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasMsBeforeCallEnd:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = CapEvent;
  v3 = [(CapEvent *)&v7 description];
  v4 = [(CapEvent *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    capState = self->_capState;
    if (capState >= 3)
    {
      v6 = [NSString stringWithFormat:@"(unknown: %i)", self->_capState];
    }

    else
    {
      v6 = *(&off_1003184C8 + capState);
    }

    [v3 setObject:v6 forKey:@"cap_state"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_msBeforeCallEnd];
    [v3 setObject:v7 forKey:@"ms_before_call_end"];
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
    capState = self->_capState;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    msBeforeCallEnd = self->_msBeforeCallEnd;
    PBDataWriterWriteUint32Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[2] = self->_capState;
    *(v4 + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[3] = self->_msBeforeCallEnd;
    *(v4 + 16) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_capState;
    *(result + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 3) = self->_msBeforeCallEnd;
    *(result + 16) |= 2u;
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
    if ((*(v4 + 16) & 1) == 0 || self->_capState != *(v4 + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 16))
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(v4 + 16) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 16) & 2) == 0 || self->_msBeforeCallEnd != *(v4 + 3))
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
    v2 = 2654435761 * self->_capState;
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
  v3 = 2654435761 * self->_msBeforeCallEnd;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 16);
  if (v5)
  {
    self->_capState = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 16);
  }

  if ((v5 & 2) != 0)
  {
    self->_msBeforeCallEnd = *(v4 + 3);
    *&self->_has |= 2u;
  }
}

@end