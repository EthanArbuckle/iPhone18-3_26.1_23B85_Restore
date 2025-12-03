@interface AWDSharingProximityPairingResult
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasConnectErrors:(BOOL)errors;
- (void)setHasErrorCode:(BOOL)code;
- (void)setHasPairingMs:(BOOL)ms;
- (void)setHasUserAccepted:(BOOL)accepted;
- (void)setHasUserResponseMs:(BOOL)ms;
- (void)writeTo:(id)to;
@end

@implementation AWDSharingProximityPairingResult

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 48))
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 4))
  {
    v6 = fromCopy;
    [(AWDSharingProximityPairingResult *)self setSessionUUID:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 48);
  if ((v5 & 0x20) != 0)
  {
    self->_userAccepted = *(fromCopy + 44);
    *&self->_has |= 0x20u;
    v5 = *(fromCopy + 48);
    if ((v5 & 0x10) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  else if ((*(fromCopy + 48) & 0x10) == 0)
  {
    goto LABEL_7;
  }

  self->_userResponseMs = *(fromCopy + 10);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 48);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_errorCode = *(fromCopy + 5);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 48);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_17:
  self->_pairingMs = *(fromCopy + 6);
  *&self->_has |= 8u;
  if ((*(fromCopy + 48) & 2) != 0)
  {
LABEL_10:
    self->_connectErrors = *(fromCopy + 4);
    *&self->_has |= 2u;
  }

LABEL_11:
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_sessionUUID hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v5 = 2654435761 * self->_userAccepted;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_6:
      v6 = 2654435761 * self->_userResponseMs;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_errorCode;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v8 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_12:
  v7 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v8 = 2654435761 * self->_pairingMs;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  v9 = 2654435761 * self->_connectErrors;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  has = self->_has;
  v6 = *(equalCopy + 48);
  if (has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_37;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_37;
  }

  sessionUUID = self->_sessionUUID;
  if (sessionUUID | *(equalCopy + 4))
  {
    if (![(NSString *)sessionUUID isEqual:?])
    {
      goto LABEL_37;
    }

    has = self->_has;
    v6 = *(equalCopy + 48);
  }

  if ((has & 0x20) == 0)
  {
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_37:
    v8 = 0;
    goto LABEL_38;
  }

  if ((v6 & 0x20) == 0)
  {
    goto LABEL_37;
  }

  if (self->_userAccepted)
  {
    if ((*(equalCopy + 44) & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_37;
  }

LABEL_12:
  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_userResponseMs != *(equalCopy + 10))
    {
      goto LABEL_37;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_37;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_errorCode != *(equalCopy + 5))
    {
      goto LABEL_37;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_37;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_pairingMs != *(equalCopy + 6))
    {
      goto LABEL_37;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_37;
  }

  v8 = (v6 & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_connectErrors != *(equalCopy + 4))
    {
      goto LABEL_37;
    }

    v8 = 1;
  }

LABEL_38:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 48) |= 1u;
  }

  v7 = [(NSString *)self->_sessionUUID copyWithZone:zone];
  v8 = v6[4];
  v6[4] = v7;

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v6 + 44) = self->_userAccepted;
    *(v6 + 48) |= 0x20u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 10) = self->_userResponseMs;
  *(v6 + 48) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    *(v6 + 6) = self->_pairingMs;
    *(v6 + 48) |= 8u;
    if ((*&self->_has & 2) == 0)
    {
      return v6;
    }

    goto LABEL_8;
  }

LABEL_12:
  *(v6 + 5) = self->_errorCode;
  *(v6 + 48) |= 4u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((has & 2) != 0)
  {
LABEL_8:
    *(v6 + 4) = self->_connectErrors;
    *(v6 + 48) |= 2u;
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 48) |= 1u;
  }

  if (self->_sessionUUID)
  {
    v6 = toCopy;
    [toCopy setSessionUUID:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(toCopy + 44) = self->_userAccepted;
    *(toCopy + 48) |= 0x20u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 10) = self->_userResponseMs;
  *(toCopy + 48) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(toCopy + 5) = self->_errorCode;
  *(toCopy + 48) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_17:
  *(toCopy + 6) = self->_pairingMs;
  *(toCopy + 48) |= 8u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_10:
    *(toCopy + 4) = self->_connectErrors;
    *(toCopy + 48) |= 2u;
  }

LABEL_11:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_sessionUUID)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_17:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_10:
    PBDataWriterWriteUint32Field();
  }

