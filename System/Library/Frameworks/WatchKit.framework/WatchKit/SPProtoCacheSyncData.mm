@interface SPProtoCacheSyncData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SPProtoCacheSyncData

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SPProtoCacheSyncData;
  v4 = [(SPProtoCacheSyncData *)&v8 description];
  dictionaryRepresentation = [(SPProtoCacheSyncData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  cacheIdentifier = self->_cacheIdentifier;
  if (cacheIdentifier)
  {
    [dictionary setObject:cacheIdentifier forKey:@"cacheIdentifier"];
  }

  permanentCache = self->_permanentCache;
  if (permanentCache)
  {
    dictionaryRepresentation = [(SPProtoCacheAssets *)permanentCache dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"permanentCache"];
  }

  transientCache = self->_transientCache;
  if (transientCache)
  {
    dictionaryRepresentation2 = [(SPProtoCacheAssets *)transientCache dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"transientCache"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  cacheIdentifier = self->_cacheIdentifier;
  toCopy = to;
  PBDataWriterWriteStringField();
  permanentCache = self->_permanentCache;
  PBDataWriterWriteSubmessage();
  transientCache = self->_transientCache;
  PBDataWriterWriteSubmessage();
}

- (void)copyTo:(id)to
{
  cacheIdentifier = self->_cacheIdentifier;
  toCopy = to;
  [toCopy setCacheIdentifier:cacheIdentifier];
  [toCopy setPermanentCache:self->_permanentCache];
  [toCopy setTransientCache:self->_transientCache];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_cacheIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(SPProtoCacheAssets *)self->_permanentCache copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(SPProtoCacheAssets *)self->_transientCache copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((cacheIdentifier = self->_cacheIdentifier, !(cacheIdentifier | equalCopy[1])) || -[NSString isEqual:](cacheIdentifier, "isEqual:")) && ((permanentCache = self->_permanentCache, !(permanentCache | equalCopy[2])) || -[SPProtoCacheAssets isEqual:](permanentCache, "isEqual:")))
  {
    transientCache = self->_transientCache;
    if (transientCache | equalCopy[3])
    {
      v8 = [(SPProtoCacheAssets *)transientCache isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_cacheIdentifier hash];
  v4 = [(SPProtoCacheAssets *)self->_permanentCache hash]^ v3;
  return v4 ^ [(SPProtoCacheAssets *)self->_transientCache hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v9 = fromCopy;
  if (fromCopy[1])
  {
    [(SPProtoCacheSyncData *)self setCacheIdentifier:?];
    fromCopy = v9;
  }

  permanentCache = self->_permanentCache;
  v6 = fromCopy[2];
  if (permanentCache)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(SPProtoCacheAssets *)permanentCache mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(SPProtoCacheSyncData *)self setPermanentCache:?];
  }

  fromCopy = v9;
LABEL_9:
  transientCache = self->_transientCache;
  v8 = fromCopy[3];
  if (transientCache)
  {
    if (v8)
    {
      [(SPProtoCacheAssets *)transientCache mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SPProtoCacheSyncData *)self setTransientCache:?];
  }

  MEMORY[0x2821F96F8]();
}

@end