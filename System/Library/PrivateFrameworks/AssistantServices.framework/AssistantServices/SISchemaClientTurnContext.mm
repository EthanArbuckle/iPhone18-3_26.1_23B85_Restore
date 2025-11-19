@interface SISchemaClientTurnContext
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaClientTurnContext

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(SISchemaClientTurnContext *)self setTurnID:?];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    turnID = self->_turnID;
    if (turnID | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_turnID copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)a3
{
  turnID = self->_turnID;
  if (turnID)
  {
    [a3 setTurnID:turnID];
  }
}

- (void)writeTo:(id)a3
{
  if (self->_turnID)
  {
    PBDataWriterWriteDataField();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  turnID = self->_turnID;
  if (turnID)
  {
    [v3 setObject:turnID forKey:@"turnID"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SISchemaClientTurnContext;
  v4 = [(SISchemaClientTurnContext *)&v8 description];
  v5 = [(SISchemaClientTurnContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end