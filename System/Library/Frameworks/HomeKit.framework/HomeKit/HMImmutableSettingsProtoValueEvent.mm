@interface HMImmutableSettingsProtoValueEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSettingValueEvent:(id)event;
- (int)settingValueEvent;
- (unint64_t)hash;
- (void)clearOneofValuesForSettingValueEvent;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setBoolValueEvent:(id)event;
- (void)setIntegerValueEvent:(id)event;
- (void)setLanguageValueEvent:(id)event;
- (void)setStringValueEvent:(id)event;
- (void)writeTo:(id)to;
@end

@implementation HMImmutableSettingsProtoValueEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 48))
  {
    self->_settingValueEvent = *(fromCopy + 8);
    *&self->_has |= 1u;
  }

  stringValueEvent = self->_stringValueEvent;
  v7 = v5[5];
  v14 = v5;
  if (stringValueEvent)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(HMImmutableSettingsProtoStringValueEvent *)stringValueEvent mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(HMImmutableSettingsProtoValueEvent *)self setStringValueEvent:?];
  }

  v5 = v14;
LABEL_9:
  integerValueEvent = self->_integerValueEvent;
  v9 = v5[2];
  if (integerValueEvent)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(HMImmutableSettingsProtoIntegerValueEvent *)integerValueEvent mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(HMImmutableSettingsProtoValueEvent *)self setIntegerValueEvent:?];
  }

  v5 = v14;
LABEL_15:
  BOOLValueEvent = self->_BOOLValueEvent;
  v11 = v5[1];
  if (BOOLValueEvent)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(HMImmutableSettingsProtoBoolValueEvent *)BOOLValueEvent mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(HMImmutableSettingsProtoValueEvent *)self setBoolValueEvent:?];
  }

  v5 = v14;
LABEL_21:
  languageValueEvent = self->_languageValueEvent;
  v13 = v5[3];
  if (languageValueEvent)
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    languageValueEvent = [(HMImmutableSettingsProtoLanguageValueEvent *)languageValueEvent mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    languageValueEvent = [(HMImmutableSettingsProtoValueEvent *)self setLanguageValueEvent:?];
  }

  v5 = v14;
