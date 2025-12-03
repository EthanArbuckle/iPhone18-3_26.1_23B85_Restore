@interface VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext)initWithDictionary:(id)dictionary;
- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext)initWithJSON:(id)n;
- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfo)startedOrChanged;
- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo)ended;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (unint64_t)hash;
- (void)deleteEnded;
- (void)deleteStartedOrChanged;
- (void)setEnded:(id)ended;
- (void)setStartedOrChanged:(id)changed;
- (void)writeTo:(id)to;
@end

@implementation VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext

- (id)qualifiedMessageName
{
  whichContextevent = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self whichContextevent];
  v3 = @"com.apple.aiml.siri.voicecmds.ProvisionalVoiceCmdsWaitForRequestContext";
  if (whichContextevent == 101)
  {
    v3 = @"com.apple.aiml.siri.voicecmds.ProvisionalVoiceCmdsWaitForRequestContext.ProvisionalVoiceCmdsWaitForRequestRemovalInfo";
  }

  if (whichContextevent == 100)
  {
    return @"com.apple.aiml.siri.voicecmds.ProvisionalVoiceCmdsWaitForRequestContext.ProvisionalVoiceCmdsWaitForRequestContextInfo";
  }

  else
  {
    return v3;
  }
}

- (void)setStartedOrChanged:(id)changed
{
  changedCopy = changed;
  ended = self->_ended;
  self->_ended = 0;

  v6 = 100;
  if (!changedCopy)
  {
    v6 = 0;
  }

  self->_whichContextevent = v6;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = changedCopy;
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

- (void)setEnded:(id)ended
{
  endedCopy = ended;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  v6 = 101;
  if (!endedCopy)
  {
    v6 = 0;
  }

  self->_whichContextevent = v6;
  ended = self->_ended;
  self->_ended = endedCopy;
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

- (void)writeTo:(id)to
{
  toCopy = to;
  contextId = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self contextId];

  if (contextId)
  {
    contextId2 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self contextId];
    PBDataWriterWriteSubmessage();
  }

  startedOrChanged = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self ended];

  v9 = toCopy;
  if (ended)
  {
    ended2 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self ended];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  whichContextevent = self->_whichContextevent;
  if (whichContextevent != [equalCopy whichContextevent])
  {
    goto LABEL_18;
  }

  contextId = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self contextId];
  contextId2 = [equalCopy contextId];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_17;
  }

  contextId3 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self contextId];
  if (contextId3)
  {
    v9 = contextId3;
    contextId4 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self contextId];
    contextId5 = [equalCopy contextId];
    v12 = [contextId4 isEqual:contextId5];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  contextId = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self startedOrChanged];
  contextId2 = [equalCopy startedOrChanged];
  if ((contextId != 0) == (contextId2 == 0))
  {
    goto LABEL_17;
  }

  startedOrChanged = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self startedOrChanged];
  if (startedOrChanged)
  {
    v14 = startedOrChanged;
    startedOrChanged2 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self startedOrChanged];
    startedOrChanged3 = [equalCopy startedOrChanged];
    v17 = [startedOrChanged2 isEqual:startedOrChanged3];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  contextId = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self ended];
  contextId2 = [equalCopy ended];
  if ((contextId != 0) != (contextId2 == 0))
  {
    ended = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self ended];
    if (!ended)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = ended;
    ended2 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self ended];
    ended3 = [equalCopy ended];
    v22 = [ended2 isEqual:ended3];

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
    contextId = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self contextId];
    dictionaryRepresentation = [contextId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"contextId"];
    }

    else
    {
      v6 = +[NSNull null];
      [v3 setObject:v6 forKeyedSubscript:@"contextId"];
    }
  }

  if (self->_ended)
  {
    ended = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self ended];
    dictionaryRepresentation2 = [ended dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [v3 setObject:dictionaryRepresentation2 forKeyedSubscript:@"ended"];
    }

    else
    {
      v9 = +[NSNull null];
      [v3 setObject:v9 forKeyedSubscript:@"ended"];
    }
  }

  if (self->_startedOrChanged)
  {
    startedOrChanged = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self startedOrChanged];
    dictionaryRepresentation3 = [startedOrChanged dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [v3 setObject:dictionaryRepresentation3 forKeyedSubscript:@"startedOrChanged"];
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
  dictionaryRepresentation = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self dictionaryRepresentation];
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

- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext;
  v5 = [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"contextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)v5 setContextId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfo alloc] initWithDictionary:v8];
      [(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext *)v5 setStartedOrChanged:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
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