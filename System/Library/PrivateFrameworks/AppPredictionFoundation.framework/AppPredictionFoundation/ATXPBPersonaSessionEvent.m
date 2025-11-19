@interface ATXPBPersonaSessionEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasStarting:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBPersonaSessionEvent

- (void)setHasStarting:(BOOL)a3
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXPBPersonaSessionEvent;
  v4 = [(ATXPBPersonaSessionEvent *)&v8 description];
  v5 = [(ATXPBPersonaSessionEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  personaUID = self->_personaUID;
  if (personaUID)
  {
    [v3 setObject:personaUID forKey:@"personaUID"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_starting];
    [v4 setObject:v7 forKey:@"starting"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
    [v4 setObject:v8 forKey:@"timestamp"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_personaUID)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    starting = self->_starting;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_personaUID)
  {
    v6 = v4;
    [v4 setPersonaUID:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 24) = self->_starting;
    *(v4 + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = *&self->_timestamp;
    *(v4 + 28) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_personaUID copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_starting;
    *(v5 + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  personaUID = self->_personaUID;
  if (personaUID | *(v4 + 2))
  {
    if (![(NSString *)personaUID isEqual:?])
    {
      goto LABEL_11;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0)
    {
      goto LABEL_11;
    }

    v8 = *(v4 + 24);
    if (self->_starting)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if (*(v4 + 24))
    {
      goto LABEL_11;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
    goto LABEL_11;
  }

  v6 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) != 0 && self->_timestamp == *(v4 + 1))
    {
      v6 = 1;
      goto LABEL_12;
    }

LABEL_11:
    v6 = 0;
  }

LABEL_12:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_personaUID hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_starting;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    return v6 ^ v3 ^ v10;
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  timestamp = self->_timestamp;
  if (timestamp < 0.0)
  {
    timestamp = -timestamp;
  }

  *v4.i64 = floor(timestamp + 0.5);
  v8 = (timestamp - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

  return v6 ^ v3 ^ v10;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 2))
  {
    v6 = v4;
    [(ATXPBPersonaSessionEvent *)self setPersonaUID:?];
    v4 = v6;
  }

  v5 = *(v4 + 28);
  if ((v5 & 2) != 0)
  {
    self->_starting = *(v4 + 24);
    *&self->_has |= 2u;
    v5 = *(v4 + 28);
  }

  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

@end