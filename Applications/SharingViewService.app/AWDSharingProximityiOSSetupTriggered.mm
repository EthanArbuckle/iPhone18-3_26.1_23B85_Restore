@interface AWDSharingProximityiOSSetupTriggered
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSmoothedRSSI:(BOOL)a3;
- (void)setHasUserActionType:(BOOL)a3;
- (void)setHasUserMs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSharingProximityiOSSetupTriggered

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 36))
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    v6 = v4;
    [(AWDSharingProximityiOSSetupTriggered *)self setSessionUUID:?];
    v4 = v6;
  }

  v5 = *(v4 + 36);
  if ((v5 & 2) != 0)
  {
    self->_smoothedRSSI = *(v4 + 6);
    *&self->_has |= 2u;
    v5 = *(v4 + 36);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(v4 + 36) & 4) == 0)
  {
    goto LABEL_7;
  }

  self->_userActionType = *(v4 + 7);
  *&self->_has |= 4u;
  if ((*(v4 + 36) & 8) != 0)
  {
LABEL_8:
    self->_userMs = *(v4 + 8);
    *&self->_has |= 8u;
  }

LABEL_9:
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
  if ((*&self->_has & 2) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v5 = 2654435761 * self->_smoothedRSSI;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v6 = 2654435761 * self->_userActionType;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v7 = 2654435761 * self->_userMs;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  has = self->_has;
  v6 = *(v4 + 36);
  if (has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_24;
  }

  sessionUUID = self->_sessionUUID;
  if (sessionUUID | *(v4 + 2))
  {
    if (![(NSString *)sessionUUID isEqual:?])
    {
LABEL_24:
      v8 = 0;
      goto LABEL_25;
    }

    has = self->_has;
    v6 = *(v4 + 36);
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_smoothedRSSI != *(v4 + 6))
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_24;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_userActionType != *(v4 + 7))
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_24;
  }

  v8 = (v6 & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_userMs != *(v4 + 8))
    {
      goto LABEL_24;
    }

    v8 = 1;
  }

LABEL_25:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 36) |= 1u;
  }

  v7 = [(NSString *)self->_sessionUUID copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    *(v6 + 7) = self->_userActionType;
    *(v6 + 36) |= 4u;
    if ((*&self->_has & 8) == 0)
    {
      return v6;
    }

    goto LABEL_6;
  }

  *(v6 + 6) = self->_smoothedRSSI;
  *(v6 + 36) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((has & 8) != 0)
  {
LABEL_6:
    *(v6 + 8) = self->_userMs;
    *(v6 + 36) |= 8u;
  }

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 36) |= 1u;
  }

  if (self->_sessionUUID)
  {
    v6 = v4;
    [v4 setSessionUUID:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 6) = self->_smoothedRSSI;
    *(v4 + 36) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  *(v4 + 7) = self->_userActionType;
  *(v4 + 36) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    *(v4 + 8) = self->_userMs;
    *(v4 + 36) |= 8u;
  }

LABEL_9:
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
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    PBDataWriterWriteUint32Field();
  }

