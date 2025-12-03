@interface AWDSymptomsDiagnosticIncidentEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsState:(id)state;
- (int)StringAsStatus:(id)status;
- (int)StringAsType:(id)type;
- (int)state;
- (int)status;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasState:(BOOL)state;
- (void)setHasStatus:(BOOL)status;
- (void)setHasType:(BOOL)type;
- (void)setHasValue:(BOOL)value;
- (void)writeTo:(id)to;
@end

@implementation AWDSymptomsDiagnosticIncidentEvent

- (int)type
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_type;
  }

  else
  {
    return 1;
  }
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  v4 = 1;
  if (([typeCopy isEqualToString:@"Trigger"] & 1) == 0)
  {
    if ([typeCopy isEqualToString:@"Action"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setHasValue:(BOOL)value
{
  if (value)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)status
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_status;
  }

  else
  {
    return 1;
  }
}

- (void)setHasStatus:(BOOL)status
{
  if (status)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"Success"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"Fail"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"Undetermined"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
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
    return 1;
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
  v4 = 1;
  if (([stateCopy isEqualToString:@"Started"] & 1) == 0)
  {
    if ([stateCopy isEqualToString:@"Ended"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDSymptomsDiagnosticIncidentEvent;
  v4 = [(AWDSymptomsDiagnosticIncidentEvent *)&v8 description];
  dictionaryRepresentation = [(AWDSymptomsDiagnosticIncidentEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v5 forKey:@"timestamp"];

    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    type = self->_type;
    if (type == 1)
    {
      v7 = @"Trigger";
    }

    else if (type == 2)
    {
      v7 = @"Action";
    }

    else
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    [dictionary setObject:v7 forKey:@"type"];
  }

  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
  }

  v9 = self->_has;
  if ((v9 & 2) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_value];
    [dictionary setObject:v10 forKey:@"value"];

    v9 = self->_has;
    if ((v9 & 8) == 0)
    {
LABEL_14:
      if ((v9 & 4) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_14;
  }

  v11 = self->_status - 1;
  if (v11 >= 3)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_status];
  }

  else
  {
    v12 = off_278CF01A8[v11];
  }

  [dictionary setObject:v12 forKey:@"status"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_21:
    state = self->_state;
    if (state == 1)
    {
      v14 = @"Started";
    }

    else if (state == 2)
    {
      v14 = @"Ended";
    }

    else
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_state];
    }

    [dictionary setObject:v14 forKey:@"state"];
  }

LABEL_27:
  detectedName = self->_detectedName;
  if (detectedName)
  {
    [dictionary setObject:detectedName forKey:@"detectedName"];
  }

  effectiveName = self->_effectiveName;
  if (effectiveName)
  {
    [dictionary setObject:effectiveName forKey:@"effectiveName"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v12 = toCopy;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    toCopy = v12;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    toCopy = v12;
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  v8 = self->_has;
  if ((v8 & 2) != 0)
  {
    value = self->_value;
    PBDataWriterWriteUint64Field();
    toCopy = v12;
    v8 = self->_has;
    if ((v8 & 8) == 0)
    {
LABEL_9:
      if ((v8 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  status = self->_status;
  PBDataWriterWriteInt32Field();
  toCopy = v12;
  if ((*&self->_has & 4) != 0)
  {
LABEL_10:
    state = self->_state;
    PBDataWriterWriteInt32Field();
    toCopy = v12;
  }

LABEL_11:
  if (self->_detectedName)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (self->_effectiveName)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 60) |= 1u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(toCopy + 14) = self->_type;
    *(toCopy + 60) |= 0x10u;
  }

  v7 = toCopy;
  if (self->_name)
  {
    [toCopy setName:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    toCopy[2] = self->_value;
    *(toCopy + 60) |= 2u;
    v6 = self->_has;
    if ((v6 & 8) == 0)
    {
LABEL_9:
      if ((v6 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  *(toCopy + 13) = self->_status;
  *(toCopy + 60) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_10:
    *(toCopy + 12) = self->_state;
    *(toCopy + 60) |= 4u;
  }

LABEL_11:
  if (self->_detectedName)
  {
    [v7 setDetectedName:?];
    toCopy = v7;
  }

  if (self->_effectiveName)
  {
    [v7 setEffectiveName:?];
    toCopy = v7;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 60) |= 1u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(v5 + 56) = self->_type;
    *(v5 + 60) |= 0x10u;
  }

  v8 = [(NSString *)self->_name copyWithZone:zone];
  v9 = *(v6 + 40);
  *(v6 + 40) = v8;

  v10 = self->_has;
  if ((v10 & 2) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    *(v6 + 52) = self->_status;
    *(v6 + 60) |= 8u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(v6 + 16) = self->_value;
  *(v6 + 60) |= 2u;
  v10 = self->_has;
  if ((v10 & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((v10 & 4) != 0)
  {
LABEL_8:
    *(v6 + 48) = self->_state;
    *(v6 + 60) |= 4u;
  }

LABEL_9:
  v11 = [(NSString *)self->_detectedName copyWithZone:zone];
  v12 = *(v6 + 24);
  *(v6 + 24) = v11;

  v13 = [(NSString *)self->_effectiveName copyWithZone:zone];
  v14 = *(v6 + 32);
  *(v6 + 32) = v13;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  has = self->_has;
  v6 = *(equalCopy + 60);
  if (has)
  {
    if ((*(equalCopy + 60) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_34;
    }
  }

  else if (*(equalCopy + 60))
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 60) & 0x10) == 0 || self->_type != *(equalCopy + 14))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 60) & 0x10) != 0)
  {
    goto LABEL_34;
  }

  name = self->_name;
  if (name | *(equalCopy + 5))
  {
    if (![(NSString *)name isEqual:?])
    {
LABEL_34:
      v11 = 0;
      goto LABEL_35;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 60);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 60) & 2) == 0 || self->_value != *(equalCopy + 2))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 60) & 2) != 0)
  {
    goto LABEL_34;
  }

  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 60) & 8) == 0 || self->_status != *(equalCopy + 13))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 60) & 8) != 0)
  {
    goto LABEL_34;
  }

  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 60) & 4) == 0 || self->_state != *(equalCopy + 12))
    {
      goto LABEL_34;
    }
  }

  else if ((*(equalCopy + 60) & 4) != 0)
  {
    goto LABEL_34;
  }

  detectedName = self->_detectedName;
  if (detectedName | *(equalCopy + 3) && ![(NSString *)detectedName isEqual:?])
  {
    goto LABEL_34;
  }

  effectiveName = self->_effectiveName;
  if (effectiveName | *(equalCopy + 4))
  {
    v11 = [(NSString *)effectiveName isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_35:

  return v11;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_type;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_name hash];
  if ((*&self->_has & 2) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v7 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  v6 = 2654435761u * self->_value;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v7 = 2654435761 * self->_status;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v8 = 2654435761 * self->_state;
LABEL_13:
  v9 = v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v5;
  v10 = [(NSString *)self->_detectedName hash];
  return v9 ^ v10 ^ [(NSString *)self->_effectiveName hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 60);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 60);
  }

  if ((v5 & 0x10) != 0)
  {
    self->_type = *(fromCopy + 14);
    *&self->_has |= 0x10u;
  }

  v7 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(AWDSymptomsDiagnosticIncidentEvent *)self setName:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 60);
  if ((v6 & 2) != 0)
  {
    self->_value = *(fromCopy + 2);
    *&self->_has |= 2u;
    v6 = *(fromCopy + 60);
    if ((v6 & 8) == 0)
    {
LABEL_9:
      if ((v6 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*(fromCopy + 60) & 8) == 0)
  {
    goto LABEL_9;
  }

  self->_status = *(fromCopy + 13);
  *&self->_has |= 8u;
  if ((*(fromCopy + 60) & 4) != 0)
  {
LABEL_10:
    self->_state = *(fromCopy + 12);
    *&self->_has |= 4u;
  }

LABEL_11:
  if (*(fromCopy + 3))
  {
    [(AWDSymptomsDiagnosticIncidentEvent *)self setDetectedName:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 4))
  {
    [(AWDSymptomsDiagnosticIncidentEvent *)self setEffectiveName:?];
    fromCopy = v7;
  }
}

@end