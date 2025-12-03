@interface HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasErrorCode:(BOOL)code;
- (void)setHasMajorVersion:(BOOL)version;
- (void)setHasMinorVersion:(BOOL)version;
- (void)setHasRampEnabled:(BOOL)enabled;
- (void)setHasStatus:(BOOL)status;
- (void)setHasUpdateVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 100) & 0x10) != 0)
  {
    self->_status = *(fromCopy + 5);
    *&self->_has |= 0x10u;
  }

  v7 = fromCopy;
  if (*(fromCopy + 11))
  {
    [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)self setServerAssetURL:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 9))
  {
    [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)self setServerAssetAlgorithm:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 10))
  {
    [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)self setServerAssetMeasurement:?];
    fromCopy = v7;
  }

  v5 = *(fromCopy + 100);
  if ((v5 & 4) != 0)
  {
    self->_majorVersion = *(fromCopy + 3);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 100);
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

  else if ((*(fromCopy + 100) & 8) == 0)
  {
    goto LABEL_11;
  }

  self->_minorVersion = *(fromCopy + 4);
  *&self->_has |= 8u;
  if ((*(fromCopy + 100) & 0x20) != 0)
  {
LABEL_12:
    self->_updateVersion = *(fromCopy + 6);
    *&self->_has |= 0x20u;
  }

LABEL_13:
  if (*(fromCopy + 7))
  {
    [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)self setBuildVersion:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 100))
  {
    self->_downloadSize = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 8))
  {
    [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)self setHumanReadableUpdateName:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 100);
  if ((v6 & 0x40) != 0)
  {
    self->_rampEnabled = *(fromCopy + 96);
    *&self->_has |= 0x40u;
    v6 = *(fromCopy + 100);
  }

  if ((v6 & 2) != 0)
  {
    self->_errorCode = *(fromCopy + 2);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  v5 = *(equalCopy + 100);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 100) & 0x10) == 0 || self->_status != *(equalCopy + 5))
    {
      goto LABEL_46;
    }
  }

  else if ((*(equalCopy + 100) & 0x10) != 0)
  {
    goto LABEL_46;
  }

  serverAssetURL = self->_serverAssetURL;
  if (serverAssetURL | *(equalCopy + 11) && ![(NSString *)serverAssetURL isEqual:?])
  {
    goto LABEL_46;
  }

  serverAssetAlgorithm = self->_serverAssetAlgorithm;
  if (serverAssetAlgorithm | *(equalCopy + 9))
  {
    if (![(NSString *)serverAssetAlgorithm isEqual:?])
    {
      goto LABEL_46;
    }
  }

  serverAssetMeasurement = self->_serverAssetMeasurement;
  if (serverAssetMeasurement | *(equalCopy + 10))
  {
    if (![(NSData *)serverAssetMeasurement isEqual:?])
    {
      goto LABEL_46;
    }
  }

  has = self->_has;
  v10 = *(equalCopy + 100);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 100) & 4) == 0 || self->_majorVersion != *(equalCopy + 3))
    {
      goto LABEL_46;
    }
  }

  else if ((*(equalCopy + 100) & 4) != 0)
  {
    goto LABEL_46;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 100) & 8) == 0 || self->_minorVersion != *(equalCopy + 4))
    {
      goto LABEL_46;
    }
  }

  else if ((*(equalCopy + 100) & 8) != 0)
  {
    goto LABEL_46;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 100) & 0x20) == 0 || self->_updateVersion != *(equalCopy + 6))
    {
      goto LABEL_46;
    }
  }

  else if ((*(equalCopy + 100) & 0x20) != 0)
  {
    goto LABEL_46;
  }

  buildVersion = self->_buildVersion;
  if (buildVersion | *(equalCopy + 7))
  {
    if (![(NSString *)buildVersion isEqual:?])
    {
      goto LABEL_46;
    }

    has = self->_has;
    v10 = *(equalCopy + 100);
  }

  if (has)
  {
    if ((v10 & 1) == 0 || self->_downloadSize != *(equalCopy + 1))
    {
      goto LABEL_46;
    }
  }

  else if (v10)
  {
    goto LABEL_46;
  }

  humanReadableUpdateName = self->_humanReadableUpdateName;
  if (humanReadableUpdateName | *(equalCopy + 8))
  {
    if (![(NSString *)humanReadableUpdateName isEqual:?])
    {
      goto LABEL_46;
    }

    has = self->_has;
    v10 = *(equalCopy + 100);
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

  v15 = *(equalCopy + 96);
  if (self->_rampEnabled)
  {
    if ((*(equalCopy + 96) & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else if (*(equalCopy + 96))
  {
    goto LABEL_46;
  }

LABEL_41:
  v13 = (v10 & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((v10 & 2) == 0 || self->_errorCode != *(equalCopy + 2))
    {
      goto LABEL_46;
    }

    v13 = 1;
  }

LABEL_47:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 40) = self->_status;
    *(v5 + 100) |= 0x10u;
  }

  v7 = [(NSString *)self->_serverAssetURL copyWithZone:zone];
  v8 = *(v6 + 88);
  *(v6 + 88) = v7;

  v9 = [(NSString *)self->_serverAssetAlgorithm copyWithZone:zone];
  v10 = *(v6 + 72);
  *(v6 + 72) = v9;

  v11 = [(NSData *)self->_serverAssetMeasurement copyWithZone:zone];
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
  v14 = [(NSString *)self->_buildVersion copyWithZone:zone];
  v15 = *(v6 + 56);
  *(v6 + 56) = v14;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_downloadSize;
    *(v6 + 100) |= 1u;
  }

  v16 = [(NSString *)self->_humanReadableUpdateName copyWithZone:zone];
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 0x10) != 0)
  {
    toCopy[5] = self->_status;
    *(toCopy + 100) |= 0x10u;
  }

  v7 = toCopy;
  if (self->_serverAssetURL)
  {
    [toCopy setServerAssetURL:?];
    toCopy = v7;
  }

  if (self->_serverAssetAlgorithm)
  {
    [v7 setServerAssetAlgorithm:?];
    toCopy = v7;
  }

  if (self->_serverAssetMeasurement)
  {
    [v7 setServerAssetMeasurement:?];
    toCopy = v7;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[3] = self->_majorVersion;
    *(toCopy + 100) |= 4u;
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

  toCopy[4] = self->_minorVersion;
  *(toCopy + 100) |= 8u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_12:
    toCopy[6] = self->_updateVersion;
    *(toCopy + 100) |= 0x20u;
  }

