@interface _ADPBDeviceOutputVoiceInfo
- (AFVoiceInfo)_ad_voiceInfo;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)genderAsString:(int)string;
- (int)StringAsGender:(id)gender;
- (int)gender;
- (unint64_t)hash;
- (void)_ad_setVoiceInfo:(id)info;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _ADPBDeviceOutputVoiceInfo

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(_ADPBDeviceOutputVoiceInfo *)self setLanguageCode:?];
    fromCopy = v5;
  }

  if (fromCopy[8])
  {
    self->_gender = fromCopy[2];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    [(_ADPBDeviceOutputVoiceInfo *)self setVoiceName:?];
    fromCopy = v5;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  languageCode = self->_languageCode;
  if (languageCode | *(equalCopy + 2))
  {
    if (![(NSString *)languageCode isEqual:?])
    {
      goto LABEL_11;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_gender != *(equalCopy + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  voiceName = self->_voiceName;
  if (voiceName | *(equalCopy + 3))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_languageCode copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  if (*&self->_has)
  {
    *(v5 + 2) = self->_gender;
    *(v5 + 32) |= 1u;
  }

  v8 = [(NSString *)self->_voiceName copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_languageCode)
  {
    [toCopy setLanguageCode:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_gender;
    *(toCopy + 32) |= 1u;
  }

  if (self->_voiceName)
  {
    [v5 setVoiceName:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_languageCode)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_voiceName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
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
  dictionaryRepresentation = [(_ADPBDeviceOutputVoiceInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (int)StringAsGender:(id)gender
{
  genderCopy = gender;
  if ([genderCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([genderCopy isEqualToString:@"MALE"])
  {
    v4 = 1;
  }

  else if ([genderCopy isEqualToString:@"FEMALE"])
  {
    v4 = 2;
  }

  else if ([genderCopy isEqualToString:@"NEUTRAL"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)genderAsString:(int)string
{
  if (string >= 4)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_100512EE8 + string);
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

- (void)_ad_setVoiceInfo:(id)info
{
  infoCopy = info;
  languageCode = [infoCopy languageCode];
  [(_ADPBDeviceOutputVoiceInfo *)self setLanguageCode:languageCode];

  v5 = [infoCopy gender] - 1;
  if (v5 < 3)
  {
    v6 = (v5 + 1);
  }

  else
  {
    v6 = 0;
  }

  [(_ADPBDeviceOutputVoiceInfo *)self setGender:v6];
  name = [infoCopy name];
  [(_ADPBDeviceOutputVoiceInfo *)self setVoiceName:name];
}

- (AFVoiceInfo)_ad_voiceInfo
{
  v3 = [AFVoiceInfo alloc];
  languageCode = [(_ADPBDeviceOutputVoiceInfo *)self languageCode];
  v5 = [(_ADPBDeviceOutputVoiceInfo *)self gender]- 1;
  if (v5 < 3)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 0;
  }

  voiceName = [(_ADPBDeviceOutputVoiceInfo *)self voiceName];
  v8 = [v3 initWithLanguageCode:languageCode gender:v6 isCustom:1 name:voiceName footprint:0 contentVersion:0 masteredVersion:0];

  return v8;
}

@end