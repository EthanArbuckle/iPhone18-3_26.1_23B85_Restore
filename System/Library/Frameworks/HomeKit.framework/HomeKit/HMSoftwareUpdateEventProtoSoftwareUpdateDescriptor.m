@interface HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasErrorCode:(BOOL)a3;
- (void)setHasMajorVersion:(BOOL)a3;
- (void)setHasMinorVersion:(BOOL)a3;
- (void)setHasRampEnabled:(BOOL)a3;
- (void)setHasStatus:(BOOL)a3;
- (void)setHasUpdateVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((*(v4 + 100) & 0x10) != 0)
  {
    self->_status = *(v4 + 5);
    *&self->_has |= 0x10u;
  }

  v7 = v4;
  if (*(v4 + 11))
  {
    [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)self setServerAssetURL:?];
    v4 = v7;
  }

  if (*(v4 + 9))
  {
    [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)self setServerAssetAlgorithm:?];
    v4 = v7;
  }

  if (*(v4 + 10))
  {
    [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)self setServerAssetMeasurement:?];
    v4 = v7;
  }

  v5 = *(v4 + 100);
  if ((v5 & 4) != 0)
  {
    self->_majorVersion = *(v4 + 3);
    *&self->_has |= 4u;
    v5 = *(v4 + 100);
    if ((v5 & 8) == 0)
    {
LABEL_11:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*(v4 + 100) & 8) == 0)
  {
    goto LABEL_11;
  }

  self->_minorVersion = *(v4 + 4);
  *&self->_has |= 8u;
  if ((*(v4 + 100) & 0x20) != 0)
  {
LABEL_12:
    self->_updateVersion = *(v4 + 6);
    *&self->_has |= 0x20u;
  }

LABEL_13:
  if (*(v4 + 7))
  {
    [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)self setBuildVersion:?];
    v4 = v7;
  }

  if (*(v4 + 100))
  {
    self->_downloadSize = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 8))
  {
    [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)self setHumanReadableUpdateName:?];
    v4 = v7;
  }

  v6 = *(v4 + 100);
  if ((v6 & 0x40) != 0)
  {
    self->_rampEnabled = *(v4 + 96);
    *&self->_has |= 0x40u;
    v6 = *(v4 + 100);
  }

  if ((v6 & 2) != 0)
  {
    self->_errorCode = *(v4 + 2);
    *&self->_has |= 2u;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
  {
    v15 = 2654435761 * self->_status;
  }

  else
  {
    v15 = 0;
  }

  v14 = [(NSString *)self->_serverAssetURL hash];
  v3 = [(NSString *)self->_serverAssetAlgorithm hash];
  v4 = [(NSData *)self->_serverAssetMeasurement hash];
  if ((*&self->_has & 4) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v6 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v5 = 2654435761 * self->_majorVersion;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v6 = 2654435761 * self->_minorVersion;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_updateVersion;
    goto LABEL_11;
  }

LABEL_10:
  v7 = 0;
LABEL_11:
  v8 = [(NSString *)self->_buildVersion hash];
  if (*&self->_has)
  {
    v9 = 2654435761 * self->_downloadSize;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(NSString *)self->_humanReadableUpdateName hash];
  if ((*&self->_has & 0x40) != 0)
  {
    v11 = 2654435761 * self->_rampEnabled;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_16;
    }

LABEL_18:
    v12 = 0;
    return v14 ^ v15 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

  v11 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_18;
  }

