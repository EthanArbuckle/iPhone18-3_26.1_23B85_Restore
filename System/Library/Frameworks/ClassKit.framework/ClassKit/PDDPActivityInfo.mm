@interface PDDPActivityInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPActivityInfo

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPActivityInfo;
  v3 = [(PDDPActivityInfo *)&v7 description];
  dictionaryRepresentation = [(PDDPActivityInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  primaryItemIdentifier = self->_primaryItemIdentifier;
  if (primaryItemIdentifier)
  {
    [v3 setObject:primaryItemIdentifier forKey:@"primary_item_identifier"];
  }

  activityId = self->_activityId;
  if (activityId)
  {
    [v4 setObject:activityId forKey:@"activity_id"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_primaryItemIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_activityId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_primaryItemIdentifier)
  {
    [toCopy setPrimaryItemIdentifier:?];
    toCopy = v5;
  }

  if (self->_activityId)
  {
    [v5 setActivityId:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_primaryItemIdentifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_activityId copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((primaryItemIdentifier = self->_primaryItemIdentifier, !(primaryItemIdentifier | equalCopy[2])) || -[NSString isEqual:](primaryItemIdentifier, "isEqual:")))
  {
    activityId = self->_activityId;
    if (activityId | equalCopy[1])
    {
      v7 = [(NSString *)activityId isEqual:?];
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
    [(PDDPActivityInfo *)self setPrimaryItemIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(PDDPActivityInfo *)self setActivityId:?];
    fromCopy = v5;
  }
}

@end