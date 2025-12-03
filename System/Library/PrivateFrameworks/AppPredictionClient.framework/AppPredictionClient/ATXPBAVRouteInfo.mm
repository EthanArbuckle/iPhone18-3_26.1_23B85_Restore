@interface ATXPBAVRouteInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXPBAVRouteInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBAVRouteInfo;
  v4 = [(ATXPBAVRouteInfo *)&v8 description];
  dictionaryRepresentation = [(ATXPBAVRouteInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  deviceName = self->_deviceName;
  if (deviceName)
  {
    [dictionary setObject:deviceName forKey:@"deviceName"];
  }

  deviceID = self->_deviceID;
  if (deviceID)
  {
    [v4 setObject:deviceID forKey:@"deviceID"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_isExternalRoute];
    [v4 setObject:v7 forKey:@"isExternalRoute"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_deviceName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_deviceID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_deviceName)
  {
    [toCopy setDeviceName:?];
    toCopy = v5;
  }

  if (self->_deviceID)
  {
    [v5 setDeviceID:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[24] = self->_isExternalRoute;
    toCopy[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_deviceName copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_deviceID copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_isExternalRoute;
    *(v5 + 28) |= 1u;
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

  deviceName = self->_deviceName;
  if (deviceName | *(equalCopy + 2))
  {
    if (![(NSString *)deviceName isEqual:?])
    {
      goto LABEL_8;
    }
  }

  deviceID = self->_deviceID;
  if (deviceID | *(equalCopy + 1))
  {
    if (![(NSString *)deviceID isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    if (self->_isExternalRoute)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_8;
    }

    v7 = 1;
  }

LABEL_9:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_deviceName hash];
  v4 = [(NSString *)self->_deviceID hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_isExternalRoute;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(ATXPBAVRouteInfo *)self setDeviceName:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(ATXPBAVRouteInfo *)self setDeviceID:?];
    fromCopy = v5;
  }

  if (fromCopy[28])
  {
    self->_isExternalRoute = fromCopy[24];
    *&self->_has |= 1u;
  }
}

@end