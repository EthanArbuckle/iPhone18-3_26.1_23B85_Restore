@interface AWDSharingProximityiOSSetupResult
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDurationMs:(BOOL)a3;
- (void)setHasErrorCode:(BOOL)a3;
- (void)setHasIncorrectPINCount:(BOOL)a3;
- (void)setHasSmoothedRSSI:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSharingProximityiOSSetupResult

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 44))
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 4))
  {
    v6 = v4;
    [(AWDSharingProximityiOSSetupResult *)self setSessionUUID:?];
    v4 = v6;
  }

  v5 = *(v4 + 44);
  if ((v5 & 0x10) != 0)
  {
    self->_smoothedRSSI = *(v4 + 10);
    *&self->_has |= 0x10u;
    v5 = *(v4 + 44);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*(v4 + 44) & 4) == 0)
  {
    goto LABEL_7;
  }

  self->_errorCode = *(v4 + 5);
  *&self->_has |= 4u;
  v5 = *(v4 + 44);
  if ((v5 & 2) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  self->_durationMs = *(v4 + 4);
  *&self->_has |= 2u;
  if ((*(v4 + 44) & 8) != 0)
  {
LABEL_9:
    self->_incorrectPINCount = *(v4 + 6);
    *&self->_has |= 8u;
  }

LABEL_10:
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
  if ((*&self->_has & 0x10) != 0)
  {
    v5 = 2654435761 * self->_smoothedRSSI;
    if ((*&self->_has & 4) != 0)
    {
LABEL_6:
      v6 = 2654435761 * self->_errorCode;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      v7 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      v8 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v7 = 2654435761 * self->_durationMs;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v8 = 2654435761 * self->_incorrectPINCount;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  has = self->_has;
  v6 = *(v4 + 44);
  if (has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_29;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_29;
  }

  sessionUUID = self->_sessionUUID;
  if (sessionUUID | *(v4 + 4))
  {
    if (![(NSString *)sessionUUID isEqual:?])
    {
LABEL_29:
      v8 = 0;
      goto LABEL_30;
    }

    has = self->_has;
    v6 = *(v4 + 44);
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_smoothedRSSI != *(v4 + 10))
    {
      goto LABEL_29;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_29;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_errorCode != *(v4 + 5))
    {
      goto LABEL_29;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_29;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_durationMs != *(v4 + 4))
    {
      goto LABEL_29;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_29;
  }

  v8 = (v6 & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_incorrectPINCount != *(v4 + 6))
    {
      goto LABEL_29;
    }

    v8 = 1;
  }

LABEL_30:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 44) |= 1u;
  }

  v7 = [(NSString *)self->_sessionUUID copyWithZone:a3];
  v8 = v6[4];
  v6[4] = v7;

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v6 + 10) = self->_smoothedRSSI;
    *(v6 + 44) |= 0x10u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      *(v6 + 4) = self->_durationMs;
      *(v6 + 44) |= 2u;
      if ((*&self->_has & 8) == 0)
      {
        return v6;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 5) = self->_errorCode;
  *(v6 + 44) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((has & 8) != 0)
  {
LABEL_7:
    *(v6 + 6) = self->_incorrectPINCount;
    *(v6 + 44) |= 8u;
  }

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 44) |= 1u;
  }

  if (self->_sessionUUID)
  {
    v6 = v4;
    [v4 setSessionUUID:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v4 + 10) = self->_smoothedRSSI;
    *(v4 + 44) |= 0x10u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  *(v4 + 5) = self->_errorCode;
  *(v4 + 44) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  *(v4 + 4) = self->_durationMs;
  *(v4 + 44) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_9:
    *(v4 + 6) = self->_incorrectPINCount;
    *(v4 + 44) |= 8u;
  }

LABEL_10:
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
  if ((has & 0x10) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_9:
    PBDataWriterWriteUint32Field();
  }

