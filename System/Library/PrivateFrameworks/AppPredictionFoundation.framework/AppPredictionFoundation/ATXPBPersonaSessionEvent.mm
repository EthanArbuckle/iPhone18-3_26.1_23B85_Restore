@interface ATXPBPersonaSessionEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasStarting:(BOOL)starting;
- (void)writeTo:(id)to;
@end

@implementation ATXPBPersonaSessionEvent

- (void)setHasStarting:(BOOL)starting
{
  if (starting)
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
  dictionaryRepresentation = [(ATXPBPersonaSessionEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  personaUID = self->_personaUID;
  if (personaUID)
  {
    [dictionary setObject:personaUID forKey:@"personaUID"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_personaUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    starting = self->_starting;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_personaUID)
  {
    v6 = toCopy;
    [toCopy setPersonaUID:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 24) = self->_starting;
    *(toCopy + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = *&self->_timestamp;
    *(toCopy + 28) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_personaUID copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  personaUID = self->_personaUID;
  if (personaUID | *(equalCopy + 2))
  {
    if (![(NSString *)personaUID isEqual:?])
    {
      goto LABEL_11;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0)
    {
      goto LABEL_11;
    }

    v8 = *(equalCopy + 24);
    if (self->_starting)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_11;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
    goto LABEL_11;
  }

  v6 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) != 0 && self->_timestamp == *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    v6 = fromCopy;
    [(ATXPBPersonaSessionEvent *)self setPersonaUID:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 28);
  if ((v5 & 2) != 0)
  {
    self->_starting = *(fromCopy + 24);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 28);
  }

  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

@end