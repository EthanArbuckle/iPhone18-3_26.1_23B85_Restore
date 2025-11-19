@interface HMImmutableSettingsProtoSettingChangeEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSettingChangeEvent:(id)a3;
- (int)settingChangeEvent;
- (unint64_t)hash;
- (void)clearOneofValuesForSettingChangeEvent;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setAvailableLanguages:(id)a3;
- (void)setBoolSetting:(id)a3;
- (void)setBoundedIntegerSetting:(id)a3;
- (void)setHasReadOnly:(BOOL)a3;
- (void)setLanguageSetting:(id)a3;
- (void)setStringSetting:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMImmutableSettingsProtoSettingChangeEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[17])
  {
    self->_settingChangeEvent = v4[12];
    *&self->_has |= 1u;
  }

  v16 = v4;
  if (*(v4 + 4))
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  has = self->_has;
  v6 = *(v4 + 68);
  if (has)
  {
    if ((*(v4 + 68) & 1) == 0 || self->_settingChangeEvent != *(v4 + 12))
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 68))
  {
    goto LABEL_23;
  }

  keyPath = self->_keyPath;
  if (keyPath | *(v4 + 4))
  {
    if (![(NSString *)keyPath isEqual:?])
    {
      goto LABEL_23;
    }

    has = self->_has;
    v6 = *(v4 + 68);
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

  v15 = *(v4 + 64);
  if (self->_readOnly)
  {
    if ((*(v4 + 64) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 64))
  {
    goto LABEL_23;
  }

LABEL_12:
  stringSetting = self->_stringSetting;
  if (stringSetting | *(v4 + 7) && ![(HMImmutableSettingsProtoStringSettingEvent *)stringSetting isEqual:?])
  {
    goto LABEL_23;
  }

  boundedIntegerSetting = self->_boundedIntegerSetting;
  if (boundedIntegerSetting | *(v4 + 3))
  {
    if (![(HMImmutableSettingsProtoBoundedIntegerSettingEvent *)boundedIntegerSetting isEqual:?])
    {
      goto LABEL_23;
    }
  }

  BOOLSetting = self->_BOOLSetting;
  if (BOOLSetting | *(v4 + 2))
  {
    if (![(HMImmutableSettingsProtoBoolSettingEvent *)BOOLSetting isEqual:?])
    {
      goto LABEL_23;
    }
  }

  languageSetting = self->_languageSetting;
  if (languageSetting | *(v4 + 5))
  {
    if (![(HMImmutableSettingsProtoLanguageSettingEvent *)languageSetting isEqual:?])
    {
      goto LABEL_23;
    }
  }

  availableLanguages = self->_availableLanguages;
  if (availableLanguages | *(v4 + 1))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 48) = self->_settingChangeEvent;
    *(v5 + 68) |= 1u;
  }

  v7 = [(NSString *)self->_keyPath copyWithZone:a3];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 64) = self->_readOnly;
    *(v6 + 68) |= 2u;
  }

  v9 = [(HMImmutableSettingsProtoStringSettingEvent *)self->_stringSetting copyWithZone:a3];
  v10 = *(v6 + 56);
  *(v6 + 56) = v9;

  v11 = [(HMImmutableSettingsProtoBoundedIntegerSettingEvent *)self->_boundedIntegerSetting copyWithZone:a3];
  v12 = *(v6 + 24);
  *(v6 + 24) = v11;

  v13 = [(HMImmutableSettingsProtoBoolSettingEvent *)self->_BOOLSetting copyWithZone:a3];
  v14 = *(v6 + 16);
  *(v6 + 16) = v13;

  v15 = [(HMImmutableSettingsProtoLanguageSettingEvent *)self->_languageSetting copyWithZone:a3];
  v16 = *(v6 + 40);
  *(v6 + 40) = v15;

  v17 = [(HMImmutableSettingsProtoAvailableLanguageListEvent *)self->_availableLanguages copyWithZone:a3];
  v18 = *(v6 + 8);
  *(v6 + 8) = v17;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[12] = self->_settingChangeEvent;
    *(v4 + 68) |= 1u;
  }

  v5 = v4;
  if (self->_keyPath)
  {
    [v4 setKeyPath:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 64) = self->_readOnly;
    *(v4 + 68) |= 2u;
  }

  if (self->_stringSetting)
  {
    [v5 setStringSetting:?];
    v4 = v5;
  }

  if (self->_boundedIntegerSetting)
  {
    [v5 setBoundedIntegerSetting:?];
    v4 = v5;
  }

  if (self->_BOOLSetting)
  {
    [v5 setBoolSetting:?];
    v4 = v5;
  }

  if (self->_languageSetting)
  {
    [v5 setLanguageSetting:?];
    v4 = v5;
  }

  if (self->_availableLanguages)
  {
    [v5 setAvailableLanguages:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_keyPath)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    readOnly = self->_readOnly;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_stringSetting)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_boundedIntegerSetting)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_BOOLSetting)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_languageSetting)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_availableLanguages)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  keyPath = self->_keyPath;
  if (keyPath)
  {
    [v3 setObject:keyPath forKey:@"keyPath"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_readOnly];
    [v4 setObject:v6 forKey:@"readOnly"];
  }

  stringSetting = self->_stringSetting;
  if (stringSetting)
  {
    v8 = [(HMImmutableSettingsProtoStringSettingEvent *)stringSetting dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"stringSetting"];
  }

  boundedIntegerSetting = self->_boundedIntegerSetting;
  if (boundedIntegerSetting)
  {
    v10 = [(HMImmutableSettingsProtoBoundedIntegerSettingEvent *)boundedIntegerSetting dictionaryRepresentation];
    [v4 setObject:v10 forKey:@"boundedIntegerSetting"];
  }

  BOOLSetting = self->_BOOLSetting;
  if (BOOLSetting)
  {
    v12 = [(HMImmutableSettingsProtoBoolSettingEvent *)BOOLSetting dictionaryRepresentation];
    [v4 setObject:v12 forKey:@"BOOLSetting"];
  }

  languageSetting = self->_languageSetting;
  if (languageSetting)
  {
    v14 = [(HMImmutableSettingsProtoLanguageSettingEvent *)languageSetting dictionaryRepresentation];
    [v4 setObject:v14 forKey:@"languageSetting"];
  }

  availableLanguages = self->_availableLanguages;
  if (availableLanguages)
  {
    v16 = [(HMImmutableSettingsProtoAvailableLanguageListEvent *)availableLanguages dictionaryRepresentation];
    [v4 setObject:v16 forKey:@"availableLanguages"];
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
  v5 = [(HMImmutableSettingsProtoSettingChangeEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

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

- (int)StringAsSettingChangeEvent:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"stringSetting"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"boundedIntegerSetting"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"BOOLSetting"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"languageSetting"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"availableLanguages"])
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

- (void)setAvailableLanguages:(id)a3
{
  v4 = a3;
  [(HMImmutableSettingsProtoSettingChangeEvent *)self clearOneofValuesForSettingChangeEvent];
  *&self->_has |= 1u;
  self->_settingChangeEvent = 5;
  availableLanguages = self->_availableLanguages;
  self->_availableLanguages = v4;
}

- (void)setLanguageSetting:(id)a3
{
  v4 = a3;
  [(HMImmutableSettingsProtoSettingChangeEvent *)self clearOneofValuesForSettingChangeEvent];
  *&self->_has |= 1u;
  self->_settingChangeEvent = 4;
  languageSetting = self->_languageSetting;
  self->_languageSetting = v4;
}

- (void)setBoolSetting:(id)a3
{
  v4 = a3;
  [(HMImmutableSettingsProtoSettingChangeEvent *)self clearOneofValuesForSettingChangeEvent];
  *&self->_has |= 1u;
  self->_settingChangeEvent = 3;
  BOOLSetting = self->_BOOLSetting;
  self->_BOOLSetting = v4;
}

- (void)setBoundedIntegerSetting:(id)a3
{
  v4 = a3;
  [(HMImmutableSettingsProtoSettingChangeEvent *)self clearOneofValuesForSettingChangeEvent];
  *&self->_has |= 1u;
  self->_settingChangeEvent = 2;
  boundedIntegerSetting = self->_boundedIntegerSetting;
  self->_boundedIntegerSetting = v4;
}

- (void)setStringSetting:(id)a3
{
  v4 = a3;
  [(HMImmutableSettingsProtoSettingChangeEvent *)self clearOneofValuesForSettingChangeEvent];
  *&self->_has |= 1u;
  self->_settingChangeEvent = 1;
  stringSetting = self->_stringSetting;
  self->_stringSetting = v4;
}

- (void)setHasReadOnly:(BOOL)a3
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