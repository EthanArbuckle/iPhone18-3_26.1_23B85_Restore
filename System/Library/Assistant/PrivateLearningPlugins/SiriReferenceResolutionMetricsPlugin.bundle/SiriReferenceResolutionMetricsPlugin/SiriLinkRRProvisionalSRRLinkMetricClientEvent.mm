@interface SiriLinkRRProvisionalSRRLinkMetricClientEvent
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SiriLinkRRProvisionalLinkEntityPresent)linkEntityPresent;
- (SiriLinkRRProvisionalSRRLinkMetricClientEvent)initWithDictionary:(id)a3;
- (SiriLinkRRProvisionalSRRLinkMetricClientEvent)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (void)setLinkEntityPresent:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SiriLinkRRProvisionalSRRLinkMetricClientEvent

- (SiriLinkRRProvisionalSRRLinkMetricClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SiriLinkRRProvisionalSRRLinkMetricClientEvent;
  v5 = [(SiriLinkRRProvisionalSRRLinkMetricClientEvent *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"linkEntityPresent"];
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

- (SiriLinkRRProvisionalSRRLinkMetricClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SiriLinkRRProvisionalSRRLinkMetricClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SiriLinkRRProvisionalSRRLinkMetricClientEvent *)self dictionaryRepresentation];
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

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (self->_linkEntityPresent)
  {
    v4 = [(SiriLinkRRProvisionalSRRLinkMetricClientEvent *)self linkEntityPresent];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"linkEntityPresent"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    whichEvent_Type = self->_whichEvent_Type;
    if (whichEvent_Type == [v4 whichEvent_Type])
    {
      v6 = [(SiriLinkRRProvisionalSRRLinkMetricClientEvent *)self linkEntityPresent];
      v7 = [v4 linkEntityPresent];
      v8 = v7;
      if ((v6 != 0) != (v7 == 0))
      {
        v9 = [(SiriLinkRRProvisionalSRRLinkMetricClientEvent *)self linkEntityPresent];
        if (!v9)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = v9;
        v11 = [(SiriLinkRRProvisionalSRRLinkMetricClientEvent *)self linkEntityPresent];
        v12 = [v4 linkEntityPresent];
        v13 = [v11 isEqual:v12];

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

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(SiriLinkRRProvisionalSRRLinkMetricClientEvent *)self linkEntityPresent];

  if (v4)
  {
    v5 = [(SiriLinkRRProvisionalSRRLinkMetricClientEvent *)self linkEntityPresent];
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

- (void)setLinkEntityPresent:(id)a3
{
  v3 = 101;
  if (!a3)
  {
    v3 = 0;
  }

  self->_whichEvent_Type = v3;
  objc_storeStrong(&self->_linkEntityPresent, a3);
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