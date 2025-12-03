@interface HMImmutableSettingsProtoLanguageSettingEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMImmutableSettingsProtoLanguageSettingEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  value = self->_value;
  v6 = fromCopy[1];
  if (value)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    value = [(HMImmutableSettingsProtoLanguageValueEvent *)value mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    value = [(HMImmutableSettingsProtoLanguageSettingEvent *)self setValue:?];
  }

  fromCopy = v7;
LABEL_7:

  MEMORY[0x1EEE66BB8](value, fromCopy);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    value = self->_value;
    if (value | equalCopy[1])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HMImmutableSettingsProtoLanguageValueEvent *)self->_value copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  value = self->_value;
  if (value)
  {
    [to setValue:value];
  }
}

- (void)writeTo:(id)to
{
  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  value = self->_value;
  if (value)
  {
    dictionaryRepresentation = [(HMImmutableSettingsProtoLanguageValueEvent *)value dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"value"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMImmutableSettingsProtoLanguageSettingEvent;
  v4 = [(HMImmutableSettingsProtoLanguageSettingEvent *)&v8 description];
  dictionaryRepresentation = [(HMImmutableSettingsProtoLanguageSettingEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end