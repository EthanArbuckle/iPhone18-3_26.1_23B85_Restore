@interface OTBottle
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation OTBottle

- (void)mergeFrom:(id)a3
{
  v6 = a3;
  if (v6[6])
  {
    [(OTBottle *)self setPeerID:?];
  }

  if (v6[1])
  {
    [(OTBottle *)self setBottleID:?];
  }

  if (v6[4])
  {
    [(OTBottle *)self setEscrowedSigningSPKI:?];
  }

  if (v6[3])
  {
    [(OTBottle *)self setEscrowedEncryptionSPKI:?];
  }

  if (v6[7])
  {
    [(OTBottle *)self setPeerSigningSPKI:?];
  }

  if (v6[5])
  {
    [(OTBottle *)self setPeerEncryptionSPKI:?];
  }

  contents = self->_contents;
  v5 = v6[2];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((peerID = self->_peerID, !(peerID | v4[6])) || -[NSString isEqual:](peerID, "isEqual:")) && ((bottleID = self->_bottleID, !(bottleID | v4[1])) || -[NSString isEqual:](bottleID, "isEqual:")) && ((escrowedSigningSPKI = self->_escrowedSigningSPKI, !(escrowedSigningSPKI | v4[4])) || -[NSData isEqual:](escrowedSigningSPKI, "isEqual:")) && ((escrowedEncryptionSPKI = self->_escrowedEncryptionSPKI, !(escrowedEncryptionSPKI | v4[3])) || -[NSData isEqual:](escrowedEncryptionSPKI, "isEqual:")) && ((peerSigningSPKI = self->_peerSigningSPKI, !(peerSigningSPKI | v4[7])) || -[NSData isEqual:](peerSigningSPKI, "isEqual:")) && ((peerEncryptionSPKI = self->_peerEncryptionSPKI, !(peerEncryptionSPKI | v4[5])) || -[NSData isEqual:](peerEncryptionSPKI, "isEqual:")))
  {
    contents = self->_contents;
    if (contents | v4[2])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_peerID copyWithZone:a3];
  v7 = v5[6];
  v5[6] = v6;

  v8 = [(NSString *)self->_bottleID copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSData *)self->_escrowedSigningSPKI copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSData *)self->_escrowedEncryptionSPKI copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSData *)self->_peerSigningSPKI copyWithZone:a3];
  v15 = v5[7];
  v5[7] = v14;

  v16 = [(NSData *)self->_peerEncryptionSPKI copyWithZone:a3];
  v17 = v5[5];
  v5[5] = v16;

  v18 = [(OTAuthenticatedCiphertext *)self->_contents copyWithZone:a3];
  v19 = v5[2];
  v5[2] = v18;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_peerID)
  {
    [v4 setPeerID:?];
    v4 = v5;
  }

  if (self->_bottleID)
  {
    [v5 setBottleID:?];
    v4 = v5;
  }

  if (self->_escrowedSigningSPKI)
  {
    [v5 setEscrowedSigningSPKI:?];
    v4 = v5;
  }

  if (self->_escrowedEncryptionSPKI)
  {
    [v5 setEscrowedEncryptionSPKI:?];
    v4 = v5;
  }

  if (self->_peerSigningSPKI)
  {
    [v5 setPeerSigningSPKI:?];
    v4 = v5;
  }

  if (self->_peerEncryptionSPKI)
  {
    [v5 setPeerEncryptionSPKI:?];
    v4 = v5;
  }

  if (self->_contents)
  {
    [v5 setContents:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_peerID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_bottleID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_escrowedSigningSPKI)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_escrowedEncryptionSPKI)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_peerSigningSPKI)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_peerEncryptionSPKI)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_contents)
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
        LOBYTE(v20[0]) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:v20 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [a3 hasError] ^ 1;
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
          if (!PBReaderPlaceMark() || !sub_1002069B0(v17, a3))
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
      v18 = [a3 position];
    }

    while (v18 < [a3 length]);
  }

  return [a3 hasError] ^ 1;
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
    v12 = [(OTAuthenticatedCiphertext *)contents dictionaryRepresentation];
    [v4 setObject:v12 forKey:@"contents"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = OTBottle;
  v3 = [(OTBottle *)&v7 description];
  v4 = [(OTBottle *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end