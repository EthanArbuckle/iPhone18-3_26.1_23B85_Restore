@interface TFUploadFeedbackRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation TFUploadFeedbackRequest

- (id)description
{
  v7.receiver = self;
  v7.super_class = TFUploadFeedbackRequest;
  v3 = [(TFUploadFeedbackRequest *)&v7 description];
  v4 = [(TFUploadFeedbackRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [NSNumber numberWithUnsignedLongLong:self->_dsid];
    [v3 setObject:v4 forKey:@"dsid"];
  }

  feedback = self->_feedback;
  if (feedback)
  {
    v6 = [(TFFeedback *)feedback dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"feedback"];
  }

  application = self->_application;
  if (application)
  {
    v8 = [(TFApplication *)application dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"application"];
  }

  device = self->_device;
  if (device)
  {
    v10 = [(TFDevice *)device dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"device"];
  }

  appleWatch = self->_appleWatch;
  if (appleWatch)
  {
    v12 = [(TFAppleWatch *)appleWatch dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"appleWatch"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v14 = [NSNumber numberWithUnsignedLongLong:self->_posixTimestampMillis];
    [v3 setObject:v14 forKey:@"posixTimestampMillis"];

    has = self->_has;
  }

  if (has)
  {
    v15 = [NSNumber numberWithUnsignedLongLong:self->_desiredTTLMillis];
    [v3 setObject:v15 forKey:@"desiredTTLMillis"];
  }

  return v3;
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
        LOBYTE(v38) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v38 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v38 & 0x7F) << v6;
        if ((v38 & 0x80) == 0)
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
        return [a3 hasError] ^ 1;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) <= 3)
      {
        switch(v14)
        {
          case 1:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *&self->_has |= 2u;
            while (1)
            {
              LOBYTE(v38) = 0;
              v26 = [a3 position] + 1;
              if (v26 >= [a3 position] && (v27 = objc_msgSend(a3, "position") + 1, v27 <= objc_msgSend(a3, "length")))
              {
                v28 = [a3 data];
                [v28 getBytes:&v38 range:{objc_msgSend(a3, "position"), 1}];

                [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
              }

              else
              {
                [a3 _setError];
              }

              v25 |= (v38 & 0x7F) << v23;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v12 = v24++ >= 9;
              if (v12)
              {
                v22 = 0;
                goto LABEL_70;
              }
            }

            if ([a3 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v25;
            }

LABEL_70:
            v35 = 16;
            goto LABEL_79;
          case 2:
            v15 = objc_alloc_init(TFFeedback);
            objc_storeStrong(&self->_feedback, v15);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !sub_100231000(v15, a3))
            {
LABEL_82:

              return 0;
            }

            goto LABEL_66;
          case 3:
            v15 = objc_alloc_init(TFApplication);
            objc_storeStrong(&self->_application, v15);
            v38 = 0;
            v39 = 0;
            if (!PBReaderPlaceMark() || !sub_10040B6F8(v15, a3))
            {
              goto LABEL_82;
            }

            goto LABEL_66;
        }
      }

      else if (v14 > 5)
      {
        if (v14 == 6)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *&self->_has |= 4u;
          while (1)
          {
            LOBYTE(v38) = 0;
            v32 = [a3 position] + 1;
            if (v32 >= [a3 position] && (v33 = objc_msgSend(a3, "position") + 1, v33 <= objc_msgSend(a3, "length")))
            {
              v34 = [a3 data];
              [v34 getBytes:&v38 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
            }

            v31 |= (v38 & 0x7F) << v29;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v12 = v30++ >= 9;
            if (v12)
            {
              v22 = 0;
              goto LABEL_74;
            }
          }

          if ([a3 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v31;
          }

LABEL_74:
          v35 = 24;
          goto LABEL_79;
        }

        if (v14 == 7)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *&self->_has |= 1u;
          while (1)
          {
            LOBYTE(v38) = 0;
            v19 = [a3 position] + 1;
            if (v19 >= [a3 position] && (v20 = objc_msgSend(a3, "position") + 1, v20 <= objc_msgSend(a3, "length")))
            {
              v21 = [a3 data];
              [v21 getBytes:&v38 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
            }

            v18 |= (v38 & 0x7F) << v16;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v12 = v17++ >= 9;
            if (v12)
            {
              v22 = 0;
              goto LABEL_78;
            }
          }

          if ([a3 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_78:
          v35 = 8;
LABEL_79:
          *&self->PBRequest_opaque[v35] = v22;
          goto LABEL_80;
        }
      }

      else
      {
        if (v14 == 4)
        {
          v15 = objc_alloc_init(TFDevice);
          objc_storeStrong(&self->_device, v15);
          v38 = 0;
          v39 = 0;
          if (!PBReaderPlaceMark() || !sub_10038B93C(v15, a3))
          {
            goto LABEL_82;
          }

          goto LABEL_66;
        }

        if (v14 == 5)
        {
          v15 = objc_alloc_init(TFAppleWatch);
          objc_storeStrong(&self->_appleWatch, v15);
          v38 = 0;
          v39 = 0;
          if (!PBReaderPlaceMark() || !sub_1003507EC(v15, a3))
          {
            goto LABEL_82;
          }

LABEL_66:
          PBReaderRecallMark();

          goto LABEL_80;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_80:
      v36 = [a3 position];
    }

    while (v36 < [a3 length]);
  }

  return [a3 hasError] ^ 1;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_feedback)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_application)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_device)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_appleWatch)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    v5[2] = self->_dsid;
    *(v5 + 64) |= 2u;
  }

  v7 = [(TFFeedback *)self->_feedback copyWithZone:a3];
  v8 = v6[7];
  v6[7] = v7;

  v9 = [(TFApplication *)self->_application copyWithZone:a3];
  v10 = v6[5];
  v6[5] = v9;

  v11 = [(TFDevice *)self->_device copyWithZone:a3];
  v12 = v6[6];
  v6[6] = v11;

  v13 = [(TFAppleWatch *)self->_appleWatch copyWithZone:a3];
  v14 = v6[4];
  v6[4] = v13;

  has = self->_has;
  if ((has & 4) != 0)
  {
    v6[3] = self->_posixTimestampMillis;
    *(v6 + 64) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    v6[1] = self->_desiredTTLMillis;
    *(v6 + 64) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 64) & 2) == 0 || self->_dsid != *(v4 + 2))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 64) & 2) != 0)
  {
LABEL_24:
    v9 = 0;
    goto LABEL_25;
  }

  feedback = self->_feedback;
  if (feedback | *(v4 + 7) && ![(TFFeedback *)feedback isEqual:?])
  {
    goto LABEL_24;
  }

  application = self->_application;
  if (application | *(v4 + 5))
  {
    if (![(TFApplication *)application isEqual:?])
    {
      goto LABEL_24;
    }
  }

  device = self->_device;
  if (device | *(v4 + 6))
  {
    if (![(TFDevice *)device isEqual:?])
    {
      goto LABEL_24;
    }
  }

  appleWatch = self->_appleWatch;
  if (appleWatch | *(v4 + 4))
  {
    if (![(TFAppleWatch *)appleWatch isEqual:?])
    {
      goto LABEL_24;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 64) & 4) == 0 || self->_posixTimestampMillis != *(v4 + 3))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 64) & 4) != 0)
  {
    goto LABEL_24;
  }

  v9 = (*(v4 + 64) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_desiredTTLMillis != *(v4 + 1))
    {
      goto LABEL_24;
    }

    v9 = 1;
  }

LABEL_25:

  return v9;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761u * self->_dsid;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(TFFeedback *)self->_feedback hash];
  v5 = [(TFApplication *)self->_application hash];
  v6 = [(TFDevice *)self->_device hash];
  v7 = [(TFAppleWatch *)self->_appleWatch hash];
  if ((*&self->_has & 4) != 0)
  {
    v8 = 2654435761u * self->_posixTimestampMillis;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_8:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

  v8 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v9 = 2654435761u * self->_desiredTTLMillis;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

@end