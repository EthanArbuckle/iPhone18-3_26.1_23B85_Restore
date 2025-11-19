@interface VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext)initWithDictionary:(id)a3;
- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext)initWithJSON:(id)a3;
- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfo)startedOrChanged;
- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo)ended;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (unint64_t)hash;
- (void)deleteEnded;
- (void)deleteStartedOrChanged;
- (void)setEnded:(id)a3;
- (void)setStartedOrChanged:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext

- (id)qualifiedMessageName
{
  v2 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self whichContextevent];
  v3 = @"com.apple.aiml.siri.voicecmds.ProvisionalVoiceCmdsWaitForRequestContext";
  if (v2 == 101)
  {
    v3 = @"com.apple.aiml.siri.voicecmds.ProvisionalVoiceCmdsWaitForRequestContext.ProvisionalVoiceCmdsWaitForRequestRemovalInfo";
  }

  if (v2 == 100)
  {
    return @"com.apple.aiml.siri.voicecmds.ProvisionalVoiceCmdsWaitForRequestContext.ProvisionalVoiceCmdsWaitForRequestContextInfo";
  }

  else
  {
    return v3;
  }
}

- (void)setStartedOrChanged:(id)a3
{
  v4 = a3;
  ended = self->_ended;
  self->_ended = 0;

  v6 = 100;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichContextevent = v6;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = v4;
}

- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfo)startedOrChanged
{
  if (self->_whichContextevent == 100)
  {
    v3 = self->_startedOrChanged;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)deleteStartedOrChanged
{
  if (self->_whichContextevent == 100)
  {
    self->_whichContextevent = 0;
    startedOrChanged = self->_startedOrChanged;
    self->_startedOrChanged = 0;
  }
}

- (void)setEnded:(id)a3
{
  v4 = a3;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  v6 = 101;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichContextevent = v6;
  ended = self->_ended;
  self->_ended = v4;
}

- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo)ended
{
  if (self->_whichContextevent == 101)
  {
    v3 = self->_ended;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)deleteEnded
{
  if (self->_whichContextevent == 101)
  {
    self->_whichContextevent = 0;
    ended = self->_ended;
    self->_ended = 0;
  }
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self contextId];

  if (v4)
  {
    v5 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self contextId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self startedOrChanged];

  if (v6)
  {
    v7 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self ended];

  v9 = v11;
  if (v8)
  {
    v10 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self ended];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  whichContextevent = self->_whichContextevent;
  if (whichContextevent != [v4 whichContextevent])
  {
    goto LABEL_18;
  }

  v6 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self contextId];
  v7 = [v4 contextId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self contextId];
  if (v8)
  {
    v9 = v8;
    v10 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self contextId];
    v11 = [v4 contextId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self startedOrChanged];
  v7 = [v4 startedOrChanged];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v13 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self startedOrChanged];
  if (v13)
  {
    v14 = v13;
    v15 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self startedOrChanged];
    v16 = [v4 startedOrChanged];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self ended];
  v7 = [v4 ended];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self ended];
    if (!v18)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = v18;
    v20 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self ended];
    v21 = [v4 ended];
    v22 = [v20 isEqual:v21];

    if (v22)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_17:
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_contextId hash];
  v4 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfo *)self->_startedOrChanged hash]^ v3;
  return v4 ^ [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo *)self->_ended hash];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (self->_contextId)
  {
    v4 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self contextId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"contextId"];
    }

    else
    {
      v6 = +[NSNull null];
      [v3 setObject:v6 forKeyedSubscript:@"contextId"];
    }
  }

  if (self->_ended)
  {
    v7 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self ended];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"ended"];
    }

    else
    {
      v9 = +[NSNull null];
      [v3 setObject:v9 forKeyedSubscript:@"ended"];
    }
  }

  if (self->_startedOrChanged)
  {
    v10 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self startedOrChanged];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"startedOrChanged"];
    }

    else
    {
      v12 = +[NSNull null];
      [v3 setObject:v12 forKeyedSubscript:@"startedOrChanged"];
    }
  }

  [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (NSData)jsonData
{
  v2 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self dictionaryRepresentation];
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

- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext;
  v5 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"contextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)v5 setContextId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfo alloc] initWithDictionary:v8];
      [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)v5 setStartedOrChanged:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo alloc] initWithDictionary:v10];
      [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)v5 setEnded:v11];
    }

    v12 = v5;
  }

  return v5;
}

@end