@interface PDDPLocation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPLocation

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPLocation;
  v3 = [(PDDPLocation *)&v7 description];
  dictionaryRepresentation = [(PDDPLocation *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  locationId = self->_locationId;
  if (locationId)
  {
    [v3 setObject:locationId forKey:@"location_id"];
  }

  locationName = self->_locationName;
  if (locationName)
  {
    [v4 setObject:locationName forKey:@"location_name"];
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

  entityMeta = self->_entityMeta;
  if (entityMeta)
  {
    dictionaryRepresentation3 = [(PDDPEntityMeta *)entityMeta dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"entity_meta"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_locationId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_locationName)
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

  if (self->_entityMeta)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_locationId)
  {
    [toCopy setLocationId:?];
    toCopy = v5;
  }

  if (self->_locationName)
  {
    [v5 setLocationName:?];
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

  if (self->_entityMeta)
  {
    [v5 setEntityMeta:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_locationId copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_locationName copyWithZone:zone];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(PDDPDate *)self->_dateCreated copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(PDDPDate *)self->_dateLastModified copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(PDDPEntityMeta *)self->_entityMeta copyWithZone:zone];
  v15 = v5[3];
  v5[3] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((locationId = self->_locationId, !(locationId | equalCopy[4])) || -[NSString isEqual:](locationId, "isEqual:")) && ((locationName = self->_locationName, !(locationName | equalCopy[5])) || -[NSString isEqual:](locationName, "isEqual:")) && ((dateCreated = self->_dateCreated, !(dateCreated | equalCopy[1])) || -[PDDPDate isEqual:](dateCreated, "isEqual:")) && ((dateLastModified = self->_dateLastModified, !(dateLastModified | equalCopy[2])) || -[PDDPDate isEqual:](dateLastModified, "isEqual:")))
  {
    entityMeta = self->_entityMeta;
    if (entityMeta | equalCopy[3])
    {
      v10 = [(PDDPEntityMeta *)entityMeta isEqual:?];
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
  v3 = [(NSString *)self->_locationId hash];
  v4 = [(NSString *)self->_locationName hash]^ v3;
  v5 = [(PDDPDate *)self->_dateCreated hash];
  v6 = v4 ^ v5 ^ [(PDDPDate *)self->_dateLastModified hash];
  return v6 ^ [(PDDPEntityMeta *)self->_entityMeta hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[4])
  {
    [(PDDPLocation *)self setLocationId:?];
  }

  if (fromCopy[5])
  {
    [(PDDPLocation *)self setLocationName:?];
  }

  dateCreated = self->_dateCreated;
  v5 = fromCopy[1];
  if (dateCreated)
  {
    if (v5)
    {
      [(PDDPDate *)dateCreated mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(PDDPLocation *)self setDateCreated:?];
  }

  dateLastModified = self->_dateLastModified;
  v7 = fromCopy[2];
  if (dateLastModified)
  {
    if (v7)
    {
      [(PDDPDate *)dateLastModified mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(PDDPLocation *)self setDateLastModified:?];
  }

  entityMeta = self->_entityMeta;
  v9 = fromCopy[3];
  if (entityMeta)
  {
    if (v9)
    {
      [(PDDPEntityMeta *)entityMeta mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(PDDPLocation *)self setEntityMeta:?];
  }
}

@end