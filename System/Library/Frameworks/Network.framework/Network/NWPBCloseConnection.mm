@interface NWPBCloseConnection
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation NWPBCloseConnection

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    clientUUID = self->_clientUUID;
    if (clientUUID | v4[1])
    {
      v6 = [(NSString *)clientUUID isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_clientUUID copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)writeTo:(id)a3
{
  if (self->_clientUUID)
  {
    PBDataWriterWriteStringField();
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
        break;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        v19 = 0;
        v12 = [a3 position] + 1;
        if (v12 >= [a3 position] && (v13 = objc_msgSend(a3, "position") + 1, v13 <= objc_msgSend(a3, "length")))
        {
          v14 = [a3 data];
          [v14 getBytes:&v19 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v11 |= (v19 & 0x7F) << v9;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        if (v10++ >= 9)
        {
          v16 = 0;
          goto LABEL_18;
        }
      }

      v16 = [a3 hasError] ? 0 : v11;
LABEL_18:
      if (([a3 hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        break;
      }

      if ((v16 >> 3) == 1)
      {
        v6 = PBReaderReadString();
        clientUUID = self->_clientUUID;
        self->_clientUUID = v6;
      }

      else
      {
        v17 = PBReaderSkipValueWithTag();
        if (!v17)
        {
          return v17;
        }
      }

      v8 = [a3 position];
    }

    while (v8 < [a3 length]);
  }

  LOBYTE(v17) = [a3 hasError] ^ 1;
  return v17;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  clientUUID = self->_clientUUID;
  if (clientUUID)
  {
    v5 = v3;
    [v3 setObject:clientUUID forKey:@"clientUUID"];
    v3 = v5;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NWPBCloseConnection;
  v4 = [(NWPBCloseConnection *)&v8 description];
  v5 = [(NWPBCloseConnection *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end