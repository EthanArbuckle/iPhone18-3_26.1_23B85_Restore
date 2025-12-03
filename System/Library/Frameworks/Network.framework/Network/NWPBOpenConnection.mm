@interface NWPBOpenConnection
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation NWPBOpenConnection

- (unint64_t)hash
{
  v3 = [(NWPBEndpoint *)self->_endpoint hash];
  v4 = [(NWPBParameters *)self->_parameters hash]^ v3;
  return v4 ^ [(NSString *)self->_clientUUID hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((endpoint = self->_endpoint, !(endpoint | equalCopy[2])) || -[NWPBEndpoint isEqual:](endpoint, "isEqual:")) && ((parameters = self->_parameters, !(parameters | equalCopy[3])) || -[NWPBParameters isEqual:](parameters, "isEqual:")))
  {
    clientUUID = self->_clientUUID;
    if (clientUUID | equalCopy[1])
    {
      v8 = [(NSString *)clientUUID isEqual:?];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NWPBEndpoint *)self->_endpoint copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NWPBParameters *)self->_parameters copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_clientUUID copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_endpoint)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_parameters)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_clientUUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    while (1)
    {
      if ([from hasError])
      {
        return [from hasError] ^ 1;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v19) = 0;
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
          goto LABEL_19;
        }
      }

      v16 = [from hasError] ? 0 : v11;
LABEL_19:
      if (([from hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        return [from hasError] ^ 1;
      }

      v17 = v16 >> 3;
      if ((v16 >> 3) == 3)
      {
        break;
      }

      if (v17 == 2)
      {
        clientUUID = objc_alloc_init(NWPBParameters);
        objc_storeStrong(&self->_parameters, clientUUID);
        v19 = 0;
        v20 = 0;
        if (!PBReaderPlaceMark() || !NWPBParametersReadFrom(clientUUID, from))
        {
LABEL_33:

          return 0;
        }

LABEL_29:
        PBReaderRecallMark();
LABEL_4:

        goto LABEL_5;
      }

      if (v17 == 1)
      {
        clientUUID = objc_alloc_init(NWPBEndpoint);
        objc_storeStrong(&self->_endpoint, clientUUID);
        v19 = 0;
        v20 = 0;
        if (!PBReaderPlaceMark() || !NWPBEndpointReadFrom(clientUUID, from))
        {
          goto LABEL_33;
        }

        goto LABEL_29;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_5:
      position2 = [from position];
      if (position2 >= [from length])
      {
        return [from hasError] ^ 1;
      }
    }

    v6 = PBReaderReadString();
    clientUUID = self->_clientUUID;
    self->_clientUUID = v6;
    goto LABEL_4;
  }

  return [from hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  endpoint = self->_endpoint;
  if (endpoint)
  {
    dictionaryRepresentation = [(NWPBEndpoint *)endpoint dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"endpoint"];
  }

  parameters = self->_parameters;
  if (parameters)
  {
    dictionaryRepresentation2 = [(NWPBParameters *)parameters dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"parameters"];
  }

  clientUUID = self->_clientUUID;
  if (clientUUID)
  {
    [dictionary setObject:clientUUID forKey:@"clientUUID"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NWPBOpenConnection;
  v4 = [(NWPBOpenConnection *)&v8 description];
  dictionaryRepresentation = [(NWPBOpenConnection *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end