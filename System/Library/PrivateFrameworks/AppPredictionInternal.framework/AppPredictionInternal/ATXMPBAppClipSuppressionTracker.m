@interface ATXMPBAppClipSuppressionTracker
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSuppressionType:(id)a3;
- (int)suppressionType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXMPBAppClipSuppressionTracker

- (int)suppressionType
{
  if (*&self->_has)
  {
    return self->_suppressionType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsSuppressionType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"GPS"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Feedback"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Metadata"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXMPBAppClipSuppressionTracker;
  v4 = [(ATXMPBAppClipSuppressionTracker *)&v8 description];
  v5 = [(ATXMPBAppClipSuppressionTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    suppressionType = self->_suppressionType;
    if (suppressionType >= 3)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_suppressionType];
    }

    else
    {
      v5 = off_27859FC20[suppressionType];
    }

    [v3 setObject:v5 forKey:@"suppressionType"];
  }

  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v3 setObject:bundleId forKey:@"bundleId"];
  }

  urlHash = self->_urlHash;
  if (urlHash)
  {
    [v3 setObject:urlHash forKey:@"urlHash"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    suppressionType = self->_suppressionType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_urlHash)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_suppressionType;
    *(v4 + 32) |= 1u;
  }

  v5 = v4;
  if (self->_bundleId)
  {
    [v4 setBundleId:?];
    v4 = v5;
  }

  if (self->_urlHash)
  {
    [v5 setUrlHash:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_suppressionType;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSString *)self->_bundleId copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSString *)self->_urlHash copyWithZone:a3];
  v10 = v6[3];
  v6[3] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_suppressionType != *(v4 + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  bundleId = self->_bundleId;
  if (bundleId | *(v4 + 1) && ![(NSString *)bundleId isEqual:?])
  {
    goto LABEL_11;
  }

  urlHash = self->_urlHash;
  if (urlHash | *(v4 + 3))
  {
    v8 = [(NSString *)urlHash isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_suppressionType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_bundleId hash]^ v3;
  return v4 ^ [(NSString *)self->_urlHash hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[8])
  {
    self->_suppressionType = v4[4];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 1))
  {
    [(ATXMPBAppClipSuppressionTracker *)self setBundleId:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(ATXMPBAppClipSuppressionTracker *)self setUrlHash:?];
    v4 = v5;
  }
}

@end