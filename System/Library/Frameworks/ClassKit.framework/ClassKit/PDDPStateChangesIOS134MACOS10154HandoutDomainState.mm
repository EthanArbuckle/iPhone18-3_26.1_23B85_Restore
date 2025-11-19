@interface PDDPStateChangesIOS134MACOS10154HandoutDomainState
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDomain:(id)a3;
- (int)StringAsFlags:(id)a3;
- (int)StringAsState:(id)a3;
- (int)domain;
- (int)flags;
- (int)state;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFlags:(BOOL)a3;
- (void)setHasState:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPStateChangesIOS134MACOS10154HandoutDomainState

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
  if ([v3 isEqualToString:@"UNKNOWN_HANDOUT_STATE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"HANDOUT_OPEN"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"HANDOUT_CLOSED"])
  {
    v4 = 2;
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

- (void)setHasFlags:(BOOL)a3
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

- (int)StringAsFlags:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_CUSTOM_STATE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SUBMITTED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"REVISION_REQUESTED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"LOCKED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"UNLOCKED"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SUBMITTED_LATE"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"ACTIVITY_ASK_TO_COMPLETE"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"CONSIDERED_LOCK"])
  {
    v4 = 64;
  }

  else if ([v3 isEqualToString:@"IS_LEGACY"])
  {
    v4 = 128;
  }

  else if ([v3 isEqualToString:@"OPERATION_PENDING"])
  {
    v4 = 256;
  }

  else if ([v3 isEqualToString:@"OPERATION_FAILED"])
  {
    v4 = 512;
  }

  else if ([v3 isEqualToString:@"STARTED"])
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
  v7.super_class = PDDPStateChangesIOS134MACOS10154HandoutDomainState;
  v3 = [(PDDPStateChangesIOS134MACOS10154HandoutDomainState *)&v7 description];
  v4 = [(PDDPStateChangesIOS134MACOS10154HandoutDomainState *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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
    if (state >= 3)
    {
      v8 = [NSString stringWithFormat:@"(unknown: %i)", self->_state];
    }

    else
    {
      v8 = *(&off_100203F50 + state);
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
    v6 = *(&off_100203F20 + domain);
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if (has)
  {
    domain = self->_domain;
    PBDataWriterWriteInt32Field();
    v4 = v9;
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
  v4 = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    flags = self->_flags;
    PBDataWriterWriteInt32Field();
    v4 = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[2] = self->_domain;
    *(v4 + 20) |= 1u;
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

  v4[4] = self->_state;
  *(v4 + 20) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v4[3] = self->_flags;
    *(v4 + 20) |= 2u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_domain != *(v4 + 2))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 20))
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 20) & 4) == 0 || self->_state != *(v4 + 4))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 20) & 4) != 0)
  {
    goto LABEL_16;
  }

  v5 = (*(v4 + 20) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 20) & 2) == 0 || self->_flags != *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 20);
  if (v5)
  {
    self->_domain = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 20);
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

  else if ((*(v4 + 20) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_state = *(v4 + 4);
  *&self->_has |= 4u;
  if ((*(v4 + 20) & 2) != 0)
  {
LABEL_4:
    self->_flags = *(v4 + 3);
    *&self->_has |= 2u;
  }

LABEL_5:
}

@end