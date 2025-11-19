@interface HMImmutableSettingsProtoBoundedIntegerSettingEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMinValue:(BOOL)a3;
- (void)setHasStepValue:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMImmutableSettingsProtoBoundedIntegerSettingEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  value = self->_value;
  v6 = v4[4];
  if (value)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    value = [(HMImmutableSettingsProtoIntegerValueEvent *)value mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    value = [(HMImmutableSettingsProtoBoundedIntegerSettingEvent *)self setValue:?];
  }

  v4 = v8;
LABEL_7:
  v7 = *(v4 + 40);
  if ((v7 & 2) != 0)
  {
    self->_minValue = v4[2];
    *&self->_has |= 2u;
    v7 = *(v4 + 40);
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

  else if ((v4[5] & 1) == 0)
  {
    goto LABEL_9;
  }

  self->_maxValue = v4[1];
  *&self->_has |= 1u;
  if ((v4[5] & 4) != 0)
  {
LABEL_10:
    self->_stepValue = v4[3];
    *&self->_has |= 4u;
  }

LABEL_11:

  MEMORY[0x1EEE66BB8](value, v4);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  value = self->_value;
  if (value | *(v4 + 4))
  {
    if (![(HMImmutableSettingsProtoIntegerValueEvent *)value isEqual:?])
    {
      goto LABEL_18;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_minValue != *(v4 + 2))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
LABEL_18:
    v6 = 0;
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_maxValue != *(v4 + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_18;
  }

  v6 = (*(v4 + 40) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0 || self->_stepValue != *(v4 + 3))
    {
      goto LABEL_18;
    }

    v6 = 1;
  }

LABEL_19:

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HMImmutableSettingsProtoIntegerValueEvent *)self->_value copyWithZone:a3];
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_value)
  {
    v6 = v4;
    [v4 setValue:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 2) = self->_minValue;
    *(v4 + 40) |= 2u;
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

  *(v4 + 1) = self->_maxValue;
  *(v4 + 40) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    *(v4 + 3) = self->_stepValue;
    *(v4 + 40) |= 4u;
  }

LABEL_7:
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    minValue = self->_minValue;
    PBDataWriterWriteInt64Field();
    v4 = v9;
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
  v4 = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    stepValue = self->_stepValue;
    PBDataWriterWriteInt64Field();
    v4 = v9;
  }

LABEL_7:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  value = self->_value;
  if (value)
  {
    v5 = [(HMImmutableSettingsProtoIntegerValueEvent *)value dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"value"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_minValue];
    [v3 setObject:v9 forKey:@"minValue"];

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
  [v3 setObject:v10 forKey:@"maxValue"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_stepValue];
    [v3 setObject:v7 forKey:@"stepValue"];
  }

LABEL_7:

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMImmutableSettingsProtoBoundedIntegerSettingEvent;
  v4 = [(HMImmutableSettingsProtoBoundedIntegerSettingEvent *)&v8 description];
  v5 = [(HMImmutableSettingsProtoBoundedIntegerSettingEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasStepValue:(BOOL)a3
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

- (void)setHasMinValue:(BOOL)a3
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

@end