@interface AWDSharingProximityPairingResult
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasConnectErrors:(BOOL)a3;
- (void)setHasErrorCode:(BOOL)a3;
- (void)setHasPairingMs:(BOOL)a3;
- (void)setHasUserAccepted:(BOOL)a3;
- (void)setHasUserResponseMs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSharingProximityPairingResult

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 48))
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 4))
  {
    v6 = v4;
    [(AWDSharingProximityPairingResult *)self setSessionUUID:?];
    v4 = v6;
  }

  v5 = *(v4 + 48);
  if ((v5 & 0x20) != 0)
  {
    self->_userAccepted = *(v4 + 44);
    *&self->_has |= 0x20u;
    v5 = *(v4 + 48);
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

  else if ((*(v4 + 48) & 0x10) == 0)
  {
    goto LABEL_7;
  }

  self->_userResponseMs = *(v4 + 10);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 48);
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
  self->_errorCode = *(v4 + 5);
  *&self->_has |= 4u;
  v5 = *(v4 + 48);
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
  self->_pairingMs = *(v4 + 6);
  *&self->_has |= 8u;
  if ((*(v4 + 48) & 2) != 0)
  {
LABEL_10:
    self->_connectErrors = *(v4 + 4);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  has = self->_has;
  v6 = *(v4 + 48);
  if (has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_37;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_37;
  }

  sessionUUID = self->_sessionUUID;
  if (sessionUUID | *(v4 + 4))
  {
    if (![(NSString *)sessionUUID isEqual:?])
    {
      goto LABEL_37;
    }

    has = self->_has;
    v6 = *(v4 + 48);
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
    if ((*(v4 + 44) & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_37;
  }

LABEL_12:
  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_userResponseMs != *(v4 + 10))
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
    if ((v6 & 4) == 0 || self->_errorCode != *(v4 + 5))
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
    if ((v6 & 8) == 0 || self->_pairingMs != *(v4 + 6))
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
    if ((v6 & 2) == 0 || self->_connectErrors != *(v4 + 4))
    {
      goto LABEL_37;
    }

    v8 = 1;
  }

LABEL_38:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 48) |= 1u;
  }

  v7 = [(NSString *)self->_sessionUUID copyWithZone:a3];
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 48) |= 1u;
  }

  if (self->_sessionUUID)
  {
    v6 = v4;
    [v4 setSessionUUID:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v4 + 44) = self->_userAccepted;
    *(v4 + 48) |= 0x20u;
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

  *(v4 + 10) = self->_userResponseMs;
  *(v4 + 48) |= 0x10u;
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
  *(v4 + 5) = self->_errorCode;
  *(v4 + 48) |= 4u;
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
  *(v4 + 6) = self->_pairingMs;
  *(v4 + 48) |= 8u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_10:
    *(v4 + 4) = self->_connectErrors;
    *(v4 + 48) |= 2u;
  }

LABEL_11:
}

- (void)writeTo:(id)a3
{
  v5 = a3;
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

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    do
    {
      if ([a3 hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v60 = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v60 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
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
              v38 = [a3 position] + 1;
              if (v38 >= [a3 position] && (v39 = objc_msgSend(a3, "position") + 1, v39 <= objc_msgSend(a3, "length")))
              {
                v40 = [a3 data];
                [v40 getBytes:&v61 range:{objc_msgSend(a3, "position"), 1}];

                [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
              }

              else
              {
                [a3 _setError];
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

            if ([a3 hasError])
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
              v25 = [a3 position] + 1;
              if (v25 >= [a3 position] && (v26 = objc_msgSend(a3, "position") + 1, v26 <= objc_msgSend(a3, "length")))
              {
                v27 = [a3 data];
                [v27 getBytes:&v62 range:{objc_msgSend(a3, "position"), 1}];

                [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
              }

              else
              {
                [a3 _setError];
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

            v28 = (v24 != 0) & ~[a3 hasError];
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
              v52 = [a3 position] + 1;
              if (v52 >= [a3 position] && (v53 = objc_msgSend(a3, "position") + 1, v53 <= objc_msgSend(a3, "length")))
              {
                v54 = [a3 data];
                [v54 getBytes:&v64 range:{objc_msgSend(a3, "position"), 1}];

                [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
              }

              else
              {
                [a3 _setError];
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

            if ([a3 hasError])
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
              v32 = [a3 position] + 1;
              if (v32 >= [a3 position] && (v33 = objc_msgSend(a3, "position") + 1, v33 <= objc_msgSend(a3, "length")))
              {
                v34 = [a3 data];
                [v34 getBytes:&v63 range:{objc_msgSend(a3, "position"), 1}];

                [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
              }

              else
              {
                [a3 _setError];
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

            if ([a3 hasError])
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
            v46 = [a3 position] + 1;
            if (v46 >= [a3 position] && (v47 = objc_msgSend(a3, "position") + 1, v47 <= objc_msgSend(a3, "length")))
            {
              v48 = [a3 data];
              [v48 getBytes:&v65 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
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

          if ([a3 hasError])
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
            v18 = [a3 position] + 1;
            if (v18 >= [a3 position] && (v19 = objc_msgSend(a3, "position") + 1, v19 <= objc_msgSend(a3, "length")))
            {
              v20 = [a3 data];
              [v20 getBytes:&v66 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
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

          if ([a3 hasError])
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
      v58 = [a3 position];
    }

    while (v58 < [a3 length]);
  }

  LOBYTE(v42) = [a3 hasError] ^ 1;
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
  v4 = [(AWDSharingProximityPairingResult *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)setHasConnectErrors:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasPairingMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasErrorCode:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasUserResponseMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasUserAccepted:(BOOL)a3
{
  if (a3)
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