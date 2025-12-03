@interface OTBottleContents
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation OTBottleContents

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  peerSigningPrivKey = self->_peerSigningPrivKey;
  v6 = fromCopy[2];
  v9 = fromCopy;
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

  fromCopy = v9;
LABEL_7:
  peerEncryptionPrivKey = self->_peerEncryptionPrivKey;
  v8 = fromCopy[1];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((peerSigningPrivKey = self->_peerSigningPrivKey, !(peerSigningPrivKey | equalCopy[2])) || -[OTPrivateKey isEqual:](peerSigningPrivKey, "isEqual:")))
  {
    peerEncryptionPrivKey = self->_peerEncryptionPrivKey;
    if (peerEncryptionPrivKey | equalCopy[1])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(OTPrivateKey *)self->_peerSigningPrivKey copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(OTPrivateKey *)self->_peerEncryptionPrivKey copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_peerSigningPrivKey)
  {
    [toCopy setPeerSigningPrivKey:?];
    toCopy = v5;
  }

  if (self->_peerEncryptionPrivKey)
  {
    [v5 setPeerEncryptionPrivKey:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_peerSigningPrivKey)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_peerEncryptionPrivKey)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    do
    {
      if ([from hasError])
      {
        return [from hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v18[0]) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:v18 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
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

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [from hasError] ^ 1;
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
      if (!PBReaderPlaceMark() || !sub_10020DB78(v14, from))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_25:
      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  return [from hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  peerSigningPrivKey = self->_peerSigningPrivKey;
  if (peerSigningPrivKey)
  {
    dictionaryRepresentation = [(OTPrivateKey *)peerSigningPrivKey dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"peerSigningPrivKey"];
  }

  peerEncryptionPrivKey = self->_peerEncryptionPrivKey;
  if (peerEncryptionPrivKey)
  {
    dictionaryRepresentation2 = [(OTPrivateKey *)peerEncryptionPrivKey dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"peerEncryptionPrivKey"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = OTBottleContents;
  v3 = [(OTBottleContents *)&v7 description];
  dictionaryRepresentation = [(OTBottleContents *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end