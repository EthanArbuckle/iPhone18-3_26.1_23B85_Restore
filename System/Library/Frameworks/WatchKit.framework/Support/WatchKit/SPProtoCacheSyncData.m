@interface SPProtoCacheSyncData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SPProtoCacheSyncData

- (id)description
{
  v7.receiver = self;
  v7.super_class = SPProtoCacheSyncData;
  v3 = [(SPProtoCacheSyncData *)&v7 description];
  v4 = [(SPProtoCacheSyncData *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  cacheIdentifier = self->_cacheIdentifier;
  if (cacheIdentifier)
  {
    [v3 setObject:cacheIdentifier forKey:@"cacheIdentifier"];
  }

  permanentCache = self->_permanentCache;
  if (permanentCache)
  {
    v7 = [(SPProtoCacheAssets *)permanentCache dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"permanentCache"];
  }

  transientCache = self->_transientCache;
  if (transientCache)
  {
    v9 = [(SPProtoCacheAssets *)transientCache dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"transientCache"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  cacheIdentifier = self->_cacheIdentifier;
  v7 = a3;
  PBDataWriterWriteStringField();
  permanentCache = self->_permanentCache;
  PBDataWriterWriteSubmessage();
  transientCache = self->_transientCache;
  PBDataWriterWriteSubmessage();
}

- (void)copyTo:(id)a3
{
  cacheIdentifier = self->_cacheIdentifier;
  v5 = a3;
  [v5 setCacheIdentifier:cacheIdentifier];
  [v5 setPermanentCache:self->_permanentCache];
  [v5 setTransientCache:self->_transientCache];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_cacheIdentifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(SPProtoCacheAssets *)self->_permanentCache copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(SPProtoCacheAssets *)self->_transientCache copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((cacheIdentifier = self->_cacheIdentifier, !(cacheIdentifier | v4[1])) || -[NSString isEqual:](cacheIdentifier, "isEqual:")) && ((permanentCache = self->_permanentCache, !(permanentCache | v4[2])) || -[SPProtoCacheAssets isEqual:](permanentCache, "isEqual:")))
  {
    transientCache = self->_transientCache;
    if (transientCache | v4[3])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4[1])
  {
    [(SPProtoCacheSyncData *)self setCacheIdentifier:?];
    v4 = v9;
  }

  permanentCache = self->_permanentCache;
  v6 = v4[2];
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

  v4 = v9;
LABEL_9:
  transientCache = self->_transientCache;
  v8 = v4[3];
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

  _objc_release_x1();
}

@end