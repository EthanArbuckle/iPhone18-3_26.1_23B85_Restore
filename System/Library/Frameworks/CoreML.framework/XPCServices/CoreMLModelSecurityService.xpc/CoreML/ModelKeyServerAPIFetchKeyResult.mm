@interface ModelKeyServerAPIFetchKeyResult
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsKey:(id)a3;
- (int)key;
- (unint64_t)hash;
- (void)clearOneofValuesForKey;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setRawKey:(id)a3;
- (void)setSignedKey:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ModelKeyServerAPIFetchKeyResult

- (void)setSignedKey:(id)a3
{
  v4 = a3;
  [(ModelKeyServerAPIFetchKeyResult *)self clearOneofValuesForKey];
  *&self->_has |= 1u;
  self->_key = 1;
  signedKey = self->_signedKey;
  self->_signedKey = v4;
}

- (void)setRawKey:(id)a3
{
  v4 = a3;
  [(ModelKeyServerAPIFetchKeyResult *)self clearOneofValuesForKey];
  *&self->_has |= 1u;
  self->_key = 2;
  rawKey = self->_rawKey;
  self->_rawKey = v4;
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

- (int)StringAsKey:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"signed_key"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"raw_key"])
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
  v4 = [(ModelKeyServerAPIFetchKeyResult *)self dictionaryRepresentation];
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
    v9 = [(ModelKeyServerAPISignedKey *)signedKey dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"signed_key"];
  }

  rawKey = self->_rawKey;
  if (rawKey)
  {
    v11 = [(ModelKeyServerAPIRawKey *)rawKey dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"raw_key"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_keyId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_modelName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_teamId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_signedKey)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_rawKey)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[2] = self->_key;
    *(v4 + 56) |= 1u;
  }

  v5 = v4;
  if (self->_keyId)
  {
    [v4 setKeyId:?];
    v4 = v5;
  }

  if (self->_modelName)
  {
    [v5 setModelName:?];
    v4 = v5;
  }

  if (self->_teamId)
  {
    [v5 setTeamId:?];
    v4 = v5;
  }

  if (self->_signedKey)
  {
    [v5 setSignedKey:?];
    v4 = v5;
  }

  if (self->_rawKey)
  {
    [v5 setRawKey:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 2) = self->_key;
    *(v5 + 56) |= 1u;
  }

  v7 = [(NSString *)self->_keyId copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSString *)self->_modelName copyWithZone:a3];
  v10 = v6[3];
  v6[3] = v9;

  v11 = [(NSString *)self->_teamId copyWithZone:a3];
  v12 = v6[6];
  v6[6] = v11;

  v13 = [(ModelKeyServerAPISignedKey *)self->_signedKey copyWithZone:a3];
  v14 = v6[5];
  v6[5] = v13;

  v15 = [(ModelKeyServerAPIRawKey *)self->_rawKey copyWithZone:a3];
  v16 = v6[4];
  v6[4] = v15;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = *(v4 + 56);
  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_key != *(v4 + 2))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 56))
  {
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  keyId = self->_keyId;
  if (keyId | *(v4 + 2) && ![(NSString *)keyId isEqual:?])
  {
    goto LABEL_17;
  }

  modelName = self->_modelName;
  if (modelName | *(v4 + 3))
  {
    if (![(NSString *)modelName isEqual:?])
    {
      goto LABEL_17;
    }
  }

  teamId = self->_teamId;
  if (teamId | *(v4 + 6))
  {
    if (![(NSString *)teamId isEqual:?])
    {
      goto LABEL_17;
    }
  }

  signedKey = self->_signedKey;
  if (signedKey | *(v4 + 5))
  {
    if (![(ModelKeyServerAPISignedKey *)signedKey isEqual:?])
    {
      goto LABEL_17;
    }
  }

  rawKey = self->_rawKey;
  if (rawKey | *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 56))
  {
    self->_key = *(v4 + 2);
    *&self->_has |= 1u;
  }

  v10 = v4;
  if (*(v4 + 2))
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