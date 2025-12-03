@interface OTRecovery
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

@implementation OTRecovery

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(OTRecovery *)self setPeerID:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(OTRecovery *)self setSigningSPKI:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(OTRecovery *)self setEncryptionSPKI:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_peerID hash];
  v4 = [(NSData *)self->_signingSPKI hash]^ v3;
  return v4 ^ [(NSData *)self->_encryptionSPKI hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((peerID = self->_peerID, !(peerID | equalCopy[2])) || -[NSString isEqual:](peerID, "isEqual:")) && ((signingSPKI = self->_signingSPKI, !(signingSPKI | equalCopy[3])) || -[NSData isEqual:](signingSPKI, "isEqual:")))
  {
    encryptionSPKI = self->_encryptionSPKI;
    if (encryptionSPKI | equalCopy[1])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_peerID copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_signingSPKI copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_encryptionSPKI copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

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

  if (self->_signingSPKI)
  {
    [v5 setSigningSPKI:?];
    toCopy = v5;
  }

  if (self->_encryptionSPKI)
  {
    [v5 setEncryptionSPKI:?];
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

  if (self->_signingSPKI)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_encryptionSPKI)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    while (1)
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
        v21 = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v21 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
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

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [from hasError] ^ 1;
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
      position2 = [from position];
      if (position2 >= [from length])
      {
        return [from hasError] ^ 1;
      }
    }

    v15 = PBReaderReadData();
    v16 = &OBJC_IVAR___OTRecovery__signingSPKI;
    goto LABEL_23;
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
  dictionaryRepresentation = [(OTRecovery *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end