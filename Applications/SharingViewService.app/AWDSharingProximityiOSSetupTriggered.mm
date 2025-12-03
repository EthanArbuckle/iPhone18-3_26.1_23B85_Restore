@interface AWDSharingProximityiOSSetupTriggered
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSmoothedRSSI:(BOOL)i;
- (void)setHasUserActionType:(BOOL)type;
- (void)setHasUserMs:(BOOL)ms;
- (void)writeTo:(id)to;
@end

@implementation AWDSharingProximityiOSSetupTriggered

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 36))
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    v6 = fromCopy;
    [(AWDSharingProximityiOSSetupTriggered *)self setSessionUUID:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 36);
  if ((v5 & 2) != 0)
  {
    self->_smoothedRSSI = *(fromCopy + 6);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 36);
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

  else if ((*(fromCopy + 36) & 4) == 0)
  {
    goto LABEL_7;
  }

  self->_userActionType = *(fromCopy + 7);
  *&self->_has |= 4u;
  if ((*(fromCopy + 36) & 8) != 0)
  {
LABEL_8:
    self->_userMs = *(fromCopy + 8);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  has = self->_has;
  v6 = *(equalCopy + 36);
  if (has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_24;
  }

  sessionUUID = self->_sessionUUID;
  if (sessionUUID | *(equalCopy + 2))
  {
    if (![(NSString *)sessionUUID isEqual:?])
    {
LABEL_24:
      v8 = 0;
      goto LABEL_25;
    }

    has = self->_has;
    v6 = *(equalCopy + 36);
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_smoothedRSSI != *(equalCopy + 6))
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
    if ((v6 & 4) == 0 || self->_userActionType != *(equalCopy + 7))
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
    if ((v6 & 8) == 0 || self->_userMs != *(equalCopy + 8))
    {
      goto LABEL_24;
    }

    v8 = 1;
  }

LABEL_25:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 36) |= 1u;
  }

  v7 = [(NSString *)self->_sessionUUID copyWithZone:zone];
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 36) |= 1u;
  }

  if (self->_sessionUUID)
  {
    v6 = toCopy;
    [toCopy setSessionUUID:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 6) = self->_smoothedRSSI;
    *(toCopy + 36) |= 2u;
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

  *(toCopy + 7) = self->_userActionType;
  *(toCopy + 36) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    *(toCopy + 8) = self->_userMs;
    *(toCopy + 36) |= 8u;
  }

LABEL_9:
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
        v47 = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v47 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
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

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
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
            v39 = [from position] + 1;
            if (v39 >= [from position] && (v40 = objc_msgSend(from, "position") + 1, v40 <= objc_msgSend(from, "length")))
            {
              data2 = [from data];
              [data2 getBytes:&v48 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
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

          if ([from hasError])
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
              v27 = [from position] + 1;
              if (v27 >= [from position] && (v28 = objc_msgSend(from, "position") + 1, v28 <= objc_msgSend(from, "length")))
              {
                data3 = [from data];
                [data3 getBytes:&v49 range:{objc_msgSend(from, "position"), 1}];

                [from setPosition:{objc_msgSend(from, "position") + 1}];
              }

              else
              {
                [from _setError];
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

            if ([from hasError])
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
              v33 = [from position] + 1;
              if (v33 >= [from position] && (v34 = objc_msgSend(from, "position") + 1, v34 <= objc_msgSend(from, "length")))
              {
                data4 = [from data];
                [data4 getBytes:&v51 range:{objc_msgSend(from, "position"), 1}];

                [from setPosition:{objc_msgSend(from, "position") + 1}];
              }

              else
              {
                [from _setError];
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

            if ([from hasError])
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
              v18 = [from position] + 1;
              if (v18 >= [from position] && (v19 = objc_msgSend(from, "position") + 1, v19 <= objc_msgSend(from, "length")))
              {
                data5 = [from data];
                [data5 getBytes:&v50 range:{objc_msgSend(from, "position"), 1}];

                [from setPosition:{objc_msgSend(from, "position") + 1}];
              }

              else
              {
                [from _setError];
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

            if ([from hasError])
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
      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  LOBYTE(v43) = [from hasError] ^ 1;
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
  dictionaryRepresentation = [(AWDSharingProximityiOSSetupTriggered *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)setHasUserMs:(BOOL)ms
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

- (void)setHasUserActionType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSmoothedRSSI:(BOOL)i
{
  if (i)
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