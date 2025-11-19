@interface TFDevice
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation TFDevice

- (id)description
{
  v7.receiver = self;
  v7.super_class = TFDevice;
  v3 = [(TFDevice *)&v7 description];
  v4 = [(TFDevice *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    devicePlatform = self->_devicePlatform;
    if (devicePlatform >= 4)
    {
      v6 = [NSString stringWithFormat:@"(unknown: %i)", self->_devicePlatform];
    }

    else
    {
      v6 = *(&off_100526078 + devicePlatform);
    }

    [v3 setObject:v6 forKey:@"devicePlatform"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    deviceFamily = self->_deviceFamily;
    if (deviceFamily >= 7)
    {
      v8 = [NSString stringWithFormat:@"(unknown: %i)", self->_deviceFamily];
    }

    else
    {
      v8 = *(&off_100526098 + deviceFamily);
    }

    [v3 setObject:v8 forKey:@"deviceFamily"];
  }

  model = self->_model;
  if (model)
  {
    [v3 setObject:model forKey:@"model"];
  }

  osVersion = self->_osVersion;
  if (osVersion)
  {
    [v3 setObject:osVersion forKey:@"osVersion"];
  }

  architecture = self->_architecture;
  if (architecture)
  {
    [v3 setObject:architecture forKey:@"architecture"];
  }

  display = self->_display;
  if (display)
  {
    v13 = [(TFDisplay *)display dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"display"];
  }

  locale = self->_locale;
  if (locale)
  {
    [v3 setObject:locale forKey:@"locale"];
  }

  timezone = self->_timezone;
  if (timezone)
  {
    [v3 setObject:timezone forKey:@"timezone"];
  }

  carrier = self->_carrier;
  if (carrier)
  {
    [v3 setObject:carrier forKey:@"carrier"];
  }

  cellularNetworkType = self->_cellularNetworkType;
  if (cellularNetworkType)
  {
    [v3 setObject:cellularNetworkType forKey:@"cellularNetworkType"];
  }

  if ((*&self->_has & 2) != 0)
  {
    connection = self->_connection;
    if (connection >= 4)
    {
      v19 = [NSString stringWithFormat:@"(unknown: %i)", self->_connection];
    }

    else
    {
      v19 = *(&off_1005260D0 + connection);
    }

    [v3 setObject:v19 forKey:@"connection"];
  }

  disk = self->_disk;
  if (disk)
  {
    v21 = [(TFMemoryUsage *)disk dictionaryRepresentation];
    [v3 setObject:v21 forKey:@"disk"];
  }

  if (*&self->_has)
  {
    v22 = [NSNumber numberWithUnsignedInt:self->_batteryPercentage];
    [v3 setObject:v22 forKey:@"batteryPercentage"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_model)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_osVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_architecture)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_display)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_locale)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_timezone)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_carrier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_cellularNetworkType)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_disk)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    v4 = v6;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_23:
      if ((has & 8) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_23;
  }

  PBDataWriterWriteInt32Field();
  v4 = v6;
  if ((*&self->_has & 8) != 0)
  {
LABEL_24:
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

LABEL_25:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_model copyWithZone:a3];
  v7 = v5[10];
  v5[10] = v6;

  v8 = [(NSString *)self->_osVersion copyWithZone:a3];
  v9 = v5[11];
  v5[11] = v8;

  v10 = [(NSString *)self->_architecture copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(TFDisplay *)self->_display copyWithZone:a3];
  v13 = v5[8];
  v5[8] = v12;

  v14 = [(NSString *)self->_locale copyWithZone:a3];
  v15 = v5[9];
  v5[9] = v14;

  v16 = [(NSString *)self->_timezone copyWithZone:a3];
  v17 = v5[12];
  v5[12] = v16;

  v18 = [(NSString *)self->_carrier copyWithZone:a3];
  v19 = v5[3];
  v5[3] = v18;

  v20 = [(NSString *)self->_cellularNetworkType copyWithZone:a3];
  v21 = v5[4];
  v5[4] = v20;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 10) = self->_connection;
    *(v5 + 104) |= 2u;
  }

  v22 = [(TFMemoryUsage *)self->_disk copyWithZone:a3];
  v23 = v5[7];
  v5[7] = v22;

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    *(v5 + 11) = self->_deviceFamily;
    *(v5 + 104) |= 4u;
    if ((*&self->_has & 8) == 0)
    {
      return v5;
    }

    goto LABEL_6;
  }

  *(v5 + 4) = self->_batteryPercentage;
  *(v5 + 104) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((has & 8) != 0)
  {
LABEL_6:
    *(v5 + 12) = self->_devicePlatform;
    *(v5 + 104) |= 8u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_40;
  }

  model = self->_model;
  if (model | *(v4 + 10))
  {
    if (![(NSString *)model isEqual:?])
    {
      goto LABEL_40;
    }
  }

  osVersion = self->_osVersion;
  if (osVersion | *(v4 + 11))
  {
    if (![(NSString *)osVersion isEqual:?])
    {
      goto LABEL_40;
    }
  }

  architecture = self->_architecture;
  if (architecture | *(v4 + 1))
  {
    if (![(NSString *)architecture isEqual:?])
    {
      goto LABEL_40;
    }
  }

  display = self->_display;
  if (display | *(v4 + 8))
  {
    if (![(TFDisplay *)display isEqual:?])
    {
      goto LABEL_40;
    }
  }

  locale = self->_locale;
  if (locale | *(v4 + 9))
  {
    if (![(NSString *)locale isEqual:?])
    {
      goto LABEL_40;
    }
  }

  timezone = self->_timezone;
  if (timezone | *(v4 + 12))
  {
    if (![(NSString *)timezone isEqual:?])
    {
      goto LABEL_40;
    }
  }

  carrier = self->_carrier;
  if (carrier | *(v4 + 3))
  {
    if (![(NSString *)carrier isEqual:?])
    {
      goto LABEL_40;
    }
  }

  cellularNetworkType = self->_cellularNetworkType;
  if (cellularNetworkType | *(v4 + 4))
  {
    if (![(NSString *)cellularNetworkType isEqual:?])
    {
      goto LABEL_40;
    }
  }

  has = self->_has;
  v14 = *(v4 + 104);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 104) & 2) == 0 || self->_connection != *(v4 + 10))
    {
      goto LABEL_40;
    }
  }

  else if ((*(v4 + 104) & 2) != 0)
  {
    goto LABEL_40;
  }

  disk = self->_disk;
  if (disk | *(v4 + 7))
  {
    if (![(TFMemoryUsage *)disk isEqual:?])
    {
LABEL_40:
      v16 = 0;
      goto LABEL_41;
    }

    has = self->_has;
    v14 = *(v4 + 104);
  }

  if (has)
  {
    if ((v14 & 1) == 0 || self->_batteryPercentage != *(v4 + 4))
    {
      goto LABEL_40;
    }
  }

  else if (v14)
  {
    goto LABEL_40;
  }

  if ((has & 4) != 0)
  {
    if ((v14 & 4) == 0 || self->_deviceFamily != *(v4 + 11))
    {
      goto LABEL_40;
    }
  }

  else if ((v14 & 4) != 0)
  {
    goto LABEL_40;
  }

  v16 = (v14 & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((v14 & 8) == 0 || self->_devicePlatform != *(v4 + 12))
    {
      goto LABEL_40;
    }

    v16 = 1;
  }

LABEL_41:

  return v16;
}

- (unint64_t)hash
{
  v16 = [(NSString *)self->_model hash];
  v3 = [(NSString *)self->_osVersion hash];
  v4 = [(NSString *)self->_architecture hash];
  v5 = [(TFDisplay *)self->_display hash];
  v6 = [(NSString *)self->_locale hash];
  v7 = [(NSString *)self->_timezone hash];
  v8 = [(NSString *)self->_carrier hash];
  v9 = [(NSString *)self->_cellularNetworkType hash];
  if ((*&self->_has & 2) != 0)
  {
    v10 = 2654435761 * self->_connection;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(TFMemoryUsage *)self->_disk hash];
  if ((*&self->_has & 1) == 0)
  {
    v12 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v13 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v14 = 0;
    return v3 ^ v16 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
  }

  v12 = 2654435761 * self->_batteryPercentage;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v13 = 2654435761 * self->_deviceFamily;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v14 = 2654435761 * self->_devicePlatform;
  return v3 ^ v16 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

@end