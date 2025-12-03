@interface ModelKeyServerAPIRawKey
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ModelKeyServerAPIRawKey

- (id)description
{
  v7.receiver = self;
  v7.super_class = ModelKeyServerAPIRawKey;
  v3 = [(ModelKeyServerAPIRawKey *)&v7 description];
  dictionaryRepresentation = [(ModelKeyServerAPIRawKey *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  encryptionKey = self->_encryptionKey;
  if (encryptionKey)
  {
    [v3 setObject:encryptionKey forKey:@"encryption_key"];
  }

  encryptionIv = self->_encryptionIv;
  if (encryptionIv)
  {
    [v4 setObject:encryptionIv forKey:@"encryption_iv"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_encryptionKey)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_encryptionIv)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_encryptionKey)
  {
    [toCopy setEncryptionKey:?];
    toCopy = v5;
  }

  if (self->_encryptionIv)
  {
    [v5 setEncryptionIv:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_encryptionKey copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_encryptionIv copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((encryptionKey = self->_encryptionKey, !(encryptionKey | equalCopy[2])) || -[NSData isEqual:](encryptionKey, "isEqual:")))
  {
    encryptionIv = self->_encryptionIv;
    if (encryptionIv | equalCopy[1])
    {
      v7 = [(NSData *)encryptionIv isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(ModelKeyServerAPIRawKey *)self setEncryptionKey:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(ModelKeyServerAPIRawKey *)self setEncryptionIv:?];
    fromCopy = v5;
  }
}

@end