@interface HMImmutableSettingsProtoLanguageValueEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMImmutableSettingsProtoLanguageValueEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[1])
  {
    [(HMImmutableSettingsProtoLanguageValueEvent *)self setInputLanguageCode:?];
  }

  if (v4[3])
  {
    [(HMImmutableSettingsProtoLanguageValueEvent *)self setOutputVoiceLanguageCode:?];
  }

  if (v4[2])
  {
    [(HMImmutableSettingsProtoLanguageValueEvent *)self setOutputVoiceGenderCode:?];
  }

  if (v4[4])
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((inputLanguageCode = self->_inputLanguageCode, !(inputLanguageCode | v4[1])) || -[NSString isEqual:](inputLanguageCode, "isEqual:")) && ((outputVoiceLanguageCode = self->_outputVoiceLanguageCode, !(outputVoiceLanguageCode | v4[3])) || -[NSString isEqual:](outputVoiceLanguageCode, "isEqual:")) && ((outputVoiceGenderCode = self->_outputVoiceGenderCode, !(outputVoiceGenderCode | v4[2])) || -[NSString isEqual:](outputVoiceGenderCode, "isEqual:")))
  {
    voiceName = self->_voiceName;
    if (voiceName | v4[4])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_inputLanguageCode copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_outputVoiceLanguageCode copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_outputVoiceGenderCode copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_voiceName copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_inputLanguageCode)
  {
    [v4 setInputLanguageCode:?];
    v4 = v5;
  }

  if (self->_outputVoiceLanguageCode)
  {
    [v5 setOutputVoiceLanguageCode:?];
    v4 = v5;
  }

  if (self->_outputVoiceGenderCode)
  {
    [v5 setOutputVoiceGenderCode:?];
    v4 = v5;
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
  if (self->_inputLanguageCode)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_outputVoiceLanguageCode)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_outputVoiceGenderCode)
  {
    PBDataWriterWriteStringField();
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  inputLanguageCode = self->_inputLanguageCode;
  if (inputLanguageCode)
  {
    [v3 setObject:inputLanguageCode forKey:@"inputLanguageCode"];
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
  v5 = [(HMImmutableSettingsProtoLanguageValueEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end