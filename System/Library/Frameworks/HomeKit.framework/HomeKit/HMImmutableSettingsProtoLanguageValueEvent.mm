@interface HMImmutableSettingsProtoLanguageValueEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMImmutableSettingsProtoLanguageValueEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[1])
  {
    [(HMImmutableSettingsProtoLanguageValueEvent *)self setInputLanguageCode:?];
  }

  if (fromCopy[3])
  {
    [(HMImmutableSettingsProtoLanguageValueEvent *)self setOutputVoiceLanguageCode:?];
  }

  if (fromCopy[2])
  {
    [(HMImmutableSettingsProtoLanguageValueEvent *)self setOutputVoiceGenderCode:?];
  }

  if (fromCopy[4])
  {
    [(HMImmutableSettingsProtoLanguageValueEvent *)self setVoiceName:?];
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_inputLanguageCode hash];
  v4 = [(NSString *)self->_outputVoiceLanguageCode hash]^ v3;
  v5 = [(NSString *)self->_outputVoiceGenderCode hash];
  return v4 ^ v5 ^ [(NSString *)self->_voiceName hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((inputLanguageCode = self->_inputLanguageCode, !(inputLanguageCode | equalCopy[1])) || -[NSString isEqual:](inputLanguageCode, "isEqual:")) && ((outputVoiceLanguageCode = self->_outputVoiceLanguageCode, !(outputVoiceLanguageCode | equalCopy[3])) || -[NSString isEqual:](outputVoiceLanguageCode, "isEqual:")) && ((outputVoiceGenderCode = self->_outputVoiceGenderCode, !(outputVoiceGenderCode | equalCopy[2])) || -[NSString isEqual:](outputVoiceGenderCode, "isEqual:")))
  {
    voiceName = self->_voiceName;
    if (voiceName | equalCopy[4])
    {
      v9 = [(NSString *)voiceName isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_inputLanguageCode copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_outputVoiceLanguageCode copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_outputVoiceGenderCode copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_voiceName copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_inputLanguageCode)
  {
    [toCopy setInputLanguageCode:?];
    toCopy = v5;
  }

  if (self->_outputVoiceLanguageCode)
  {
    [v5 setOutputVoiceLanguageCode:?];
    toCopy = v5;
  }

  if (self->_outputVoiceGenderCode)
  {
    [v5 setOutputVoiceGenderCode:?];
    toCopy = v5;
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
  if (self->_inputLanguageCode)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_outputVoiceLanguageCode)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_outputVoiceGenderCode)
  {
    PBDataWriterWriteStringField();
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  inputLanguageCode = self->_inputLanguageCode;
  if (inputLanguageCode)
  {
    [dictionary setObject:inputLanguageCode forKey:@"inputLanguageCode"];
  }

  outputVoiceLanguageCode = self->_outputVoiceLanguageCode;
  if (outputVoiceLanguageCode)
  {
    [v4 setObject:outputVoiceLanguageCode forKey:@"outputVoiceLanguageCode"];
  }

  outputVoiceGenderCode = self->_outputVoiceGenderCode;
  if (outputVoiceGenderCode)
  {
    [v4 setObject:outputVoiceGenderCode forKey:@"outputVoiceGenderCode"];
  }

  voiceName = self->_voiceName;
  if (voiceName)
  {
    [v4 setObject:voiceName forKey:@"voiceName"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMImmutableSettingsProtoLanguageValueEvent;
  v4 = [(HMImmutableSettingsProtoLanguageValueEvent *)&v8 description];
  dictionaryRepresentation = [(HMImmutableSettingsProtoLanguageValueEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end