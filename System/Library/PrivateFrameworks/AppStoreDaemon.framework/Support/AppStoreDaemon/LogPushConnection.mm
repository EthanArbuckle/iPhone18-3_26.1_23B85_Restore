@interface LogPushConnection
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)formattedText;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation LogPushConnection

- (id)formattedText
{
  v3 = +[NSMutableString string];
  v4 = v3;
  if (self)
  {
    v5 = self->_environment;
    [v4 appendFormat:@"Environment: %@\n", v5];

    token = self->_token;
  }

  else
  {
    [v3 appendFormat:@"Environment: %@\n", 0];
    token = 0;
  }

  v7 = token;
  [v4 appendFormat:@"      Token: %@\n", v7];

  if (self && [(NSMutableArray *)self->_messages count])
  {
    [v4 appendFormat:@"   Messages:\n"];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = self->_messages;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v4 appendFormat:@"         - %@\n", *(*(&v15 + 1) + 8 * i)];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  else
  {
    [v4 appendFormat:@"   Messages: <none>\n"];
  }

  v13 = [v4 copy];

  return v13;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = LogPushConnection;
  v3 = [(LogPushConnection *)&v7 description];
  v4 = [(LogPushConnection *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  environment = self->_environment;
  if (environment)
  {
    [v3 setObject:environment forKey:@"environment"];
  }

  token = self->_token;
  if (token)
  {
    [v4 setObject:token forKey:@"token"];
  }

  messages = self->_messages;
  if (messages)
  {
    [v4 setObject:messages forKey:@"messages"];
  }

  return v4;
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
        return [a3 hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v20 = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v20 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v20 & 0x7F) << v6;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        if (v7++ >= 9)
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
      if ((v13 >> 3) == 3)
      {
        break;
      }

      if (v14 == 2)
      {
        v15 = PBReaderReadString();
        v16 = 24;
LABEL_22:
        v17 = *&self->PBCodable_opaque[v16];
        *&self->PBCodable_opaque[v16] = v15;
LABEL_25:

        goto LABEL_27;
      }

      if (v14 == 1)
      {
        v15 = PBReaderReadString();
        v16 = 8;
        goto LABEL_22;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v18 = [a3 position];
      if (v18 >= [a3 length])
      {
        return [a3 hasError] ^ 1;
      }
    }

    v17 = PBReaderReadString();
    if (v17)
    {
      sub_100284E8C(self, v17);
    }

    goto LABEL_25;
  }

  return [a3 hasError] ^ 1;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_environment)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_token)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_messages;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_environment copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_token copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_messages;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * v14) copyWithZone:{a3, v17}];
        sub_100284E8C(v5, v15);

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((environment = self->_environment, !(environment | v4[1])) || -[NSString isEqual:](environment, "isEqual:")) && ((token = self->_token, !(token | v4[3])) || -[NSString isEqual:](token, "isEqual:")))
  {
    messages = self->_messages;
    if (messages | v4[2])
    {
      v8 = [(NSMutableArray *)messages isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_environment hash];
  v4 = [(NSString *)self->_token hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_messages hash];
}

@end