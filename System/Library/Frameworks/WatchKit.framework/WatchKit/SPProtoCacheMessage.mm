@interface SPProtoCacheMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SPProtoCacheMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SPProtoCacheMessage;
  v4 = [(SPProtoCacheMessage *)&v8 description];
  dictionaryRepresentation = [(SPProtoCacheMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_messageType];
  [dictionary setObject:v4 forKey:@"messageType"];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_cacheType];
  [dictionary setObject:v5 forKey:@"cacheType"];

  assetKey = self->_assetKey;
  if (assetKey)
  {
    [dictionary setObject:assetKey forKey:@"assetKey"];
  }

  gizmoCacheIdentifier = self->_gizmoCacheIdentifier;
  if (gizmoCacheIdentifier)
  {
    [dictionary setObject:gizmoCacheIdentifier forKey:@"gizmoCacheIdentifier"];
  }

  assetData = self->_assetData;
  if (assetData)
  {
    [dictionary setObject:assetData forKey:@"assetData"];
  }

  syncData = self->_syncData;
  if (syncData)
  {
    dictionaryRepresentation = [(SPProtoCacheSyncData *)syncData dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"syncData"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

  v6 = toCopy;
  if (self->_assetData)
  {
    PBDataWriterWriteDataField();
    v6 = toCopy;
  }

  if (self->_syncData)
  {
    PBDataWriterWriteSubmessage();
    v6 = toCopy;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[10] = self->_messageType;
  toCopy[6] = self->_cacheType;
  v5 = toCopy;
  if (self->_assetKey)
  {
    [toCopy setAssetKey:?];
    toCopy = v5;
  }

  if (self->_gizmoCacheIdentifier)
  {
    [v5 setGizmoCacheIdentifier:?];
    toCopy = v5;
  }

  if (self->_assetData)
  {
    [v5 setAssetData:?];
    toCopy = v5;
  }

  if (self->_syncData)
  {
    [v5 setSyncData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 40) = self->_messageType;
  *(v5 + 24) = self->_cacheType;
  v6 = [(NSString *)self->_assetKey copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_gizmoCacheIdentifier copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSData *)self->_assetData copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  v12 = [(SPProtoCacheSyncData *)self->_syncData copyWithZone:zone];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_messageType == *(equalCopy + 10) && self->_cacheType == *(equalCopy + 6) && ((assetKey = self->_assetKey, !(assetKey | equalCopy[2])) || -[NSString isEqual:](assetKey, "isEqual:")) && ((gizmoCacheIdentifier = self->_gizmoCacheIdentifier, !(gizmoCacheIdentifier | equalCopy[4])) || -[NSString isEqual:](gizmoCacheIdentifier, "isEqual:")) && ((assetData = self->_assetData, !(assetData | equalCopy[1])) || -[NSData isEqual:](assetData, "isEqual:")))
  {
    syncData = self->_syncData;
    if (syncData | equalCopy[6])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_messageType = fromCopy[10];
  self->_cacheType = fromCopy[6];
  v7 = fromCopy;
  if (*(fromCopy + 2))
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