LABEL_27:

  MEMORY[0x1EEE66BB8](languageValueEvent, v5);
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_settingValueEvent;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(HMImmutableSettingsProtoStringValueEvent *)self->_stringValueEvent hash]^ v3;
  v5 = [(HMImmutableSettingsProtoIntegerValueEvent *)self->_integerValueEvent hash];
  v6 = v4 ^ v5 ^ [(HMImmutableSettingsProtoBoolValueEvent *)self->_BOOLValueEvent hash];
  return v6 ^ [(HMImmutableSettingsProtoLanguageValueEvent *)self->_languageValueEvent hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_settingValueEvent != *(equalCopy + 8))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  stringValueEvent = self->_stringValueEvent;
  if (stringValueEvent | *(equalCopy + 5) && ![(HMImmutableSettingsProtoStringValueEvent *)stringValueEvent isEqual:?])
  {
    goto LABEL_15;
  }

  integerValueEvent = self->_integerValueEvent;
  if (integerValueEvent | *(equalCopy + 2))
  {
    if (![(HMImmutableSettingsProtoIntegerValueEvent *)integerValueEvent isEqual:?])
    {
      goto LABEL_15;
    }
  }

  BOOLValueEvent = self->_BOOLValueEvent;
  if (BOOLValueEvent | *(equalCopy + 1))
  {
    if (![(HMImmutableSettingsProtoBoolValueEvent *)BOOLValueEvent isEqual:?])
    {
      goto LABEL_15;
    }
  }

  languageValueEvent = self->_languageValueEvent;
  if (languageValueEvent | *(equalCopy + 3))
  {
    v10 = [(HMImmutableSettingsProtoLanguageValueEvent *)languageValueEvent isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_16:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_settingValueEvent;
    *(v5 + 48) |= 1u;
  }

  v7 = [(HMImmutableSettingsProtoStringValueEvent *)self->_stringValueEvent copyWithZone:zone];
  v8 = v6[5];
  v6[5] = v7;

  v9 = [(HMImmutableSettingsProtoIntegerValueEvent *)self->_integerValueEvent copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [(HMImmutableSettingsProtoBoolValueEvent *)self->_BOOLValueEvent copyWithZone:zone];
  v12 = v6[1];
  v6[1] = v11;

  v13 = [(HMImmutableSettingsProtoLanguageValueEvent *)self->_languageValueEvent copyWithZone:zone];
  v14 = v6[3];
  v6[3] = v13;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[8] = self->_settingValueEvent;
    *(toCopy + 48) |= 1u;
  }

  v5 = toCopy;
  if (self->_stringValueEvent)
  {
    [toCopy setStringValueEvent:?];
    toCopy = v5;
  }

  if (self->_integerValueEvent)
  {
    [v5 setIntegerValueEvent:?];
    toCopy = v5;
  }

  if (self->_BOOLValueEvent)
  {
    [v5 setBoolValueEvent:?];
    toCopy = v5;
  }

  if (self->_languageValueEvent)
  {
    [v5 setLanguageValueEvent:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_stringValueEvent)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_integerValueEvent)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_BOOLValueEvent)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_languageValueEvent)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  stringValueEvent = self->_stringValueEvent;
  if (stringValueEvent)
  {
    dictionaryRepresentation = [(HMImmutableSettingsProtoStringValueEvent *)stringValueEvent dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"stringValueEvent"];
  }

  integerValueEvent = self->_integerValueEvent;
  if (integerValueEvent)
  {
    dictionaryRepresentation2 = [(HMImmutableSettingsProtoIntegerValueEvent *)integerValueEvent dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"integerValueEvent"];
  }

  BOOLValueEvent = self->_BOOLValueEvent;
  if (BOOLValueEvent)
  {
    dictionaryRepresentation3 = [(HMImmutableSettingsProtoBoolValueEvent *)BOOLValueEvent dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"BOOLValueEvent"];
  }

  languageValueEvent = self->_languageValueEvent;
  if (languageValueEvent)
  {
    dictionaryRepresentation4 = [(HMImmutableSettingsProtoLanguageValueEvent *)languageValueEvent dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"languageValueEvent"];
  }

  if (*&self->_has)
  {
    settingValueEvent = self->_settingValueEvent;
    if (settingValueEvent >= 5)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_settingValueEvent];
    }

    else
    {
      v13 = off_1E754C840[settingValueEvent];
    }

    [dictionary setObject:v13 forKey:@"SettingValueEvent"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMImmutableSettingsProtoValueEvent;
  v4 = [(HMImmutableSettingsProtoValueEvent *)&v8 description];
  dictionaryRepresentation = [(HMImmutableSettingsProtoValueEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)clearOneofValuesForSettingValueEvent
{
  *&self->_has &= ~1u;
  self->_settingValueEvent = 0;
  stringValueEvent = self->_stringValueEvent;
  self->_stringValueEvent = 0;

  integerValueEvent = self->_integerValueEvent;
  self->_integerValueEvent = 0;

  BOOLValueEvent = self->_BOOLValueEvent;
  self->_BOOLValueEvent = 0;

  languageValueEvent = self->_languageValueEvent;
  self->_languageValueEvent = 0;
}

- (int)StringAsSettingValueEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([eventCopy isEqualToString:@"stringValueEvent"])
  {
    v4 = 1;
  }

  else if ([eventCopy isEqualToString:@"integerValueEvent"])
  {
    v4 = 2;
  }

  else if ([eventCopy isEqualToString:@"BOOLValueEvent"])
  {
    v4 = 3;
  }

  else if ([eventCopy isEqualToString:@"languageValueEvent"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)settingValueEvent
{
  if (*&self->_has)
  {
    return self->_settingValueEvent;
  }

  else
  {
    return 0;
  }
}

- (void)setLanguageValueEvent:(id)event
{
  eventCopy = event;
  [(HMImmutableSettingsProtoValueEvent *)self clearOneofValuesForSettingValueEvent];
  *&self->_has |= 1u;
  self->_settingValueEvent = 4;
  languageValueEvent = self->_languageValueEvent;
  self->_languageValueEvent = eventCopy;
}

- (void)setBoolValueEvent:(id)event
{
  eventCopy = event;
  [(HMImmutableSettingsProtoValueEvent *)self clearOneofValuesForSettingValueEvent];
  *&self->_has |= 1u;
  self->_settingValueEvent = 3;
  BOOLValueEvent = self->_BOOLValueEvent;
  self->_BOOLValueEvent = eventCopy;
}

- (void)setIntegerValueEvent:(id)event
{
  eventCopy = event;
  [(HMImmutableSettingsProtoValueEvent *)self clearOneofValuesForSettingValueEvent];
  *&self->_has |= 1u;
  self->_settingValueEvent = 2;
  integerValueEvent = self->_integerValueEvent;
  self->_integerValueEvent = eventCopy;
}

- (void)setStringValueEvent:(id)event
{
  eventCopy = event;
  [(HMImmutableSettingsProtoValueEvent *)self clearOneofValuesForSettingValueEvent];
  *&self->_has |= 1u;
  self->_settingValueEvent = 1;
  stringValueEvent = self->_stringValueEvent;
  self->_stringValueEvent = eventCopy;
}

@end