@interface SISchemaClientTurnBasedEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)si_dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaClientTurnBasedEvent

- (id)si_dictionaryRepresentation
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  turnContext = self->_turnContext;
  if (turnContext)
  {
    v5 = [(SISchemaClientTurnContext *)turnContext turnID];

    if (v5)
    {
      v14[0] = 0;
      v14[1] = 0;
      v6 = [(SISchemaClientTurnContext *)self->_turnContext turnID];
      [v6 getBytes:v14 length:16];

      v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v14];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 UUIDString];
        [v3 setObject:v9 forKey:@"turnID"];
      }
    }
  }

  event = self->_event;
  if (event)
  {
    v11 = [(SISchemaClientAnyEvent *)event si_dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"event"];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  turnContext = self->_turnContext;
  v6 = v4[2];
  v9 = v4;
  if (turnContext)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SISchemaClientTurnContext *)turnContext mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SISchemaClientTurnBasedEvent *)self setTurnContext:?];
  }

  v4 = v9;
LABEL_7:
  event = self->_event;
  v8 = v4[1];
  if (event)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(SISchemaClientAnyEvent *)event mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(SISchemaClientTurnBasedEvent *)self setEvent:?];
  }

  v4 = v9;
LABEL_13:
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((turnContext = self->_turnContext, !(turnContext | v4[2])) || -[SISchemaClientTurnContext isEqual:](turnContext, "isEqual:")))
  {
    event = self->_event;
    if (event | v4[1])
    {
      v7 = [(SISchemaClientAnyEvent *)event isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SISchemaClientTurnContext *)self->_turnContext copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(SISchemaClientAnyEvent *)self->_event copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_turnContext)
  {
    [v4 setTurnContext:?];
    v4 = v5;
  }

  if (self->_event)
  {
    [v5 setEvent:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_turnContext)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_event)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  turnContext = self->_turnContext;
  if (turnContext)
  {
    v5 = [(SISchemaClientTurnContext *)turnContext dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"turnContext"];
  }

  event = self->_event;
  if (event)
  {
    v7 = [(SISchemaClientAnyEvent *)event dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"event"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SISchemaClientTurnBasedEvent;
  v4 = [(SISchemaClientTurnBasedEvent *)&v8 description];
  v5 = [(SISchemaClientTurnBasedEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end