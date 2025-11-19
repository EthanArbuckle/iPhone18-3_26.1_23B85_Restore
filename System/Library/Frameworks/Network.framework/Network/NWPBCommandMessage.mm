@interface NWPBCommandMessage
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation NWPBCommandMessage

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_command;
  }

  else
  {
    v2 = 0;
  }

  return [(NSData *)self->_messageData hash]^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_command != *(v4 + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  messageData = self->_messageData;
  if (messageData | *(v4 + 2))
  {
    v6 = [(NSData *)messageData isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_10:

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_command;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSData *)self->_messageData copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v5;
  }

  if (self->_messageData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
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
        v26 = 0;
        v12 = [a3 position] + 1;
        if (v12 >= [a3 position] && (v13 = objc_msgSend(a3, "position") + 1, v13 <= objc_msgSend(a3, "length")))
        {
          v14 = [a3 data];
          [v14 getBytes:&v26 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v11 |= (v26 & 0x7F) << v9;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v15 = v10++ >= 9;
        if (v15)
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

      if ((v16 >> 3) == 2)
      {
        v6 = PBReaderReadData();
        messageData = self->_messageData;
        self->_messageData = v6;
      }

      else if ((v16 >> 3) == 1)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *&self->_has |= 1u;
        while (1)
        {
          v27 = 0;
          v20 = [a3 position] + 1;
          if (v20 >= [a3 position] && (v21 = objc_msgSend(a3, "position") + 1, v21 <= objc_msgSend(a3, "length")))
          {
            v22 = [a3 data];
            [v22 getBytes:&v27 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v19 |= (v27 & 0x7F) << v17;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v15 = v18++ >= 9;
          if (v15)
          {
            v23 = 0;
            goto LABEL_36;
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

LABEL_36:
        self->_command = v23;
      }

      else
      {
        v24 = PBReaderSkipValueWithTag();
        if (!v24)
        {
          return v24;
        }
      }

      v8 = [a3 position];
    }

    while (v8 < [a3 length]);
  }

  LOBYTE(v24) = [a3 hasError] ^ 1;
  return v24;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    command = self->_command;
    if (command >= 8)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_command];
    }

    else
    {
      v5 = off_1E6A35A88[command];
    }

    [v3 setObject:v5 forKey:@"command"];
  }

  messageData = self->_messageData;
  if (messageData)
  {
    [v3 setObject:messageData forKey:@"messageData"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NWPBCommandMessage;
  v4 = [(NWPBCommandMessage *)&v8 description];
  v5 = [(NWPBCommandMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end