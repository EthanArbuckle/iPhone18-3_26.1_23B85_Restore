@interface SiriLinkFlowProvisionalLinkActionCompletion
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SiriLinkFlowProvisionalLinkActionCompletion)initWithDictionary:(id)a3;
- (SiriLinkFlowProvisionalLinkActionCompletion)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SiriLinkFlowProvisionalLinkActionCompletion

- (void)writeTo:(id)a3
{
  v12 = a3;
  v4 = [(SiriLinkFlowProvisionalLinkActionCompletion *)self targetBundle];

  if (v4)
  {
    targetBundle = self->_targetBundle;
    PBDataWriterWriteStringField();
  }

  v6 = [(SiriLinkFlowProvisionalLinkActionCompletion *)self action];

  if (v6)
  {
    v7 = [(SiriLinkFlowProvisionalLinkActionCompletion *)self action];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    isSuccess = self->_isSuccess;
    PBDataWriterWriteBOOLField();
  }

  v9 = [(SiriLinkFlowProvisionalLinkActionCompletion *)self errorDescription];

  v10 = v12;
  if (v9)
  {
    errorDescription = self->_errorDescription;
    PBDataWriterWriteStringField();
    v10 = v12;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = [(SiriLinkFlowProvisionalLinkActionCompletion *)self targetBundle];
  v6 = [v4 targetBundle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v7 = [(SiriLinkFlowProvisionalLinkActionCompletion *)self targetBundle];
  if (v7)
  {
    v8 = v7;
    v9 = [(SiriLinkFlowProvisionalLinkActionCompletion *)self targetBundle];
    v10 = [v4 targetBundle];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v5 = [(SiriLinkFlowProvisionalLinkActionCompletion *)self action];
  v6 = [v4 action];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v12 = [(SiriLinkFlowProvisionalLinkActionCompletion *)self action];
  if (v12)
  {
    v13 = v12;
    v14 = [(SiriLinkFlowProvisionalLinkActionCompletion *)self action];
    v15 = [v4 action];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ((v4[40] & 1) != (*&self->_has & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    isSuccess = self->_isSuccess;
    if (isSuccess != [v4 isSuccess])
    {
      goto LABEL_20;
    }
  }

  v5 = [(SiriLinkFlowProvisionalLinkActionCompletion *)self errorDescription];
  v6 = [v4 errorDescription];
  if ((v5 != 0) != (v6 == 0))
  {
    v18 = [(SiriLinkFlowProvisionalLinkActionCompletion *)self errorDescription];
    if (!v18)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = v18;
    v20 = [(SiriLinkFlowProvisionalLinkActionCompletion *)self errorDescription];
    v21 = [v4 errorDescription];
    v22 = [v20 isEqual:v21];

    if (v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v23 = 0;
LABEL_21:

  return v23;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_targetBundle hash];
  v4 = [(SiriLinkFlowProvisionalLinkAction *)self->_action hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_isSuccess;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSString *)self->_errorDescription hash];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (self->_action)
  {
    v4 = [(SiriLinkFlowProvisionalLinkActionCompletion *)self action];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"action"];
    }

    else
    {
      v6 = +[NSNull null];
      [v3 setObject:v6 forKeyedSubscript:@"action"];
    }
  }

  if (self->_errorDescription)
  {
    v7 = [(SiriLinkFlowProvisionalLinkActionCompletion *)self errorDescription];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"errorDescription"];
  }

  if (*&self->_has)
  {
    v9 = [NSNumber numberWithBool:[(SiriLinkFlowProvisionalLinkActionCompletion *)self isSuccess]];
    [v3 setObject:v9 forKeyedSubscript:@"isSuccess"];
  }

  if (self->_targetBundle)
  {
    v10 = [(SiriLinkFlowProvisionalLinkActionCompletion *)self targetBundle];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"targetBundle"];
  }

  return v3;
}

- (NSData)jsonData
{
  v2 = [(SiriLinkFlowProvisionalLinkActionCompletion *)self dictionaryRepresentation];
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

- (SiriLinkFlowProvisionalLinkActionCompletion)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SiriLinkFlowProvisionalLinkActionCompletion *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (SiriLinkFlowProvisionalLinkActionCompletion)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SiriLinkFlowProvisionalLinkActionCompletion;
  v5 = [(SiriLinkFlowProvisionalLinkActionCompletion *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"targetBundle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SiriLinkFlowProvisionalLinkActionCompletion *)v5 setTargetBundle:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"action"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SiriLinkFlowProvisionalLinkAction alloc] initWithDictionary:v8];
      [(SiriLinkFlowProvisionalLinkActionCompletion *)v5 setAction:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"isSuccess"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SiriLinkFlowProvisionalLinkActionCompletion setIsSuccess:](v5, "setIsSuccess:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"errorDescription"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(SiriLinkFlowProvisionalLinkActionCompletion *)v5 setErrorDescription:v12];
    }

    v13 = v5;
  }

  return v5;
}

@end