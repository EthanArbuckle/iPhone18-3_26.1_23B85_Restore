@interface TFGetImageUploadUrlsRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation TFGetImageUploadUrlsRequest

- (id)description
{
  v7.receiver = self;
  v7.super_class = TFGetImageUploadUrlsRequest;
  v3 = [(TFGetImageUploadUrlsRequest *)&v7 description];
  dictionaryRepresentation = [(TFGetImageUploadUrlsRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [NSNumber numberWithUnsignedLongLong:self->_dsid];
    [v3 setObject:v5 forKey:@"dsid"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_count];
    [v3 setObject:v6 forKey:@"count"];
  }

  contentType = self->_contentType;
  if (contentType)
  {
    [v3 setObject:contentType forKey:@"contentType"];
  }

  if (*&self->_has)
  {
    v8 = [NSNumber numberWithUnsignedLongLong:self->_desiredUrlTTLMillis];
    [v3 setObject:v8 forKey:@"desiredUrlTTLMillis"];
  }

  return v3;
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
        v41 = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v41 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v41 & 0x7F) << v6;
        if ((v41 & 0x80) == 0)
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
      if ((v13 >> 3) > 2)
      {
        if (v14 != 3)
        {
          if (v14 != 4)
          {
LABEL_40:
            v29 = PBReaderSkipValueWithTag();
            if (!v29)
            {
              return v29;
            }

            goto LABEL_65;
          }

          v22 = 0;
          v23 = 0;
          v24 = 0;
          *&self->_has |= 1u;
          while (1)
          {
            v42 = 0;
            v25 = [from position] + 1;
            if (v25 >= [from position] && (v26 = objc_msgSend(from, "position") + 1, v26 <= objc_msgSend(from, "length")))
            {
              data2 = [from data];
              [data2 getBytes:&v42 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v24 |= (v42 & 0x7F) << v22;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v12 = v23++ >= 9;
            if (v12)
            {
              v28 = 0;
              goto LABEL_59;
            }
          }

          if ([from hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v24;
          }

LABEL_59:
          v38 = 8;
          goto LABEL_64;
        }

        v36 = PBReaderReadString();
        contentType = self->_contentType;
        self->_contentType = v36;
      }

      else
      {
        if (v14 == 1)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *&self->_has |= 2u;
          while (1)
          {
            v43 = 0;
            v33 = [from position] + 1;
            if (v33 >= [from position] && (v34 = objc_msgSend(from, "position") + 1, v34 <= objc_msgSend(from, "length")))
            {
              data3 = [from data];
              [data3 getBytes:&v43 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v32 |= (v43 & 0x7F) << v30;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v12 = v31++ >= 9;
            if (v12)
            {
              v28 = 0;
              goto LABEL_63;
            }
          }

          if ([from hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v32;
          }

LABEL_63:
          v38 = 16;
LABEL_64:
          *&self->PBRequest_opaque[v38] = v28;
          goto LABEL_65;
        }

        if (v14 != 2)
        {
          goto LABEL_40;
        }

        v15 = 0;
        v16 = 0;
        v17 = 0;
        *&self->_has |= 4u;
        while (1)
        {
          v44 = 0;
          v18 = [from position] + 1;
          if (v18 >= [from position] && (v19 = objc_msgSend(from, "position") + 1, v19 <= objc_msgSend(from, "length")))
          {
            data4 = [from data];
            [data4 getBytes:&v44 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v17 |= (v44 & 0x7F) << v15;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_55;
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

LABEL_55:
        self->_count = v21;
      }

LABEL_65:
      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  LOBYTE(v29) = [from hasError] ^ 1;
  return v29;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_contentType)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5[2] = self->_dsid;
    *(v5 + 36) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 8) = self->_count;
    *(v5 + 36) |= 4u;
  }

  v8 = [(NSString *)self->_contentType copyWithZone:zone];
  v9 = v6[3];
  v6[3] = v8;

  if (*&self->_has)
  {
    v6[1] = self->_desiredUrlTTLMillis;
    *(v6 + 36) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = *(equalCopy + 36);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_dsid != *(equalCopy + 2))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0 || self->_count != *(equalCopy + 8))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 36) & 4) != 0)
  {
    goto LABEL_19;
  }

  contentType = self->_contentType;
  if (contentType | *(equalCopy + 3))
  {
    if (![(NSString *)contentType isEqual:?])
    {
LABEL_19:
      v8 = 0;
      goto LABEL_20;
    }

    has = self->_has;
    v6 = *(equalCopy + 36);
  }

  v8 = (v6 & 1) == 0;
  if (has)
  {
    if ((v6 & 1) == 0 || self->_desiredUrlTTLMillis != *(equalCopy + 1))
    {
      goto LABEL_19;
    }

    v8 = 1;
  }

LABEL_20:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761u * self->_dsid;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_count;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_contentType hash];
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_desiredUrlTTLMillis;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v6 ^ v5;
}

@end