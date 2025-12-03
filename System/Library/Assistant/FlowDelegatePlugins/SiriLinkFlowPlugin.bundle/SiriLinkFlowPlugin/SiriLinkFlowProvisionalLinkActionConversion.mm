@interface SiriLinkFlowProvisionalLinkActionConversion
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SiriLinkFlowProvisionalLinkActionConversion)initWithDictionary:(id)dictionary;
- (SiriLinkFlowProvisionalLinkActionConversion)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SiriLinkFlowProvisionalLinkActionConversion

- (void)writeTo:(id)to
{
  toCopy = to;
  outcome = [(SiriLinkFlowProvisionalLinkActionConversion *)self outcome];

  if (outcome)
  {
    outcome = self->_outcome;
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    isSuccess = self->_isSuccess;
    PBDataWriterWriteBOOLField();
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  outcome = [(SiriLinkFlowProvisionalLinkActionConversion *)self outcome];
  outcome2 = [equalCopy outcome];
  v7 = outcome2;
  if ((outcome != 0) == (outcome2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  outcome3 = [(SiriLinkFlowProvisionalLinkActionConversion *)self outcome];
  if (outcome3)
  {
    v9 = outcome3;
    outcome4 = [(SiriLinkFlowProvisionalLinkActionConversion *)self outcome];
    outcome5 = [equalCopy outcome];
    v12 = [outcome4 isEqual:outcome5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((equalCopy[20] & 1) != (*&self->_has & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    isSuccess = self->_isSuccess;
    if (isSuccess != [equalCopy isSuccess])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_outcome hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_isSuccess;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithBool:[(SiriLinkFlowProvisionalLinkActionConversion *)self isSuccess]];
    [v3 setObject:v4 forKeyedSubscript:@"isSuccess"];
  }

  if (self->_outcome)
  {
    outcome = [(SiriLinkFlowProvisionalLinkActionConversion *)self outcome];
    v6 = [outcome copy];
    [v3 setObject:v6 forKeyedSubscript:@"outcome"];
  }

  return v3;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SiriLinkFlowProvisionalLinkActionConversion *)self dictionaryRepresentation];
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

- (SiriLinkFlowProvisionalLinkActionConversion)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SiriLinkFlowProvisionalLinkActionConversion *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (SiriLinkFlowProvisionalLinkActionConversion)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = SiriLinkFlowProvisionalLinkActionConversion;
  v5 = [(SiriLinkFlowProvisionalLinkActionConversion *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"outcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SiriLinkFlowProvisionalLinkActionConversion *)v5 setOutcome:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isSuccess"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SiriLinkFlowProvisionalLinkActionConversion setIsSuccess:](v5, "setIsSuccess:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

@end