LABEL_10:
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
        goto LABEL_94;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v53 = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v53 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v53 & 0x7F) << v6;
        if ((v53 & 0x80) == 0)
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
        goto LABEL_94;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) > 3)
      {
        break;
      }

      if (v14 == 1)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *&self->_has |= 1u;
        while (1)
        {
          v54 = 0;
          v31 = [a3 position] + 1;
          if (v31 >= [a3 position] && (v32 = objc_msgSend(a3, "position") + 1, v32 <= objc_msgSend(a3, "length")))
          {
            v33 = [a3 data];
            [v33 getBytes:&v54 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v30 |= (v54 & 0x7F) << v28;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            v34 = 0;
            goto LABEL_75;
          }
        }

        if ([a3 hasError])
        {
          v34 = 0;
        }

        else
        {
          v34 = v30;
        }

LABEL_75:
        self->_timestamp = v34;
        goto LABEL_93;
      }

      if (v14 != 2)
      {
        if (v14 != 3)
        {
          goto LABEL_60;
        }

        v15 = 0;
        v16 = 0;
        v17 = 0;
        *&self->_has |= 0x10u;
        while (1)
        {
          v56 = 0;
          v18 = [a3 position] + 1;
          if (v18 >= [a3 position] && (v19 = objc_msgSend(a3, "position") + 1, v19 <= objc_msgSend(a3, "length")))
          {
            v20 = [a3 data];
            [v20 getBytes:&v56 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v17 |= (v56 & 0x7F) << v15;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_83;
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

LABEL_83:
        v50 = 40;
LABEL_92:
        *&self->PBCodable_opaque[v50] = v21;
        goto LABEL_93;
      }

      v42 = PBReaderReadString();
      sessionUUID = self->_sessionUUID;
      self->_sessionUUID = v42;

LABEL_93:
      v51 = [a3 position];
      if (v51 >= [a3 length])
      {
        goto LABEL_94;
      }
    }

    switch(v14)
    {
      case 4:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *&self->_has |= 4u;
        while (1)
        {
          v55 = 0;
          v38 = [a3 position] + 1;
          if (v38 >= [a3 position] && (v39 = objc_msgSend(a3, "position") + 1, v39 <= objc_msgSend(a3, "length")))
          {
            v40 = [a3 data];
            [v40 getBytes:&v55 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v37 |= (v55 & 0x7F) << v35;
          if ((v55 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v12 = v36++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_79;
          }
        }

        if ([a3 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v37;
        }

LABEL_79:
        v50 = 20;
        break;
      case 5:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *&self->_has |= 2u;
        while (1)
        {
          v58 = 0;
          v47 = [a3 position] + 1;
          if (v47 >= [a3 position] && (v48 = objc_msgSend(a3, "position") + 1, v48 <= objc_msgSend(a3, "length")))
          {
            v49 = [a3 data];
            [v49 getBytes:&v58 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v46 |= (v58 & 0x7F) << v44;
          if ((v58 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v12 = v45++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_91;
          }
        }

        if ([a3 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v46;
        }

LABEL_91:
        v50 = 16;
        break;
      case 6:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *&self->_has |= 8u;
        while (1)
        {
          v57 = 0;
          v25 = [a3 position] + 1;
          if (v25 >= [a3 position] && (v26 = objc_msgSend(a3, "position") + 1, v26 <= objc_msgSend(a3, "length")))
          {
            v27 = [a3 data];
            [v27 getBytes:&v57 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v24 |= (v57 & 0x7F) << v22;
          if ((v57 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v12 = v23++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_87;
          }
        }

        if ([a3 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v24;
        }

LABEL_87:
        v50 = 24;
        break;
      default:
LABEL_60:
        v41 = PBReaderSkipValueWithTag();
        if (!v41)
        {
          return v41;
        }

        goto LABEL_93;
    }

    goto LABEL_92;
  }

LABEL_94:
  LOBYTE(v41) = [a3 hasError] ^ 1;
  return v41;
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
  if ((has & 0x10) != 0)
  {
    v9 = [NSNumber numberWithInt:self->_smoothedRSSI];
    [v3 setObject:v9 forKey:@"smoothedRSSI"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  v10 = [NSNumber numberWithInt:self->_errorCode];
  [v3 setObject:v10 forKey:@"errorCode"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  v11 = [NSNumber numberWithUnsignedInt:self->_durationMs];
  [v3 setObject:v11 forKey:@"durationMs"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_9:
    v7 = [NSNumber numberWithUnsignedInt:self->_incorrectPINCount];
    [v3 setObject:v7 forKey:@"incorrectPINCount"];
  }

LABEL_10:

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AWDSharingProximityiOSSetupResult;
  v3 = [(AWDSharingProximityiOSSetupResult *)&v7 description];
  v4 = [(AWDSharingProximityiOSSetupResult *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)setHasIncorrectPINCount:(BOOL)a3
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

- (void)setHasDurationMs:(BOOL)a3
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

- (void)setHasSmoothedRSSI:(BOOL)a3
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

@end