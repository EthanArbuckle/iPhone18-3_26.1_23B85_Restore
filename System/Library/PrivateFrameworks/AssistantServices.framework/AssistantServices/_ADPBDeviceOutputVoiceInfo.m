@interface _ADPBDeviceOutputVoiceInfo
- (AFVoiceInfo)_ad_voiceInfo;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)genderAsString:(int)a3;
- (int)StringAsGender:(id)a3;
- (int)gender;
- (unint64_t)hash;
- (void)_ad_setVoiceInfo:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _ADPBDeviceOutputVoiceInfo

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 2))
  {
    [(_ADPBDeviceOutputVoiceInfo *)self setLanguageCode:?];
    v4 = v5;
  }

  if (v4[8])
  {
    self->_gender = v4[2];
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    [(_ADPBDeviceOutputVoiceInfo *)self setVoiceName:?];
    v4 = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_languageCode hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_gender;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSString *)self->_voiceName hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  languageCode = self->_languageCode;
  if (languageCode | *(v4 + 2))
  {
    if (![(NSString *)languageCode isEqual:?])
    {
      goto LABEL_11;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_gender != *(v4 + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  voiceName = self->_voiceName;
  if (voiceName | *(v4 + 3))
  {
    v7 = [(NSString *)voiceName isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_12:

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_languageCode copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  if (*&self->_has)
  {
    *(v5 + 2) = self->_gender;
    *(v5 + 32) |= 1u;
  }

  v8 = [(NSString *)self->_voiceName copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_languageCode)
  {
    [v4 setLanguageCode:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 2) = self->_gender;
    *(v4 + 32) |= 1u;
  }

  if (self->_voiceName)
  {
    [v5 setVoiceName:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_languageCode)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v5;
  }

  if (self->_voiceName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  languageCode = self->_languageCode;
  if (languageCode)
  {
    [v3 setObject:languageCode forKey:@"language_code"];
  }

  if (*&self->_has)
  {
    gender = self->_gender;
    if (gender >= 4)
    {
      v7 = [NSString stringWithFormat:@"(unknown: %i)", self->_gender];
    }

    else
    {
      v7 = *(&off_100512EE8 + gender);
    }

    [v4 setObject:v7 forKey:@"gender"];
  }

  voiceName = self->_voiceName;
  if (voiceName)
  {
    [v4 setObject:voiceName forKey:@"voice_name"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = _ADPBDeviceOutputVoiceInfo;
  v3 = [(_ADPBDeviceOutputVoiceInfo *)&v7 description];
  v4 = [(_ADPBDeviceOutputVoiceInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (int)StringAsGender:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"MALE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"FEMALE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"NEUTRAL"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)genderAsString:(int)a3
{
  if (a3 >= 4)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = *(&off_100512EE8 + a3);
  }

  return v4;
}

- (int)gender
{
  if (*&self->_has)
  {
    return self->_gender;
  }

  else
  {
    return 0;
  }
}

- (void)_ad_setVoiceInfo:(id)a3
{
  v8 = a3;
  v4 = [v8 languageCode];
  [(_ADPBDeviceOutputVoiceInfo *)self setLanguageCode:v4];

  v5 = [v8 gender] - 1;
  if (v5 < 3)
  {
    v6 = (v5 + 1);
  }

  else
  {
    v6 = 0;
  }

  [(_ADPBDeviceOutputVoiceInfo *)self setGender:v6];
  v7 = [v8 name];
  [(_ADPBDeviceOutputVoiceInfo *)self setVoiceName:v7];
}

- (AFVoiceInfo)_ad_voiceInfo
{
  v3 = [AFVoiceInfo alloc];
  v4 = [(_ADPBDeviceOutputVoiceInfo *)self languageCode];
  v5 = [(_ADPBDeviceOutputVoiceInfo *)self gender]- 1;
  if (v5 < 3)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(_ADPBDeviceOutputVoiceInfo *)self voiceName];
  v8 = [v3 initWithLanguageCode:v4 gender:v6 isCustom:1 name:v7 footprint:0 contentVersion:0 masteredVersion:0];

  return v8;
}

@end