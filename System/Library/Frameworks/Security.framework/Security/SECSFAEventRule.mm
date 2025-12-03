@interface SECSFAEventRule
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEventClass:(id)class;
- (int)eventClass;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEventClass:(BOOL)class;
- (void)setHasMatchOnFirstFailure:(BOOL)failure;
- (void)writeTo:(id)to;
@end

@implementation SECSFAEventRule

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v9 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(SECSFAEventRule *)self setEventType:?];
    fromCopy = v9;
  }

  if (*(fromCopy + 5))
  {
    [(SECSFAEventRule *)self setMatch:?];
    fromCopy = v9;
  }

  action = self->_action;
  v6 = *(fromCopy + 2);
  if (action)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(SECSFAAction *)action mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(SECSFAEventRule *)self setAction:?];
  }

  fromCopy = v9;
LABEL_11:
  if (*(fromCopy + 68))
  {
    self->_repeatAfterSeconds = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 6))
  {
    [(SECSFAEventRule *)self setProcessName:?];
    fromCopy = v9;
  }

  if ((*(fromCopy + 68) & 2) != 0)
  {
    self->_eventClass = *(fromCopy + 6);
    *&self->_has |= 2u;
  }

  versions = self->_versions;
  v8 = *(fromCopy + 7);
  if (versions)
  {
    if (!v8)
    {
      goto LABEL_23;
    }

    [(SECSFAVersionMatch *)versions mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_23;
    }

    [(SECSFAEventRule *)self setVersions:?];
  }

  fromCopy = v9;
