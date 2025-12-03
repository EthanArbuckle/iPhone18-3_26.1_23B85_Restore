@interface SiriLinkRRProvisionalSRRLinkMetricClientEvent
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SiriLinkRRProvisionalLinkEntityPresent)linkEntityPresent;
- (SiriLinkRRProvisionalSRRLinkMetricClientEvent)initWithDictionary:(id)dictionary;
- (SiriLinkRRProvisionalSRRLinkMetricClientEvent)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (void)setLinkEntityPresent:(id)present;
- (void)writeTo:(id)to;
@end

@implementation SiriLinkRRProvisionalSRRLinkMetricClientEvent

- (SiriLinkRRProvisionalSRRLinkMetricClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SiriLinkRRProvisionalSRRLinkMetricClientEvent;
  v5 = [(SiriLinkRRProvisionalSRRLinkMetricClientEvent *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkEntityPresent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SiriLinkRRProvisionalLinkEntityPresent alloc] initWithDictionary:v6];
      [(SiriLinkRRProvisionalSRRLinkMetricClientEvent *)v5 setLinkEntityPresent:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (SiriLinkRRProvisionalSRRLinkMetricClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SiriLinkRRProvisionalSRRLinkMetricClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SiriLinkRRProvisionalSRRLinkMetricClientEvent *)self dictionaryRepresentation];
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

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (self->_linkEntityPresent)
  {
    linkEntityPresent = [(SiriLinkRRProvisionalSRRLinkMetricClientEvent *)self linkEntityPresent];
    dictionaryRepresentation = [linkEntityPresent dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"linkEntityPresent"];
    }

    else
    {
      v6 = +[NSNull null];
      [v3 setObject:v6 forKeyedSubscript:@"linkEntityPresent"];
    }
  }

  [(SiriLinkRRProvisionalSRRLinkMetricClientEvent *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    whichEvent_Type = self->_whichEvent_Type;
    if (whichEvent_Type == [equalCopy whichEvent_Type])
    {
      linkEntityPresent = [(SiriLinkRRProvisionalSRRLinkMetricClientEvent *)self linkEntityPresent];
      linkEntityPresent2 = [equalCopy linkEntityPresent];
      v8 = linkEntityPresent2;
      if ((linkEntityPresent != 0) != (linkEntityPresent2 == 0))
      {
        linkEntityPresent3 = [(SiriLinkRRProvisionalSRRLinkMetricClientEvent *)self linkEntityPresent];
        if (!linkEntityPresent3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = linkEntityPresent3;
        linkEntityPresent4 = [(SiriLinkRRProvisionalSRRLinkMetricClientEvent *)self linkEntityPresent];
        linkEntityPresent5 = [equalCopy linkEntityPresent];
        v13 = [linkEntityPresent4 isEqual:linkEntityPresent5];

        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  linkEntityPresent = [(SiriLinkRRProvisionalSRRLinkMetricClientEvent *)self linkEntityPresent];

  if (linkEntityPresent)
  {
    linkEntityPresent2 = [(SiriLinkRRProvisionalSRRLinkMetricClientEvent *)self linkEntityPresent];
    PBDataWriterWriteSubmessage();
  }
}

- (SiriLinkRRProvisionalLinkEntityPresent)linkEntityPresent
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_linkEntityPresent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLinkEntityPresent:(id)present
{
  v3 = 101;
  if (!present)
  {
    v3 = 0;
  }

  self->_whichEvent_Type = v3;
  objc_storeStrong(&self->_linkEntityPresent, present);
}

- (id)qualifiedMessageName
{
  if ([(SiriLinkRRProvisionalSRRLinkMetricClientEvent *)self whichEvent_Type]== &stru_20.flags + 1)
  {
    return @"com.apple.aiml.siri.link.rr.provisional.SRRLinkMetricClientEvent.LinkEntityPresent";
  }

  else
  {
    return @"com.apple.aiml.siri.link.rr.provisional.SRRLinkMetricClientEvent";
  }
}

@end