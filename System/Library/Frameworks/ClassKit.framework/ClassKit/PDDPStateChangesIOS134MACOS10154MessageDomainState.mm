@interface PDDPStateChangesIOS134MACOS10154MessageDomainState
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDomain:(id)domain;
- (int)domain;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDomain:(BOOL)domain;
- (void)setHasState:(BOOL)state;
- (void)writeTo:(id)to;
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

- (void)setHasDomain:(BOOL)domain
{
  if (domain)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsDomain:(id)domain
{
  domainCopy = domain;
  if ([domainCopy isEqualToString:@"UNKNOWN_DOMAIN"])
  {
    v4 = 0;
  }

  else if ([domainCopy isEqualToString:@"ACTIVITY"])
  {
    v4 = 1;
  }

  else if ([domainCopy isEqualToString:@"PERSONAL"])
  {
    v4 = 2;
  }

  else if ([domainCopy isEqualToString:@"PROGRESS"])
  {
    v4 = 3;
  }

  else if ([domainCopy isEqualToString:@"MESSAGE"])
  {
    v4 = 4;
  }

  else if ([domainCopy isEqualToString:@"HANDOUT"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasState:(BOOL)state
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPStateChangesIOS134MACOS10154MessageDomainState;
  v3 = [(PDDPStateChangesIOS134MACOS10154MessageDomainState *)&v7 description];
  dictionaryRepresentation = [(PDDPStateChangesIOS134MACOS10154MessageDomainState *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if ((has & 2) != 0)
  {
    domain = self->_domain;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
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
  toCopy = v9;
  if (*&self->_has)
  {
LABEL_4:
    flags = self->_flags;
    PBDataWriterWriteUint64Field();
    toCopy = v9;
  }

LABEL_5:
  if (self->_note)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[4] = self->_domain;
    *(toCopy + 36) |= 2u;
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

  toCopy[8] = self->_state;
  *(toCopy + 36) |= 4u;
  if (*&self->_has)
  {
LABEL_4:
    *(toCopy + 1) = self->_flags;
    *(toCopy + 36) |= 1u;
  }

LABEL_5:
  if (self->_note)
  {
    v6 = toCopy;
    [toCopy setNote:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  v8 = [(NSString *)self->_note copyWithZone:zone];
  v9 = v6[3];
  v6[3] = v8;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(equalCopy + 36);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_domain != *(equalCopy + 4))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
LABEL_19:
    v7 = 0;
    goto LABEL_20;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0 || self->_state != *(equalCopy + 8))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 36) & 4) != 0)
  {
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_flags != *(equalCopy + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_19;
  }

  note = self->_note;
  if (note | *(equalCopy + 3))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 36);
  if ((v5 & 2) != 0)
  {
    self->_domain = *(fromCopy + 4);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 36);
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

  else if ((*(fromCopy + 36) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_state = *(fromCopy + 8);
  *&self->_has |= 4u;
  if (*(fromCopy + 36))
  {
LABEL_4:
    self->_flags = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_5:
  if (*(fromCopy + 3))
  {
    v6 = fromCopy;
    [(PDDPStateChangesIOS134MACOS10154MessageDomainState *)self setNote:?];
    fromCopy = v6;
  }
}

@end