@interface XDCCancelInstallResponse
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation XDCCancelInstallResponse

- (id)description
{
  v7.receiver = self;
  v7.super_class = XDCCancelInstallResponse;
  v3 = [(XDCCancelInstallResponse *)&v7 description];
  dictionaryRepresentation = [(XDCCancelInstallResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  errorDomain = self->_errorDomain;
  if (errorDomain)
  {
    [v3 setObject:errorDomain forKey:@"errorDomain"];
  }

  if (*&self->_has)
  {
    v6 = [NSNumber numberWithInt:self->_errorCode];
    [v4 setObject:v6 forKey:@"errorCode"];
  }

  errorDescription = self->_errorDescription;
  if (errorDescription)
  {
    [v4 setObject:errorDescription forKey:@"errorDescription"];
  }

  return v4;
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
        v28 = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v28 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v28 & 0x7F) << v6;
        if ((v28 & 0x80) == 0)
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
      if ((v13 >> 3) == 3)
      {
        v15 = PBReaderReadString();
        v16 = 16;
      }

      else
      {
        if (v14 == 2)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *&self->_has |= 1u;
          while (1)
          {
            v29 = 0;
            v20 = [from position] + 1;
            if (v20 >= [from position] && (v21 = objc_msgSend(from, "position") + 1, v21 <= objc_msgSend(from, "length")))
            {
              data2 = [from data];
              [data2 getBytes:&v29 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v19 |= (v29 & 0x7F) << v17;
            if ((v29 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v12 = v18++ >= 9;
            if (v12)
            {
              v23 = 0;
              goto LABEL_37;
            }
          }

          if ([from hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_37:
          self->_errorCode = v23;
          goto LABEL_38;
        }

        if (v14 != 1)
        {
          v25 = PBReaderSkipValueWithTag();
          if (!v25)
          {
            return v25;
          }

          goto LABEL_38;
        }

        v15 = PBReaderReadString();
        v16 = 24;
      }

      v24 = *&self->PBCodable_opaque[v16];
      *&self->PBCodable_opaque[v16] = v15;

LABEL_38:
      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  LOBYTE(v25) = [from hasError] ^ 1;
  return v25;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_errorDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_errorDomain copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  if (*&self->_has)
  {
    *(v5 + 2) = self->_errorCode;
    *(v5 + 32) |= 1u;
  }

  v8 = [(NSString *)self->_errorDescription copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  errorDomain = self->_errorDomain;
  if (errorDomain | *(equalCopy + 3))
  {
    if (![(NSString *)errorDomain isEqual:?])
    {
      goto LABEL_11;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_errorCode != *(equalCopy + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  errorDescription = self->_errorDescription;
  if (errorDescription | *(equalCopy + 2))
  {
    v7 = [(NSString *)errorDescription isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_12:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_errorDomain hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_errorCode;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSString *)self->_errorDescription hash];
}

@end