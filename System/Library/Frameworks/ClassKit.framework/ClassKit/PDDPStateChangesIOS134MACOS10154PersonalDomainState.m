@interface PDDPStateChangesIOS134MACOS10154PersonalDomainState
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDomain:(id)a3;
- (int)StringAsState:(id)a3;
- (int)domain;
- (int)state;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDomain:(BOOL)a3;
- (void)setHasState:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPStateChangesIOS134MACOS10154PersonalDomainState

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

- (int)state
{
  if ((*&self->_has & 4) != 0)
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
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_PERSONAL_STATE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ACTIVITY_STARTED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SUBMISSION_VIEWED"])
  {
    v4 = 2;
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
  v7.super_class = PDDPStateChangesIOS134MACOS10154PersonalDomainState;
  v3 = [(PDDPStateChangesIOS134MACOS10154PersonalDomainState *)&v7 description];
  v4 = [(PDDPStateChangesIOS134MACOS10154PersonalDomainState *)self dictionaryRepresentation];
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
      v8 = [NSString stringWithFormat:@"(unknown: %i)", self->_domain];
    }

    else
    {
      v8 = *(&off_1002066F8 + domain);
    }

    [v3 setObject:v8 forKey:@"domain"];

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
  if (state >= 3)
  {
    v10 = [NSString stringWithFormat:@"(unknown: %i)", self->_state];
  }

  else
  {
    v10 = *(&off_100206728 + state);
  }

  [v3 setObject:v10 forKey:@"state"];

  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_4:
  v5 = [NSNumber numberWithUnsignedLongLong:self->_flags];
  [v3 setObject:v5 forKey:@"flags"];

LABEL_5:

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
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[4] = self->_domain;
    *(v4 + 24) |= 2u;
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

  v4[5] = self->_state;
  *(v4 + 24) |= 4u;
  if (*&self->_has)
  {
LABEL_4:
    *(v4 + 1) = self->_flags;
    *(v4 + 24) |= 1u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 4) = self->_domain;
    *(result + 24) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 5) = self->_state;
  *(result + 24) |= 4u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 1) = self->_flags;
  *(result + 24) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_domain != *(v4 + 4))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 24) & 2) != 0)
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 24) & 4) == 0 || self->_state != *(v4 + 5))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 24) & 4) != 0)
  {
    goto LABEL_16;
  }

  v5 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_flags != *(v4 + 1))
    {
      goto LABEL_16;
    }

    v5 = 1;
  }

LABEL_17:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_domain;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_state;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761u * self->_flags;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 24);
  if ((v5 & 2) != 0)
  {
    self->_domain = *(v4 + 4);
    *&self->_has |= 2u;
    v5 = *(v4 + 24);
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

  else if ((*(v4 + 24) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_state = *(v4 + 5);
  *&self->_has |= 4u;
  if (*(v4 + 24))
  {
LABEL_4:
    self->_flags = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_5:
}

@end