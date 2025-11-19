@interface SISchemaClientAnyEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)si_dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaClientAnyEvent

- (id)si_dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    eventType = self->_eventType;
    v5 = SIReflectionInferClassFromEventType();
    if (v5)
    {
      v6 = NSStringFromClass(v5);
      [v3 setObject:v6 forKey:@"eventType"];
    }

    if (self->_eventData)
    {
      [(SISchemaClientAnyEvent *)self eventType];
      v7 = [(SISchemaClientAnyEvent *)self eventData];
      v8 = SIReflectionHydrateProtoFromEventTypeAndData();

      if (v8)
      {
        v9 = [v8 dictionaryRepresentation];
        [v3 setObject:v9 forKey:@"eventData"];
      }
    }
  }

  return v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[5])
  {
    self->_eventType = v4[4];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    v5 = v4;
    [(SISchemaClientAnyEvent *)self setEventData:?];
    v4 = v5;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_eventType;
  }

  else
  {
    v2 = 0;
  }

  return [(NSData *)self->_eventData hash]^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 20);
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_eventType != *(v4 + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 20))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  eventData = self->_eventData;
  if (eventData | *(v4 + 1))
  {
    v7 = [(NSData *)eventData isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_eventType;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NSData *)self->_eventData copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_eventType;
    *(v4 + 20) |= 1u;
  }

  if (self->_eventData)
  {
    v5 = v4;
    [v4 setEventData:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    eventType = self->_eventType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_eventData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_eventType];
    [v3 setObject:v4 forKey:@"eventType"];
  }

  eventData = self->_eventData;
  if (eventData)
  {
    [v3 setObject:eventData forKey:@"eventData"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SISchemaClientAnyEvent;
  v4 = [(SISchemaClientAnyEvent *)&v8 description];
  v5 = [(SISchemaClientAnyEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end