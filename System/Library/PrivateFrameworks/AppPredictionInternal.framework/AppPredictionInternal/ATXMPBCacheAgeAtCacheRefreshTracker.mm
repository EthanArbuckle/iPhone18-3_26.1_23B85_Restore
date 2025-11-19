@interface ATXMPBCacheAgeAtCacheRefreshTracker
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXMPBCacheAgeAtCacheRefreshTracker

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXMPBCacheAgeAtCacheRefreshTracker;
  v4 = [(ATXMPBCacheAgeAtCacheRefreshTracker *)&v8 description];
  v5 = [(ATXMPBCacheAgeAtCacheRefreshTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  cacheName = self->_cacheName;
  if (cacheName)
  {
    [v3 setObject:cacheName forKey:@"cacheName"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_cacheName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    cacheAge = self->_cacheAge;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_cacheName)
  {
    [v4 setCacheName:?];
    v4 = v5;
  }

  if (self->_abGroup)
  {
    [v5 setAbGroup:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_cacheAge;
    *(v4 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_cacheName copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_abGroup copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_cacheAge;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  cacheName = self->_cacheName;
  if (cacheName | *(v4 + 3))
  {
    if (![(NSString *)cacheName isEqual:?])
    {
      goto LABEL_10;
    }
  }

  abGroup = self->_abGroup;
  if (abGroup | *(v4 + 1))
  {
    if (![(NSString *)abGroup isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) != 0 && self->_cacheAge == *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 3))
  {
    [(ATXMPBCacheAgeAtCacheRefreshTracker *)self setCacheName:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(ATXMPBCacheAgeAtCacheRefreshTracker *)self setAbGroup:?];
    v4 = v5;
  }

  if (v4[8])
  {
    self->_cacheAge = v4[4];
    *&self->_has |= 1u;
  }
}

@end