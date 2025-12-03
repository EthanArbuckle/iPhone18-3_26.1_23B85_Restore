@interface NWPBStopBrowse
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation NWPBStopBrowse

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    clientUUID = self->_clientUUID;
    if (clientUUID | equalCopy[1])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_clientUUID copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)writeTo:(id)to
{
  if (self->_clientUUID)
  {
    PBDataWriterWriteStringField();
  }
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

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        v19 = 0;
        v12 = [from position] + 1;
        if (v12 >= [from position] && (v13 = objc_msgSend(from, "position") + 1, v13 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v19 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
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

      v16 = [from hasError] ? 0 : v11;
LABEL_18:
      if (([from hasError] & 1) != 0 || (v16 & 7) == 4)
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

      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  LOBYTE(v17) = [from hasError] ^ 1;
  return v17;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  clientUUID = self->_clientUUID;
  if (clientUUID)
  {
    v5 = dictionary;
    [dictionary setObject:clientUUID forKey:@"clientUUID"];
    dictionary = v5;
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NWPBStopBrowse;
  v4 = [(NWPBStopBrowse *)&v8 description];
  dictionaryRepresentation = [(NWPBStopBrowse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end