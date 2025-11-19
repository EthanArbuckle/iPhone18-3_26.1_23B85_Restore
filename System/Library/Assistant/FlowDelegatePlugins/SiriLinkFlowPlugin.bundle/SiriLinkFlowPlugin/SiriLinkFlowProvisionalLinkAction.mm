@interface SiriLinkFlowProvisionalLinkAction
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SiriLinkFlowProvisionalLinkAction)initWithDictionary:(id)a3;
- (SiriLinkFlowProvisionalLinkAction)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addParameters:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SiriLinkFlowProvisionalLinkAction

- (void)addParameters:(id)a3
{
  v4 = a3;
  parameters = self->_parameters;
  v8 = v4;
  if (!parameters)
  {
    v6 = +[NSMutableArray array];
    v7 = self->_parameters;
    self->_parameters = v6;

    v4 = v8;
    parameters = self->_parameters;
  }

  [(NSArray *)parameters addObject:v4];
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = [(SiriLinkFlowProvisionalLinkAction *)self identifier];

  if (v5)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(SiriLinkFlowProvisionalLinkAction *)self identifier];
  v6 = [v4 identifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_14;
  }

  v7 = [(SiriLinkFlowProvisionalLinkAction *)self identifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(SiriLinkFlowProvisionalLinkAction *)self identifier];
    v10 = [v4 identifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((v4[32] & 1) != (*&self->_has & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    presentationStyle = self->_presentationStyle;
    if (presentationStyle != [v4 presentationStyle])
    {
      goto LABEL_15;
    }
  }

  v5 = [(SiriLinkFlowProvisionalLinkAction *)self parameters];
  v6 = [v4 parameters];
  if ((v5 != 0) != (v6 == 0))
  {
    v13 = [(SiriLinkFlowProvisionalLinkAction *)self parameters];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(SiriLinkFlowProvisionalLinkAction *)self parameters];
    v16 = [v4 parameters];
    v17 = [v15 isEqual:v16];

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
    v4 = [(SiriLinkFlowProvisionalLinkAction *)self identifier];
    v5 = [v4 copy];
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

          v12 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          if (v12)
          {
            [v6 addObject:v12];
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
    v14 = [(SiriLinkFlowProvisionalLinkAction *)self presentationStyle];
    if (v14 >= 4)
    {
      v15 = [NSString stringWithFormat:@"(unknown: %i)", v14];
    }

    else
    {
      v15 = off_291910[v14];
    }

    [v3 setObject:v15 forKeyedSubscript:@"presentationStyle"];
  }

  return v3;
}

- (NSData)jsonData
{
  v2 = [(SiriLinkFlowProvisionalLinkAction *)self dictionaryRepresentation];
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

- (SiriLinkFlowProvisionalLinkAction)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SiriLinkFlowProvisionalLinkAction *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (SiriLinkFlowProvisionalLinkAction)initWithDictionary:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = SiriLinkFlowProvisionalLinkAction;
  v5 = [(SiriLinkFlowProvisionalLinkAction *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SiriLinkFlowProvisionalLinkAction *)v5 setIdentifier:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"presentationStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SiriLinkFlowProvisionalLinkAction setPresentationStyle:](v5, "setPresentationStyle:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"parameters"];
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