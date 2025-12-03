@interface PDDPHandoutRecipient
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPHandoutRecipient

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPHandoutRecipient;
  v3 = [(PDDPHandoutRecipient *)&v7 description];
  dictionaryRepresentation = [(PDDPHandoutRecipient *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  objectId = self->_objectId;
  if (objectId)
  {
    [v3 setObject:objectId forKey:@"object_id"];
  }

  parentObjectId = self->_parentObjectId;
  if (parentObjectId)
  {
    [v4 setObject:parentObjectId forKey:@"parent_object_id"];
  }

  classId = self->_classId;
  if (classId)
  {
    [v4 setObject:classId forKey:@"class_id"];
  }

  personId = self->_personId;
  if (personId)
  {
    [v4 setObject:personId forKey:@"person_id"];
  }

  appIdentifier = self->_appIdentifier;
  if (appIdentifier)
  {
    [v4 setObject:appIdentifier forKey:@"app_identifier"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_objectId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_parentObjectId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_classId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_personId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_appIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_objectId)
  {
    [toCopy setObjectId:?];
    toCopy = v5;
  }

  if (self->_parentObjectId)
  {
    [v5 setParentObjectId:?];
    toCopy = v5;
  }

  if (self->_classId)
  {
    [v5 setClassId:?];
    toCopy = v5;
  }

  if (self->_personId)
  {
    [v5 setPersonId:?];
    toCopy = v5;
  }

  if (self->_appIdentifier)
  {
    [v5 setAppIdentifier:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_objectId copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_parentObjectId copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_classId copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_personId copyWithZone:zone];
  v13 = v5[5];
  v5[5] = v12;

  v14 = [(NSString *)self->_appIdentifier copyWithZone:zone];
  v15 = v5[1];
  v5[1] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((objectId = self->_objectId, !(objectId | equalCopy[3])) || -[NSString isEqual:](objectId, "isEqual:")) && ((parentObjectId = self->_parentObjectId, !(parentObjectId | equalCopy[4])) || -[NSString isEqual:](parentObjectId, "isEqual:")) && ((classId = self->_classId, !(classId | equalCopy[2])) || -[NSString isEqual:](classId, "isEqual:")) && ((personId = self->_personId, !(personId | equalCopy[5])) || -[NSString isEqual:](personId, "isEqual:")))
  {
    appIdentifier = self->_appIdentifier;
    if (appIdentifier | equalCopy[1])
    {
      v10 = [(NSString *)appIdentifier isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_objectId hash];
  v4 = [(NSString *)self->_parentObjectId hash]^ v3;
  v5 = [(NSString *)self->_classId hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_personId hash];
  return v6 ^ [(NSString *)self->_appIdentifier hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[3])
  {
    [(PDDPHandoutRecipient *)self setObjectId:?];
  }

  if (fromCopy[4])
  {
    [(PDDPHandoutRecipient *)self setParentObjectId:?];
  }

  if (fromCopy[2])
  {
    [(PDDPHandoutRecipient *)self setClassId:?];
  }

  if (fromCopy[5])
  {
    [(PDDPHandoutRecipient *)self setPersonId:?];
  }

  if (fromCopy[1])
  {
    [(PDDPHandoutRecipient *)self setAppIdentifier:?];
  }
}

@end