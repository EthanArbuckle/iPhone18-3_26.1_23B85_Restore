@interface HMImmutableSettingsProtoBoundedIntegerSettingEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMinValue:(BOOL)value;
- (void)setHasStepValue:(BOOL)value;
- (void)writeTo:(id)to;
@end

@implementation HMImmutableSettingsProtoBoundedIntegerSettingEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  value = self->_value;
  v6 = fromCopy[4];
  if (value)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    value = [(HMImmutableSettingsProtoIntegerValueEvent *)value mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    value = [(HMImmutableSettingsProtoBoundedIntegerSettingEvent *)self setValue:?];
  }

  fromCopy = v8;
LABEL_7:
  v7 = *(fromCopy + 40);
  if ((v7 & 2) != 0)
  {
    self->_minValue = fromCopy[2];
    *&self->_has |= 2u;
    v7 = *(fromCopy + 40);
    if ((v7 & 1) == 0)
    {
LABEL_9:
      if ((v7 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((fromCopy[5] & 1) == 0)
  {
    goto LABEL_9;
  }

  self->_maxValue = fromCopy[1];
  *&self->_has |= 1u;
  if ((fromCopy[5] & 4) != 0)
  {
LABEL_10:
    self->_stepValue = fromCopy[3];
    *&self->_has |= 4u;
  }

LABEL_11:

  MEMORY[0x1EEE66BB8](value, fromCopy);
}

- (unint64_t)hash
{
  v3 = [(HMImmutableSettingsProtoIntegerValueEvent *)self->_value hash];
  if ((*&self->_has & 2) == 0)
  {
    v4 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v4 = 2654435761 * self->_minValue;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_maxValue;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_stepValue;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  value = self->_value;
  if (value | *(equalCopy + 4))
  {
    if (![(HMImmutableSettingsProtoIntegerValueEvent *)value isEqual:?])
    {
      goto LABEL_18;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_minValue != *(equalCopy + 2))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
LABEL_18:
    v6 = 0;
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_maxValue != *(equalCopy + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_18;
  }

  v6 = (*(equalCopy + 40) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0 || self->_stepValue != *(equalCopy + 3))
    {
      goto LABEL_18;
    }

    v6 = 1;
  }

LABEL_19:

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HMImmutableSettingsProtoIntegerValueEvent *)self->_value copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 8) = self->_maxValue;
    *(v5 + 40) |= 1u;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *(v5 + 16) = self->_minValue;
  *(v5 + 40) |= 2u;
  has = self->_has;
  if (has)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 24) = self->_stepValue;
    *(v5 + 40) |= 4u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_value)
  {
    v6 = toCopy;
    [toCopy setValue:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 2) = self->_minValue;
    *(toCopy + 40) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 1) = self->_maxValue;
  *(toCopy + 40) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    *(toCopy + 3) = self->_stepValue;
    *(toCopy + 40) |= 4u;
  }

LABEL_7:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    minValue = self->_minValue;
    PBDataWriterWriteInt64Field();
    toCopy = v9;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  maxValue = self->_maxValue;
  PBDataWriterWriteInt64Field();
  toCopy = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    stepValue = self->_stepValue;
    PBDataWriterWriteInt64Field();
    toCopy = v9;
  }

LABEL_7:
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  value = self->_value;
  if (value)
  {
    dictionaryRepresentation = [(HMImmutableSettingsProtoIntegerValueEvent *)value dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"value"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_minValue];
    [dictionary setObject:v9 forKey:@"minValue"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_maxValue];
  [dictionary setObject:v10 forKey:@"maxValue"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_stepValue];
    [dictionary setObject:v7 forKey:@"stepValue"];
  }

LABEL_7:

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMImmutableSettingsProtoBoundedIntegerSettingEvent;
  v4 = [(HMImmutableSettingsProtoBoundedIntegerSettingEvent *)&v8 description];
  dictionaryRepresentation = [(HMImmutableSettingsProtoBoundedIntegerSettingEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasStepValue:(BOOL)value
{
  if (value)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMinValue:(BOOL)value
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

@end