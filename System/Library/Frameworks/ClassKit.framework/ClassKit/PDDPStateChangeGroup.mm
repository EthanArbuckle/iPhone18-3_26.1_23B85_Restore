@interface PDDPStateChangeGroup
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPStateChangeGroup

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPStateChangeGroup;
  v3 = [(PDDPStateChangeGroup *)&v7 description];
  dictionaryRepresentation = [(PDDPStateChangeGroup *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  groupId = self->_groupId;
  if (groupId)
  {
    [v3 setObject:groupId forKey:@"group_id"];
  }

  if (*&self->_has)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_roles];
    [v4 setObject:v6 forKey:@"roles"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_groupId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    roles = self->_roles;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_groupId)
  {
    v5 = toCopy;
    [toCopy setGroupId:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_roles;
    *(toCopy + 20) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_groupId copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  if (*&self->_has)
  {
    *(v5 + 4) = self->_roles;
    *(v5 + 20) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  groupId = self->_groupId;
  if (groupId | *(equalCopy + 1))
  {
    if (![(NSString *)groupId isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) != 0 && self->_roles == *(equalCopy + 4))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_groupId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_roles;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(PDDPStateChangeGroup *)self setGroupId:?];
    fromCopy = v5;
  }

  if (fromCopy[5])
  {
    self->_roles = fromCopy[4];
    *&self->_has |= 1u;
  }
}

@end