@interface NWPBAgent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation NWPBAgent

- (unint64_t)hash
{
  v3 = [(NWPBAgentClass *)self->_agentClass hash];
  v4 = [(NSString *)self->_agentIdentifier hash];
  v5 = [(NSString *)self->_agentDescription hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_active;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_userActivated;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v8 = 2654435761 * self->_voluntary;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v9 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ [(NSData *)self->_agentData hash];
  }

LABEL_9:
  v8 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v9 = 2654435761 * self->_networkProvider;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v10 = 2654435761 * self->_nexusProvider;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ [(NSData *)self->_agentData hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_50;
  }

  agentClass = self->_agentClass;
  if (agentClass | *(v4 + 1))
  {
    if (![(NWPBAgentClass *)agentClass isEqual:?])
    {
      goto LABEL_50;
    }
  }

  agentIdentifier = self->_agentIdentifier;
  if (agentIdentifier | *(v4 + 4))
  {
    if (![(NSString *)agentIdentifier isEqual:?])
    {
      goto LABEL_50;
    }
  }

  agentDescription = self->_agentDescription;
  if (agentDescription | *(v4 + 3))
  {
    if (![(NSString *)agentDescription isEqual:?])
    {
      goto LABEL_50;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0)
    {
      goto LABEL_50;
    }

    if (self->_active)
    {
      if ((*(v4 + 40) & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else if (*(v4 + 40))
    {
      goto LABEL_50;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_50;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 48) & 8) == 0)
    {
      goto LABEL_50;
    }

    if (self->_userActivated)
    {
      if ((*(v4 + 43) & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else if (*(v4 + 43))
    {
      goto LABEL_50;
    }
  }

  else if ((*(v4 + 48) & 8) != 0)
  {
    goto LABEL_50;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 48) & 0x10) == 0)
    {
      goto LABEL_50;
    }

    if (self->_voluntary)
    {
      if ((*(v4 + 44) & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else if (*(v4 + 44))
    {
      goto LABEL_50;
    }
  }

  else if ((*(v4 + 48) & 0x10) != 0)
  {
    goto LABEL_50;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0)
    {
      goto LABEL_50;
    }

    if (self->_networkProvider)
    {
      if ((*(v4 + 41) & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else if (*(v4 + 41))
    {
      goto LABEL_50;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_50;
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(v4 + 48) & 4) == 0)
    {
      goto LABEL_18;
    }

LABEL_50:
    v9 = 0;
    goto LABEL_51;
  }

  if ((*(v4 + 48) & 4) == 0)
  {
    goto LABEL_50;
  }

  if (self->_nexusProvider)
  {
    if ((*(v4 + 42) & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else if (*(v4 + 42))
  {
    goto LABEL_50;
  }

LABEL_18:
  agentData = self->_agentData;
  if (agentData | *(v4 + 2))
  {
    v9 = [(NSData *)agentData isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_51:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NWPBAgentClass *)self->_agentClass copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_agentIdentifier copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_agentDescription copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  has = self->_has;
  if (has)
  {
    *(v5 + 40) = self->_active;
    *(v5 + 48) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 43) = self->_userActivated;
  *(v5 + 48) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    *(v5 + 41) = self->_networkProvider;
    *(v5 + 48) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_10:
  *(v5 + 44) = self->_voluntary;
  *(v5 + 48) |= 0x10u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((has & 4) != 0)
  {
LABEL_6:
    *(v5 + 42) = self->_nexusProvider;
    *(v5 + 48) |= 4u;
  }

LABEL_7:
  v13 = [(NSData *)self->_agentData copyWithZone:a3];
  v14 = *(v5 + 16);
  *(v5 + 16) = v13;

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_agentClass)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_agentIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_agentDescription)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_9:
      if ((has & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  PBDataWriterWriteBOOLField();
  v4 = v6;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  PBDataWriterWriteBOOLField();
  v4 = v6;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_21:
  PBDataWriterWriteBOOLField();
  v4 = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

LABEL_13:
  if (self->_agentData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  agentClass = self->_agentClass;
  if (agentClass)
  {
    v5 = [(NWPBAgentClass *)agentClass dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"agentClass"];
  }

  agentIdentifier = self->_agentIdentifier;
  if (agentIdentifier)
  {
    [v3 setObject:agentIdentifier forKey:@"agentIdentifier"];
  }

  agentDescription = self->_agentDescription;
  if (agentDescription)
  {
    [v3 setObject:agentDescription forKey:@"agentDescription"];
  }

  has = self->_has;
  if (has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_active];
    [v3 setObject:v12 forKey:@"active"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_9:
      if ((has & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_userActivated];
  [v3 setObject:v13 forKey:@"userActivated"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_voluntary];
  [v3 setObject:v14 forKey:@"voluntary"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_21:
  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_networkProvider];
  [v3 setObject:v15 forKey:@"networkProvider"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_nexusProvider];
    [v3 setObject:v9 forKey:@"nexusProvider"];
  }

LABEL_13:
  agentData = self->_agentData;
  if (agentData)
  {
    [v3 setObject:agentData forKey:@"agentData"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NWPBAgent;
  v4 = [(NWPBAgent *)&v8 description];
  v5 = [(NWPBAgent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end