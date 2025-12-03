@interface SISchemaClientTurnBasedEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)si_dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SISchemaClientTurnBasedEvent

- (id)si_dictionaryRepresentation
{
  v14[2] = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  turnContext = self->_turnContext;
  if (turnContext)
  {
    turnID = [(SISchemaClientTurnContext *)turnContext turnID];

    if (turnID)
    {
      v14[0] = 0;
      v14[1] = 0;
      turnID2 = [(SISchemaClientTurnContext *)self->_turnContext turnID];
      [turnID2 getBytes:v14 length:16];

      v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v14];
      v8 = v7;
      if (v7)
      {
        uUIDString = [v7 UUIDString];
        [dictionary setObject:uUIDString forKey:@"turnID"];
      }
    }
  }

  event = self->_event;
  if (event)
  {
    si_dictionaryRepresentation = [(SISchemaClientAnyEvent *)event si_dictionaryRepresentation];
    [dictionary setObject:si_dictionaryRepresentation forKey:@"event"];
  }

  v12 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  turnContext = self->_turnContext;
  v6 = fromCopy[2];
  v9 = fromCopy;
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

  fromCopy = v9;
LABEL_7:
  event = self->_event;
  v8 = fromCopy[1];
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

  fromCopy = v9;
LABEL_13:
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((turnContext = self->_turnContext, !(turnContext | equalCopy[2])) || -[SISchemaClientTurnContext isEqual:](turnContext, "isEqual:")))
  {
    event = self->_event;
    if (event | equalCopy[1])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SISchemaClientTurnContext *)self->_turnContext copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(SISchemaClientAnyEvent *)self->_event copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_turnContext)
  {
    [toCopy setTurnContext:?];
    toCopy = v5;
  }

  if (self->_event)
  {
    [v5 setEvent:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_turnContext)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_event)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  turnContext = self->_turnContext;
  if (turnContext)
  {
    dictionaryRepresentation = [(SISchemaClientTurnContext *)turnContext dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"turnContext"];
  }

  event = self->_event;
  if (event)
  {
    dictionaryRepresentation2 = [(SISchemaClientAnyEvent *)event dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"event"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SISchemaClientTurnBasedEvent;
  v4 = [(SISchemaClientTurnBasedEvent *)&v8 description];
  dictionaryRepresentation = [(SISchemaClientTurnBasedEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end