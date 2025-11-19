@interface OTBottleContents
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation OTBottleContents

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  peerSigningPrivKey = self->_peerSigningPrivKey;
  v6 = v4[2];
  v9 = v4;
  if (peerSigningPrivKey)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(OTPrivateKey *)peerSigningPrivKey mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(OTBottleContents *)self setPeerSigningPrivKey:?];
  }

  v4 = v9;
LABEL_7:
  peerEncryptionPrivKey = self->_peerEncryptionPrivKey;
  v8 = v4[1];
  if (peerEncryptionPrivKey)
  {
    if (v8)
    {
      [(OTPrivateKey *)peerEncryptionPrivKey mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(OTBottleContents *)self setPeerEncryptionPrivKey:?];
  }

  _objc_release_x1();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((peerSigningPrivKey = self->_peerSigningPrivKey, !(peerSigningPrivKey | v4[2])) || -[OTPrivateKey isEqual:](peerSigningPrivKey, "isEqual:")))
  {
    peerEncryptionPrivKey = self->_peerEncryptionPrivKey;
    if (peerEncryptionPrivKey | v4[1])
    {
      v7 = [(OTPrivateKey *)peerEncryptionPrivKey isEqual:?];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(OTPrivateKey *)self->_peerSigningPrivKey copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(OTPrivateKey *)self->_peerEncryptionPrivKey copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_peerSigningPrivKey)
  {
    [v4 setPeerSigningPrivKey:?];
    v4 = v5;
  }

  if (self->_peerEncryptionPrivKey)
  {
    [v5 setPeerEncryptionPrivKey:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_peerSigningPrivKey)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_peerEncryptionPrivKey)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    do
    {
      if ([a3 hasError])
      {
        return [a3 hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v18[0]) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:v18 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v18[0] & 0x7F) << v6;
        if ((v18[0] & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        if (v7++ >= 9)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [a3 hasError] ^ 1;
      }

      if ((v13 >> 3) == 4)
      {
        v14 = objc_alloc_init(OTPrivateKey);
        v15 = 8;
      }

      else
      {
        if ((v13 >> 3) != 3)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_25;
        }

        v14 = objc_alloc_init(OTPrivateKey);
        v15 = 16;
      }

      objc_storeStrong(&self->PBCodable_opaque[v15], v14);
      v18[0] = 0xAAAAAAAAAAAAAAAALL;
      v18[1] = 0xAAAAAAAAAAAAAAAALL;
      if (!PBReaderPlaceMark() || !sub_10020DB78(v14, a3))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_25:
      v16 = [a3 position];
    }

    while (v16 < [a3 length]);
  }

  return [a3 hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  peerSigningPrivKey = self->_peerSigningPrivKey;
  if (peerSigningPrivKey)
  {
    v5 = [(OTPrivateKey *)peerSigningPrivKey dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"peerSigningPrivKey"];
  }

  peerEncryptionPrivKey = self->_peerEncryptionPrivKey;
  if (peerEncryptionPrivKey)
  {
    v7 = [(OTPrivateKey *)peerEncryptionPrivKey dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"peerEncryptionPrivKey"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = OTBottleContents;
  v3 = [(OTBottleContents *)&v7 description];
  v4 = [(OTBottleContents *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end