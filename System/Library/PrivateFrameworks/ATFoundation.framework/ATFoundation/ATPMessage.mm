@interface ATPMessage
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)formattedDescription;
- (int)StringAsMessageType:(id)a3;
- (int)messageType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAdditionalPayload:(BOOL)a3;
- (void)setHasMessageType:(BOOL)a3;
- (void)setHasSessionID:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATPMessage

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 84);
  if ((v6 & 2) != 0)
  {
    self->_messageType = *(v4 + 3);
    *&self->_has |= 2u;
    v6 = *(v4 + 84);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 84) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_messageID = *(v4 + 2);
  *&self->_has |= 1u;
  if ((*(v4 + 84) & 4) != 0)
  {
LABEL_4:
    self->_sessionID = *(v4 + 16);
    *&self->_has |= 4u;
  }

LABEL_5:
  v13 = v4;
  if (*(v4 + 2))
  {
    [(ATPMessage *)self setParameters:?];
    v5 = v13;
  }

  if (*(v5 + 3))
  {
    [(ATPMessage *)self setParamsSignature:?];
    v5 = v13;
  }

  if (*(v5 + 5))
  {
    [(ATPMessage *)self setPayloadSignature:?];
    v5 = v13;
  }

  request = self->_request;
  v8 = *(v5 + 6);
  if (request)
  {
    if (!v8)
    {
      goto LABEL_20;
    }

    [(ATPRequest *)request mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_20;
    }

    [(ATPMessage *)self setRequest:?];
  }

  v5 = v13;
LABEL_20:
  response = self->_response;
  v10 = *(v5 + 7);
  if (response)
  {
    if (!v10)
    {
      goto LABEL_26;
    }

    [(ATPResponse *)response mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_26;
    }

    [(ATPMessage *)self setResponse:?];
  }

  v5 = v13;
LABEL_26:
  if (*(v5 + 4))
  {
    [(ATPMessage *)self setPayload:?];
    v5 = v13;
  }

  if ((*(v5 + 84) & 8) != 0)
  {
    self->_additionalPayload = *(v5 + 80);
    *&self->_has |= 8u;
  }

  streamError = self->_streamError;
  v12 = *(v5 + 9);
  if (streamError)
  {
    if (v12)
    {
      [(ATPError *)streamError mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(ATPMessage *)self setStreamError:?];
  }

  MEMORY[0x2821F96F8]();
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v13 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v13 = 2654435761 * self->_messageType;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_messageID;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_sessionID;
    goto LABEL_8;
  }

LABEL_7:
  v4 = 0;
LABEL_8:
  v5 = [(NSData *)self->_parameters hash];
  v6 = [(NSData *)self->_paramsSignature hash];
  v7 = [(NSData *)self->_payloadSignature hash];
  v8 = [(ATPRequest *)self->_request hash];
  v9 = [(ATPResponse *)self->_response hash];
  v10 = [(NSData *)self->_payload hash];
  if ((*&self->_has & 8) != 0)
  {
    v11 = 2654435761 * self->_additionalPayload;
  }

  else
  {
    v11 = 0;
  }

  return v3 ^ v13 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(ATPError *)self->_streamError hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  v5 = *(v4 + 84);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 84) & 2) == 0 || self->_messageType != *(v4 + 3))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 84) & 2) != 0)
  {
    goto LABEL_34;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 84) & 1) == 0 || self->_messageID != *(v4 + 2))
    {
      goto LABEL_34;
    }
  }

  else if (*(v4 + 84))
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 84) & 4) == 0 || self->_sessionID != *(v4 + 16))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 84) & 4) != 0)
  {
    goto LABEL_34;
  }

  parameters = self->_parameters;
  if (parameters | *(v4 + 2) && ![(NSData *)parameters isEqual:?])
  {
    goto LABEL_34;
  }

  paramsSignature = self->_paramsSignature;
  if (paramsSignature | *(v4 + 3))
  {
    if (![(NSData *)paramsSignature isEqual:?])
    {
      goto LABEL_34;
    }
  }

  payloadSignature = self->_payloadSignature;
  if (payloadSignature | *(v4 + 5))
  {
    if (![(NSData *)payloadSignature isEqual:?])
    {
      goto LABEL_34;
    }
  }

  request = self->_request;
  if (request | *(v4 + 6))
  {
    if (![(ATPRequest *)request isEqual:?])
    {
      goto LABEL_34;
    }
  }

  response = self->_response;
  if (response | *(v4 + 7))
  {
    if (![(ATPResponse *)response isEqual:?])
    {
      goto LABEL_34;
    }
  }

  payload = self->_payload;
  if (payload | *(v4 + 4))
  {
    if (![(NSData *)payload isEqual:?])
    {
      goto LABEL_34;
    }
  }

  v12 = *(v4 + 84);
  if ((*&self->_has & 8) == 0)
  {
    if ((*(v4 + 84) & 8) == 0)
    {
      goto LABEL_31;
    }

LABEL_34:
    v14 = 0;
    goto LABEL_35;
  }

  if ((*(v4 + 84) & 8) == 0)
  {
    goto LABEL_34;
  }

  v16 = *(v4 + 80);
  if (self->_additionalPayload)
  {
    if ((*(v4 + 80) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (*(v4 + 80))
  {
    goto LABEL_34;
  }

LABEL_31:
  streamError = self->_streamError;
  if (streamError | *(v4 + 9))
  {
    v14 = [(ATPError *)streamError isEqual:?];
  }

  else
  {
    v14 = 1;
  }

LABEL_35:

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 12) = self->_messageType;
    *(v5 + 84) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 8) = self->_messageID;
  *(v5 + 84) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v5 + 64) = self->_sessionID;
    *(v5 + 84) |= 4u;
  }

