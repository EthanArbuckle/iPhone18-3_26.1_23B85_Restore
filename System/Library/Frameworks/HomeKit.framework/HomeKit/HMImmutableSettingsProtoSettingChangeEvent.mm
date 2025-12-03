@interface HMImmutableSettingsProtoSettingChangeEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSettingChangeEvent:(id)event;
- (int)settingChangeEvent;
- (unint64_t)hash;
- (void)clearOneofValuesForSettingChangeEvent;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setAvailableLanguages:(id)languages;
- (void)setBoolSetting:(id)setting;
- (void)setBoundedIntegerSetting:(id)setting;
- (void)setHasReadOnly:(BOOL)only;
- (void)setLanguageSetting:(id)setting;
- (void)setStringSetting:(id)setting;
- (void)writeTo:(id)to;
@end

@implementation HMImmutableSettingsProtoSettingChangeEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[17])
  {
    self->_settingChangeEvent = fromCopy[12];
    *&self->_has |= 1u;
  }

  v16 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(HMImmutableSettingsProtoSettingChangeEvent *)self setKeyPath:?];
    v5 = v16;
  }

  if ((v5[17] & 2) != 0)
  {
    self->_readOnly = *(v5 + 64);
    *&self->_has |= 2u;
  }

  stringSetting = self->_stringSetting;
  v7 = *(v5 + 7);
  if (stringSetting)
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    [(HMImmutableSettingsProtoStringSettingEvent *)stringSetting mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    [(HMImmutableSettingsProtoSettingChangeEvent *)self setStringSetting:?];
  }

  v5 = v16;
LABEL_13:
  boundedIntegerSetting = self->_boundedIntegerSetting;
  v9 = *(v5 + 3);
  if (boundedIntegerSetting)
  {
    if (!v9)
    {
      goto LABEL_19;
    }

    [(HMImmutableSettingsProtoBoundedIntegerSettingEvent *)boundedIntegerSetting mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_19;
    }

    [(HMImmutableSettingsProtoSettingChangeEvent *)self setBoundedIntegerSetting:?];
  }

  v5 = v16;
LABEL_19:
  BOOLSetting = self->_BOOLSetting;
  v11 = *(v5 + 2);
  if (BOOLSetting)
  {
    if (!v11)
    {
      goto LABEL_25;
    }

    [(HMImmutableSettingsProtoBoolSettingEvent *)BOOLSetting mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_25;
    }

    [(HMImmutableSettingsProtoSettingChangeEvent *)self setBoolSetting:?];
  }

  v5 = v16;
LABEL_25:
  languageSetting = self->_languageSetting;
  v13 = *(v5 + 5);
  if (languageSetting)
  {
    if (!v13)
    {
      goto LABEL_31;
    }

    [(HMImmutableSettingsProtoLanguageSettingEvent *)languageSetting mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_31;
    }

    [(HMImmutableSettingsProtoSettingChangeEvent *)self setLanguageSetting:?];
  }

  v5 = v16;
LABEL_31:
  availableLanguages = self->_availableLanguages;
  v15 = *(v5 + 1);
  if (availableLanguages)
  {
    if (!v15)
    {
      goto LABEL_37;
    }

    availableLanguages = [(HMImmutableSettingsProtoAvailableLanguageListEvent *)availableLanguages mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_37;
    }

    availableLanguages = [(HMImmutableSettingsProtoSettingChangeEvent *)self setAvailableLanguages:?];
  }

  v5 = v16;
