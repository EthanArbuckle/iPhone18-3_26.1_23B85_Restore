@interface SiriLinkFlowProvisionalLinkActionCompletion
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SiriLinkFlowProvisionalLinkActionCompletion)initWithDictionary:(id)dictionary;
- (SiriLinkFlowProvisionalLinkActionCompletion)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SiriLinkFlowProvisionalLinkActionCompletion

- (void)writeTo:(id)to
{
  toCopy = to;
  targetBundle = [(SiriLinkFlowProvisionalLinkActionCompletion *)self targetBundle];

  if (targetBundle)
  {
    targetBundle = self->_targetBundle;
    PBDataWriterWriteStringField();
  }

  action = [(SiriLinkFlowProvisionalLinkActionCompletion *)self action];

  if (action)
  {
    action2 = [(SiriLinkFlowProvisionalLinkActionCompletion *)self action];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    isSuccess = self->_isSuccess;
    PBDataWriterWriteBOOLField();
  }

  errorDescription = [(SiriLinkFlowProvisionalLinkActionCompletion *)self errorDescription];

  v10 = toCopy;
  if (errorDescription)
  {
    errorDescription = self->_errorDescription;
    PBDataWriterWriteStringField();
    v10 = toCopy;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  targetBundle = [(SiriLinkFlowProvisionalLinkActionCompletion *)self targetBundle];
  targetBundle2 = [equalCopy targetBundle];
  if ((targetBundle != 0) == (targetBundle2 == 0))
  {
    goto LABEL_19;
  }

  targetBundle3 = [(SiriLinkFlowProvisionalLinkActionCompletion *)self targetBundle];
  if (targetBundle3)
  {
    v8 = targetBundle3;
    targetBundle4 = [(SiriLinkFlowProvisionalLinkActionCompletion *)self targetBundle];
    targetBundle5 = [equalCopy targetBundle];
    v11 = [targetBundle4 isEqual:targetBundle5];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  targetBundle = [(SiriLinkFlowProvisionalLinkActionCompletion *)self action];
  targetBundle2 = [equalCopy action];
  if ((targetBundle != 0) == (targetBundle2 == 0))
  {
    goto LABEL_19;
  }

  action = [(SiriLinkFlowProvisionalLinkActionCompletion *)self action];
  if (action)
  {
    v13 = action;
    action2 = [(SiriLinkFlowProvisionalLinkActionCompletion *)self action];
    action3 = [equalCopy action];
    v16 = [action2 isEqual:action3];

    if (!v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ((equalCopy[40] & 1) != (*&self->_has & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    isSuccess = self->_isSuccess;
    if (isSuccess != [equalCopy isSuccess])
    {
      goto LABEL_20;
    }
  }

  targetBundle = [(SiriLinkFlowProvisionalLinkActionCompletion *)self errorDescription];
  targetBundle2 = [equalCopy errorDescription];
  if ((targetBundle != 0) != (targetBundle2 == 0))
  {
    errorDescription = [(SiriLinkFlowProvisionalLinkActionCompletion *)self errorDescription];
    if (!errorDescription)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = errorDescription;
    errorDescription2 = [(SiriLinkFlowProvisionalLinkActionCompletion *)self errorDescription];
    errorDescription3 = [equalCopy errorDescription];
    v22 = [errorDescription2 isEqual:errorDescription3];

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
    action = [(SiriLinkFlowProvisionalLinkActionCompletion *)self action];
    dictionaryRepresentation = [action dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"action"];
    }

    else
    {
      v6 = +[NSNull null];
      [v3 setObject:v6 forKeyedSubscript:@"action"];
    }
  }

  if (self->_errorDescription)
  {
    errorDescription = [(SiriLinkFlowProvisionalLinkActionCompletion *)self errorDescription];
    v8 = [errorDescription copy];
    [v3 setObject:v8 forKeyedSubscript:@"errorDescription"];
  }

  if (*&self->_has)
  {
    v9 = [NSNumber numberWithBool:[(SiriLinkFlowProvisionalLinkActionCompletion *)self isSuccess]];
    [v3 setObject:v9 forKeyedSubscript:@"isSuccess"];
  }

  if (self->_targetBundle)
  {
    targetBundle = [(SiriLinkFlowProvisionalLinkActionCompletion *)self targetBundle];
    v11 = [targetBundle copy];
    [v3 setObject:v11 forKeyedSubscript:@"targetBundle"];
  }

  return v3;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SiriLinkFlowProvisionalLinkActionCompletion *)self dictionaryRepresentation];
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

- (SiriLinkFlowProvisionalLinkActionCompletion)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SiriLinkFlowProvisionalLinkActionCompletion *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (SiriLinkFlowProvisionalLinkActionCompletion)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = SiriLinkFlowProvisionalLinkActionCompletion;
  v5 = [(SiriLinkFlowProvisionalLinkActionCompletion *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"targetBundle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SiriLinkFlowProvisionalLinkActionCompletion *)v5 setTargetBundle:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"action"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SiriLinkFlowProvisionalLinkAction alloc] initWithDictionary:v8];
      [(SiriLinkFlowProvisionalLinkActionCompletion *)v5 setAction:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isSuccess"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SiriLinkFlowProvisionalLinkActionCompletion setIsSuccess:](v5, "setIsSuccess:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"errorDescription"];
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