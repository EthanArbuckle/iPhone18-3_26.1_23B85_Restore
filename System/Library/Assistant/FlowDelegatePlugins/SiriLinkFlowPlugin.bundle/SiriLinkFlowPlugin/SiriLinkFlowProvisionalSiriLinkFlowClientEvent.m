@interface SiriLinkFlowProvisionalSiriLinkFlowClientEvent
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SiriLinkFlowProvisionalLinkActionCompletion)linkActionCompletion;
- (SiriLinkFlowProvisionalLinkActionConversion)linkActionConversion;
- (SiriLinkFlowProvisionalSiriLinkFlowClientEvent)initWithDictionary:(id)a3;
- (SiriLinkFlowProvisionalSiriLinkFlowClientEvent)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setLinkActionCompletion:(id)a3;
- (void)setLinkActionConversion:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SiriLinkFlowProvisionalSiriLinkFlowClientEvent

- (void)setLinkActionCompletion:(id)a3
{
  v4 = a3;
  linkActionConversion = self->_linkActionConversion;
  self->_linkActionConversion = 0;

  v6 = 101;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  linkActionCompletion = self->_linkActionCompletion;
  self->_linkActionCompletion = v4;
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

- (void)setLinkActionConversion:(id)a3
{
  v4 = a3;
  linkActionCompletion = self->_linkActionCompletion;
  self->_linkActionCompletion = 0;

  v6 = 102;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  linkActionConversion = self->_linkActionConversion;
  self->_linkActionConversion = v4;
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

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self linkActionCompletion];

  if (v6)
  {
    v7 = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self linkActionCompletion];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self linkActionConversion];

  v9 = v11;
  if (v8)
  {
    v10 = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self linkActionConversion];
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

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_18;
  }

  v6 = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self linkActionCompletion];
  v7 = [v4 linkActionCompletion];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v13 = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self linkActionCompletion];
  if (v13)
  {
    v14 = v13;
    v15 = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self linkActionCompletion];
    v16 = [v4 linkActionCompletion];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self linkActionConversion];
  v7 = [v4 linkActionConversion];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self linkActionConversion];
    if (!v18)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = v18;
    v20 = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self linkActionConversion];
    v21 = [v4 linkActionConversion];
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
  v3 = [(FLOWSchemaFLOWEventMetadata *)self->_eventMetadata hash];
  v4 = [(SiriLinkFlowProvisionalLinkActionCompletion *)self->_linkActionCompletion hash]^ v3;
  return v4 ^ [(SiriLinkFlowProvisionalLinkActionConversion *)self->_linkActionConversion hash];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (self->_eventMetadata)
  {
    v4 = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self eventMetadata];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v6 = +[NSNull null];
      [v3 setObject:v6 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_linkActionCompletion)
  {
    v7 = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self linkActionCompletion];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"linkActionCompletion"];
    }

    else
    {
      v9 = +[NSNull null];
      [v3 setObject:v9 forKeyedSubscript:@"linkActionCompletion"];
    }
  }

  if (self->_linkActionConversion)
  {
    v10 = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self linkActionConversion];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"linkActionConversion"];
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
  v2 = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self dictionaryRepresentation];
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

- (SiriLinkFlowProvisionalSiriLinkFlowClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (SiriLinkFlowProvisionalSiriLinkFlowClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SiriLinkFlowProvisionalSiriLinkFlowClientEvent;
  v5 = [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[FLOWSchemaFLOWEventMetadata alloc] initWithDictionary:v6];
      [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"linkActionCompletion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SiriLinkFlowProvisionalLinkActionCompletion alloc] initWithDictionary:v8];
      [(SiriLinkFlowProvisionalSiriLinkFlowClientEvent *)v5 setLinkActionCompletion:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"linkActionConversion"];
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