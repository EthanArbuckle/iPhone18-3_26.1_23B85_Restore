@interface SPProtoCacheMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SPProtoCacheMessage

- (id)description
{
  v7.receiver = self;
  v7.super_class = SPProtoCacheMessage;
  v3 = [(SPProtoCacheMessage *)&v7 description];
  v4 = [(SPProtoCacheMessage *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithInt:self->_messageType];
  [v3 setObject:v4 forKey:@"messageType"];

  v5 = [NSNumber numberWithInt:self->_cacheType];
  [v3 setObject:v5 forKey:@"cacheType"];

  assetKey = self->_assetKey;
  if (assetKey)
  {
    [v3 setObject:assetKey forKey:@"assetKey"];
  }

  gizmoCacheIdentifier = self->_gizmoCacheIdentifier;
  if (gizmoCacheIdentifier)
  {
    [v3 setObject:gizmoCacheIdentifier forKey:@"gizmoCacheIdentifier"];
  }

  assetData = self->_assetData;
  if (assetData)
  {
    [v3 setObject:assetData forKey:@"assetData"];
  }

  syncData = self->_syncData;
  if (syncData)
  {
    v10 = [(SPProtoCacheSyncData *)syncData dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"syncData"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  messageType = self->_messageType;
  PBDataWriterWriteInt32Field();
  cacheType = self->_cacheType;
  PBDataWriterWriteInt32Field();
  if (self->_assetKey)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_gizmoCacheIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v6 = v7;
  if (self->_assetData)
  {
    PBDataWriterWriteDataField();
    v6 = v7;
  }

  if (self->_syncData)
  {
    PBDataWriterWriteSubmessage();
    v6 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[10] = self->_messageType;
  v4[6] = self->_cacheType;
  v5 = v4;
  if (self->_assetKey)
  {
    [v4 setAssetKey:?];
    v4 = v5;
  }

  if (self->_gizmoCacheIdentifier)
  {
    [v5 setGizmoCacheIdentifier:?];
    v4 = v5;
  }

  if (self->_assetData)
  {
    [v5 setAssetData:?];
    v4 = v5;
  }

  if (self->_syncData)
  {
    [v5 setSyncData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[10] = self->_messageType;
  v5[6] = self->_cacheType;
  v6 = [(NSString *)self->_assetKey copyWithZone:a3];
  v7 = *(v5 + 2);
  *(v5 + 2) = v6;

  v8 = [(NSString *)self->_gizmoCacheIdentifier copyWithZone:a3];
  v9 = *(v5 + 4);
  *(v5 + 4) = v8;

  v10 = [(NSData *)self->_assetData copyWithZone:a3];
  v11 = *(v5 + 1);
  *(v5 + 1) = v10;

  v12 = [(SPProtoCacheSyncData *)self->_syncData copyWithZone:a3];
  v13 = *(v5 + 6);
  *(v5 + 6) = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_messageType == *(v4 + 10) && self->_cacheType == *(v4 + 6) && ((assetKey = self->_assetKey, !(assetKey | v4[2])) || -[NSString isEqual:](assetKey, "isEqual:")) && ((gizmoCacheIdentifier = self->_gizmoCacheIdentifier, !(gizmoCacheIdentifier | v4[4])) || -[NSString isEqual:](gizmoCacheIdentifier, "isEqual:")) && ((assetData = self->_assetData, !(assetData | v4[1])) || -[NSData isEqual:](assetData, "isEqual:")))
  {
    syncData = self->_syncData;
    if (syncData | v4[6])
    {
      v9 = [(SPProtoCacheSyncData *)syncData isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = (2654435761 * self->_cacheType) ^ (2654435761 * self->_messageType);
  v4 = [(NSString *)self->_assetKey hash];
  v5 = v4 ^ [(NSString *)self->_gizmoCacheIdentifier hash];
  v6 = v5 ^ [(NSData *)self->_assetData hash];
  return v3 ^ v6 ^ [(SPProtoCacheSyncData *)self->_syncData hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_messageType = v4[10];
  self->_cacheType = v4[6];
  v7 = v4;
  if (*(v4 + 2))
  {
    [(SPProtoCacheMessage *)self setAssetKey:?];
  }

  if (v7[4])
  {
    [(SPProtoCacheMessage *)self setGizmoCacheIdentifier:?];
  }

  if (v7[1])
  {
    [(SPProtoCacheMessage *)self setAssetData:?];
  }

  syncData = self->_syncData;
  v6 = v7[6];
  if (syncData)
  {
    if (v6)
    {
      [(SPProtoCacheSyncData *)syncData mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SPProtoCacheMessage *)self setSyncData:?];
  }
}

@end