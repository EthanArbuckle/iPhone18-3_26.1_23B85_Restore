@interface NWPBStartBrowse
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation NWPBStartBrowse

- (unint64_t)hash
{
  v3 = [(NWPBBrowseDescriptor *)self->_descriptor hash];
  v4 = [(NWPBParameters *)self->_parameters hash]^ v3;
  return v4 ^ [(NSString *)self->_clientUUID hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((descriptor = self->_descriptor, !(descriptor | v4[2])) || -[NWPBBrowseDescriptor isEqual:](descriptor, "isEqual:")) && ((parameters = self->_parameters, !(parameters | v4[3])) || -[NWPBParameters isEqual:](parameters, "isEqual:")))
  {
    clientUUID = self->_clientUUID;
    if (clientUUID | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NWPBBrowseDescriptor *)self->_descriptor copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NWPBParameters *)self->_parameters copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_clientUUID copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_descriptor)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_parameters)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_clientUUID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
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

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v19) = 0;
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
          goto LABEL_19;
        }
      }

      v16 = [a3 hasError] ? 0 : v11;
LABEL_19:
      if (([a3 hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        return [a3 hasError] ^ 1;
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
        if (!PBReaderPlaceMark() || !NWPBParametersReadFrom(clientUUID, a3))
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
        clientUUID = objc_alloc_init(NWPBBrowseDescriptor);
        objc_storeStrong(&self->_descriptor, clientUUID);
        v19 = 0;
        v20 = 0;
        if (!PBReaderPlaceMark() || !NWPBBrowseDescriptorReadFrom(clientUUID, a3))
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
      v8 = [a3 position];
      if (v8 >= [a3 length])
      {
        return [a3 hasError] ^ 1;
      }
    }

    v6 = PBReaderReadString();
    clientUUID = self->_clientUUID;
    self->_clientUUID = v6;
    goto LABEL_4;
  }

  return [a3 hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  descriptor = self->_descriptor;
  if (descriptor)
  {
    v5 = [(NWPBBrowseDescriptor *)descriptor dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"descriptor"];
  }

  parameters = self->_parameters;
  if (parameters)
  {
    v7 = [(NWPBParameters *)parameters dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"parameters"];
  }

  clientUUID = self->_clientUUID;
  if (clientUUID)
  {
    [v3 setObject:clientUUID forKey:@"clientUUID"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NWPBStartBrowse;
  v4 = [(NWPBStartBrowse *)&v8 description];
  v5 = [(NWPBStartBrowse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end