LABEL_5:
  v8 = [(NSData *)self->_parameters copyWithZone:a3];
  v9 = *(v6 + 16);
  *(v6 + 16) = v8;

  v10 = [(NSData *)self->_paramsSignature copyWithZone:a3];
  v11 = *(v6 + 24);
  *(v6 + 24) = v10;

  v12 = [(NSData *)self->_payloadSignature copyWithZone:a3];
  v13 = *(v6 + 40);
  *(v6 + 40) = v12;

  v14 = [(ATPRequest *)self->_request copyWithZone:a3];
  v15 = *(v6 + 48);
  *(v6 + 48) = v14;

  v16 = [(ATPResponse *)self->_response copyWithZone:a3];
  v17 = *(v6 + 56);
  *(v6 + 56) = v16;

  v18 = [(NSData *)self->_payload copyWithZone:a3];
  v19 = *(v6 + 32);
  *(v6 + 32) = v18;

  if ((*&self->_has & 8) != 0)
  {
    *(v6 + 80) = self->_additionalPayload;
    *(v6 + 84) |= 8u;
  }

  v20 = [(ATPError *)self->_streamError copyWithZone:a3];
  v21 = *(v6 + 72);
  *(v6 + 72) = v20;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[3] = self->_messageType;
    *(v4 + 84) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v4[2] = self->_messageID;
  *(v4 + 84) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4[16] = self->_sessionID;
    *(v4 + 84) |= 4u;
  }

