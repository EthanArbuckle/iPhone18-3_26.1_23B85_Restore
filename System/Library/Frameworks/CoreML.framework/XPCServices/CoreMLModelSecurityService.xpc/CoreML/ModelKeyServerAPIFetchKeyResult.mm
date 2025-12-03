@interface ModelKeyServerAPIFetchKeyResult
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsKey:(id)key;
- (int)key;
- (unint64_t)hash;
- (void)clearOneofValuesForKey;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setRawKey:(id)key;
- (void)setSignedKey:(id)key;
- (void)writeTo:(id)to;
@end

@implementation ModelKeyServerAPIFetchKeyResult

- (void)setSignedKey:(id)key
{
  keyCopy = key;
  [(ModelKeyServerAPIFetchKeyResult *)self clearOneofValuesForKey];
  *&self->_has |= 1u;
  self->_key = 1;
  signedKey = self->_signedKey;
  self->_signedKey = keyCopy;
}

- (void)setRawKey:(id)key
{
  keyCopy = key;
  [(ModelKeyServerAPIFetchKeyResult *)self clearOneofValuesForKey];
  *&self->_has |= 1u;
  self->_key = 2;
  rawKey = self->_rawKey;
  self->_rawKey = keyCopy;
}

- (int)key
{
  if (*&self->_has)
  {
    return self->_key;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([keyCopy isEqualToString:@"signed_key"])
  {
    v4 = 1;
  }

  else if ([keyCopy isEqualToString:@"raw_key"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearOneofValuesForKey
{
  *&self->_has &= ~1u;
  self->_key = 0;
  signedKey = self->_signedKey;
  self->_signedKey = 0;

  rawKey = self->_rawKey;
  self->_rawKey = 0;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = ModelKeyServerAPIFetchKeyResult;
  v3 = [(ModelKeyServerAPIFetchKeyResult *)&v7 description];
  dictionaryRepresentation = [(ModelKeyServerAPIFetchKeyResult *)self dictionaryRepresentation];
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

  modelName = self->_modelName;
  if (modelName)
  {
    [v4 setObject:modelName forKey:@"model_name"];
  }

  teamId = self->_teamId;
  if (teamId)
  {
    [v4 setObject:teamId forKey:@"team_id"];
  }

  signedKey = self->_signedKey;
  if (signedKey)
  {
    dictionaryRepresentation = [(ModelKeyServerAPISignedKey *)signedKey dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"signed_key"];
  }

  rawKey = self->_rawKey;
  if (rawKey)
  {
    dictionaryRepresentation2 = [(ModelKeyServerAPIRawKey *)rawKey dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"raw_key"];
  }

  if (*&self->_has)
  {
    key = self->_key;
    if (key >= 3)
    {
      v13 = [NSString stringWithFormat:@"(unknown: %i)", self->_key];
    }

    else
    {
      v13 = off_100010328[key];
    }

    [v4 setObject:v13 forKey:@"Key"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_keyId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_modelName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_teamId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_signedKey)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_rawKey)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_key;
    *(toCopy + 56) |= 1u;
  }

  v5 = toCopy;
  if (self->_keyId)
  {
    [toCopy setKeyId:?];
    toCopy = v5;
  }

  if (self->_modelName)
  {
    [v5 setModelName:?];
    toCopy = v5;
  }

  if (self->_teamId)
  {
    [v5 setTeamId:?];
    toCopy = v5;
  }

  if (self->_signedKey)
  {
    [v5 setSignedKey:?];
    toCopy = v5;
  }

  if (self->_rawKey)
  {
    [v5 setRawKey:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 2) = self->_key;
    *(v5 + 56) |= 1u;
  }

  v7 = [(NSString *)self->_keyId copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSString *)self->_modelName copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  v11 = [(NSString *)self->_teamId copyWithZone:zone];
  v12 = v6[6];
  v6[6] = v11;

  v13 = [(ModelKeyServerAPISignedKey *)self->_signedKey copyWithZone:zone];
  v14 = v6[5];
  v6[5] = v13;

  v15 = [(ModelKeyServerAPIRawKey *)self->_rawKey copyWithZone:zone];
  v16 = v6[4];
  v6[4] = v15;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = *(equalCopy + 56);
  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_key != *(equalCopy + 2))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 56))
  {
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  keyId = self->_keyId;
  if (keyId | *(equalCopy + 2) && ![(NSString *)keyId isEqual:?])
  {
    goto LABEL_17;
  }

  modelName = self->_modelName;
  if (modelName | *(equalCopy + 3))
  {
    if (![(NSString *)modelName isEqual:?])
    {
      goto LABEL_17;
    }
  }

  teamId = self->_teamId;
  if (teamId | *(equalCopy + 6))
  {
    if (![(NSString *)teamId isEqual:?])
    {
      goto LABEL_17;
    }
  }

  signedKey = self->_signedKey;
  if (signedKey | *(equalCopy + 5))
  {
    if (![(ModelKeyServerAPISignedKey *)signedKey isEqual:?])
    {
      goto LABEL_17;
    }
  }

  rawKey = self->_rawKey;
  if (rawKey | *(equalCopy + 4))
  {
    v11 = [(ModelKeyServerAPIRawKey *)rawKey isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_18:

  return v11;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_key;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_keyId hash]^ v3;
  v5 = [(NSString *)self->_modelName hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_teamId hash];
  v7 = [(ModelKeyServerAPISignedKey *)self->_signedKey hash];
  return v6 ^ v7 ^ [(ModelKeyServerAPIRawKey *)self->_rawKey hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 56))
  {
    self->_key = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  v10 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(ModelKeyServerAPIFetchKeyResult *)self setKeyId:?];
    v5 = v10;
  }

  if (v5[3])
  {
    [(ModelKeyServerAPIFetchKeyResult *)self setModelName:?];
    v5 = v10;
  }

  if (v5[6])
  {
    [(ModelKeyServerAPIFetchKeyResult *)self setTeamId:?];
    v5 = v10;
  }

  signedKey = self->_signedKey;
  v7 = v5[5];
  if (signedKey)
  {
    if (!v7)
    {
      goto LABEL_15;
    }

    [(ModelKeyServerAPISignedKey *)signedKey mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_15;
    }

    [(ModelKeyServerAPIFetchKeyResult *)self setSignedKey:?];
  }

  v5 = v10;
LABEL_15:
  rawKey = self->_rawKey;
  v9 = v5[4];
  if (rawKey)
  {
    if (v9)
    {
      [(ModelKeyServerAPIRawKey *)rawKey mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(ModelKeyServerAPIFetchKeyResult *)self setRawKey:?];
  }

  _objc_release_x1();
}

@end