@interface PDDPPersonLinkId
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPPersonLinkId

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPPersonLinkId;
  v3 = [(PDDPPersonLinkId *)&v7 description];
  v4 = [(PDDPPersonLinkId *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  personLinkId = self->_personLinkId;
  if (personLinkId)
  {
    [v3 setObject:personLinkId forKey:@"person_link_id"];
  }

  context = self->_context;
  if (context)
  {
    [v4 setObject:context forKey:@"context"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_personLinkId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_context)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_personLinkId)
  {
    [v4 setPersonLinkId:?];
    v4 = v5;
  }

  if (self->_context)
  {
    [v5 setContext:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_personLinkId copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_context copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((personLinkId = self->_personLinkId, !(personLinkId | v4[2])) || -[NSString isEqual:](personLinkId, "isEqual:")))
  {
    context = self->_context;
    if (context | v4[1])
    {
      v7 = [(NSString *)context isEqual:?];
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(PDDPPersonLinkId *)self setPersonLinkId:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(PDDPPersonLinkId *)self setContext:?];
    v4 = v5;
  }
}

@end