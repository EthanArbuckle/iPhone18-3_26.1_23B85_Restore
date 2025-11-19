@interface OTRecovery
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

@implementation OTRecovery

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(OTRecovery *)self setPeerID:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(OTRecovery *)self setSigningSPKI:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(OTRecovery *)self setEncryptionSPKI:?];
    v4 = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_peerID hash];
  v4 = [(NSData *)self->_signingSPKI hash]^ v3;
  return v4 ^ [(NSData *)self->_encryptionSPKI hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((peerID = self->_peerID, !(peerID | v4[2])) || -[NSString isEqual:](peerID, "isEqual:")) && ((signingSPKI = self->_signingSPKI, !(signingSPKI | v4[3])) || -[NSData isEqual:](signingSPKI, "isEqual:")))
  {
    encryptionSPKI = self->_encryptionSPKI;
    if (encryptionSPKI | v4[1])
    {
      v8 = [(NSData *)encryptionSPKI isEqual:?];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_peerID copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_signingSPKI copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_encryptionSPKI copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

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

  if (self->_signingSPKI)
  {
    [v5 setSigningSPKI:?];
    v4 = v5;
  }

  if (self->_encryptionSPKI)
  {
    [v5 setEncryptionSPKI:?];
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

  if (self->_signingSPKI)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_encryptionSPKI)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    while (1)
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
        v21 = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v21 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v21 & 0x7F) << v6;
        if ((v21 & 0x80) == 0)
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
      if ((v13 >> 3) == 3)
      {
        v15 = PBReaderReadData();
        v16 = &OBJC_IVAR___OTRecovery__encryptionSPKI;
        goto LABEL_23;
      }

      if (v14 == 2)
      {
        break;
      }

      if (v14 == 1)
      {
        v15 = PBReaderReadString();
        v16 = &OBJC_IVAR___OTRecovery__peerID;
LABEL_23:
        v17 = *v16;
        v18 = *&self->PBCodable_opaque[v17];
        *&self->PBCodable_opaque[v17] = v15;

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v19 = [a3 position];
      if (v19 >= [a3 length])
      {
        return [a3 hasError] ^ 1;
      }
    }

    v15 = PBReaderReadData();
    v16 = &OBJC_IVAR___OTRecovery__signingSPKI;
    goto LABEL_23;
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

  signingSPKI = self->_signingSPKI;
  if (signingSPKI)
  {
    [v4 setObject:signingSPKI forKey:@"signingSPKI"];
  }

  encryptionSPKI = self->_encryptionSPKI;
  if (encryptionSPKI)
  {
    [v4 setObject:encryptionSPKI forKey:@"encryptionSPKI"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = OTRecovery;
  v3 = [(OTRecovery *)&v7 description];
  v4 = [(OTRecovery *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end