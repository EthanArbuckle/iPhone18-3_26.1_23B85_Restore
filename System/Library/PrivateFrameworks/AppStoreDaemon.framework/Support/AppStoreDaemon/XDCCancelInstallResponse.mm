@interface XDCCancelInstallResponse
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation XDCCancelInstallResponse

- (id)description
{
  v7.receiver = self;
  v7.super_class = XDCCancelInstallResponse;
  v3 = [(XDCCancelInstallResponse *)&v7 description];
  v4 = [(XDCCancelInstallResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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
        v28 = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v28 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
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
            v20 = [a3 position] + 1;
            if (v20 >= [a3 position] && (v21 = objc_msgSend(a3, "position") + 1, v21 <= objc_msgSend(a3, "length")))
            {
              v22 = [a3 data];
              [v22 getBytes:&v29 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
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

          if ([a3 hasError])
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
      v26 = [a3 position];
    }

    while (v26 < [a3 length]);
  }

  LOBYTE(v25) = [a3 hasError] ^ 1;
  return v25;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v5;
  }

  if (self->_errorDescription)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_errorDomain copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  if (*&self->_has)
  {
    *(v5 + 2) = self->_errorCode;
    *(v5 + 32) |= 1u;
  }

  v8 = [(NSString *)self->_errorDescription copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  errorDomain = self->_errorDomain;
  if (errorDomain | *(v4 + 3))
  {
    if (![(NSString *)errorDomain isEqual:?])
    {
      goto LABEL_11;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_errorCode != *(v4 + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  errorDescription = self->_errorDescription;
  if (errorDescription | *(v4 + 2))
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