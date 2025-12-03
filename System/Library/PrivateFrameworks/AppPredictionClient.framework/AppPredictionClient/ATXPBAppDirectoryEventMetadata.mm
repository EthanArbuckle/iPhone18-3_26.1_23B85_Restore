@interface ATXPBAppDirectoryEventMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
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
- (void)copyTo:(_BYTE *)to;
- (void)mergeFrom:(_BYTE *)from;
- (void)writeTo:(id)to;
@end

@implementation ATXPBAppDirectoryEventMetadata

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBAppDirectoryEventMetadata;
  v4 = [(ATXPBAppDirectoryEventMetadata *)&v8 description];
  dictionaryRepresentation = [(ATXPBAppDirectoryEventMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_bundleIdInTopAppsVisible];
    [dictionary setObject:v5 forKey:@"bundleIdInTopAppsVisible"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_userLaunchedAppBeforeLeaving];
    [dictionary setObject:v6 forKey:@"userLaunchedAppBeforeLeaving"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  if ((*&self->_has & 1) == 0)
  {
    if ((equalCopy[12] & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  if ((equalCopy[12] & 1) == 0)
  {
    goto LABEL_10;
  }

  if (self->_bundleIdInTopAppsVisible)
  {
    if ((equalCopy[8] & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (equalCopy[8])
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = (equalCopy[12] & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((equalCopy[12] & 2) != 0)
    {
      if (self->_userLaunchedAppBeforeLeaving)
      {
        if (equalCopy[9])
        {
          goto LABEL_18;
        }
      }

      else if (!equalCopy[9])
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

- (void)copyTo:(_BYTE *)to
{
  v3 = a2;
  if (to)
  {
    v4 = to[12];
    if (v4)
    {
      v3[8] = to[8];
      v3[12] |= 1u;
      v4 = to[12];
    }

    if ((v4 & 2) != 0)
    {
      v3[9] = to[9];
      v3[12] |= 2u;
    }
  }
}

- (void)mergeFrom:(_BYTE *)from
{
  v3 = a2;
  if (from)
  {
    v4 = v3[12];
    if (v4)
    {
      from[8] = v3[8];
      from[12] |= 1u;
      v4 = v3[12];
    }

    if ((v4 & 2) != 0)
    {
      from[9] = v3[9];
      from[12] |= 2u;
    }
  }
}

- (uint64_t)bundleIdInTopAppsVisible
{
  if (self)
  {
    v1 = *(self + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)userLaunchedAppBeforeLeaving
{
  if (self)
  {
    v1 = *(self + 9);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

@end