LABEL_13:
  if (self->_buildVersion)
  {
    [v7 setBuildVersion:?];
    toCopy = v7;
  }

  if (*&self->_has)
  {
    toCopy[1] = self->_downloadSize;
    *(toCopy + 100) |= 1u;
  }

  if (self->_humanReadableUpdateName)
  {
    [v7 setHumanReadableUpdateName:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x40) != 0)
  {
    *(toCopy + 96) = self->_rampEnabled;
    *(toCopy + 100) |= 0x40u;
    v6 = self->_has;
  }

  if ((v6 & 2) != 0)
  {
    toCopy[2] = self->_errorCode;
    *(toCopy + 100) |= 2u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 0x10) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_status];
    [dictionary setObject:v4 forKey:@"status"];
  }

  serverAssetURL = self->_serverAssetURL;
  if (serverAssetURL)
  {
    [dictionary setObject:serverAssetURL forKey:@"serverAssetURL"];
  }

  serverAssetAlgorithm = self->_serverAssetAlgorithm;
  if (serverAssetAlgorithm)
  {
    [dictionary setObject:serverAssetAlgorithm forKey:@"serverAssetAlgorithm"];
  }

  serverAssetMeasurement = self->_serverAssetMeasurement;
  if (serverAssetMeasurement)
  {
    [dictionary setObject:serverAssetMeasurement forKey:@"serverAssetMeasurement"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_majorVersion];
    [dictionary setObject:v17 forKey:@"majorVersion"];

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
  [dictionary setObject:v18 forKey:@"minorVersion"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_12:
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_updateVersion];
    [dictionary setObject:v9 forKey:@"updateVersion"];
  }

LABEL_13:
  buildVersion = self->_buildVersion;
  if (buildVersion)
  {
    [dictionary setObject:buildVersion forKey:@"buildVersion"];
  }

  if (*&self->_has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_downloadSize];
    [dictionary setObject:v11 forKey:@"downloadSize"];
  }

  humanReadableUpdateName = self->_humanReadableUpdateName;
  if (humanReadableUpdateName)
  {
    [dictionary setObject:humanReadableUpdateName forKey:@"humanReadableUpdateName"];
  }

  v13 = self->_has;
  if ((v13 & 0x40) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_rampEnabled];
    [dictionary setObject:v14 forKey:@"rampEnabled"];

    v13 = self->_has;
  }

  if ((v13 & 2) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_errorCode];
    [dictionary setObject:v15 forKey:@"errorCode"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor;
  v4 = [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)&v8 description];
  dictionaryRepresentation = [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasRampEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasUpdateVersion:(BOOL)version
{
  if (version)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasMinorVersion:(BOOL)version
{
  if (version)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasMajorVersion:(BOOL)version
{
  if (version)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasStatus:(BOOL)status
{
  if (status)
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