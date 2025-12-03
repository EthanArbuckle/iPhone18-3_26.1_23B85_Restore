@interface OTBottle
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation OTBottle

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[6])
  {
    [(OTBottle *)self setPeerID:?];
  }

  if (fromCopy[1])
  {
    [(OTBottle *)self setBottleID:?];
  }

  if (fromCopy[4])
  {
    [(OTBottle *)self setEscrowedSigningSPKI:?];
  }

  if (fromCopy[3])
  {
    [(OTBottle *)self setEscrowedEncryptionSPKI:?];
  }

  if (fromCopy[7])
  {
    [(OTBottle *)self setPeerSigningSPKI:?];
  }

  if (fromCopy[5])
  {
    [(OTBottle *)self setPeerEncryptionSPKI:?];
  }

  contents = self->_contents;
  v5 = fromCopy[2];
  if (contents)
  {
    if (v5)
    {
      [(OTAuthenticatedCiphertext *)contents mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(OTBottle *)self setContents:?];
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_peerID hash];
  v4 = [(NSString *)self->_bottleID hash]^ v3;
  v5 = [(NSData *)self->_escrowedSigningSPKI hash];
  v6 = v4 ^ v5 ^ [(NSData *)self->_escrowedEncryptionSPKI hash];
  v7 = [(NSData *)self->_peerSigningSPKI hash];
  v8 = v7 ^ [(NSData *)self->_peerEncryptionSPKI hash];
  return v6 ^ v8 ^ [(OTAuthenticatedCiphertext *)self->_contents hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((peerID = self->_peerID, !(peerID | equalCopy[6])) || -[NSString isEqual:](peerID, "isEqual:")) && ((bottleID = self->_bottleID, !(bottleID | equalCopy[1])) || -[NSString isEqual:](bottleID, "isEqual:")) && ((escrowedSigningSPKI = self->_escrowedSigningSPKI, !(escrowedSigningSPKI | equalCopy[4])) || -[NSData isEqual:](escrowedSigningSPKI, "isEqual:")) && ((escrowedEncryptionSPKI = self->_escrowedEncryptionSPKI, !(escrowedEncryptionSPKI | equalCopy[3])) || -[NSData isEqual:](escrowedEncryptionSPKI, "isEqual:")) && ((peerSigningSPKI = self->_peerSigningSPKI, !(peerSigningSPKI | equalCopy[7])) || -[NSData isEqual:](peerSigningSPKI, "isEqual:")) && ((peerEncryptionSPKI = self->_peerEncryptionSPKI, !(peerEncryptionSPKI | equalCopy[5])) || -[NSData isEqual:](peerEncryptionSPKI, "isEqual:")))
  {
    contents = self->_contents;
    if (contents | equalCopy[2])
    {
      v12 = [(OTAuthenticatedCiphertext *)contents isEqual:?];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_peerID copyWithZone:zone];
  v7 = v5[6];
  v5[6] = v6;

  v8 = [(NSString *)self->_bottleID copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSData *)self->_escrowedSigningSPKI copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSData *)self->_escrowedEncryptionSPKI copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSData *)self->_peerSigningSPKI copyWithZone:zone];
  v15 = v5[7];
  v5[7] = v14;

  v16 = [(NSData *)self->_peerEncryptionSPKI copyWithZone:zone];
  v17 = v5[5];
  v5[5] = v16;

  v18 = [(OTAuthenticatedCiphertext *)self->_contents copyWithZone:zone];
  v19 = v5[2];
  v5[2] = v18;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_peerID)
  {
    [toCopy setPeerID:?];
    toCopy = v5;
  }

  if (self->_bottleID)
  {
    [v5 setBottleID:?];
    toCopy = v5;
  }

  if (self->_escrowedSigningSPKI)
  {
    [v5 setEscrowedSigningSPKI:?];
    toCopy = v5;
  }

  if (self->_escrowedEncryptionSPKI)
  {
    [v5 setEscrowedEncryptionSPKI:?];
    toCopy = v5;
  }

  if (self->_peerSigningSPKI)
  {
    [v5 setPeerSigningSPKI:?];
    toCopy = v5;
  }

  if (self->_peerEncryptionSPKI)
  {
    [v5 setPeerEncryptionSPKI:?];
    toCopy = v5;
  }

  if (self->_contents)
  {
    [v5 setContents:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_peerID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_bottleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_escrowedSigningSPKI)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_escrowedEncryptionSPKI)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_peerSigningSPKI)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_peerEncryptionSPKI)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_contents)
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
        LOBYTE(v20[0]) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:v20 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v20[0] & 0x7F) << v6;
        if ((v20[0] & 0x80) == 0)
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

      v14 = v13 >> 3;
      if ((v13 >> 3) <= 8)
      {
        switch(v14)
        {
          case 1:
            v15 = PBReaderReadString();
            v16 = 48;
            goto LABEL_37;
          case 2:
            v15 = PBReaderReadString();
            v16 = 8;
            goto LABEL_37;
          case 8:
            v15 = PBReaderReadData();
            v16 = 32;
            goto LABEL_37;
        }
      }

      else if (v14 > 10)
      {
        if (v14 == 11)
        {
          v15 = PBReaderReadData();
          v16 = 40;
          goto LABEL_37;
        }

        if (v14 == 12)
        {
          v17 = objc_alloc_init(OTAuthenticatedCiphertext);
          objc_storeStrong(&self->_contents, v17);
          v20[0] = 0xAAAAAAAAAAAAAAAALL;
          v20[1] = 0xAAAAAAAAAAAAAAAALL;
          if (!PBReaderPlaceMark() || !sub_1002069B0(v17, from))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_38;
        }
      }

      else
      {
        if (v14 == 9)
        {
          v15 = PBReaderReadData();
          v16 = 24;
          goto LABEL_37;
        }

        if (v14 == 10)
        {
          v15 = PBReaderReadData();
          v16 = 56;
LABEL_37:
          v17 = *&self->PBCodable_opaque[v16];
          *&self->PBCodable_opaque[v16] = v15;
LABEL_38:

          goto LABEL_39;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_39:
      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  return [from hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  peerID = self->_peerID;
  if (peerID)
  {
    [v3 setObject:peerID forKey:@"peerID"];
  }

  bottleID = self->_bottleID;
  if (bottleID)
  {
    [v4 setObject:bottleID forKey:@"bottleID"];
  }

  escrowedSigningSPKI = self->_escrowedSigningSPKI;
  if (escrowedSigningSPKI)
  {
    [v4 setObject:escrowedSigningSPKI forKey:@"escrowedSigningSPKI"];
  }

  escrowedEncryptionSPKI = self->_escrowedEncryptionSPKI;
  if (escrowedEncryptionSPKI)
  {
    [v4 setObject:escrowedEncryptionSPKI forKey:@"escrowedEncryptionSPKI"];
  }

  peerSigningSPKI = self->_peerSigningSPKI;
  if (peerSigningSPKI)
  {
    [v4 setObject:peerSigningSPKI forKey:@"peerSigningSPKI"];
  }

  peerEncryptionSPKI = self->_peerEncryptionSPKI;
  if (peerEncryptionSPKI)
  {
    [v4 setObject:peerEncryptionSPKI forKey:@"peerEncryptionSPKI"];
  }

  contents = self->_contents;
  if (contents)
  {
    dictionaryRepresentation = [(OTAuthenticatedCiphertext *)contents dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"contents"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = OTBottle;
  v3 = [(OTBottle *)&v7 description];
  dictionaryRepresentation = [(OTBottle *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end