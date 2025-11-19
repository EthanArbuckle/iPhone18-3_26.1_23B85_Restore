@interface SECSFAActionTapToRadar
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SECSFAActionTapToRadar

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[1])
  {
    [(SECSFAActionTapToRadar *)self setAlert:?];
  }

  if (v4[5])
  {
    [(SECSFAActionTapToRadar *)self setRadarDescription:?];
  }

  if (v4[3])
  {
    [(SECSFAActionTapToRadar *)self setComponentName:?];
  }

  if (v4[4])
  {
    [(SECSFAActionTapToRadar *)self setComponentVersion:?];
  }

  if (v4[2])
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((alert = self->_alert, !(alert | v4[1])) || -[NSString isEqual:](alert, "isEqual:")) && ((radarDescription = self->_radarDescription, !(radarDescription | v4[5])) || -[NSString isEqual:](radarDescription, "isEqual:")) && ((componentName = self->_componentName, !(componentName | v4[3])) || -[NSString isEqual:](componentName, "isEqual:")) && ((componentVersion = self->_componentVersion, !(componentVersion | v4[4])) || -[NSString isEqual:](componentVersion, "isEqual:")))
  {
    componentID = self->_componentID;
    if (componentID | v4[2])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_alert copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_radarDescription copyWithZone:a3];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(NSString *)self->_componentName copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_componentVersion copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSString *)self->_componentID copyWithZone:a3];
  v15 = v5[2];
  v5[2] = v14;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_alert)
  {
    [v4 setAlert:?];
    v4 = v5;
  }

  if (self->_radarDescription)
  {
    [v5 setRadarDescription:?];
    v4 = v5;
  }

  if (self->_componentName)
  {
    [v5 setComponentName:?];
    v4 = v5;
  }

  if (self->_componentVersion)
  {
    [v5 setComponentVersion:?];
    v4 = v5;
  }

  if (self->_componentID)
  {
    [v5 setComponentID:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_alert)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_radarDescription)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_componentName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_componentVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_componentID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  alert = self->_alert;
  if (alert)
  {
    [v3 setObject:alert forKey:@"alert"];
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
  v5 = [(SECSFAActionTapToRadar *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end