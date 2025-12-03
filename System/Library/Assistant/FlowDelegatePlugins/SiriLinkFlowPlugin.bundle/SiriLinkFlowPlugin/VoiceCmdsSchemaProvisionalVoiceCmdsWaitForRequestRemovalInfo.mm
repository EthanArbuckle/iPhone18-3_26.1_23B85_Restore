@interface VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo)initWithDictionary:(id)dictionary;
- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo

- (void)writeTo:(id)to
{
  toCopy = to;
  shortcutName = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)self shortcutName];

  if (shortcutName)
  {
    shortcutName = self->_shortcutName;
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    clockSeconds = self->_clockSeconds;
    PBDataWriterWriteFloatField();
  }

  wfRunnerEventName = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)self wfRunnerEventName];

  v8 = toCopy;
  if (wfRunnerEventName)
  {
    wfRunnerEventName = self->_wfRunnerEventName;
    PBDataWriterWriteStringField();
    v8 = toCopy;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  shortcutName = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)self shortcutName];
  shortcutName2 = [equalCopy shortcutName];
  if ((shortcutName != 0) == (shortcutName2 == 0))
  {
    goto LABEL_14;
  }

  shortcutName3 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)self shortcutName];
  if (shortcutName3)
  {
    v8 = shortcutName3;
    shortcutName4 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)self shortcutName];
    shortcutName5 = [equalCopy shortcutName];
    v11 = [shortcutName4 isEqual:shortcutName5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    clockSeconds = self->_clockSeconds;
    [equalCopy clockSeconds];
    if (clockSeconds != v13)
    {
      goto LABEL_15;
    }
  }

  shortcutName = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)self wfRunnerEventName];
  shortcutName2 = [equalCopy wfRunnerEventName];
  if ((shortcutName != 0) != (shortcutName2 == 0))
  {
    wfRunnerEventName = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)self wfRunnerEventName];
    if (!wfRunnerEventName)
    {

LABEL_18:
      v19 = 1;
      goto LABEL_16;
    }

    v15 = wfRunnerEventName;
    wfRunnerEventName2 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)self wfRunnerEventName];
    wfRunnerEventName3 = [equalCopy wfRunnerEventName];
    v18 = [wfRunnerEventName2 isEqual:wfRunnerEventName3];

    if (v18)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v19 = 0;
LABEL_16:

  return v19;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_shortcutName hash];
  if (*&self->_has)
  {
    clockSeconds = self->_clockSeconds;
    if (clockSeconds >= 0.0)
    {
      v8 = clockSeconds;
    }

    else
    {
      v8 = -clockSeconds;
    }

    *v4.i64 = floor(v8 + 0.5);
    v9 = (v8 - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v5, v4).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v6 += v9;
      }
    }

    else
    {
      v6 -= fabs(v9);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 ^ v3 ^ [(NSString *)self->_wfRunnerEventName hash];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)self clockSeconds];
    v4 = [NSNumber numberWithFloat:?];
    [v3 setObject:v4 forKeyedSubscript:@"clockSeconds"];
  }

  if (self->_shortcutName)
  {
    shortcutName = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)self shortcutName];
    v6 = [shortcutName copy];
    [v3 setObject:v6 forKeyedSubscript:@"shortcutName"];
  }

  if (self->_wfRunnerEventName)
  {
    wfRunnerEventName = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)self wfRunnerEventName];
    v8 = [wfRunnerEventName copy];
    [v3 setObject:v8 forKeyedSubscript:@"wfRunnerEventName"];
  }

  [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)self dictionaryRepresentation];
  if ([NSJSONSerialization isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [NSJSONSerialization dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo;
  v5 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"shortcutName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)v5 setShortcutName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"clockSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)v5 setClockSeconds:?];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"wfRunnerEventName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)v5 setWfRunnerEventName:v10];
    }

    v11 = v5;
  }

  return v5;
}

@end