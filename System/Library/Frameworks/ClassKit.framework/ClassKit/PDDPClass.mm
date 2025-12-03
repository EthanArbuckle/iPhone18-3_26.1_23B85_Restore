@interface PDDPClass
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPClass

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPClass;
  v3 = [(PDDPClass *)&v7 description];
  dictionaryRepresentation = [(PDDPClass *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  classId = self->_classId;
  if (classId)
  {
    [v3 setObject:classId forKey:@"class_id"];
  }

  className = self->_className;
  if (className)
  {
    [v4 setObject:className forKey:@"class_name"];
  }

  dateCreated = self->_dateCreated;
  if (dateCreated)
  {
    dictionaryRepresentation = [(PDDPDate *)dateCreated dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"date_created"];
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified)
  {
    dictionaryRepresentation2 = [(PDDPDate *)dateLastModified dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"date_last_modified"];
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [v4 setObject:displayName forKey:@"display_name"];
  }

  locationId = self->_locationId;
  if (locationId)
  {
    [v4 setObject:locationId forKey:@"location_id"];
  }

  entityMeta = self->_entityMeta;
  if (entityMeta)
  {
    dictionaryRepresentation3 = [(PDDPEntityMeta *)entityMeta dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"entity_meta"];
  }

  iconIdentifier = self->_iconIdentifier;
  if (iconIdentifier)
  {
    [v4 setObject:iconIdentifier forKey:@"icon_identifier"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_classId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_className)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_dateCreated)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_dateLastModified)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_locationId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_entityMeta)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_iconIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_classId)
  {
    [toCopy setClassId:?];
    toCopy = v5;
  }

  if (self->_className)
  {
    [v5 setClassName:?];
    toCopy = v5;
  }

  if (self->_dateCreated)
  {
    [v5 setDateCreated:?];
    toCopy = v5;
  }

  if (self->_dateLastModified)
  {
    [v5 setDateLastModified:?];
    toCopy = v5;
  }

  if (self->_displayName)
  {
    [v5 setDisplayName:?];
    toCopy = v5;
  }

  if (self->_locationId)
  {
    [v5 setLocationId:?];
    toCopy = v5;
  }

  if (self->_entityMeta)
  {
    [v5 setEntityMeta:?];
    toCopy = v5;
  }

  if (self->_iconIdentifier)
  {
    [v5 setIconIdentifier:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_classId copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_className copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(PDDPDate *)self->_dateCreated copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(PDDPDate *)self->_dateLastModified copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSString *)self->_displayName copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(NSString *)self->_locationId copyWithZone:zone];
  v17 = v5[8];
  v5[8] = v16;

  v18 = [(PDDPEntityMeta *)self->_entityMeta copyWithZone:zone];
  v19 = v5[6];
  v5[6] = v18;

  v20 = [(NSString *)self->_iconIdentifier copyWithZone:zone];
  v21 = v5[7];
  v5[7] = v20;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((classId = self->_classId, !(classId | equalCopy[1])) || -[NSString isEqual:](classId, "isEqual:")) && ((className = self->_className, !(className | equalCopy[2])) || -[NSString isEqual:](className, "isEqual:")) && ((dateCreated = self->_dateCreated, !(dateCreated | equalCopy[3])) || -[PDDPDate isEqual:](dateCreated, "isEqual:")) && ((dateLastModified = self->_dateLastModified, !(dateLastModified | equalCopy[4])) || -[PDDPDate isEqual:](dateLastModified, "isEqual:")) && ((displayName = self->_displayName, !(displayName | equalCopy[5])) || -[NSString isEqual:](displayName, "isEqual:")) && ((locationId = self->_locationId, !(locationId | equalCopy[8])) || -[NSString isEqual:](locationId, "isEqual:")) && ((entityMeta = self->_entityMeta, !(entityMeta | equalCopy[6])) || -[PDDPEntityMeta isEqual:](entityMeta, "isEqual:")))
  {
    iconIdentifier = self->_iconIdentifier;
    if (iconIdentifier | equalCopy[7])
    {
      v13 = [(NSString *)iconIdentifier isEqual:?];
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_classId hash];
  v4 = [(NSString *)self->_className hash]^ v3;
  v5 = [(PDDPDate *)self->_dateCreated hash];
  v6 = v4 ^ v5 ^ [(PDDPDate *)self->_dateLastModified hash];
  v7 = [(NSString *)self->_displayName hash];
  v8 = v7 ^ [(NSString *)self->_locationId hash];
  v9 = v6 ^ v8 ^ [(PDDPEntityMeta *)self->_entityMeta hash];
  return v9 ^ [(NSString *)self->_iconIdentifier hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[1])
  {
    [(PDDPClass *)self setClassId:?];
  }

  if (fromCopy[2])
  {
    [(PDDPClass *)self setClassName:?];
  }

  dateCreated = self->_dateCreated;
  v5 = fromCopy[3];
  if (dateCreated)
  {
    if (v5)
    {
      [(PDDPDate *)dateCreated mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(PDDPClass *)self setDateCreated:?];
  }

  dateLastModified = self->_dateLastModified;
  v7 = fromCopy[4];
  if (dateLastModified)
  {
    if (v7)
    {
      [(PDDPDate *)dateLastModified mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(PDDPClass *)self setDateLastModified:?];
  }

  if (fromCopy[5])
  {
    [(PDDPClass *)self setDisplayName:?];
  }

  if (fromCopy[8])
  {
    [(PDDPClass *)self setLocationId:?];
  }

  entityMeta = self->_entityMeta;
  v9 = fromCopy[6];
  if (entityMeta)
  {
    if (v9)
    {
      [(PDDPEntityMeta *)entityMeta mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(PDDPClass *)self setEntityMeta:?];
  }

  if (fromCopy[7])
  {
    [(PDDPClass *)self setIconIdentifier:?];
  }
}

@end