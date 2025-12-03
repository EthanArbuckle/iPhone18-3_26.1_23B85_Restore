@interface SiriLinkFlowProvisionalLinkAction
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SiriLinkFlowProvisionalLinkAction)initWithDictionary:(id)dictionary;
- (SiriLinkFlowProvisionalLinkAction)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addParameters:(id)parameters;
- (void)writeTo:(id)to;
@end

@implementation SiriLinkFlowProvisionalLinkAction

- (void)addParameters:(id)parameters
{
  parametersCopy = parameters;
  parameters = self->_parameters;
  v8 = parametersCopy;
  if (!parameters)
  {
    v6 = +[NSMutableArray array];
    v7 = self->_parameters;
    self->_parameters = v6;

    parametersCopy = v8;
    parameters = self->_parameters;
  }

  [(NSArray *)parameters addObject:parametersCopy];
}

- (void)writeTo:(id)to
{
  toCopy = to;
  identifier = [(SiriLinkFlowProvisionalLinkAction *)self identifier];

  if (identifier)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    presentationStyle = self->_presentationStyle;
    PBDataWriterWriteInt32Field();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_parameters;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  identifier = [(SiriLinkFlowProvisionalLinkAction *)self identifier];
  identifier2 = [equalCopy identifier];
  if ((identifier != 0) == (identifier2 == 0))
  {
    goto LABEL_14;
  }

  identifier3 = [(SiriLinkFlowProvisionalLinkAction *)self identifier];
  if (identifier3)
  {
    v8 = identifier3;
    identifier4 = [(SiriLinkFlowProvisionalLinkAction *)self identifier];
    identifier5 = [equalCopy identifier];
    v11 = [identifier4 isEqual:identifier5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((equalCopy[32] & 1) != (*&self->_has & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    presentationStyle = self->_presentationStyle;
    if (presentationStyle != [equalCopy presentationStyle])
    {
      goto LABEL_15;
    }
  }

  identifier = [(SiriLinkFlowProvisionalLinkAction *)self parameters];
  identifier2 = [equalCopy parameters];
  if ((identifier != 0) != (identifier2 == 0))
  {
    parameters = [(SiriLinkFlowProvisionalLinkAction *)self parameters];
    if (!parameters)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = parameters;
    parameters2 = [(SiriLinkFlowProvisionalLinkAction *)self parameters];
    parameters3 = [equalCopy parameters];
    v17 = [parameters2 isEqual:parameters3];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_presentationStyle;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSArray *)self->_parameters hash];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (self->_identifier)
  {
    identifier = [(SiriLinkFlowProvisionalLinkAction *)self identifier];
    v5 = [identifier copy];
    [v3 setObject:v5 forKeyedSubscript:@"identifier"];
  }

  if ([(NSArray *)self->_parameters count])
  {
    v6 = +[NSMutableArray array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = self->_parameters;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [v6 addObject:dictionaryRepresentation];
          }

          else
          {
            v13 = +[NSNull null];
            [v6 addObject:v13];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"parameters"];
  }

  if (*&self->_has)
  {
    presentationStyle = [(SiriLinkFlowProvisionalLinkAction *)self presentationStyle];
    if (presentationStyle >= 4)
    {
      v15 = [NSString stringWithFormat:@"(unknown: %i)", presentationStyle];
    }

    else
    {
      v15 = off_291910[presentationStyle];
    }

    [v3 setObject:v15 forKeyedSubscript:@"presentationStyle"];
  }

  return v3;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SiriLinkFlowProvisionalLinkAction *)self dictionaryRepresentation];
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

- (SiriLinkFlowProvisionalLinkAction)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SiriLinkFlowProvisionalLinkAction *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (SiriLinkFlowProvisionalLinkAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = SiriLinkFlowProvisionalLinkAction;
  v5 = [(SiriLinkFlowProvisionalLinkAction *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SiriLinkFlowProvisionalLinkAction *)v5 setIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"presentationStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SiriLinkFlowProvisionalLinkAction setPresentationStyle:](v5, "setPresentationStyle:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"parameters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v8;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v21;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v20 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [[SiriLinkFlowProvisionalLinkActionParameter alloc] initWithDictionary:v15];
              [(SiriLinkFlowProvisionalLinkAction *)v5 addParameters:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v12);
      }

      v8 = v19;
    }

    v17 = v5;
  }

  return v5;
}

@end