LABEL_16:
  v12 = 2654435761 * self->_errorCode;
  return v14 ^ v15 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  v5 = *(v4 + 100);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 100) & 0x10) == 0 || self->_status != *(v4 + 5))
    {
      goto LABEL_46;
    }
  }

  else if ((*(v4 + 100) & 0x10) != 0)
  {
    goto LABEL_46;
  }

  serverAssetURL = self->_serverAssetURL;
  if (serverAssetURL | *(v4 + 11) && ![(NSString *)serverAssetURL isEqual:?])
  {
    goto LABEL_46;
  }

  serverAssetAlgorithm = self->_serverAssetAlgorithm;
  if (serverAssetAlgorithm | *(v4 + 9))
  {
    if (![(NSString *)serverAssetAlgorithm isEqual:?])
    {
      goto LABEL_46;
    }
  }

  serverAssetMeasurement = self->_serverAssetMeasurement;
  if (serverAssetMeasurement | *(v4 + 10))
  {
    if (![(NSData *)serverAssetMeasurement isEqual:?])
    {
      goto LABEL_46;
    }
  }

  has = self->_has;
  v10 = *(v4 + 100);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 100) & 4) == 0 || self->_majorVersion != *(v4 + 3))
    {
      goto LABEL_46;
    }
  }

  else if ((*(v4 + 100) & 4) != 0)
  {
    goto LABEL_46;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 100) & 8) == 0 || self->_minorVersion != *(v4 + 4))
    {
      goto LABEL_46;
    }
  }

  else if ((*(v4 + 100) & 8) != 0)
  {
    goto LABEL_46;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 100) & 0x20) == 0 || self->_updateVersion != *(v4 + 6))
    {
      goto LABEL_46;
    }
  }

  else if ((*(v4 + 100) & 0x20) != 0)
  {
    goto LABEL_46;
  }

  buildVersion = self->_buildVersion;
  if (buildVersion | *(v4 + 7))
  {
    if (![(NSString *)buildVersion isEqual:?])
    {
      goto LABEL_46;
    }

    has = self->_has;
    v10 = *(v4 + 100);
  }

  if (has)
  {
    if ((v10 & 1) == 0 || self->_downloadSize != *(v4 + 1))
    {
      goto LABEL_46;
    }
  }

  else if (v10)
  {
    goto LABEL_46;
  }

  humanReadableUpdateName = self->_humanReadableUpdateName;
  if (humanReadableUpdateName | *(v4 + 8))
  {
    if (![(NSString *)humanReadableUpdateName isEqual:?])
    {
      goto LABEL_46;
    }

    has = self->_has;
    v10 = *(v4 + 100);
  }

  if ((has & 0x40) == 0)
  {
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_41;
    }

LABEL_46:
    v13 = 0;
    goto LABEL_47;
  }

  if ((v10 & 0x40) == 0)
  {
    goto LABEL_46;
  }

  v15 = *(v4 + 96);
  if (self->_rampEnabled)
  {
    if ((*(v4 + 96) & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else if (*(v4 + 96))
  {
    goto LABEL_46;
  }

LABEL_41:
  v13 = (v10 & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((v10 & 2) == 0 || self->_errorCode != *(v4 + 2))
    {
      goto LABEL_46;
    }

    v13 = 1;
  }

LABEL_47:

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 40) = self->_status;
    *(v5 + 100) |= 0x10u;
  }

  v7 = [(NSString *)self->_serverAssetURL copyWithZone:a3];
  v8 = *(v6 + 88);
  *(v6 + 88) = v7;

  v9 = [(NSString *)self->_serverAssetAlgorithm copyWithZone:a3];
  v10 = *(v6 + 72);
  *(v6 + 72) = v9;

  v11 = [(NSData *)self->_serverAssetMeasurement copyWithZone:a3];
  v12 = *(v6 + 80);
  *(v6 + 80) = v11;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 24) = self->_majorVersion;
    *(v6 + 100) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_5:
      if ((has & 0x20) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 32) = self->_minorVersion;
  *(v6 + 100) |= 8u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_6:
    *(v6 + 48) = self->_updateVersion;
    *(v6 + 100) |= 0x20u;
  }

