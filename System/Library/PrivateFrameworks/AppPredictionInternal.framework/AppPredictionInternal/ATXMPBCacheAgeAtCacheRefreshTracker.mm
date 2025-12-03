@interface ATXMPBCacheAgeAtCacheRefreshTracker
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXMPBCacheAgeAtCacheRefreshTracker

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXMPBCacheAgeAtCacheRefreshTracker;
  v4 = [(ATXMPBCacheAgeAtCacheRefreshTracker *)&v8 description];
  dictionaryRepresentation = [(ATXMPBCacheAgeAtCacheRefreshTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  cacheName = self->_cacheName;
  if (cacheName)
  {
    [dictionary setObject:cacheName forKey:@"cacheName"];
  }

  abGroup = self->_abGroup;
  if (abGroup)
  {
    [v4 setObject:abGroup forKey:@"abGroup"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_cacheAge];
    [v4 setObject:v7 forKey:@"cacheAge"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_cacheName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    cacheAge = self->_cacheAge;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_cacheName)
  {
    [toCopy setCacheName:?];
    toCopy = v5;
  }

  if (self->_abGroup)
  {
    [v5 setAbGroup:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_cacheAge;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_cacheName copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_abGroup copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_cacheAge;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  cacheName = self->_cacheName;
  if (cacheName | *(equalCopy + 3))
  {
    if (![(NSString *)cacheName isEqual:?])
    {
      goto LABEL_10;
    }
  }

  abGroup = self->_abGroup;
  if (abGroup | *(equalCopy + 1))
  {
    if (![(NSString *)abGroup isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) != 0 && self->_cacheAge == *(equalCopy + 4))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_cacheName hash];
  v4 = [(NSString *)self->_abGroup hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_cacheAge;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(ATXMPBCacheAgeAtCacheRefreshTracker *)self setCacheName:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(ATXMPBCacheAgeAtCacheRefreshTracker *)self setAbGroup:?];
    fromCopy = v5;
  }

  if (fromCopy[8])
  {
    self->_cacheAge = fromCopy[4];
    *&self->_has |= 1u;
  }
}

@end