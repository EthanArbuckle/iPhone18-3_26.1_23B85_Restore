@interface VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo)initWithDictionary:(id)a3;
- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)self shortcutName];

  if (v4)
  {
    shortcutName = self->_shortcutName;
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    clockSeconds = self->_clockSeconds;
    PBDataWriterWriteFloatField();
  }

  v7 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)self wfRunnerEventName];

  v8 = v10;
  if (v7)
  {
    wfRunnerEventName = self->_wfRunnerEventName;
    PBDataWriterWriteStringField();
    v8 = v10;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)self shortcutName];
  v6 = [v4 shortcutName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_14;
  }

  v7 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)self shortcutName];
  if (v7)
  {
    v8 = v7;
    v9 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)self shortcutName];
    v10 = [v4 shortcutName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    clockSeconds = self->_clockSeconds;
    [v4 clockSeconds];
    if (clockSeconds != v13)
    {
      goto LABEL_15;
    }
  }

  v5 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)self wfRunnerEventName];
  v6 = [v4 wfRunnerEventName];
  if ((v5 != 0) != (v6 == 0))
  {
    v14 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)self wfRunnerEventName];
    if (!v14)
    {

LABEL_18:
      v19 = 1;
      goto LABEL_16;
    }

    v15 = v14;
    v16 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)self wfRunnerEventName];
    v17 = [v4 wfRunnerEventName];
    v18 = [v16 isEqual:v17];

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
    v5 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)self shortcutName];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"shortcutName"];
  }

  if (self->_wfRunnerEventName)
  {
    v7 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)self wfRunnerEventName];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"wfRunnerEventName"];
  }

  [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (NSData)jsonData
{
  v2 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)self dictionaryRepresentation];
  if ([NSJSONSerialization isValidJSONObject:v2])
  {
    v3 = [NSJSONSerialization dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo;
  v5 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"shortcutName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)v5 setShortcutName:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"clockSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)v5 setClockSeconds:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"wfRunnerEventName"];
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