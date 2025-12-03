@interface SiriLinkFlowProvisionalSiriLinkFlowClientEvent
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SiriLinkFlowProvisionalLinkActionCompletion)linkActionCompletion;
- (SiriLinkFlowProvisionalLinkActionConversion)linkActionConversion;
- (SiriLinkFlowProvisionalSiriLinkFlowClientEvent)initWithDictionary:(id)dictionary;
- (SiriLinkFlowProvisionalSiriLinkFlowClientEvent)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setLinkActionCompletion:(id)completion;
- (void)setLinkActionConversion:(id)conversion;
- (void)writeTo:(id)to;
@end

@implementation SiriLinkFlowProvisionalSiriLinkFlowClientEvent

- (void)setLinkActionCompletion:(id)completion
{
  completionCopy = completion;
  linkActionConversion = self->_linkActionConversion;
  self->_linkActionConversion = 0;

  v6 = 101;
  if (!completionCopy)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  linkActionCompletion = self->_linkActionCompletion;
  self->_linkActionCompletion = completionCopy;
}

- (SiriLinkFlowProvisionalLinkActionCompletion)linkActionCompletion
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_linkActionCompletion;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLinkActionConversion:(id)conversion
{
  conversionCopy = conversion;
  linkActionCompletion = self->_linkActionCompletion;
  self->_linkActionCompletion = 0;

  v6 = 102;
  if (!conversionCopy)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  linkActionConversion = self->_linkActionConversion;
  self->_linkActionConversion = conversionCopy;
}

- (SiriLinkFlowProvisionalLinkActionConversion)linkActionConversion
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_linkActionConversion;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  linkActionCompletion = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self linkActionCompletion];

  if (linkActionCompletion)
  {
    linkActionCompletion2 = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self linkActionCompletion];
    PBDataWriterWriteSubmessage();
  }

  linkActionConversion = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self linkActionConversion];

  v9 = toCopy;
  if (linkActionConversion)
  {
    linkActionConversion2 = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self linkActionConversion];
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

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_18;
  }

  eventMetadata = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_17;
  }

  eventMetadata3 = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  eventMetadata = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self linkActionCompletion];
  eventMetadata2 = [equalCopy linkActionCompletion];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_17;
  }

  linkActionCompletion = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self linkActionCompletion];
  if (linkActionCompletion)
  {
    v14 = linkActionCompletion;
    linkActionCompletion2 = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self linkActionCompletion];
    linkActionCompletion3 = [equalCopy linkActionCompletion];
    v17 = [linkActionCompletion2 isEqual:linkActionCompletion3];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  eventMetadata = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self linkActionConversion];
  eventMetadata2 = [equalCopy linkActionConversion];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    linkActionConversion = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self linkActionConversion];
    if (!linkActionConversion)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = linkActionConversion;
    linkActionConversion2 = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self linkActionConversion];
    linkActionConversion3 = [equalCopy linkActionConversion];
    v22 = [linkActionConversion2 isEqual:linkActionConversion3];

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
  v3 = [(FLOWSchemaFLOWEventMetadata *)self->_eventMetadata hash];
  v4 = [(SiriLinkFlowProvisionalLinkActionCompletion *)self->_linkActionCompletion hash]^ v3;
  return v4 ^ [(SiriLinkFlowProvisionalLinkActionConversion *)self->_linkActionConversion hash];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (self->_eventMetadata)
  {
    eventMetadata = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self eventMetadata];
    dictionaryRepresentation = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v6 = +[NSNull null];
      [v3 setObject:v6 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_linkActionCompletion)
  {
    linkActionCompletion = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self linkActionCompletion];
    dictionaryRepresentation2 = [linkActionCompletion dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [v3 setObject:dictionaryRepresentation2 forKeyedSubscript:@"linkActionCompletion"];
    }

    else
    {
      v9 = +[NSNull null];
      [v3 setObject:v9 forKeyedSubscript:@"linkActionCompletion"];
    }
  }

  if (self->_linkActionConversion)
  {
    linkActionConversion = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self linkActionConversion];
    dictionaryRepresentation3 = [linkActionConversion dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [v3 setObject:dictionaryRepresentation3 forKeyedSubscript:@"linkActionConversion"];
    }

    else
    {
      v12 = +[NSNull null];
      [v3 setObject:v12 forKeyedSubscript:@"linkActionConversion"];
    }
  }

  return v3;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self dictionaryRepresentation];
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

- (SiriLinkFlowProvisionalSiriLinkFlowClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (SiriLinkFlowProvisionalSiriLinkFlowClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = SiriLinkFlowProvisionalSiriLinkFlowClientEvent;
  v5 = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[FLOWSchemaFLOWEventMetadata alloc] initWithDictionary:v6];
      [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"linkActionCompletion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SiriLinkFlowProvisionalLinkActionCompletion alloc] initWithDictionary:v8];
      [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)v5 setLinkActionCompletion:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"linkActionConversion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SiriLinkFlowProvisionalLinkActionConversion alloc] initWithDictionary:v10];
      [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)v5 setLinkActionConversion:v11];
    }

    v12 = v5;
  }

  return v5;
}

@end