LABEL_9:
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
        v47 = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v47 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v47 & 0x7F) << v6;
        if ((v47 & 0x80) == 0)
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
      if ((v13 >> 3) <= 2)
      {
        if (v14 == 1)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *&self->_has |= 1u;
          while (1)
          {
            v48 = 0;
            v39 = [a3 position] + 1;
            if (v39 >= [a3 position] && (v40 = objc_msgSend(a3, "position") + 1, v40 <= objc_msgSend(a3, "length")))
            {
              v41 = [a3 data];
              [v41 getBytes:&v48 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
            }

            v38 |= (v48 & 0x7F) << v36;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v12 = v37++ >= 9;
            if (v12)
            {
              v42 = 0;
              goto LABEL_73;
            }
          }

          if ([a3 hasError])
          {
            v42 = 0;
          }

          else
          {
            v42 = v38;
          }

LABEL_73:
          self->_timestamp = v42;
        }

        else
        {
          if (v14 != 2)
          {
LABEL_60:
            v43 = PBReaderSkipValueWithTag();
            if (!v43)
            {
              return v43;
            }

            goto LABEL_79;
          }

          v22 = PBReaderReadString();
          sessionUUID = self->_sessionUUID;
          self->_sessionUUID = v22;
        }
      }

      else
      {
        switch(v14)
        {
          case 3:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *&self->_has |= 2u;
            while (1)
            {
              v49 = 0;
              v27 = [a3 position] + 1;
              if (v27 >= [a3 position] && (v28 = objc_msgSend(a3, "position") + 1, v28 <= objc_msgSend(a3, "length")))
              {
                v29 = [a3 data];
                [v29 getBytes:&v49 range:{objc_msgSend(a3, "position"), 1}];

                [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
              }

              else
              {
                [a3 _setError];
              }

              v26 |= (v49 & 0x7F) << v24;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v12 = v25++ >= 9;
              if (v12)
              {
                v21 = 0;
                goto LABEL_65;
              }
            }

            if ([a3 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v26;
            }

LABEL_65:
            v44 = 24;
            break;
          case 4:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *&self->_has |= 4u;
            while (1)
            {
              v51 = 0;
              v33 = [a3 position] + 1;
              if (v33 >= [a3 position] && (v34 = objc_msgSend(a3, "position") + 1, v34 <= objc_msgSend(a3, "length")))
              {
                v35 = [a3 data];
                [v35 getBytes:&v51 range:{objc_msgSend(a3, "position"), 1}];

                [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
              }

              else
              {
                [a3 _setError];
              }

              v32 |= (v51 & 0x7F) << v30;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v12 = v31++ >= 9;
              if (v12)
              {
                v21 = 0;
                goto LABEL_69;
              }
            }

            if ([a3 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v32;
            }

LABEL_69:
            v44 = 28;
            break;
          case 5:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *&self->_has |= 8u;
            while (1)
            {
              v50 = 0;
              v18 = [a3 position] + 1;
              if (v18 >= [a3 position] && (v19 = objc_msgSend(a3, "position") + 1, v19 <= objc_msgSend(a3, "length")))
              {
                v20 = [a3 data];
                [v20 getBytes:&v50 range:{objc_msgSend(a3, "position"), 1}];

                [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
              }

              else
              {
                [a3 _setError];
              }

              v17 |= (v50 & 0x7F) << v15;
              if ((v50 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v12 = v16++ >= 9;
              if (v12)
              {
                v21 = 0;
                goto LABEL_77;
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

LABEL_77:
            v44 = 32;
            break;
          default:
            goto LABEL_60;
        }

        *&self->PBCodable_opaque[v44] = v21;
      }

LABEL_79:
      v45 = [a3 position];
    }

    while (v45 < [a3 length]);
  }

  LOBYTE(v43) = [a3 hasError] ^ 1;
  return v43;
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
  if ((has & 2) != 0)
  {
    v9 = [NSNumber numberWithInt:self->_smoothedRSSI];
    [v3 setObject:v9 forKey:@"smoothedRSSI"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  v10 = [NSNumber numberWithUnsignedInt:self->_userActionType];
  [v3 setObject:v10 forKey:@"userActionType"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    v7 = [NSNumber numberWithUnsignedInt:self->_userMs];
    [v3 setObject:v7 forKey:@"userMs"];
  }

LABEL_9:

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDSharingProximityiOSSetupTriggered;
  v3 = [(AWDSharingProximityiOSSetupTriggered *)&v7 description];
  v4 = [(AWDSharingProximityiOSSetupTriggered *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)setHasUserMs:(BOOL)a3
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

- (void)setHasUserActionType:(BOOL)a3
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

- (void)setHasSmoothedRSSI:(BOOL)a3
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

@end