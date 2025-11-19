@interface ATXPBContextHeuristicsEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBContextHeuristicsEvent

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXPBContextHeuristicsEvent;
  v4 = [(ATXPBContextHeuristicsEvent *)&v8 description];
  v5 = [(ATXPBContextHeuristicsEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  contextName = self->_contextName;
  if (contextName)
  {
    [v3 setObject:contextName forKey:@"contextName"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_contextName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    isStart = self->_isStart;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_contextType)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_contextName)
  {
    [v4 setContextName:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[24] = self->_isStart;
    v4[28] |= 1u;
  }

  if (self->_contextType)
  {
    [v5 setContextType:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_contextName copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_isStart;
    *(v5 + 28) |= 1u;
  }

  v8 = [(NSString *)self->_contextType copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  contextName = self->_contextName;
  if (contextName | *(v4 + 1))
  {
    if (![(NSString *)contextName isEqual:?])
    {
      goto LABEL_9;
    }
  }

  v6 = *(v4 + 28);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((*(v4 + 28) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *(v4 + 24);
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

  if ((*(v4 + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  contextType = self->_contextType;
  if (contextType | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 1))
  {
    [(ATXPBContextHeuristicsEvent *)self setContextName:?];
    v4 = v5;
  }

  if (v4[28])
  {
    self->_isStart = v4[24];
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(ATXPBContextHeuristicsEvent *)self setContextType:?];
    v4 = v5;
  }
}

@end