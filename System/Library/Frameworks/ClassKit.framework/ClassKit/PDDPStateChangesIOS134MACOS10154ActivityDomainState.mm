@interface PDDPStateChangesIOS134MACOS10154ActivityDomainState
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDomain:(id)domain;
- (int)StringAsFlags:(id)flags;
- (int)StringAsState:(id)state;
- (int)domain;
- (int)flags;
- (int)state;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFlags:(BOOL)flags;
- (void)setHasState:(BOOL)state;
- (void)writeTo:(id)to;
@end

@implementation PDDPStateChangesIOS134MACOS10154ActivityDomainState

- (int)domain
{
  if (*&self->_has)
  {
    return self->_domain;
  }

  else
  {
    return 0;
  }
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

- (int)StringAsState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"UNKNOWN_ACTIVITY_STATE"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"INCOMPLETE"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"DONE"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"RETURNING"])
  {
    v4 = 3;
  }

  else if ([stateCopy isEqualToString:@"RETURNED"])
  {
    v4 = 4;
  }

  else if ([stateCopy isEqualToString:@"RETURN_FAILED"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)flags
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_flags;
  }

  else
  {
    return 0;
  }
}

- (void)setHasFlags:(BOOL)flags
{
  if (flags)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsFlags:(id)flags
{
  flagsCopy = flags;
  if ([flagsCopy isEqualToString:@"UNKNOWN_CUSTOM_STATE"])
  {
    v4 = 0;
  }

  else if ([flagsCopy isEqualToString:@"SUBMITTED"])
  {
    v4 = 1;
  }

  else if ([flagsCopy isEqualToString:@"REVISION_REQUESTED"])
  {
    v4 = 2;
  }

  else if ([flagsCopy isEqualToString:@"LOCKED"])
  {
    v4 = 4;
  }

  else if ([flagsCopy isEqualToString:@"UNLOCKED"])
  {
    v4 = 8;
  }

  else if ([flagsCopy isEqualToString:@"SUBMITTED_LATE"])
  {
    v4 = 16;
  }

  else if ([flagsCopy isEqualToString:@"ACTIVITY_ASK_TO_COMPLETE"])
  {
    v4 = 32;
  }

  else if ([flagsCopy isEqualToString:@"CONSIDERED_LOCK"])
  {
    v4 = 64;
  }

  else if ([flagsCopy isEqualToString:@"IS_LEGACY"])
  {
    v4 = 128;
  }

  else if ([flagsCopy isEqualToString:@"OPERATION_PENDING"])
  {
    v4 = 256;
  }

  else if ([flagsCopy isEqualToString:@"OPERATION_FAILED"])
  {
    v4 = 512;
  }

  else if ([flagsCopy isEqualToString:@"STARTED"])
  {
    v4 = 1024;
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
  v7.super_class = PDDPStateChangesIOS134MACOS10154ActivityDomainState;
  v3 = [(PDDPStateChangesIOS134MACOS10154ActivityDomainState *)&v7 description];
  dictionaryRepresentation = [(PDDPStateChangesIOS134MACOS10154ActivityDomainState *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    state = self->_state;
    if (state >= 6)
    {
      v8 = [NSString stringWithFormat:@"(unknown: %i)", self->_state];
    }

    else
    {
      v8 = off_100205F88[state];
    }

    [v3 setObject:v8 forKey:@"state"];

    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_42;
    }

LABEL_13:
    flags = self->_flags;
    if (flags > 31)
    {
      if (flags > 255)
      {
        switch(flags)
        {
          case 256:
            v10 = @"OPERATION_PENDING";
            goto LABEL_41;
          case 512:
            v10 = @"OPERATION_FAILED";
            goto LABEL_41;
          case 1024:
            v10 = @"STARTED";
            goto LABEL_41;
        }
      }

      else
      {
        switch(flags)
        {
          case 32:
            v10 = @"ACTIVITY_ASK_TO_COMPLETE";
            goto LABEL_41;
          case 64:
            v10 = @"CONSIDERED_LOCK";
            goto LABEL_41;
          case 128:
            v10 = @"IS_LEGACY";
            goto LABEL_41;
        }
      }
    }

    else if (flags > 3)
    {
      switch(flags)
      {
        case 4:
          v10 = @"LOCKED";
          goto LABEL_41;
        case 8:
          v10 = @"UNLOCKED";
          goto LABEL_41;
        case 16:
          v10 = @"SUBMITTED_LATE";
          goto LABEL_41;
      }
    }

    else
    {
      switch(flags)
      {
        case 0:
          v10 = @"UNKNOWN_CUSTOM_STATE";
          goto LABEL_41;
        case 1:
          v10 = @"SUBMITTED";
          goto LABEL_41;
        case 2:
          v10 = @"REVISION_REQUESTED";
LABEL_41:
          [v3 setObject:v10 forKey:@"flags"];

          goto LABEL_42;
      }
    }

    v10 = [NSString stringWithFormat:@"(unknown: %i)", self->_flags];
    goto LABEL_41;
  }

  domain = self->_domain;
  if (domain >= 6)
  {
    v6 = [NSString stringWithFormat:@"(unknown: %i)", self->_domain];
  }

  else
  {
    v6 = off_100205F58[domain];
  }

  [v3 setObject:v6 forKey:@"domain"];

  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_42:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if (has)
  {
    domain = self->_domain;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
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
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    flags = self->_flags;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[2] = self->_domain;
    *(toCopy + 20) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
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

  toCopy[4] = self->_state;
  *(toCopy + 20) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    toCopy[3] = self->_flags;
    *(toCopy + 20) |= 2u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_domain;
    *(result + 20) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
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

  *(result + 4) = self->_state;
  *(result + 20) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 3) = self->_flags;
  *(result + 20) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_domain != *(equalCopy + 2))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 20))
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 20) & 4) == 0 || self->_state != *(equalCopy + 4))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 20) & 4) != 0)
  {
    goto LABEL_16;
  }

  v5 = (*(equalCopy + 20) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 20) & 2) == 0 || self->_flags != *(equalCopy + 3))
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
  if ((*&self->_has & 1) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 2) != 0)
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
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_flags;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 20);
  if (v5)
  {
    self->_domain = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 20);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 20) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_state = *(fromCopy + 4);
  *&self->_has |= 4u;
  if ((*(fromCopy + 20) & 2) != 0)
  {
LABEL_4:
    self->_flags = *(fromCopy + 3);
    *&self->_has |= 2u;
  }

LABEL_5:
}

@end