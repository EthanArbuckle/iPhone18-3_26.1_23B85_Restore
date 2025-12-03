@interface ATXMPBAppClipSuppressionTracker
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSuppressionType:(id)type;
- (int)suppressionType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (int)StringAsSuppressionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"GPS"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Feedback"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Metadata"])
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
  dictionaryRepresentation = [(ATXMPBAppClipSuppressionTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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

    [dictionary setObject:v5 forKey:@"suppressionType"];
  }

  bundleId = self->_bundleId;
  if (bundleId)
  {
    [dictionary setObject:bundleId forKey:@"bundleId"];
  }

  urlHash = self->_urlHash;
  if (urlHash)
  {
    [dictionary setObject:urlHash forKey:@"urlHash"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    suppressionType = self->_suppressionType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_urlHash)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_suppressionType;
    *(toCopy + 32) |= 1u;
  }

  v5 = toCopy;
  if (self->_bundleId)
  {
    [toCopy setBundleId:?];
    toCopy = v5;
  }

  if (self->_urlHash)
  {
    [v5 setUrlHash:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_suppressionType;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSString *)self->_bundleId copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSString *)self->_urlHash copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_suppressionType != *(equalCopy + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  bundleId = self->_bundleId;
  if (bundleId | *(equalCopy + 1) && ![(NSString *)bundleId isEqual:?])
  {
    goto LABEL_11;
  }

  urlHash = self->_urlHash;
  if (urlHash | *(equalCopy + 3))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[8])
  {
    self->_suppressionType = fromCopy[4];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(ATXMPBAppClipSuppressionTracker *)self setBundleId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(ATXMPBAppClipSuppressionTracker *)self setUrlHash:?];
    fromCopy = v5;
  }
}

@end