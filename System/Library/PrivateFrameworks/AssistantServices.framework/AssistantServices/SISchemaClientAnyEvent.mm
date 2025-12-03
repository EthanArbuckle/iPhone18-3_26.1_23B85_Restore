@interface SISchemaClientAnyEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)si_dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SISchemaClientAnyEvent

- (id)si_dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    eventType = self->_eventType;
    v5 = SIReflectionInferClassFromEventType();
    if (v5)
    {
      v6 = NSStringFromClass(v5);
      [dictionary setObject:v6 forKey:@"eventType"];
    }

    if (self->_eventData)
    {
      [(SISchemaClientAnyEvent *)self eventType];
      eventData = [(SISchemaClientAnyEvent *)self eventData];
      v8 = SIReflectionHydrateProtoFromEventTypeAndData();

      if (v8)
      {
        dictionaryRepresentation = [v8 dictionaryRepresentation];
        [dictionary setObject:dictionaryRepresentation forKey:@"eventData"];
      }
    }
  }

  return dictionary;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[5])
  {
    self->_eventType = fromCopy[4];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(SISchemaClientAnyEvent *)self setEventData:?];
    fromCopy = v5;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 20);
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_eventType != *(equalCopy + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 20))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  eventData = self->_eventData;
  if (eventData | *(equalCopy + 1))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_eventType;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NSData *)self->_eventData copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_eventType;
    *(toCopy + 20) |= 1u;
  }

  if (self->_eventData)
  {
    v5 = toCopy;
    [toCopy setEventData:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    eventType = self->_eventType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_eventData)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_eventType];
    [dictionary setObject:v4 forKey:@"eventType"];
  }

  eventData = self->_eventData;
  if (eventData)
  {
    [dictionary setObject:eventData forKey:@"eventData"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SISchemaClientAnyEvent;
  v4 = [(SISchemaClientAnyEvent *)&v8 description];
  dictionaryRepresentation = [(SISchemaClientAnyEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end