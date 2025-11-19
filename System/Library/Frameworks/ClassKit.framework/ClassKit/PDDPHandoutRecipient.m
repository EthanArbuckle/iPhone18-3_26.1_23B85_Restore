@interface PDDPHandoutRecipient
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPHandoutRecipient

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPHandoutRecipient;
  v3 = [(PDDPHandoutRecipient *)&v7 description];
  v4 = [(PDDPHandoutRecipient *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_objectId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_parentObjectId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_classId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_personId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_appIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_objectId)
  {
    [v4 setObjectId:?];
    v4 = v5;
  }

  if (self->_parentObjectId)
  {
    [v5 setParentObjectId:?];
    v4 = v5;
  }

  if (self->_classId)
  {
    [v5 setClassId:?];
    v4 = v5;
  }

  if (self->_personId)
  {
    [v5 setPersonId:?];
    v4 = v5;
  }

  if (self->_appIdentifier)
  {
    [v5 setAppIdentifier:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_objectId copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_parentObjectId copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_classId copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_personId copyWithZone:a3];
  v13 = v5[5];
  v5[5] = v12;

  v14 = [(NSString *)self->_appIdentifier copyWithZone:a3];
  v15 = v5[1];
  v5[1] = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((objectId = self->_objectId, !(objectId | v4[3])) || -[NSString isEqual:](objectId, "isEqual:")) && ((parentObjectId = self->_parentObjectId, !(parentObjectId | v4[4])) || -[NSString isEqual:](parentObjectId, "isEqual:")) && ((classId = self->_classId, !(classId | v4[2])) || -[NSString isEqual:](classId, "isEqual:")) && ((personId = self->_personId, !(personId | v4[5])) || -[NSString isEqual:](personId, "isEqual:")))
  {
    appIdentifier = self->_appIdentifier;
    if (appIdentifier | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[3])
  {
    [(PDDPHandoutRecipient *)self setObjectId:?];
  }

  if (v4[4])
  {
    [(PDDPHandoutRecipient *)self setParentObjectId:?];
  }

  if (v4[2])
  {
    [(PDDPHandoutRecipient *)self setClassId:?];
  }

  if (v4[5])
  {
    [(PDDPHandoutRecipient *)self setPersonId:?];
  }

  if (v4[1])
  {
    [(PDDPHandoutRecipient *)self setAppIdentifier:?];
  }
}

@end