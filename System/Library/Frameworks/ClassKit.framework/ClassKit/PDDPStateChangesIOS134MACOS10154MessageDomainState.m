@interface PDDPStateChangesIOS134MACOS10154MessageDomainState
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDomain:(id)a3;
- (int)domain;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDomain:(BOOL)a3;
- (void)setHasState:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPStateChangesIOS134MACOS10154MessageDomainState

- (int)domain
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_domain;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDomain:(BOOL)a3
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

- (int)StringAsDomain:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_DOMAIN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ACTIVITY"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PERSONAL"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"PROGRESS"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"MESSAGE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"HANDOUT"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasState:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPStateChangesIOS134MACOS10154MessageDomainState;
  v3 = [(PDDPStateChangesIOS134MACOS10154MessageDomainState *)&v7 description];
  v4 = [(PDDPStateChangesIOS134MACOS10154MessageDomainState *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    domain = self->_domain;
    if (domain >= 6)
    {
      v6 = [NSString stringWithFormat:@"(unknown: %i)", self->_domain];
    }

    else
    {
      v6 = off_1002057C0[domain];
    }

    [v3 setObject:v6 forKey:@"domain"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v7 = [NSNumber numberWithInt:self->_state];
    [v3 setObject:v7 forKey:@"state"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [NSNumber numberWithUnsignedLongLong:self->_flags];
    [v3 setObject:v8 forKey:@"flags"];
  }

  note = self->_note;
  if (note)
  {
    [v3 setObject:note forKey:@"note"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if ((has & 2) != 0)
  {
    domain = self->_domain;
    PBDataWriterWriteInt32Field();
    v4 = v9;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  state = self->_state;
  PBDataWriterWriteInt32Field();
  v4 = v9;
  if (*&self->_has)
  {
LABEL_4:
    flags = self->_flags;
    PBDataWriterWriteUint64Field();
    v4 = v9;
  }

LABEL_5:
  if (self->_note)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[4] = self->_domain;
    *(v4 + 36) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v4[8] = self->_state;
  *(v4 + 36) |= 4u;
  if (*&self->_has)
  {
LABEL_4:
    *(v4 + 1) = self->_flags;
    *(v4 + 36) |= 1u;
  }

LABEL_5:
  if (self->_note)
  {
    v6 = v4;
    [v4 setNote:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 8) = self->_state;
    *(v5 + 36) |= 4u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 4) = self->_domain;
  *(v5 + 36) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    v5[1] = self->_flags;
    *(v5 + 36) |= 1u;
  }

LABEL_5:
  v8 = [(NSString *)self->_note copyWithZone:a3];
  v9 = v6[3];
  v6[3] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(v4 + 36);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_domain != *(v4 + 4))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
LABEL_19:
    v7 = 0;
    goto LABEL_20;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0 || self->_state != *(v4 + 8))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 36) & 4) != 0)
  {
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_flags != *(v4 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_19;
  }

  note = self->_note;
  if (note | *(v4 + 3))
  {
    v7 = [(NSString *)note isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_20:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    return v7 ^ v6 ^ v8 ^ [(NSString *)self->_note hash:v3];
  }

  v6 = 2654435761 * self->_domain;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 2654435761 * self->_state;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 2654435761u * self->_flags;
  return v7 ^ v6 ^ v8 ^ [(NSString *)self->_note hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 36);
  if ((v5 & 2) != 0)
  {
    self->_domain = *(v4 + 4);
    *&self->_has |= 2u;
    v5 = *(v4 + 36);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 36) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_state = *(v4 + 8);
  *&self->_has |= 4u;
  if (*(v4 + 36))
  {
LABEL_4:
    self->_flags = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_5:
  if (*(v4 + 3))
  {
    v6 = v4;
    [(PDDPStateChangesIOS134MACOS10154MessageDomainState *)self setNote:?];
    v4 = v6;
  }
}

@end