LABEL_37:

  MEMORY[0x1EEE66BB8](availableLanguages, v5);
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_settingChangeEvent;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_keyPath hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_readOnly;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(HMImmutableSettingsProtoStringSettingEvent *)self->_stringSetting hash];
  v7 = [(HMImmutableSettingsProtoBoundedIntegerSettingEvent *)self->_boundedIntegerSetting hash];
  v8 = v7 ^ [(HMImmutableSettingsProtoBoolSettingEvent *)self->_BOOLSetting hash];
  v9 = v6 ^ v8 ^ [(HMImmutableSettingsProtoLanguageSettingEvent *)self->_languageSetting hash];
  return v9 ^ [(HMImmutableSettingsProtoAvailableLanguageListEvent *)self->_availableLanguages hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  has = self->_has;
  v6 = *(equalCopy + 68);
  if (has)
  {
    if ((*(equalCopy + 68) & 1) == 0 || self->_settingChangeEvent != *(equalCopy + 12))
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 68))
  {
    goto LABEL_23;
  }

  keyPath = self->_keyPath;
  if (keyPath | *(equalCopy + 4))
  {
    if (![(NSString *)keyPath isEqual:?])
    {
      goto LABEL_23;
    }

    has = self->_has;
    v6 = *(equalCopy + 68);
  }

  if ((has & 2) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_23:
    v13 = 0;
    goto LABEL_24;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_23;
  }

  v15 = *(equalCopy + 64);
  if (self->_readOnly)
  {
    if ((*(equalCopy + 64) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 64))
  {
    goto LABEL_23;
  }

LABEL_12:
  stringSetting = self->_stringSetting;
  if (stringSetting | *(equalCopy + 7) && ![(HMImmutableSettingsProtoStringSettingEvent *)stringSetting isEqual:?])
  {
    goto LABEL_23;
  }

  boundedIntegerSetting = self->_boundedIntegerSetting;
  if (boundedIntegerSetting | *(equalCopy + 3))
  {
    if (![(HMImmutableSettingsProtoBoundedIntegerSettingEvent *)boundedIntegerSetting isEqual:?])
    {
      goto LABEL_23;
    }
  }

  BOOLSetting = self->_BOOLSetting;
  if (BOOLSetting | *(equalCopy + 2))
  {
    if (![(HMImmutableSettingsProtoBoolSettingEvent *)BOOLSetting isEqual:?])
    {
      goto LABEL_23;
    }
  }

  languageSetting = self->_languageSetting;
  if (languageSetting | *(equalCopy + 5))
  {
    if (![(HMImmutableSettingsProtoLanguageSettingEvent *)languageSetting isEqual:?])
    {
      goto LABEL_23;
    }
  }

  availableLanguages = self->_availableLanguages;
  if (availableLanguages | *(equalCopy + 1))
  {
    v13 = [(HMImmutableSettingsProtoAvailableLanguageListEvent *)availableLanguages isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_24:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 48) = self->_settingChangeEvent;
    *(v5 + 68) |= 1u;
  }

  v7 = [(NSString *)self->_keyPath copyWithZone:zone];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 64) = self->_readOnly;
    *(v6 + 68) |= 2u;
  }

  v9 = [(HMImmutableSettingsProtoStringSettingEvent *)self->_stringSetting copyWithZone:zone];
  v10 = *(v6 + 56);
  *(v6 + 56) = v9;

  v11 = [(HMImmutableSettingsProtoBoundedIntegerSettingEvent *)self->_boundedIntegerSetting copyWithZone:zone];
  v12 = *(v6 + 24);
  *(v6 + 24) = v11;

  v13 = [(HMImmutableSettingsProtoBoolSettingEvent *)self->_BOOLSetting copyWithZone:zone];
  v14 = *(v6 + 16);
  *(v6 + 16) = v13;

  v15 = [(HMImmutableSettingsProtoLanguageSettingEvent *)self->_languageSetting copyWithZone:zone];
  v16 = *(v6 + 40);
  *(v6 + 40) = v15;

  v17 = [(HMImmutableSettingsProtoAvailableLanguageListEvent *)self->_availableLanguages copyWithZone:zone];
  v18 = *(v6 + 8);
  *(v6 + 8) = v17;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[12] = self->_settingChangeEvent;
    *(toCopy + 68) |= 1u;
  }

  v5 = toCopy;
  if (self->_keyPath)
  {
    [toCopy setKeyPath:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 64) = self->_readOnly;
    *(toCopy + 68) |= 2u;
  }

  if (self->_stringSetting)
  {
    [v5 setStringSetting:?];
    toCopy = v5;
  }

  if (self->_boundedIntegerSetting)
  {
    [v5 setBoundedIntegerSetting:?];
    toCopy = v5;
  }

  if (self->_BOOLSetting)
  {
    [v5 setBoolSetting:?];
    toCopy = v5;
  }

  if (self->_languageSetting)
  {
    [v5 setLanguageSetting:?];
    toCopy = v5;
  }

  if (self->_availableLanguages)
  {
    [v5 setAvailableLanguages:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_keyPath)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    readOnly = self->_readOnly;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_stringSetting)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_boundedIntegerSetting)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_BOOLSetting)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_languageSetting)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_availableLanguages)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  keyPath = self->_keyPath;
  if (keyPath)
  {
    [dictionary setObject:keyPath forKey:@"keyPath"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_readOnly];
    [v4 setObject:v6 forKey:@"readOnly"];
  }

  stringSetting = self->_stringSetting;
  if (stringSetting)
  {
    dictionaryRepresentation = [(HMImmutableSettingsProtoStringSettingEvent *)stringSetting dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"stringSetting"];
  }

  boundedIntegerSetting = self->_boundedIntegerSetting;
  if (boundedIntegerSetting)
  {
    dictionaryRepresentation2 = [(HMImmutableSettingsProtoBoundedIntegerSettingEvent *)boundedIntegerSetting dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"boundedIntegerSetting"];
  }

  BOOLSetting = self->_BOOLSetting;
  if (BOOLSetting)
  {
    dictionaryRepresentation3 = [(HMImmutableSettingsProtoBoolSettingEvent *)BOOLSetting dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"BOOLSetting"];
  }

  languageSetting = self->_languageSetting;
  if (languageSetting)
  {
    dictionaryRepresentation4 = [(HMImmutableSettingsProtoLanguageSettingEvent *)languageSetting dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation4 forKey:@"languageSetting"];
  }

  availableLanguages = self->_availableLanguages;
  if (availableLanguages)
  {
    dictionaryRepresentation5 = [(HMImmutableSettingsProtoAvailableLanguageListEvent *)availableLanguages dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation5 forKey:@"availableLanguages"];
  }

  if (*&self->_has)
  {
    settingChangeEvent = self->_settingChangeEvent;
    if (settingChangeEvent >= 6)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_settingChangeEvent];
    }

    else
    {
      v18 = off_1E754D0D0[settingChangeEvent];
    }

    [v4 setObject:v18 forKey:@"SettingChangeEvent"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMImmutableSettingsProtoSettingChangeEvent;
  v4 = [(HMImmutableSettingsProtoSettingChangeEvent *)&v8 description];
  dictionaryRepresentation = [(HMImmutableSettingsProtoSettingChangeEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)clearOneofValuesForSettingChangeEvent
{
  *&self->_has &= ~1u;
  self->_settingChangeEvent = 0;
  stringSetting = self->_stringSetting;
  self->_stringSetting = 0;

  boundedIntegerSetting = self->_boundedIntegerSetting;
  self->_boundedIntegerSetting = 0;

  BOOLSetting = self->_BOOLSetting;
  self->_BOOLSetting = 0;

  languageSetting = self->_languageSetting;
  self->_languageSetting = 0;

  availableLanguages = self->_availableLanguages;
  self->_availableLanguages = 0;
}

- (int)StringAsSettingChangeEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([eventCopy isEqualToString:@"stringSetting"])
  {
    v4 = 1;
  }

  else if ([eventCopy isEqualToString:@"boundedIntegerSetting"])
  {
    v4 = 2;
  }

  else if ([eventCopy isEqualToString:@"BOOLSetting"])
  {
    v4 = 3;
  }

  else if ([eventCopy isEqualToString:@"languageSetting"])
  {
    v4 = 4;
  }

  else if ([eventCopy isEqualToString:@"availableLanguages"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)settingChangeEvent
{
  if (*&self->_has)
  {
    return self->_settingChangeEvent;
  }

  else
  {
    return 0;
  }
}

- (void)setAvailableLanguages:(id)languages
{
  languagesCopy = languages;
  [(HMImmutableSettingsProtoSettingChangeEvent *)self clearOneofValuesForSettingChangeEvent];
  *&self->_has |= 1u;
  self->_settingChangeEvent = 5;
  availableLanguages = self->_availableLanguages;
  self->_availableLanguages = languagesCopy;
}

- (void)setLanguageSetting:(id)setting
{
  settingCopy = setting;
  [(HMImmutableSettingsProtoSettingChangeEvent *)self clearOneofValuesForSettingChangeEvent];
  *&self->_has |= 1u;
  self->_settingChangeEvent = 4;
  languageSetting = self->_languageSetting;
  self->_languageSetting = settingCopy;
}

- (void)setBoolSetting:(id)setting
{
  settingCopy = setting;
  [(HMImmutableSettingsProtoSettingChangeEvent *)self clearOneofValuesForSettingChangeEvent];
  *&self->_has |= 1u;
  self->_settingChangeEvent = 3;
  BOOLSetting = self->_BOOLSetting;
  self->_BOOLSetting = settingCopy;
}

- (void)setBoundedIntegerSetting:(id)setting
{
  settingCopy = setting;
  [(HMImmutableSettingsProtoSettingChangeEvent *)self clearOneofValuesForSettingChangeEvent];
  *&self->_has |= 1u;
  self->_settingChangeEvent = 2;
  boundedIntegerSetting = self->_boundedIntegerSetting;
  self->_boundedIntegerSetting = settingCopy;
}

- (void)setStringSetting:(id)setting
{
  settingCopy = setting;
  [(HMImmutableSettingsProtoSettingChangeEvent *)self clearOneofValuesForSettingChangeEvent];
  *&self->_has |= 1u;
  self->_settingChangeEvent = 1;
  stringSetting = self->_stringSetting;
  self->_stringSetting = settingCopy;
}

- (void)setHasReadOnly:(BOOL)only
{
  if (only)
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