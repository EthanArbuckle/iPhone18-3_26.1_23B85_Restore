@interface SiriLinkFlowProvisionalLinkActionConversion
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SiriLinkFlowProvisionalLinkActionConversion)initWithDictionary:(id)a3;
- (SiriLinkFlowProvisionalLinkActionConversion)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SiriLinkFlowProvisionalLinkActionConversion

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(SiriLinkFlowProvisionalLinkActionConversion *)self outcome];

  if (v4)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(SiriLinkFlowProvisionalLinkActionConversion *)self outcome];
  v6 = [v4 outcome];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v8 = [(SiriLinkFlowProvisionalLinkActionConversion *)self outcome];
  if (v8)
  {
    v9 = v8;
    v10 = [(SiriLinkFlowProvisionalLinkActionConversion *)self outcome];
    v11 = [v4 outcome];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((v4[20] & 1) != (*&self->_has & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    isSuccess = self->_isSuccess;
    if (isSuccess != [v4 isSuccess])
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
    v5 = [(SiriLinkFlowProvisionalLinkActionConversion *)self outcome];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"outcome"];
  }

  return v3;
}

- (NSData)jsonData
{
  v2 = [(SiriLinkFlowProvisionalLinkActionConversion *)self dictionaryRepresentation];
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

- (SiriLinkFlowProvisionalLinkActionConversion)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SiriLinkFlowProvisionalLinkActionConversion *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (SiriLinkFlowProvisionalLinkActionConversion)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SiriLinkFlowProvisionalLinkActionConversion;
  v5 = [(SiriLinkFlowProvisionalLinkActionConversion *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"outcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SiriLinkFlowProvisionalLinkActionConversion *)v5 setOutcome:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"isSuccess"];
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