LABEL_5:
  v6 = v4;
  if (self->_parameters)
  {
    [v4 setParameters:?];
    v4 = v6;
  }

  if (self->_paramsSignature)
  {
    [v6 setParamsSignature:?];
    v4 = v6;
  }

  if (self->_payloadSignature)
  {
    [v6 setPayloadSignature:?];
    v4 = v6;
  }

  if (self->_request)
  {
    [v6 setRequest:?];
    v4 = v6;
  }

  if (self->_response)
  {
    [v6 setResponse:?];
    v4 = v6;
  }

  if (self->_payload)
  {
    [v6 setPayload:?];
    v4 = v6;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v4 + 80) = self->_additionalPayload;
    *(v4 + 84) |= 8u;
  }

  if (self->_streamError)
  {
    [v6 setStreamError:?];
    v4 = v6;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v10 = v4;
  if ((has & 2) != 0)
  {
    messageType = self->_messageType;
    PBDataWriterWriteInt32Field();
    v4 = v10;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  messageID = self->_messageID;
  PBDataWriterWriteUint32Field();
  v4 = v10;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    sessionID = self->_sessionID;
    PBDataWriterWriteUint32Field();
    v4 = v10;
  }

LABEL_5:
  if (self->_parameters)
  {
    PBDataWriterWriteDataField();
    v4 = v10;
  }

  if (self->_paramsSignature)
  {
    PBDataWriterWriteDataField();
    v4 = v10;
  }

  if (self->_payloadSignature)
  {
    PBDataWriterWriteDataField();
    v4 = v10;
  }

  if (self->_request)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }

  if (self->_response)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }

  if (self->_payload)
  {
    PBDataWriterWriteDataField();
    v4 = v10;
  }

  if ((*&self->_has & 8) != 0)
  {
    additionalPayload = self->_additionalPayload;
    PBDataWriterWriteBOOLField();
    v4 = v10;
  }

  if (self->_streamError)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
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
        LOBYTE(v48) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v48 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v48 & 0x7F) << v6;
        if ((v48 & 0x80) == 0)
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
      if ((v13 >> 3) <= 5)
      {
        if (v14 <= 2)
        {
          if (v14 == 1)
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            *&self->_has |= 2u;
            while (1)
            {
              LOBYTE(v48) = 0;
              v28 = [a3 position] + 1;
              if (v28 >= [a3 position] && (v29 = objc_msgSend(a3, "position") + 1, v29 <= objc_msgSend(a3, "length")))
              {
                v30 = [a3 data];
                [v30 getBytes:&v48 range:{objc_msgSend(a3, "position"), 1}];

                [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
              }

              else
              {
                [a3 _setError];
              }

              v27 |= (v48 & 0x7F) << v25;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v12 = v26++ >= 9;
              if (v12)
              {
                v24 = 0;
                goto LABEL_86;
              }
            }

            if ([a3 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v27;
            }

LABEL_86:
            v45 = 12;
            goto LABEL_97;
          }

          if (v14 == 2)
          {
            v18 = 0;
            v19 = 0;
            v20 = 0;
            *&self->_has |= 1u;
            while (1)
            {
              LOBYTE(v48) = 0;
              v21 = [a3 position] + 1;
              if (v21 >= [a3 position] && (v22 = objc_msgSend(a3, "position") + 1, v22 <= objc_msgSend(a3, "length")))
              {
                v23 = [a3 data];
                [v23 getBytes:&v48 range:{objc_msgSend(a3, "position"), 1}];

                [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
              }

              else
              {
                [a3 _setError];
              }

              v20 |= (v48 & 0x7F) << v18;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v12 = v19++ >= 9;
              if (v12)
              {
                v24 = 0;
                goto LABEL_90;
              }
            }

            if ([a3 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v20;
            }

LABEL_90:
            v45 = 8;
            goto LABEL_97;
          }
        }

        else
        {
          switch(v14)
          {
            case 3:
              v38 = 0;
              v39 = 0;
              v40 = 0;
              *&self->_has |= 4u;
              while (1)
              {
                LOBYTE(v48) = 0;
                v41 = [a3 position] + 1;
                if (v41 >= [a3 position] && (v42 = objc_msgSend(a3, "position") + 1, v42 <= objc_msgSend(a3, "length")))
                {
                  v43 = [a3 data];
                  [v43 getBytes:&v48 range:{objc_msgSend(a3, "position"), 1}];

                  [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
                }

                else
                {
                  [a3 _setError];
                }

                v40 |= (v48 & 0x7F) << v38;
                if ((v48 & 0x80) == 0)
                {
                  break;
                }

                v38 += 7;
                v12 = v39++ >= 9;
                if (v12)
                {
                  v24 = 0;
                  goto LABEL_96;
                }
              }

              if ([a3 hasError])
              {
                v24 = 0;
              }

              else
              {
                v24 = v40;
              }

LABEL_96:
              v45 = 64;
LABEL_97:
              *(&self->super.super.isa + v45) = v24;
              goto LABEL_98;
            case 4:
              v16 = PBReaderReadData();
              v17 = 16;
              goto LABEL_80;
            case 5:
              v16 = PBReaderReadData();
              v17 = 24;
LABEL_80:
              v44 = *(&self->super.super.isa + v17);
              *(&self->super.super.isa + v17) = v16;

              goto LABEL_98;
          }
        }
      }

      else if (v14 > 29)
      {
        switch(v14)
        {
          case 0x1E:
            v16 = PBReaderReadData();
            v17 = 32;
            goto LABEL_80;
          case 0x1F:
            v31 = 0;
            v32 = 0;
            v33 = 0;
            *&self->_has |= 8u;
            while (1)
            {
              LOBYTE(v48) = 0;
              v34 = [a3 position] + 1;
              if (v34 >= [a3 position] && (v35 = objc_msgSend(a3, "position") + 1, v35 <= objc_msgSend(a3, "length")))
              {
                v36 = [a3 data];
                [v36 getBytes:&v48 range:{objc_msgSend(a3, "position"), 1}];

                [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
              }

              else
              {
                [a3 _setError];
              }

              v33 |= (v48 & 0x7F) << v31;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v12 = v32++ >= 9;
              if (v12)
              {
                LOBYTE(v37) = 0;
                goto LABEL_92;
              }
            }

            v37 = (v33 != 0) & ~[a3 hasError];
LABEL_92:
            self->_additionalPayload = v37;
            goto LABEL_98;
          case 0x20:
            v15 = objc_alloc_init(ATPError);
            objc_storeStrong(&self->_streamError, v15);
            v48 = 0;
            v49 = 0;
            if (!PBReaderPlaceMark() || !ATPErrorReadFrom(v15, a3))
            {
LABEL_100:

              return 0;
            }

            goto LABEL_59;
        }
      }

      else
      {
        switch(v14)
        {
          case 6:
            v16 = PBReaderReadData();
            v17 = 40;
            goto LABEL_80;
          case 0x14:
            v15 = objc_alloc_init(ATPRequest);
            objc_storeStrong(&self->_request, v15);
            v48 = 0;
            v49 = 0;
            if (!PBReaderPlaceMark() || !ATPRequestReadFrom(v15, a3))
            {
              goto LABEL_100;
            }

            goto LABEL_59;
          case 0x15:
            v15 = objc_alloc_init(ATPResponse);
            objc_storeStrong(&self->_response, v15);
            v48 = 0;
            v49 = 0;
            if (!PBReaderPlaceMark() || !ATPResponseReadFrom(v15, a3))
            {
              goto LABEL_100;
            }

LABEL_59:
            PBReaderRecallMark();

            goto LABEL_98;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_98:
      v46 = [a3 position];
    }

    while (v46 < [a3 length]);
  }

  return [a3 hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    messageType = self->_messageType;
    if (messageType >= 5)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_messageType];
    }

    else
    {
      v6 = off_2784E8D50[messageType];
    }

    [v3 setObject:v6 forKey:@"messageType"];

    has = self->_has;
  }

  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_messageID];
    [v3 setObject:v7 forKey:@"messageID"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_sessionID];
    [v3 setObject:v8 forKey:@"sessionID"];
  }

  parameters = self->_parameters;
  if (parameters)
  {
    [v3 setObject:parameters forKey:@"parameters"];
  }

  paramsSignature = self->_paramsSignature;
  if (paramsSignature)
  {
    [v3 setObject:paramsSignature forKey:@"paramsSignature"];
  }

  payloadSignature = self->_payloadSignature;
  if (payloadSignature)
  {
    [v3 setObject:payloadSignature forKey:@"payloadSignature"];
  }

  request = self->_request;
  if (request)
  {
    v13 = [(ATPRequest *)request dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"request"];
  }

  response = self->_response;
  if (response)
  {
    v15 = [(ATPResponse *)response dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"response"];
  }

  payload = self->_payload;
  if (payload)
  {
    [v3 setObject:payload forKey:@"payload"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_additionalPayload];
    [v3 setObject:v17 forKey:@"additionalPayload"];
  }

  streamError = self->_streamError;
  if (streamError)
  {
    v19 = [(ATPError *)streamError dictionaryRepresentation];
    [v3 setObject:v19 forKey:@"streamError"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATPMessage;
  v4 = [(ATPMessage *)&v8 description];
  v5 = [(ATPMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasAdditionalPayload:(BOOL)a3
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

- (void)setHasSessionID:(BOOL)a3
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

- (int)StringAsMessageType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Request"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Response"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ResponsePartial"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"RequestData"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ResponseData"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasMessageType:(BOOL)a3
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

- (int)messageType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_messageType;
  }

  else
  {
    return 0;
  }
}

- (id)formattedDescription
{
  messageType = self->_messageType;
  if ((messageType - 2) >= 3)
  {
    if (messageType == 1)
    {
      v10 = MEMORY[0x277CCACA8];
      messageID = self->_messageID;
      v12 = [(NSData *)self->_parameters length];
      v13 = [(NSData *)self->_payload length];
      v14 = !self->_additionalPayload;
      v15 = [(ATPResponse *)self->_response error];
      v4 = [v10 stringWithFormat:@"[ID=%d, %@, params=[%lu bytes], payload=[%lu bytes], EOF=%d, err=%@]", messageID, @"Response", v12, v13, v14, v15];
    }

    else if (messageType)
    {
      v4 = 0;
    }

    else
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = self->_messageID;
      v7 = [(ATPRequest *)self->_request command];
      v8 = self->_messageType;
      if (v8 > 4)
      {
        v9 = @"Unknown";
      }

      else
      {
        v9 = off_2784E9100[v8];
      }

      v16 = [(ATPRequest *)self->_request dataClass];
      v4 = [v5 stringWithFormat:@"[ID=%d, %@ %@, %@, params=[%lu bytes], payload=[%lu bytes], EOF=%d]", v6, v7, v9, v16, -[NSData length](self->_parameters, "length"), -[NSData length](self->_payload, "length"), !self->_additionalPayload];
    }
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[ID=%d, %@, params=[%lu bytes], payload=[%lu bytes], EOF=%d]", self->_messageID, off_2784E9128[messageType - 2], -[NSData length](self->_parameters, "length"), -[NSData length](self->_payload, "length"), !self->_additionalPayload];
  }

  return v4;
}

@end