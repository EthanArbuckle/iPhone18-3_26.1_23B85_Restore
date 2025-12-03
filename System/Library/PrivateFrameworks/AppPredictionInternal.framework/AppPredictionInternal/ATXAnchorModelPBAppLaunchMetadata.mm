@interface ATXAnchorModelPBAppLaunchMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAppInstalledInLast48Hours:(BOOL)hours;
- (void)setHasGenreId:(BOOL)id;
- (void)setHasRelativeTimeSinceAnchorInSeconds:(BOOL)seconds;
- (void)writeTo:(id)to;
@end

@implementation ATXAnchorModelPBAppLaunchMetadata

- (void)setHasAppInstalledInLast48Hours:(BOOL)hours
{
  if (hours)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasRelativeTimeSinceAnchorInSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasGenreId:(BOOL)id
{
  if (id)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXAnchorModelPBAppLaunchMetadata;
  v4 = [(ATXAnchorModelPBAppLaunchMetadata *)&v8 description];
  dictionaryRepresentation = [(ATXAnchorModelPBAppLaunchMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  bundleId = self->_bundleId;
  if (bundleId)
  {
    [dictionary setObject:bundleId forKey:@"bundleId"];
  }

  appLaunchHistory = self->_appLaunchHistory;
  if (appLaunchHistory)
  {
    dictionaryRepresentation = [(ATXAnchorModelPBLaunchHistoryMetadata *)appLaunchHistory dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"appLaunchHistory"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_appInstalledInLast48Hours];
    [v4 setObject:v11 forKey:@"appInstalledInLast48Hours"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithInt:self->_relativeTimeSinceAnchorInSeconds];
  [v4 setObject:v12 forKey:@"relativeTimeSinceAnchorInSeconds"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_genreId];
  [v4 setObject:v13 forKey:@"genreId"];

  if (*&self->_has)
  {
LABEL_9:
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_app2VecCluster];
    [v4 setObject:v9 forKey:@"app2VecCluster"];
  }

LABEL_10:

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (self->_appLaunchHistory)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    appInstalledInLast48Hours = self->_appInstalledInLast48Hours;
    PBDataWriterWriteBOOLField();
    toCopy = v10;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  relativeTimeSinceAnchorInSeconds = self->_relativeTimeSinceAnchorInSeconds;
  PBDataWriterWriteInt32Field();
  toCopy = v10;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  genreId = self->_genreId;
  PBDataWriterWriteInt64Field();
  toCopy = v10;
  if (*&self->_has)
  {
LABEL_9:
    app2VecCluster = self->_app2VecCluster;
    PBDataWriterWriteInt64Field();
    toCopy = v10;
  }

LABEL_10:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_bundleId)
  {
    [toCopy setBundleId:?];
    toCopy = v6;
  }

  if (self->_appLaunchHistory)
  {
    [v6 setAppLaunchHistory:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(toCopy + 44) = self->_appInstalledInLast48Hours;
    *(toCopy + 48) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 10) = self->_relativeTimeSinceAnchorInSeconds;
  *(toCopy + 48) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  *(toCopy + 2) = self->_genreId;
  *(toCopy + 48) |= 2u;
  if (*&self->_has)
  {
LABEL_9:
    *(toCopy + 1) = self->_app2VecCluster;
    *(toCopy + 48) |= 1u;
  }

LABEL_10:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_bundleId copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(ATXAnchorModelPBLaunchHistoryMetadata *)self->_appLaunchHistory copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 44) = self->_appInstalledInLast48Hours;
    *(v5 + 48) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 16) = self->_genreId;
      *(v5 + 48) |= 2u;
      if ((*&self->_has & 1) == 0)
      {
        return v5;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 40) = self->_relativeTimeSinceAnchorInSeconds;
  *(v5 + 48) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (has)
  {
LABEL_5:
    *(v5 + 8) = self->_app2VecCluster;
    *(v5 + 48) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  bundleId = self->_bundleId;
  if (bundleId | *(equalCopy + 4))
  {
    if (![(NSString *)bundleId isEqual:?])
    {
      goto LABEL_28;
    }
  }

  appLaunchHistory = self->_appLaunchHistory;
  if (appLaunchHistory | *(equalCopy + 3))
  {
    if (![(ATXAnchorModelPBLaunchHistoryMetadata *)appLaunchHistory isEqual:?])
    {
      goto LABEL_28;
    }
  }

  if ((*&self->_has & 8) == 0)
  {
    if ((*(equalCopy + 48) & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_28:
    v8 = 0;
    goto LABEL_29;
  }

  if ((*(equalCopy + 48) & 8) == 0)
  {
    goto LABEL_28;
  }

  v7 = *(equalCopy + 44);
  if (self->_appInstalledInLast48Hours)
  {
    if ((*(equalCopy + 44) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_28;
  }

LABEL_8:
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_relativeTimeSinceAnchorInSeconds != *(equalCopy + 10))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 48) & 4) != 0)
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_genreId != *(equalCopy + 2))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_28;
  }

  v8 = (*(equalCopy + 48) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_app2VecCluster != *(equalCopy + 1))
    {
      goto LABEL_28;
    }

    v8 = 1;
  }

LABEL_29:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleId hash];
  v4 = [(ATXAnchorModelPBLaunchHistoryMetadata *)self->_appLaunchHistory hash];
  if ((*&self->_has & 8) != 0)
  {
    v5 = 2654435761 * self->_appInstalledInLast48Hours;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_relativeTimeSinceAnchorInSeconds;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v7 = 0;
      if (*&self->_has)
      {
        goto LABEL_5;
      }

LABEL_9:
      v8 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v7 = 2654435761 * self->_genreId;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v8 = 2654435761 * self->_app2VecCluster;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v8 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(ATXAnchorModelPBAppLaunchMetadata *)self setBundleId:?];
    fromCopy = v8;
  }

  appLaunchHistory = self->_appLaunchHistory;
  v6 = *(fromCopy + 3);
  if (appLaunchHistory)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(ATXAnchorModelPBLaunchHistoryMetadata *)appLaunchHistory mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(ATXAnchorModelPBAppLaunchMetadata *)self setAppLaunchHistory:?];
  }

  fromCopy = v8;
LABEL_9:
  v7 = *(fromCopy + 48);
  if ((v7 & 8) != 0)
  {
    self->_appInstalledInLast48Hours = *(fromCopy + 44);
    *&self->_has |= 8u;
    v7 = *(fromCopy + 48);
    if ((v7 & 4) == 0)
    {
LABEL_11:
      if ((v7 & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }
  }

  else if ((*(fromCopy + 48) & 4) == 0)
  {
    goto LABEL_11;
  }

  self->_relativeTimeSinceAnchorInSeconds = *(fromCopy + 10);
  *&self->_has |= 4u;
  v7 = *(fromCopy + 48);
  if ((v7 & 2) == 0)
  {
LABEL_12:
    if ((v7 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_19:
  self->_genreId = *(fromCopy + 2);
  *&self->_has |= 2u;
  if (*(fromCopy + 48))
  {
LABEL_13:
    self->_app2VecCluster = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_14:

  MEMORY[0x2821F96F8]();
}

@end