LABEL_23:
  if ((*(fromCopy + 68) & 4) != 0)
  {
    self->_matchOnFirstFailure = *(fromCopy + 64);
    *&self->_has |= 4u;
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_eventType hash];
  v4 = [(NSData *)self->_match hash];
  v5 = [(SECSFAAction *)self->_action hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_repeatAfterSeconds;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSString *)self->_processName hash];
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_eventClass;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(SECSFAVersionMatch *)self->_versions hash];
  if ((*&self->_has & 4) != 0)
  {
    v10 = 2654435761 * self->_matchOnFirstFailure;
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  eventType = self->_eventType;
  if (eventType | *(equalCopy + 4))
  {
    if (![(NSString *)eventType isEqual:?])
    {
      goto LABEL_26;
    }
  }

  match = self->_match;
  if (match | *(equalCopy + 5))
  {
    if (![(NSData *)match isEqual:?])
    {
      goto LABEL_26;
    }
  }

  action = self->_action;
  if (action | *(equalCopy + 2))
  {
    if (![(SECSFAAction *)action isEqual:?])
    {
      goto LABEL_26;
    }
  }

  has = self->_has;
  v9 = *(equalCopy + 68);
  if (has)
  {
    if ((*(equalCopy + 68) & 1) == 0 || self->_repeatAfterSeconds != *(equalCopy + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 68))
  {
    goto LABEL_26;
  }

  processName = self->_processName;
  if (processName | *(equalCopy + 6))
  {
    if (![(NSString *)processName isEqual:?])
    {
      goto LABEL_26;
    }

    has = self->_has;
    v9 = *(equalCopy + 68);
  }

  if ((has & 2) != 0)
  {
    if ((v9 & 2) == 0 || self->_eventClass != *(equalCopy + 6))
    {
      goto LABEL_26;
    }
  }

  else if ((v9 & 2) != 0)
  {
    goto LABEL_26;
  }

  versions = self->_versions;
  if (versions | *(equalCopy + 7))
  {
    if (![(SECSFAVersionMatch *)versions isEqual:?])
    {
      goto LABEL_26;
    }

    has = self->_has;
    v9 = *(equalCopy + 68);
  }

  v12 = (v9 & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((v9 & 4) != 0)
    {
      if (self->_matchOnFirstFailure)
      {
        if ((*(equalCopy + 64) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else if (*(equalCopy + 64))
      {
        goto LABEL_26;
      }

      v12 = 1;
      goto LABEL_27;
    }

LABEL_26:
    v12 = 0;
  }

LABEL_27:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_eventType copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSData *)self->_match copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(SECSFAAction *)self->_action copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_repeatAfterSeconds;
    *(v5 + 68) |= 1u;
  }

  v12 = [(NSString *)self->_processName copyWithZone:zone];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 24) = self->_eventClass;
    *(v5 + 68) |= 2u;
  }

  v14 = [(SECSFAVersionMatch *)self->_versions copyWithZone:zone];
  v15 = *(v5 + 56);
  *(v5 + 56) = v14;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 64) = self->_matchOnFirstFailure;
    *(v5 + 68) |= 4u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_eventType)
  {
    [toCopy setEventType:?];
    toCopy = v5;
  }

  if (self->_match)
  {
    [v5 setMatch:?];
    toCopy = v5;
  }

  if (self->_action)
  {
    [v5 setAction:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_repeatAfterSeconds;
    *(toCopy + 68) |= 1u;
  }

  if (self->_processName)
  {
    [v5 setProcessName:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 6) = self->_eventClass;
    *(toCopy + 68) |= 2u;
  }

  if (self->_versions)
  {
    [v5 setVersions:?];
    toCopy = v5;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 64) = self->_matchOnFirstFailure;
    *(toCopy + 68) |= 4u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_eventType)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_match)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  if (self->_action)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (*&self->_has)
  {
    repeatAfterSeconds = self->_repeatAfterSeconds;
    PBDataWriterWriteInt64Field();
    toCopy = v8;
  }

  if (self->_processName)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if ((*&self->_has & 2) != 0)
  {
    eventClass = self->_eventClass;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }

  if (self->_versions)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if ((*&self->_has & 4) != 0)
  {
    matchOnFirstFailure = self->_matchOnFirstFailure;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  eventType = self->_eventType;
  if (eventType)
  {
    [dictionary setObject:eventType forKey:@"eventType"];
  }

  match = self->_match;
  if (match)
  {
    [v4 setObject:match forKey:@"match"];
  }

  action = self->_action;
  if (action)
  {
    dictionaryRepresentation = [(SECSFAAction *)action dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"action"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_repeatAfterSeconds];
    [v4 setObject:v9 forKey:@"repeatAfterSeconds"];
  }

  processName = self->_processName;
  if (processName)
  {
    [v4 setObject:processName forKey:@"processName"];
  }

  if ((*&self->_has & 2) != 0)
  {
    eventClass = self->_eventClass;
    if (eventClass < 0xF && ((0x7C03u >> eventClass) & 1) != 0)
    {
      v12 = off_1E70D5070[eventClass];
    }

    else
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_eventClass];
    }

    [v4 setObject:v12 forKey:@"eventClass"];
  }

  versions = self->_versions;
  if (versions)
  {
    dictionaryRepresentation2 = [(SECSFAVersionMatch *)versions dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"versions"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_matchOnFirstFailure];
    [v4 setObject:v15 forKey:@"matchOnFirstFailure"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SECSFAEventRule;
  v4 = [(SECSFAEventRule *)&v8 description];
  dictionaryRepresentation = [(SECSFAEventRule *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasMatchOnFirstFailure:(BOOL)failure
{
  if (failure)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsEventClass:(id)class
{
  classCopy = class;
  if ([classCopy isEqualToString:@"Errors"])
  {
    v4 = 0;
  }

  else if ([classCopy isEqualToString:@"All"])
  {
    v4 = 1;
  }

  else if ([classCopy isEqualToString:@"Success"])
  {
    v4 = 10;
  }

  else if ([classCopy isEqualToString:@"HardFailure"])
  {
    v4 = 11;
  }

  else if ([classCopy isEqualToString:@"SoftFailure"])
  {
    v4 = 12;
  }

  else if ([classCopy isEqualToString:@"Note"])
  {
    v4 = 13;
  }

  else if ([classCopy isEqualToString:@"Rockwell"])
  {
    v4 = 14;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasEventClass:(BOOL)class
{
  if (class)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)eventClass
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_eventClass;
  }

  else
  {
    return 0;
  }
}

@end