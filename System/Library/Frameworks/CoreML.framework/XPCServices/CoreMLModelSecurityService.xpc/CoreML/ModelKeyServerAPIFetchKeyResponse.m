@interface ModelKeyServerAPIFetchKeyResponse
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsResult:(id)a3;
- (int)result;
- (unint64_t)hash;
- (void)clearOneofValuesForResult;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setError:(id)a3;
- (void)setSuccess:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ModelKeyServerAPIFetchKeyResponse

- (void)setSuccess:(id)a3
{
  v4 = a3;
  [(ModelKeyServerAPIFetchKeyResponse *)self clearOneofValuesForResult];
  *&self->_has |= 1u;
  self->_result = 1;
  success = self->_success;
  self->_success = v4;
}

- (void)setError:(id)a3
{
  v4 = a3;
  [(ModelKeyServerAPIFetchKeyResponse *)self clearOneofValuesForResult];
  *&self->_has |= 1u;
  self->_result = 2;
  error = self->_error;
  self->_error = v4;
}

- (int)result
{
  if (*&self->_has)
  {
    return self->_result;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsResult:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"success"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"error"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearOneofValuesForResult
{
  *&self->_has &= ~1u;
  self->_result = 0;
  success = self->_success;
  self->_success = 0;

  error = self->_error;
  self->_error = 0;
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = ModelKeyServerAPIFetchKeyResponse;
  v3 = [(ModelKeyServerAPIFetchKeyResponse *)&v7 description];
  v4 = [(ModelKeyServerAPIFetchKeyResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  success = self->_success;
  if (success)
  {
    v5 = [(ModelKeyServerAPIFetchKeyResult *)success dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"success"];
  }

  error = self->_error;
  if (error)
  {
    v7 = [(ModelKeyServerAPIResultError *)error dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"error"];
  }

  if (*&self->_has)
  {
    v8 = self->_result;
    if (v8 >= 3)
    {
      v9 = [NSString stringWithFormat:@"(unknown: %i)", self->_result];
    }

    else
    {
      v9 = off_100010340[v8];
    }

    [v3 setObject:v9 forKey:@"Result"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_success)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_error)
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
    v4[4] = self->_result;
    *(v4 + 32) |= 1u;
  }

  v5 = v4;
  if (self->_success)
  {
    [v4 setSuccess:?];
    v4 = v5;
  }

  if (self->_error)
  {
    [v5 setError:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 4) = self->_result;
    *(v5 + 32) |= 1u;
  }

  v7 = [(ModelKeyServerAPIFetchKeyResult *)self->_success copyWithZone:a3];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(ModelKeyServerAPIResultError *)self->_error copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_result != *(v4 + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  success = self->_success;
  if (success | *(v4 + 3) && ![(ModelKeyServerAPIFetchKeyResult *)success isEqual:?])
  {
    goto LABEL_11;
  }

  error = self->_error;
  if (error | *(v4 + 1))
  {
    v8 = [(ModelKeyServerAPIResultError *)error isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_result;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(ModelKeyServerAPIFetchKeyResult *)self->_success hash]^ v3;
  return v4 ^ [(ModelKeyServerAPIResultError *)self->_error hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[8])
  {
    self->_result = v4[4];
    *&self->_has |= 1u;
  }

  success = self->_success;
  v7 = *(v5 + 3);
  v10 = v5;
  if (success)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(ModelKeyServerAPIFetchKeyResult *)success mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(ModelKeyServerAPIFetchKeyResponse *)self setSuccess:?];
  }

  v5 = v10;
LABEL_9:
  error = self->_error;
  v9 = *(v5 + 1);
  if (error)
  {
    if (v9)
    {
      [(ModelKeyServerAPIResultError *)error mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(ModelKeyServerAPIFetchKeyResponse *)self setError:?];
  }

  _objc_release_x1();
}

@end