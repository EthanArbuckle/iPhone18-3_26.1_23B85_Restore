@interface ATXPBAppDirectoryEventMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)bundleIdInTopAppsVisible;
- (uint64_t)hasBundleIdInTopAppsVisible;
- (uint64_t)hasUserLaunchedAppBeforeLeaving;
- (uint64_t)setBundleIdInTopAppsVisible:(uint64_t)result;
- (uint64_t)setHasBundleIdInTopAppsVisible:(uint64_t)result;
- (uint64_t)setHasUserLaunchedAppBeforeLeaving:(uint64_t)result;
- (uint64_t)setUserLaunchedAppBeforeLeaving:(uint64_t)result;
- (uint64_t)userLaunchedAppBeforeLeaving;
- (unint64_t)hash;
- (void)copyTo:(_BYTE *)a1;
- (void)mergeFrom:(_BYTE *)a1;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBAppDirectoryEventMetadata

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBAppDirectoryEventMetadata;
  v4 = [(ATXPBAppDirectoryEventMetadata *)&v8 description];
  v5 = [(ATXPBAppDirectoryEventMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_bundleIdInTopAppsVisible];
    [v3 setObject:v5 forKey:@"bundleIdInTopAppsVisible"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_userLaunchedAppBeforeLeaving];
    [v3 setObject:v6 forKey:@"userLaunchedAppBeforeLeaving"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 8) = self->_bundleIdInTopAppsVisible;
    *(result + 12) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 9) = self->_userLaunchedAppBeforeLeaving;
    *(result + 12) |= 2u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  if ((*&self->_has & 1) == 0)
  {
    if ((v4[12] & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  if ((v4[12] & 1) == 0)
  {
    goto LABEL_10;
  }

  if (self->_bundleIdInTopAppsVisible)
  {
    if ((v4[8] & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v4[8])
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = (v4[12] & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((v4[12] & 2) != 0)
    {
      if (self->_userLaunchedAppBeforeLeaving)
      {
        if (v4[9])
        {
          goto LABEL_18;
        }
      }

      else if (!v4[9])
      {
LABEL_18:
        v5 = 1;
        goto LABEL_11;
      }
    }

    goto LABEL_10;
  }

LABEL_11:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_bundleIdInTopAppsVisible;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_userLaunchedAppBeforeLeaving;
  return v3 ^ v2;
}

- (uint64_t)setBundleIdInTopAppsVisible:(uint64_t)result
{
  if (result)
  {
    *(result + 12) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setHasBundleIdInTopAppsVisible:(uint64_t)result
{
  if (result)
  {
    *(result + 12) = *(result + 12) & 0xFE | a2;
  }

  return result;
}

- (uint64_t)hasBundleIdInTopAppsVisible
{
  if (result)
  {
    return *(result + 12) & 1;
  }

  return result;
}

- (uint64_t)setUserLaunchedAppBeforeLeaving:(uint64_t)result
{
  if (result)
  {
    *(result + 12) |= 2u;
    *(result + 9) = a2;
  }

  return result;
}

- (uint64_t)setHasUserLaunchedAppBeforeLeaving:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    *(result + 12) = *(result + 12) & 0xFD | v2;
  }

  return result;
}

- (uint64_t)hasUserLaunchedAppBeforeLeaving
{
  if (result)
  {
    return (*(result + 12) >> 1) & 1;
  }

  return result;
}

- (void)copyTo:(_BYTE *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = a1[12];
    if (v4)
    {
      v3[8] = a1[8];
      v3[12] |= 1u;
      v4 = a1[12];
    }

    if ((v4 & 2) != 0)
    {
      v3[9] = a1[9];
      v3[12] |= 2u;
    }
  }
}

- (void)mergeFrom:(_BYTE *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = v3[12];
    if (v4)
    {
      a1[8] = v3[8];
      a1[12] |= 1u;
      v4 = v3[12];
    }

    if ((v4 & 2) != 0)
    {
      a1[9] = v3[9];
      a1[12] |= 2u;
    }
  }
}

- (uint64_t)bundleIdInTopAppsVisible
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)userLaunchedAppBeforeLeaving
{
  if (a1)
  {
    v1 = *(a1 + 9);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

@end