LABEL_11:
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
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v60 = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v60 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v60 & 0x7F) << v6;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        break;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) <= 3)
      {
        switch(v14)
        {
          case 1:
            v35 = 0;
            v36 = 0;
            v37 = 0;
            *&self->_has |= 1u;
            while (1)
            {
              v61 = 0;
              v38 = [from position] + 1;
              if (v38 >= [from position] && (v39 = objc_msgSend(from, "position") + 1, v39 <= objc_msgSend(from, "length")))
              {
                data2 = [from data];
                [data2 getBytes:&v61 range:{objc_msgSend(from, "position"), 1}];

                [from setPosition:{objc_msgSend(from, "position") + 1}];
              }

              else
              {
                [from _setError];
              }

              v37 |= (v61 & 0x7F) << v35;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v12 = v36++ >= 9;
              if (v12)
              {
                v41 = 0;
                goto LABEL_86;
              }
            }

            if ([from hasError])
            {
              v41 = 0;
            }

            else
            {
              v41 = v37;
            }

LABEL_86:
            self->_timestamp = v41;
            break;
          case 2:
            v55 = PBReaderReadString();
            sessionUUID = self->_sessionUUID;
            self->_sessionUUID = v55;

            break;
          case 3:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            *&self->_has |= 0x20u;
            while (1)
            {
              v62 = 0;
              v25 = [from position] + 1;
              if (v25 >= [from position] && (v26 = objc_msgSend(from, "position") + 1, v26 <= objc_msgSend(from, "length")))
              {
                data3 = [from data];
                [data3 getBytes:&v62 range:{objc_msgSend(from, "position"), 1}];

                [from setPosition:{objc_msgSend(from, "position") + 1}];
              }

              else
              {
                [from _setError];
              }

              v24 |= (v62 & 0x7F) << v22;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v12 = v23++ >= 9;
              if (v12)
              {
                LOBYTE(v28) = 0;
                goto LABEL_107;
              }
            }

            v28 = (v24 != 0) & ~[from hasError];
LABEL_107:
            self->_userAccepted = v28;
            break;
          default:
            goto LABEL_62;
        }
      }

      else
      {
        if (v14 > 5)
        {
          if (v14 == 6)
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            *&self->_has |= 8u;
            while (1)
            {
              v64 = 0;
              v52 = [from position] + 1;
              if (v52 >= [from position] && (v53 = objc_msgSend(from, "position") + 1, v53 <= objc_msgSend(from, "length")))
              {
                data4 = [from data];
                [data4 getBytes:&v64 range:{objc_msgSend(from, "position"), 1}];

                [from setPosition:{objc_msgSend(from, "position") + 1}];
              }

              else
              {
                [from _setError];
              }

              v51 |= (v64 & 0x7F) << v49;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              v12 = v50++ >= 9;
              if (v12)
              {
                v21 = 0;
                goto LABEL_94;
              }
            }

            if ([from hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v51;
            }

LABEL_94:
            v57 = 24;
          }

          else
          {
            if (v14 != 7)
            {
LABEL_62:
              v42 = PBReaderSkipValueWithTag();
              if (!v42)
              {
                return v42;
              }

              goto LABEL_104;
            }

            v29 = 0;
            v30 = 0;
            v31 = 0;
            *&self->_has |= 2u;
            while (1)
            {
              v63 = 0;
              v32 = [from position] + 1;
              if (v32 >= [from position] && (v33 = objc_msgSend(from, "position") + 1, v33 <= objc_msgSend(from, "length")))
              {
                data5 = [from data];
                [data5 getBytes:&v63 range:{objc_msgSend(from, "position"), 1}];

                [from setPosition:{objc_msgSend(from, "position") + 1}];
              }

              else
              {
                [from _setError];
              }

              v31 |= (v63 & 0x7F) << v29;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v12 = v30++ >= 9;
              if (v12)
              {
                v21 = 0;
                goto LABEL_102;
              }
            }

            if ([from hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v31;
            }

LABEL_102:
            v57 = 16;
          }
        }

        else if (v14 == 4)
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *&self->_has |= 0x10u;
          while (1)
          {
            v65 = 0;
            v46 = [from position] + 1;
            if (v46 >= [from position] && (v47 = objc_msgSend(from, "position") + 1, v47 <= objc_msgSend(from, "length")))
            {
              data6 = [from data];
              [data6 getBytes:&v65 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v45 |= (v65 & 0x7F) << v43;
            if ((v65 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v12 = v44++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_90;
            }
          }

          if ([from hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v45;
          }

LABEL_90:
          v57 = 40;
        }

        else
        {
          if (v14 != 5)
          {
            goto LABEL_62;
          }

          v15 = 0;
          v16 = 0;
          v17 = 0;
          *&self->_has |= 4u;
          while (1)
          {
            v66 = 0;
            v18 = [from position] + 1;
            if (v18 >= [from position] && (v19 = objc_msgSend(from, "position") + 1, v19 <= objc_msgSend(from, "length")))
            {
              data7 = [from data];
              [data7 getBytes:&v66 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v17 |= (v66 & 0x7F) << v15;
            if ((v66 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v12 = v16++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_98;
            }
          }

          if ([from hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_98:
          v57 = 20;
        }

        *&self->PBCodable_opaque[v57] = v21;
      }

LABEL_104:
      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  LOBYTE(v42) = [from hasError] ^ 1;
  return v42;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  sessionUUID = self->_sessionUUID;
  if (sessionUUID)
  {
    [v3 setObject:sessionUUID forKey:@"sessionUUID"];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v9 = [NSNumber numberWithBool:self->_userAccepted];
    [v3 setObject:v9 forKey:@"userAccepted"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_7;
  }

  v10 = [NSNumber numberWithUnsignedInt:self->_userResponseMs];
  [v3 setObject:v10 forKey:@"userResponseMs"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  v11 = [NSNumber numberWithInt:self->_errorCode];
  [v3 setObject:v11 forKey:@"errorCode"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_17:
  v12 = [NSNumber numberWithUnsignedInt:self->_pairingMs];
  [v3 setObject:v12 forKey:@"pairingMs"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_10:
    v7 = [NSNumber numberWithUnsignedInt:self->_connectErrors];
    [v3 setObject:v7 forKey:@"connectErrors"];
  }

LABEL_11:

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDSharingProximityPairingResult;
  v3 = [(AWDSharingProximityPairingResult *)&v7 description];
  dictionaryRepresentation = [(AWDSharingProximityPairingResult *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)setHasConnectErrors:(BOOL)errors
{
  if (errors)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasPairingMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasUserResponseMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasUserAccepted:(BOOL)accepted
{
  if (accepted)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

@end