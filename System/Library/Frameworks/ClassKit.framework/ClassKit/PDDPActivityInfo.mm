@interface PDDPActivityInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPActivityInfo

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPActivityInfo;
  v3 = [(PDDPActivityInfo *)&v7 description];
  v4 = [(PDDPActivityInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_primaryItemIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_activityId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_primaryItemIdentifier)
  {
    [v4 setPrimaryItemIdentifier:?];
    v4 = v5;
  }

  if (self->_activityId)
  {
    [v5 setActivityId:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_primaryItemIdentifier copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_activityId copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((primaryItemIdentifier = self->_primaryItemIdentifier, !(primaryItemIdentifier | v4[2])) || -[NSString isEqual:](primaryItemIdentifier, "isEqual:")))
  {
    activityId = self->_activityId;
    if (activityId | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(PDDPActivityInfo *)self setPrimaryItemIdentifier:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(PDDPActivityInfo *)self setActivityId:?];
    v4 = v5;
  }
}

@end