@interface SISchemaClientTurnContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SISchemaClientTurnContext

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(SISchemaClientTurnContext *)self setTurnID:?];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    turnID = self->_turnID;
    if (turnID | equalCopy[1])
    {
      v6 = [(NSData *)turnID isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_turnID copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  turnID = self->_turnID;
  if (turnID)
  {
    [to setTurnID:turnID];
  }
}

- (void)writeTo:(id)to
{
  if (self->_turnID)
  {
    PBDataWriterWriteDataField();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  turnID = self->_turnID;
  if (turnID)
  {
    [dictionary setObject:turnID forKey:@"turnID"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SISchemaClientTurnContext;
  v4 = [(SISchemaClientTurnContext *)&v8 description];
  dictionaryRepresentation = [(SISchemaClientTurnContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end