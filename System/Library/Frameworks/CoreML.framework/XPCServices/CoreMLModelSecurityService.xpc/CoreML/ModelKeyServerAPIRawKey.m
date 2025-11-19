@interface ModelKeyServerAPIRawKey
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ModelKeyServerAPIRawKey

- (id)description
{
  v7.receiver = self;
  v7.super_class = ModelKeyServerAPIRawKey;
  v3 = [(ModelKeyServerAPIRawKey *)&v7 description];
  v4 = [(ModelKeyServerAPIRawKey *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_encryptionKey)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_encryptionIv)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_encryptionKey)
  {
    [v4 setEncryptionKey:?];
    v4 = v5;
  }

  if (self->_encryptionIv)
  {
    [v5 setEncryptionIv:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_encryptionKey copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_encryptionIv copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((encryptionKey = self->_encryptionKey, !(encryptionKey | v4[2])) || -[NSData isEqual:](encryptionKey, "isEqual:")))
  {
    encryptionIv = self->_encryptionIv;
    if (encryptionIv | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(ModelKeyServerAPIRawKey *)self setEncryptionKey:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(ModelKeyServerAPIRawKey *)self setEncryptionIv:?];
    v4 = v5;
  }
}

@end