LABEL_7:
  v14 = [(NSString *)self->_buildVersion copyWithZone:a3];
  v15 = *(v6 + 56);
  *(v6 + 56) = v14;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_downloadSize;
    *(v6 + 100) |= 1u;
  }

  v16 = [(NSString *)self->_humanReadableUpdateName copyWithZone:a3];
  v17 = *(v6 + 64);
  *(v6 + 64) = v16;

  v18 = self->_has;
  if ((v18 & 0x40) != 0)
  {
    *(v6 + 96) = self->_rampEnabled;
    *(v6 + 100) |= 0x40u;
    v18 = self->_has;
  }

  if ((v18 & 2) != 0)
  {
    *(v6 + 16) = self->_errorCode;
    *(v6 + 100) |= 2u;
  }

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 0x10) != 0)
  {
    v4[5] = self->_status;
    *(v4 + 100) |= 0x10u;
  }

  v7 = v4;
  if (self->_serverAssetURL)
  {
    [v4 setServerAssetURL:?];
    v4 = v7;
  }

  if (self->_serverAssetAlgorithm)
  {
    [v7 setServerAssetAlgorithm:?];
    v4 = v7;
  }

  if (self->_serverAssetMeasurement)
  {
    [v7 setServerAssetMeasurement:?];
    v4 = v7;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[3] = self->_majorVersion;
    *(v4 + 100) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_11:
      if ((has & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

  v4[4] = self->_minorVersion;
  *(v4 + 100) |= 8u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_12:
    v4[6] = self->_updateVersion;
    *(v4 + 100) |= 0x20u;
  }

LABEL_13:
  if (self->_buildVersion)
  {
    [v7 setBuildVersion:?];
    v4 = v7;
  }

  if (*&self->_has)
  {
    v4[1] = self->_downloadSize;
    *(v4 + 100) |= 1u;
  }

  if (self->_humanReadableUpdateName)
  {
    [v7 setHumanReadableUpdateName:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x40) != 0)
  {
    *(v4 + 96) = self->_rampEnabled;
    *(v4 + 100) |= 0x40u;
    v6 = self->_has;
  }

  if ((v6 & 2) != 0)
  {
    v4[2] = self->_errorCode;
    *(v4 + 100) |= 2u;
  }
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  if ((*&self->_has & 0x10) != 0)
  {
    status = self->_status;
    PBDataWriterWriteInt64Field();
  }

  if (self->_serverAssetURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_serverAssetAlgorithm)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_serverAssetMeasurement)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    majorVersion = self->_majorVersion;
    PBDataWriterWriteInt64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_11:
      if ((has & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

  minorVersion = self->_minorVersion;
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_12:
    updateVersion = self->_updateVersion;
    PBDataWriterWriteInt64Field();
  }

LABEL_13:
  if (self->_buildVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    downloadSize = self->_downloadSize;
    PBDataWriterWriteInt64Field();
  }

  if (self->_humanReadableUpdateName)
  {
    PBDataWriterWriteStringField();
  }

  v8 = self->_has;
  if ((v8 & 0x40) != 0)
  {
    rampEnabled = self->_rampEnabled;
    PBDataWriterWriteBOOLField();
    v8 = self->_has;
  }

  if ((v8 & 2) != 0)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteInt64Field();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 0x10) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_status];
    [v3 setObject:v4 forKey:@"status"];
  }

  serverAssetURL = self->_serverAssetURL;
  if (serverAssetURL)
  {
    [v3 setObject:serverAssetURL forKey:@"serverAssetURL"];
  }

  serverAssetAlgorithm = self->_serverAssetAlgorithm;
  if (serverAssetAlgorithm)
  {
    [v3 setObject:serverAssetAlgorithm forKey:@"serverAssetAlgorithm"];
  }

  serverAssetMeasurement = self->_serverAssetMeasurement;
  if (serverAssetMeasurement)
  {
    [v3 setObject:serverAssetMeasurement forKey:@"serverAssetMeasurement"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_majorVersion];
    [v3 setObject:v17 forKey:@"majorVersion"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_11:
      if ((has & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

  v18 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_minorVersion];
  [v3 setObject:v18 forKey:@"minorVersion"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_12:
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_updateVersion];
    [v3 setObject:v9 forKey:@"updateVersion"];
  }

LABEL_13:
  buildVersion = self->_buildVersion;
  if (buildVersion)
  {
    [v3 setObject:buildVersion forKey:@"buildVersion"];
  }

  if (*&self->_has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_downloadSize];
    [v3 setObject:v11 forKey:@"downloadSize"];
  }

  humanReadableUpdateName = self->_humanReadableUpdateName;
  if (humanReadableUpdateName)
  {
    [v3 setObject:humanReadableUpdateName forKey:@"humanReadableUpdateName"];
  }

  v13 = self->_has;
  if ((v13 & 0x40) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_rampEnabled];
    [v3 setObject:v14 forKey:@"rampEnabled"];

    v13 = self->_has;
  }

  if ((v13 & 2) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_errorCode];
    [v3 setObject:v15 forKey:@"errorCode"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor;
  v4 = [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)&v8 description];
  v5 = [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasErrorCode:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasRampEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasUpdateVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasMinorVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasMajorVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

@end