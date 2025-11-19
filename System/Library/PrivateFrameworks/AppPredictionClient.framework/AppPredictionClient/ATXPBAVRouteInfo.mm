@interface ATXPBAVRouteInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBAVRouteInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBAVRouteInfo;
  v4 = [(ATXPBAVRouteInfo *)&v8 description];
  v5 = [(ATXPBAVRouteInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  deviceName = self->_deviceName;
  if (deviceName)
  {
    [v3 setObject:deviceName forKey:@"deviceName"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_deviceName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_deviceID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_deviceName)
  {
    [v4 setDeviceName:?];
    v4 = v5;
  }

  if (self->_deviceID)
  {
    [v5 setDeviceID:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[24] = self->_isExternalRoute;
    v4[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_deviceName copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_deviceID copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_isExternalRoute;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  deviceName = self->_deviceName;
  if (deviceName | *(v4 + 2))
  {
    if (![(NSString *)deviceName isEqual:?])
    {
      goto LABEL_8;
    }
  }

  deviceID = self->_deviceID;
  if (deviceID | *(v4 + 1))
  {
    if (![(NSString *)deviceID isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    if (self->_isExternalRoute)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(v4 + 24))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 2))
  {
    [(ATXPBAVRouteInfo *)self setDeviceName:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(ATXPBAVRouteInfo *)self setDeviceID:?];
    v4 = v5;
  }

  if (v4[28])
  {
    self->_isExternalRoute = v4[24];
    *&self->_has |= 1u;
  }
}

@end