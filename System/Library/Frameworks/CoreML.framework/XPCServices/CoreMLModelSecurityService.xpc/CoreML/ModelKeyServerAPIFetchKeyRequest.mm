@interface ModelKeyServerAPIFetchKeyRequest
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ModelKeyServerAPIFetchKeyRequest

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = ModelKeyServerAPIFetchKeyRequest;
  v3 = [(ModelKeyServerAPIFetchKeyRequest *)&v7 description];
  dictionaryRepresentation = [(ModelKeyServerAPIFetchKeyRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  keyId = self->_keyId;
  if (keyId)
  {
    [v3 setObject:keyId forKey:@"key_id"];
  }

  teamId = self->_teamId;
  if (teamId)
  {
    [v4 setObject:teamId forKey:@"team_id"];
  }

  signedKeyRequest = self->_signedKeyRequest;
  if (signedKeyRequest)
  {
    [v4 setObject:signedKeyRequest forKey:@"signed_key_request"];
  }

  if (*&self->_has)
  {
    v8 = [NSNumber numberWithBool:self->_rawRequest];
    [v4 setObject:v8 forKey:@"raw_request"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_keyId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_teamId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_signedKeyRequest)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    rawRequest = self->_rawRequest;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_keyId)
  {
    [toCopy setKeyId:?];
    toCopy = v5;
  }

  if (self->_teamId)
  {
    [v5 setTeamId:?];
    toCopy = v5;
  }

  if (self->_signedKeyRequest)
  {
    [v5 setSignedKeyRequest:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[32] = self->_rawRequest;
    toCopy[36] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_keyId copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_teamId copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_signedKeyRequest copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_rawRequest;
    *(v5 + 36) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  keyId = self->_keyId;
  if (keyId | *(equalCopy + 1))
  {
    if (![(NSString *)keyId isEqual:?])
    {
      goto LABEL_10;
    }
  }

  teamId = self->_teamId;
  if (teamId | *(equalCopy + 3))
  {
    if (![(NSString *)teamId isEqual:?])
    {
      goto LABEL_10;
    }
  }

  signedKeyRequest = self->_signedKeyRequest;
  if (signedKeyRequest | *(equalCopy + 2))
  {
    if (![(NSData *)signedKeyRequest isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v8 = (*(equalCopy + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0)
    {
LABEL_10:
      v8 = 0;
      goto LABEL_11;
    }

    if (self->_rawRequest)
    {
      if ((*(equalCopy + 32) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (*(equalCopy + 32))
    {
      goto LABEL_10;
    }

    v8 = 1;
  }

LABEL_11:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_keyId hash];
  v4 = [(NSString *)self->_teamId hash];
  v5 = [(NSData *)self->_signedKeyRequest hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_rawRequest;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(ModelKeyServerAPIFetchKeyRequest *)self setKeyId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(ModelKeyServerAPIFetchKeyRequest *)self setTeamId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(ModelKeyServerAPIFetchKeyRequest *)self setSignedKeyRequest:?];
    fromCopy = v5;
  }

  if (fromCopy[36])
  {
    self->_rawRequest = fromCopy[32];
    *&self->_has |= 1u;
  }
}

@end