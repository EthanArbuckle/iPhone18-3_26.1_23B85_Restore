@interface HMImmutableSettingsProtoLanguageSettingEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMImmutableSettingsProtoLanguageSettingEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  value = self->_value;
  v6 = v4[1];
  if (value)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    value = [(HMImmutableSettingsProtoLanguageValueEvent *)value mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    value = [(HMImmutableSettingsProtoLanguageSettingEvent *)self setValue:?];
  }

  v4 = v7;
LABEL_7:

  MEMORY[0x1EEE66BB8](value, v4);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    value = self->_value;
    if (value | v4[1])
    {
      v6 = [(HMImmutableSettingsProtoLanguageValueEvent *)value isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HMImmutableSettingsProtoLanguageValueEvent *)self->_value copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)a3
{
  value = self->_value;
  if (value)
  {
    [a3 setValue:value];
  }
}

- (void)writeTo:(id)a3
{
  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  value = self->_value;
  if (value)
  {
    v5 = [(HMImmutableSettingsProtoLanguageValueEvent *)value dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"value"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMImmutableSettingsProtoLanguageSettingEvent;
  v4 = [(HMImmutableSettingsProtoLanguageSettingEvent *)&v8 description];
  v5 = [(HMImmutableSettingsProtoLanguageSettingEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end