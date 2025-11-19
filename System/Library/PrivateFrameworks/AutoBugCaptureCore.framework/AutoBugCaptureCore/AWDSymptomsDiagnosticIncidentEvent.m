@interface AWDSymptomsDiagnosticIncidentEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsState:(id)a3;
- (int)StringAsStatus:(id)a3;
- (int)StringAsType:(id)a3;
- (int)state;
- (int)status;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasState:(BOOL)a3;
- (void)setHasStatus:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)setHasValue:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"Trigger"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"Action"])
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

- (void)setHasValue:(BOOL)a3
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

- (void)setHasStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Success"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Fail"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Undetermined"])
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
  v4 = 1;
  if (([v3 isEqualToString:@"Started"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"Ended"])
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
  v5 = [(AWDSymptomsDiagnosticIncidentEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v5 forKey:@"timestamp"];

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

    [v3 setObject:v7 forKey:@"type"];
  }

  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  v9 = self->_has;
  if ((v9 & 2) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_value];
    [v3 setObject:v10 forKey:@"value"];

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

  [v3 setObject:v12 forKey:@"status"];

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

    [v3 setObject:v14 forKey:@"state"];
  }

LABEL_27:
  detectedName = self->_detectedName;
  if (detectedName)
  {
    [v3 setObject:detectedName forKey:@"detectedName"];
  }

  effectiveName = self->_effectiveName;
  if (effectiveName)
  {
    [v3 setObject:effectiveName forKey:@"effectiveName"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v12 = v4;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v4 = v12;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    v4 = v12;
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  v8 = self->_has;
  if ((v8 & 2) != 0)
  {
    value = self->_value;
    PBDataWriterWriteUint64Field();
    v4 = v12;
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
  v4 = v12;
  if ((*&self->_has & 4) != 0)
  {
LABEL_10:
    state = self->_state;
    PBDataWriterWriteInt32Field();
    v4 = v12;
  }

LABEL_11:
  if (self->_detectedName)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_effectiveName)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 60) |= 1u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(v4 + 14) = self->_type;
    *(v4 + 60) |= 0x10u;
  }

  v7 = v4;
  if (self->_name)
  {
    [v4 setName:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    v4[2] = self->_value;
    *(v4 + 60) |= 2u;
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

  *(v4 + 13) = self->_status;
  *(v4 + 60) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_10:
    *(v4 + 12) = self->_state;
    *(v4 + 60) |= 4u;
  }

LABEL_11:
  if (self->_detectedName)
  {
    [v7 setDetectedName:?];
    v4 = v7;
  }

  if (self->_effectiveName)
  {
    [v7 setEffectiveName:?];
    v4 = v7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(NSString *)self->_name copyWithZone:a3];
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
  v11 = [(NSString *)self->_detectedName copyWithZone:a3];
  v12 = *(v6 + 24);
  *(v6 + 24) = v11;

  v13 = [(NSString *)self->_effectiveName copyWithZone:a3];
  v14 = *(v6 + 32);
  *(v6 + 32) = v13;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  has = self->_has;
  v6 = *(v4 + 60);
  if (has)
  {
    if ((*(v4 + 60) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_34;
    }
  }

  else if (*(v4 + 60))
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 60) & 0x10) == 0 || self->_type != *(v4 + 14))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 60) & 0x10) != 0)
  {
    goto LABEL_34;
  }

  name = self->_name;
  if (name | *(v4 + 5))
  {
    if (![(NSString *)name isEqual:?])
    {
LABEL_34:
      v11 = 0;
      goto LABEL_35;
    }

    has = self->_has;
  }

  v8 = *(v4 + 60);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 60) & 2) == 0 || self->_value != *(v4 + 2))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 60) & 2) != 0)
  {
    goto LABEL_34;
  }

  if ((has & 8) != 0)
  {
    if ((*(v4 + 60) & 8) == 0 || self->_status != *(v4 + 13))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 60) & 8) != 0)
  {
    goto LABEL_34;
  }

  if ((has & 4) != 0)
  {
    if ((*(v4 + 60) & 4) == 0 || self->_state != *(v4 + 12))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 60) & 4) != 0)
  {
    goto LABEL_34;
  }

  detectedName = self->_detectedName;
  if (detectedName | *(v4 + 3) && ![(NSString *)detectedName isEqual:?])
  {
    goto LABEL_34;
  }

  effectiveName = self->_effectiveName;
  if (effectiveName | *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 60);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 60);
  }

  if ((v5 & 0x10) != 0)
  {
    self->_type = *(v4 + 14);
    *&self->_has |= 0x10u;
  }

  v7 = v4;
  if (*(v4 + 5))
  {
    [(AWDSymptomsDiagnosticIncidentEvent *)self setName:?];
    v4 = v7;
  }

  v6 = *(v4 + 60);
  if ((v6 & 2) != 0)
  {
    self->_value = *(v4 + 2);
    *&self->_has |= 2u;
    v6 = *(v4 + 60);
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

  else if ((*(v4 + 60) & 8) == 0)
  {
    goto LABEL_9;
  }

  self->_status = *(v4 + 13);
  *&self->_has |= 8u;
  if ((*(v4 + 60) & 4) != 0)
  {
LABEL_10:
    self->_state = *(v4 + 12);
    *&self->_has |= 4u;
  }

LABEL_11:
  if (*(v4 + 3))
  {
    [(AWDSymptomsDiagnosticIncidentEvent *)self setDetectedName:?];
    v4 = v7;
  }

  if (*(v4 + 4))
  {
    [(AWDSymptomsDiagnosticIncidentEvent *)self setEffectiveName:?];
    v4 = v7;
  }
}

@end