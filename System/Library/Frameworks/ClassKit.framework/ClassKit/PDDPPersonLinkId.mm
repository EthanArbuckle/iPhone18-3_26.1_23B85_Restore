@interface PDDPPersonLinkId
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPPersonLinkId

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPPersonLinkId;
  v3 = [(PDDPPersonLinkId *)&v7 description];
  dictionaryRepresentation = [(PDDPPersonLinkId *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_personLinkId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_context)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_personLinkId)
  {
    [toCopy setPersonLinkId:?];
    toCopy = v5;
  }

  if (self->_context)
  {
    [v5 setContext:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_personLinkId copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_context copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((personLinkId = self->_personLinkId, !(personLinkId | equalCopy[2])) || -[NSString isEqual:](personLinkId, "isEqual:")))
  {
    context = self->_context;
    if (context | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(PDDPPersonLinkId *)self setPersonLinkId:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(PDDPPersonLinkId *)self setContext:?];
    fromCopy = v5;
  }
}

@end