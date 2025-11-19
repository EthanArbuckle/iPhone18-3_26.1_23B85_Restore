@interface TFApplication
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation TFApplication

- (id)description
{
  v7.receiver = self;
  v7.super_class = TFApplication;
  v3 = [(TFApplication *)&v7 description];
  v4 = [(TFApplication *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedLongLong:self->_applicationAdamId];
    [v3 setObject:v4 forKey:@"applicationAdamId"];
  }

  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v3 setObject:bundleId forKey:@"bundleId"];
  }

  cfBundleShortVersionString = self->_cfBundleShortVersionString;
  if (cfBundleShortVersionString)
  {
    [v3 setObject:cfBundleShortVersionString forKey:@"cfBundleShortVersionString"];
  }

  cfBundleVersion = self->_cfBundleVersion;
  if (cfBundleVersion)
  {
    [v3 setObject:cfBundleVersion forKey:@"cfBundleVersion"];
  }

  if ((*&self->_has & 4) != 0)
  {
    platform = self->_platform;
    if (platform >= 4)
    {
      v9 = [NSString stringWithFormat:@"(unknown: %i)", self->_platform];
    }

    else
    {
      v9 = *(&off_1005288C8 + platform);
    }

    [v3 setObject:v9 forKey:@"platform"];
  }

  gitBranch = self->_gitBranch;
  if (gitBranch)
  {
    [v3 setObject:gitBranch forKey:@"gitBranch"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v12 = [NSNumber numberWithUnsignedLongLong:self->_uptimeMillis];
    [v3 setObject:v12 forKey:@"uptimeMillis"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v13 = [NSNumber numberWithBool:self->_isAppClip];
    [v3 setObject:v13 forKey:@"isAppClip"];
  }

  ciBuildGroup = self->_ciBuildGroup;
  if (ciBuildGroup)
  {
    [v3 setObject:ciBuildGroup forKey:@"ciBuildGroup"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_cfBundleShortVersionString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_cfBundleVersion)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_gitBranch)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_ciBuildGroup)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = self->_applicationAdamId;
    *(v5 + 72) |= 1u;
  }

  v7 = [(NSString *)self->_bundleId copyWithZone:a3];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSString *)self->_cfBundleShortVersionString copyWithZone:a3];
  v10 = v6[4];
  v6[4] = v9;

  v11 = [(NSString *)self->_cfBundleVersion copyWithZone:a3];
  v12 = v6[5];
  v6[5] = v11;

  if ((*&self->_has & 2) != 0)
  {
    v6[2] = self->_uptimeMillis;
    *(v6 + 72) |= 2u;
  }

  v13 = [(NSString *)self->_gitBranch copyWithZone:a3];
  v14 = v6[7];
  v6[7] = v13;

  if ((*&self->_has & 8) != 0)
  {
    *(v6 + 68) = self->_isAppClip;
    *(v6 + 72) |= 8u;
  }

  v15 = [(NSString *)self->_ciBuildGroup copyWithZone:a3];
  v16 = v6[6];
  v6[6] = v15;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 16) = self->_platform;
    *(v6 + 72) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 72) & 1) == 0 || self->_applicationAdamId != *(v4 + 1))
    {
      goto LABEL_31;
    }
  }

  else if (*(v4 + 72))
  {
    goto LABEL_31;
  }

  bundleId = self->_bundleId;
  if (bundleId | *(v4 + 3) && ![(NSString *)bundleId isEqual:?])
  {
    goto LABEL_31;
  }

  cfBundleShortVersionString = self->_cfBundleShortVersionString;
  if (cfBundleShortVersionString | *(v4 + 4))
  {
    if (![(NSString *)cfBundleShortVersionString isEqual:?])
    {
      goto LABEL_31;
    }
  }

  cfBundleVersion = self->_cfBundleVersion;
  if (cfBundleVersion | *(v4 + 5))
  {
    if (![(NSString *)cfBundleVersion isEqual:?])
    {
      goto LABEL_31;
    }
  }

  has = self->_has;
  v9 = *(v4 + 72);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 72) & 2) == 0 || self->_uptimeMillis != *(v4 + 2))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 72) & 2) != 0)
  {
    goto LABEL_31;
  }

  gitBranch = self->_gitBranch;
  if (gitBranch | *(v4 + 7))
  {
    if (![(NSString *)gitBranch isEqual:?])
    {
      goto LABEL_31;
    }

    has = self->_has;
    v9 = *(v4 + 72);
  }

  if ((has & 8) != 0)
  {
    if ((v9 & 8) == 0)
    {
      goto LABEL_31;
    }

    if (self->_isAppClip)
    {
      if ((*(v4 + 68) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else if (*(v4 + 68))
    {
      goto LABEL_31;
    }
  }

  else if ((v9 & 8) != 0)
  {
    goto LABEL_31;
  }

  ciBuildGroup = self->_ciBuildGroup;
  if (!(ciBuildGroup | *(v4 + 6)))
  {
    goto LABEL_26;
  }

  if (![(NSString *)ciBuildGroup isEqual:?])
  {
LABEL_31:
    v12 = 0;
    goto LABEL_32;
  }

  has = self->_has;
  v9 = *(v4 + 72);
LABEL_26:
  v12 = (v9 & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((v9 & 4) == 0 || self->_platform != *(v4 + 16))
    {
      goto LABEL_31;
    }

    v12 = 1;
  }

LABEL_32:

  return v12;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_applicationAdamId;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_bundleId hash];
  v5 = [(NSString *)self->_cfBundleShortVersionString hash];
  v6 = [(NSString *)self->_cfBundleVersion hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761u * self->_uptimeMillis;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSString *)self->_gitBranch hash];
  if ((*&self->_has & 8) != 0)
  {
    v9 = 2654435761 * self->_isAppClip;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(NSString *)self->_ciBuildGroup hash];
  if ((*&self->_has & 4) != 0)
  {
    v11 = 2654435761 * self->_platform;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

@end