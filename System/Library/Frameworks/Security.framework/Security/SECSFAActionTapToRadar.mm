@interface SECSFAActionTapToRadar
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SECSFAActionTapToRadar

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[1])
  {
    [(SECSFAActionTapToRadar *)self setAlert:?];
  }

  if (fromCopy[5])
  {
    [(SECSFAActionTapToRadar *)self setRadarDescription:?];
  }

  if (fromCopy[3])
  {
    [(SECSFAActionTapToRadar *)self setComponentName:?];
  }

  if (fromCopy[4])
  {
    [(SECSFAActionTapToRadar *)self setComponentVersion:?];
  }

  if (fromCopy[2])
  {
    [(SECSFAActionTapToRadar *)self setComponentID:?];
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_alert hash];
  v4 = [(NSString *)self->_radarDescription hash]^ v3;
  v5 = [(NSString *)self->_componentName hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_componentVersion hash];
  return v6 ^ [(NSString *)self->_componentID hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((alert = self->_alert, !(alert | equalCopy[1])) || -[NSString isEqual:](alert, "isEqual:")) && ((radarDescription = self->_radarDescription, !(radarDescription | equalCopy[5])) || -[NSString isEqual:](radarDescription, "isEqual:")) && ((componentName = self->_componentName, !(componentName | equalCopy[3])) || -[NSString isEqual:](componentName, "isEqual:")) && ((componentVersion = self->_componentVersion, !(componentVersion | equalCopy[4])) || -[NSString isEqual:](componentVersion, "isEqual:")))
  {
    componentID = self->_componentID;
    if (componentID | equalCopy[2])
    {
      v10 = [(NSString *)componentID isEqual:?];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_alert copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_radarDescription copyWithZone:zone];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(NSString *)self->_componentName copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_componentVersion copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSString *)self->_componentID copyWithZone:zone];
  v15 = v5[2];
  v5[2] = v14;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_alert)
  {
    [toCopy setAlert:?];
    toCopy = v5;
  }

  if (self->_radarDescription)
  {
    [v5 setRadarDescription:?];
    toCopy = v5;
  }

  if (self->_componentName)
  {
    [v5 setComponentName:?];
    toCopy = v5;
  }

  if (self->_componentVersion)
  {
    [v5 setComponentVersion:?];
    toCopy = v5;
  }

  if (self->_componentID)
  {
    [v5 setComponentID:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_alert)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_radarDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_componentName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_componentVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_componentID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  alert = self->_alert;
  if (alert)
  {
    [dictionary setObject:alert forKey:@"alert"];
  }

  radarDescription = self->_radarDescription;
  if (radarDescription)
  {
    [v4 setObject:radarDescription forKey:@"radarDescription"];
  }

  componentName = self->_componentName;
  if (componentName)
  {
    [v4 setObject:componentName forKey:@"componentName"];
  }

  componentVersion = self->_componentVersion;
  if (componentVersion)
  {
    [v4 setObject:componentVersion forKey:@"componentVersion"];
  }

  componentID = self->_componentID;
  if (componentID)
  {
    [v4 setObject:componentID forKey:@"componentID"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SECSFAActionTapToRadar;
  v4 = [(SECSFAActionTapToRadar *)&v8 description];
  dictionaryRepresentation = [(SECSFAActionTapToRadar *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end