@interface ModelKeyServerAPIFetchKeyRequest
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ModelKeyServerAPIFetchKeyRequest

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = ModelKeyServerAPIFetchKeyRequest;
  v3 = [(ModelKeyServerAPIFetchKeyRequest *)&v7 description];
  v4 = [(ModelKeyServerAPIFetchKeyRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_keyId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_teamId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_signedKeyRequest)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    rawRequest = self->_rawRequest;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_keyId)
  {
    [v4 setKeyId:?];
    v4 = v5;
  }

  if (self->_teamId)
  {
    [v5 setTeamId:?];
    v4 = v5;
  }

  if (self->_signedKeyRequest)
  {
    [v5 setSignedKeyRequest:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[32] = self->_rawRequest;
    v4[36] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_keyId copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_teamId copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_signedKeyRequest copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_rawRequest;
    *(v5 + 36) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  keyId = self->_keyId;
  if (keyId | *(v4 + 1))
  {
    if (![(NSString *)keyId isEqual:?])
    {
      goto LABEL_10;
    }
  }

  teamId = self->_teamId;
  if (teamId | *(v4 + 3))
  {
    if (![(NSString *)teamId isEqual:?])
    {
      goto LABEL_10;
    }
  }

  signedKeyRequest = self->_signedKeyRequest;
  if (signedKeyRequest | *(v4 + 2))
  {
    if (![(NSData *)signedKeyRequest isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v8 = (*(v4 + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0)
    {
LABEL_10:
      v8 = 0;
      goto LABEL_11;
    }

    if (self->_rawRequest)
    {
      if ((*(v4 + 32) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (*(v4 + 32))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 1))
  {
    [(ModelKeyServerAPIFetchKeyRequest *)self setKeyId:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(ModelKeyServerAPIFetchKeyRequest *)self setTeamId:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(ModelKeyServerAPIFetchKeyRequest *)self setSignedKeyRequest:?];
    v4 = v5;
  }

  if (v4[36])
  {
    self->_rawRequest = v4[32];
    *&self->_has |= 1u;
  }
}

@end