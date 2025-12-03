@interface ATXPBContextHeuristicsEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXPBContextHeuristicsEvent

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXPBContextHeuristicsEvent;
  v4 = [(ATXPBContextHeuristicsEvent *)&v8 description];
  dictionaryRepresentation = [(ATXPBContextHeuristicsEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  contextName = self->_contextName;
  if (contextName)
  {
    [dictionary setObject:contextName forKey:@"contextName"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isStart];
    [v4 setObject:v6 forKey:@"isStart"];
  }

  contextType = self->_contextType;
  if (contextType)
  {
    [v4 setObject:contextType forKey:@"contextType"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_contextName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    isStart = self->_isStart;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_contextType)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_contextName)
  {
    [toCopy setContextName:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[24] = self->_isStart;
    toCopy[28] |= 1u;
  }

  if (self->_contextType)
  {
    [v5 setContextType:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_contextName copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_isStart;
    *(v5 + 28) |= 1u;
  }

  v8 = [(NSString *)self->_contextType copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  contextName = self->_contextName;
  if (contextName | *(equalCopy + 1))
  {
    if (![(NSString *)contextName isEqual:?])
    {
      goto LABEL_9;
    }
  }

  v6 = *(equalCopy + 28);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((*(equalCopy + 28) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *(equalCopy + 24);
  if (!self->_isStart)
  {
LABEL_5:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if ((*(equalCopy + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  contextType = self->_contextType;
  if (contextType | *(equalCopy + 2))
  {
    v8 = [(NSString *)contextType isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_10:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_contextName hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_isStart;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSString *)self->_contextType hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(ATXPBContextHeuristicsEvent *)self setContextName:?];
    fromCopy = v5;
  }

  if (fromCopy[28])
  {
    self->_isStart = fromCopy[24];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(ATXPBContextHeuristicsEvent *)self setContextType:?];
    fromCopy = v5;
  }
}

@end